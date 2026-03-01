// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the hardware settings for the Azure Large Instance.
class HardwareProfile {
  /// Specifies the Azure Large Instance SKU.
  final String? azureLargeInstanceSize;
  /// Name of the hardware type (vendor and/or their product name)
  final String? hardwareType;

  /// Creates a new [HardwareProfile].
  /// [azureLargeInstanceSize] Specifies the Azure Large Instance SKU.
  /// [hardwareType] Name of the hardware type (vendor and/or their product name)
  HardwareProfile({
    this.azureLargeInstanceSize,
    this.hardwareType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureLargeInstanceSize': ?azureLargeInstanceSize,
      'hardwareType': ?hardwareType,
    };
  }

  factory HardwareProfile.fromMap(Map<String, dynamic> map) {
    return HardwareProfile(
      azureLargeInstanceSize: map['azureLargeInstanceSize'] == null ? null : map['azureLargeInstanceSize'] as String,
      hardwareType: map['hardwareType'] == null ? null : map['hardwareType'] as String,
    );
  }
}

