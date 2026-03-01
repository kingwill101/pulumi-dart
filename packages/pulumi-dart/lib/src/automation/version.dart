const String skipVersionCheckVar = 'PULUMI_AUTOMATION_API_SKIP_VERSION_CHECK';

/// Minimum Pulumi CLI version required by the Dart Automation API.
const PulumiVersion minimumPulumiVersion = PulumiVersion(
  major: 3,
  minor: 1,
  patch: 0,
);

/// Thrown when a Pulumi CLI version is invalid or incompatible.
class AutomationInvalidVersionException implements Exception {
  const AutomationInvalidVersionException(this.message);

  final String message;

  @override
  String toString() => message;
}

/// Semantic version value for Pulumi CLI version checks.
class PulumiVersion implements Comparable<PulumiVersion> {
  const PulumiVersion({
    required this.major,
    required this.minor,
    required this.patch,
    this.prerelease = '',
  });

  factory PulumiVersion.parse(String raw) {
    final parsed = PulumiVersion.tryParse(raw);
    if (parsed == null) {
      throw FormatException('Invalid Pulumi version: $raw');
    }
    return parsed;
  }

  static PulumiVersion? tryParse(String raw) {
    final candidate = raw.trim();
    final match = RegExp(
      r'^v?([0-9]+)\.([0-9]+)\.([0-9]+)(?:-([0-9A-Za-z.-]+))?$',
    ).firstMatch(candidate);
    if (match == null) {
      return null;
    }

    final major = int.tryParse(match.group(1)!);
    final minor = int.tryParse(match.group(2)!);
    final patch = int.tryParse(match.group(3)!);
    if (major == null || minor == null || patch == null) {
      return null;
    }

    return PulumiVersion(
      major: major,
      minor: minor,
      patch: patch,
      prerelease: match.group(4) ?? '',
    );
  }

  final int major;
  final int minor;
  final int patch;
  final String prerelease;

  bool get isPrerelease => prerelease.isNotEmpty;

  @override
  int compareTo(PulumiVersion other) {
    if (major != other.major) {
      return major.compareTo(other.major);
    }
    if (minor != other.minor) {
      return minor.compareTo(other.minor);
    }
    if (patch != other.patch) {
      return patch.compareTo(other.patch);
    }

    if (!isPrerelease && !other.isPrerelease) {
      return 0;
    }
    if (!isPrerelease && other.isPrerelease) {
      return 1;
    }
    if (isPrerelease && !other.isPrerelease) {
      return -1;
    }

    final left = prerelease.split('.');
    final right = other.prerelease.split('.');
    final maxLength = left.length > right.length ? left.length : right.length;
    for (var i = 0; i < maxLength; i++) {
      if (i >= left.length) {
        return -1;
      }
      if (i >= right.length) {
        return 1;
      }

      final a = left[i];
      final b = right[i];
      final aInt = int.tryParse(a);
      final bInt = int.tryParse(b);
      if (aInt != null && bInt != null) {
        if (aInt != bInt) {
          return aInt.compareTo(bInt);
        }
        continue;
      }
      if (aInt != null && bInt == null) {
        return -1;
      }
      if (aInt == null && bInt != null) {
        return 1;
      }
      final textCompare = a.compareTo(b);
      if (textCompare != 0) {
        return textCompare;
      }
    }

    return 0;
  }

  @override
  String toString() {
    final base = '$major.$minor.$patch';
    return prerelease.isEmpty ? base : '$base-$prerelease';
  }

  @override
  bool operator ==(Object other) {
    return other is PulumiVersion &&
        major == other.major &&
        minor == other.minor &&
        patch == other.patch &&
        prerelease == other.prerelease;
  }

  @override
  int get hashCode => Object.hash(major, minor, patch, prerelease);
}

/// Parses and validates [currentVersion] against [minimumVersion].
PulumiVersion? parseAndValidatePulumiVersion(
  PulumiVersion minimumVersion,
  String currentVersion,
  bool optOut,
) {
  final version = PulumiVersion.tryParse(currentVersion);
  if (optOut) {
    return version;
  }

  if (version == null) {
    throw const AutomationInvalidVersionException(
      'Could not parse the Pulumi CLI version. This is probably an internal '
      'error. If you are sure you have the correct version, set '
      'PULUMI_AUTOMATION_API_SKIP_VERSION_CHECK=true.',
    );
  }

  if (minimumVersion.major < version.major) {
    throw AutomationInvalidVersionException(
      'Major version mismatch. You are using Pulumi CLI version '
      '$currentVersion with Automation SDK v${minimumVersion.major}. Please '
      'update the SDK.',
    );
  }

  if (minimumVersion.compareTo(version) > 0) {
    throw AutomationInvalidVersionException(
      'Minimum version requirement failed. The minimum CLI version requirement '
      'is $minimumVersion, your current CLI version is $currentVersion. '
      'Please update the Pulumi CLI.',
    );
  }

  return version;
}
