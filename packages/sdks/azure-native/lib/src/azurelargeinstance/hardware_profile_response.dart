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
  HardwareProfileResponse({
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
      azureLargeInstanceSize: map['azureLargeInstanceSize'] == null ? null : (map['azureLargeInstanceSize'] as String).input(),
      hardwareType: map['hardwareType'] == null ? null : (map['hardwareType'] as String).input(),
    );
  }
}

