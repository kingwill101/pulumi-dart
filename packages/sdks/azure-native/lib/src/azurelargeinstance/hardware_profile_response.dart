// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the hardware settings for the Azure Large Instance.
class HardwareProfileResponse {
  /// Specifies the Azure Large Instance SKU.
  final pulumi.Input<String>? azureLargeInstanceSize;
  /// Name of the hardware type (vendor and/or their product name)
  final pulumi.Input<String>? hardwareType;

  /// Creates a new [HardwareProfileResponse].
  /// [azureLargeInstanceSize] Specifies the Azure Large Instance SKU.
  /// [hardwareType] Name of the hardware type (vendor and/or their product name)
  const HardwareProfileResponse({
    this.azureLargeInstanceSize,
    this.hardwareType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureLargeInstanceSize': ?azureLargeInstanceSize,
      'hardwareType': ?hardwareType,
    };
  }

  factory HardwareProfileResponse.fromMap(Map<String, dynamic> map) {
    return HardwareProfileResponse(
      azureLargeInstanceSize: (() { final guardedValue = map['azureLargeInstanceSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hardwareType: (() { final guardedValue = map['hardwareType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
