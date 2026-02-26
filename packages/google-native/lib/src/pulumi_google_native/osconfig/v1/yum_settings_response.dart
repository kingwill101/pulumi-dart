// ignore_for_file: unused_element, unnecessary_cast

/// Yum patching is performed by executing `yum update`. Additional options can be set to control how this is executed. Note that not all settings are supported on all platforms.
class YumSettingsResponse {
  /// List of packages to exclude from update. These packages are excluded by using the yum `--exclude` flag.
  final List<String> excludes;

  /// An exclusive list of packages to be updated. These are the only packages that will be updated. If these packages are not installed, they will be ignored. This field must not be specified with any other patch configuration fields.
  final List<String> exclusivePackages;

  /// Will cause patch to run `yum update-minimal` instead.
  final bool minimal;

  /// Adds the `--security` flag to `yum update`. Not supported on all platforms.
  final bool security;

  YumSettingsResponse({
    required this.excludes,
    required this.exclusivePackages,
    required this.minimal,
    required this.security,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['excludes'] = excludes;
    map['exclusivePackages'] = exclusivePackages;
    map['minimal'] = minimal;
    map['security'] = security;
    return map;
  }

  factory YumSettingsResponse.fromMap(Map<String, dynamic> map) {
    return YumSettingsResponse(
      excludes: (map['excludes'] as List).cast<String>(),
      exclusivePackages: (map['exclusivePackages'] as List).cast<String>(),
      minimal: map['minimal'] as bool,
      security: map['security'] as bool,
    );
  }
}
