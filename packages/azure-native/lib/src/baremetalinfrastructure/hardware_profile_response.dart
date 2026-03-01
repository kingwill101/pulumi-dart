// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the hardware settings for the Azure Bare Metal Instance.
class HardwareProfileResponse {
  /// Specifies the Azure Bare Metal Instance SKU.
  final String? azureBareMetalInstanceSize;
  /// Name of the hardware type (vendor and/or their product name)
  final String? hardwareType;

  /// Creates a new [HardwareProfileResponse].
  /// [azureBareMetalInstanceSize] Specifies the Azure Bare Metal Instance SKU.
  /// [hardwareType] Name of the hardware type (vendor and/or their product name)
  HardwareProfileResponse({
    this.azureBareMetalInstanceSize,
    this.hardwareType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBareMetalInstanceSize': ?azureBareMetalInstanceSize,
      'hardwareType': ?hardwareType,
    };
  }

  factory HardwareProfileResponse.fromMap(Map<String, dynamic> map) {
    return HardwareProfileResponse(
      azureBareMetalInstanceSize: map['azureBareMetalInstanceSize'] == null ? null : map['azureBareMetalInstanceSize'] as String,
      hardwareType: map['hardwareType'] == null ? null : map['hardwareType'] as String,
    );
  }
}

