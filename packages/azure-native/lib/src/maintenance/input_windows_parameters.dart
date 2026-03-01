// ignore_for_file: unused_element, unnecessary_cast


/// Input properties for patching a Windows machine.
class InputWindowsParameters {
  /// Classification category of patches to be patched. Allowed values are 'Critical', 'Security', 'UpdateRollup', 'FeaturePack', 'ServicePack', 'Definition', 'Tools', and 'Updates'.
  final List<String>? classificationsToInclude;
  /// Exclude patches which need reboot
  final bool? excludeKbsRequiringReboot;
  /// Windows KBID to be excluded for patching.
  final List<String>? kbNumbersToExclude;
  /// Windows KBID to be included for patching.
  final List<String>? kbNumbersToInclude;

  /// Creates a new [InputWindowsParameters].
  /// [classificationsToInclude] Classification category of patches to be patched. Allowed values are 'Critical', 'Security', 'UpdateRollup', 'FeaturePack', 'ServicePack', 'Definition', 'Tools', and 'Updates'.
  /// [excludeKbsRequiringReboot] Exclude patches which need reboot
  /// [kbNumbersToExclude] Windows KBID to be excluded for patching.
  /// [kbNumbersToInclude] Windows KBID to be included for patching.
  InputWindowsParameters({
    this.classificationsToInclude,
    this.excludeKbsRequiringReboot,
    this.kbNumbersToExclude,
    this.kbNumbersToInclude,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classificationsToInclude': ?classificationsToInclude,
      'excludeKbsRequiringReboot': ?excludeKbsRequiringReboot,
      'kbNumbersToExclude': ?kbNumbersToExclude,
      'kbNumbersToInclude': ?kbNumbersToInclude,
    };
  }

  factory InputWindowsParameters.fromMap(Map<String, dynamic> map) {
    return InputWindowsParameters(
      classificationsToInclude: map['classificationsToInclude'] == null ? null : (map['classificationsToInclude'] as List).cast<String>(),
      excludeKbsRequiringReboot: map['excludeKbsRequiringReboot'] == null ? null : map['excludeKbsRequiringReboot'] as bool,
      kbNumbersToExclude: map['kbNumbersToExclude'] == null ? null : (map['kbNumbersToExclude'] as List).cast<String>(),
      kbNumbersToInclude: map['kbNumbersToInclude'] == null ? null : (map['kbNumbersToInclude'] as List).cast<String>(),
    );
  }
}

