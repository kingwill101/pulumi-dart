// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties for patching a Windows machine.
class InputWindowsParametersResponse {
  /// Classification category of patches to be patched. Allowed values are 'Critical', 'Security', 'UpdateRollup', 'FeaturePack', 'ServicePack', 'Definition', 'Tools', and 'Updates'.
  final pulumi.Input<List<String>>? classificationsToInclude;
  /// Exclude patches which need reboot
  final pulumi.Input<bool>? excludeKbsRequiringReboot;
  /// Windows KBID to be excluded for patching.
  final pulumi.Input<List<String>>? kbNumbersToExclude;
  /// Windows KBID to be included for patching.
  final pulumi.Input<List<String>>? kbNumbersToInclude;

  /// Creates a new [InputWindowsParametersResponse].
  /// [classificationsToInclude] Classification category of patches to be patched. Allowed values are 'Critical', 'Security', 'UpdateRollup', 'FeaturePack', 'ServicePack', 'Definition', 'Tools', and 'Updates'.
  /// [excludeKbsRequiringReboot] Exclude patches which need reboot
  /// [kbNumbersToExclude] Windows KBID to be excluded for patching.
  /// [kbNumbersToInclude] Windows KBID to be included for patching.
  InputWindowsParametersResponse({
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

  factory InputWindowsParametersResponse.fromMap(Map<String, dynamic> map) {
    return InputWindowsParametersResponse(
      classificationsToInclude: map['classificationsToInclude'] == null ? null : ((map['classificationsToInclude']! as List).cast<String>()).input(),
      excludeKbsRequiringReboot: map['excludeKbsRequiringReboot'] == null ? null : (map['excludeKbsRequiringReboot']! as bool).input(),
      kbNumbersToExclude: map['kbNumbersToExclude'] == null ? null : ((map['kbNumbersToExclude']! as List).cast<String>()).input(),
      kbNumbersToInclude: map['kbNumbersToInclude'] == null ? null : ((map['kbNumbersToInclude']! as List).cast<String>()).input(),
    );
  }
}

