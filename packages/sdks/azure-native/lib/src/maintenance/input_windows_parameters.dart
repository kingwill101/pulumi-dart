// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties for patching a Windows machine.
class InputWindowsParameters {
  /// Classification category of patches to be patched. Allowed values are 'Critical', 'Security', 'UpdateRollup', 'FeaturePack', 'ServicePack', 'Definition', 'Tools', and 'Updates'.
  final pulumi.Input<List<String>?>? classificationsToInclude;
  /// Exclude patches which need reboot
  final pulumi.Input<bool?>? excludeKbsRequiringReboot;
  /// Windows KBID to be excluded for patching.
  final pulumi.Input<List<String>?>? kbNumbersToExclude;
  /// Windows KBID to be included for patching.
  final pulumi.Input<List<String>?>? kbNumbersToInclude;

  /// Creates a new [InputWindowsParameters].
  /// [classificationsToInclude] Classification category of patches to be patched. Allowed values are 'Critical', 'Security', 'UpdateRollup', 'FeaturePack', 'ServicePack', 'Definition', 'Tools', and 'Updates'.
  /// [excludeKbsRequiringReboot] Exclude patches which need reboot
  /// [kbNumbersToExclude] Windows KBID to be excluded for patching.
  /// [kbNumbersToInclude] Windows KBID to be included for patching.
  const InputWindowsParameters({
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
      classificationsToInclude: (() { final guardedValue = map['classificationsToInclude']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      excludeKbsRequiringReboot: (() { final guardedValue = map['excludeKbsRequiringReboot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kbNumbersToExclude: (() { final guardedValue = map['kbNumbersToExclude']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      kbNumbersToInclude: (() { final guardedValue = map['kbNumbersToInclude']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
