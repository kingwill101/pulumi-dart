// ignore_for_file: unused_element, unnecessary_cast


class GetConfigurationInstallPatchLinux {
  /// List of Classification category of patches to be patched.
  final List<String> classificationsToIncludes;
  /// List of package names to be excluded from patching.
  final List<String> packageNamesMaskToExcludes;
  /// List of package names to be included for patching.
  final List<String> packageNamesMaskToIncludes;

  /// Creates a new [GetConfigurationInstallPatchLinux].
  /// [classificationsToIncludes] List of Classification category of patches to be patched.
  /// [packageNamesMaskToExcludes] List of package names to be excluded from patching.
  /// [packageNamesMaskToIncludes] List of package names to be included for patching.
  GetConfigurationInstallPatchLinux({
    required this.classificationsToIncludes,
    required this.packageNamesMaskToExcludes,
    required this.packageNamesMaskToIncludes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classificationsToIncludes': classificationsToIncludes,
      'packageNamesMaskToExcludes': packageNamesMaskToExcludes,
      'packageNamesMaskToIncludes': packageNamesMaskToIncludes,
    };
  }

  factory GetConfigurationInstallPatchLinux.fromMap(Map<String, dynamic> map) {
    return GetConfigurationInstallPatchLinux(
      classificationsToIncludes: (map['classificationsToIncludes'] as List).cast<String>(),
      packageNamesMaskToExcludes: (map['packageNamesMaskToExcludes'] as List).cast<String>(),
      packageNamesMaskToIncludes: (map['packageNamesMaskToIncludes'] as List).cast<String>(),
    );
  }
}

