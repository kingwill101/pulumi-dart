// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the hardware settings for the Azure Bare Metal Instance.
class HardwareProfile {
  /// Specifies the Azure Bare Metal Instance SKU.
  final pulumi.Input<String>? azureBareMetalInstanceSize;
  /// Name of the hardware type (vendor and/or their product name)
  final pulumi.Input<String>? hardwareType;

  /// Creates a new [HardwareProfile].
  /// [azureBareMetalInstanceSize] Specifies the Azure Bare Metal Instance SKU.
  /// [hardwareType] Name of the hardware type (vendor and/or their product name)
  HardwareProfile({
    this.azureBareMetalInstanceSize,
    this.hardwareType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBareMetalInstanceSize': ?azureBareMetalInstanceSize,
      'hardwareType': ?hardwareType,
    };
  }

  factory HardwareProfile.fromMap(Map<String, dynamic> map) {
    return HardwareProfile(
      azureBareMetalInstanceSize: map['azureBareMetalInstanceSize'] == null ? null : (map['azureBareMetalInstanceSize'] as String).input(),
      hardwareType: map['hardwareType'] == null ? null : (map['hardwareType'] as String).input(),
    );
  }
}

