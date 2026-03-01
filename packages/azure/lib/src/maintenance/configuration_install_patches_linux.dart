// ignore_for_file: unused_element, unnecessary_cast


class ConfigurationInstallPatchesLinux {
  /// List of Classification category of patches to be patched. Possible values are `Critical`, `Security` and `Other`.
  final List<String>? classificationsToIncludes;
  /// List of package names to be excluded from patching.
  final List<String>? packageNamesMaskToExcludes;
  /// List of package names to be included for patching.
  final List<String>? packageNamesMaskToIncludes;

  /// Creates a new [ConfigurationInstallPatchesLinux].
  /// [classificationsToIncludes] List of Classification category of patches to be patched. Possible values are `Critical`, `Security` and `Other`.
  /// [packageNamesMaskToExcludes] List of package names to be excluded from patching.
  /// [packageNamesMaskToIncludes] List of package names to be included for patching.
  ConfigurationInstallPatchesLinux({
    this.classificationsToIncludes,
    this.packageNamesMaskToExcludes,
    this.packageNamesMaskToIncludes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classificationsToIncludes': ?classificationsToIncludes,
      'packageNamesMaskToExcludes': ?packageNamesMaskToExcludes,
      'packageNamesMaskToIncludes': ?packageNamesMaskToIncludes,
    };
  }

  factory ConfigurationInstallPatchesLinux.fromMap(Map<String, dynamic> map) {
    return ConfigurationInstallPatchesLinux(
      classificationsToIncludes: map['classificationsToIncludes'] == null ? null : (map['classificationsToIncludes'] as List).cast<String>(),
      packageNamesMaskToExcludes: map['packageNamesMaskToExcludes'] == null ? null : (map['packageNamesMaskToExcludes'] as List).cast<String>(),
      packageNamesMaskToIncludes: map['packageNamesMaskToIncludes'] == null ? null : (map['packageNamesMaskToIncludes'] as List).cast<String>(),
    );
  }
}

