// ignore_for_file: unused_element, unnecessary_cast


/// Virtualization software settings.
class VirtualizationSoftwareSettingsResponse {
  /// VMware cloud foundation license cost.
  final double vMwareCloudFoundationLicenseCost;

  /// Creates a new [VirtualizationSoftwareSettingsResponse].
  /// [vMwareCloudFoundationLicenseCost] VMware cloud foundation license cost.
  VirtualizationSoftwareSettingsResponse({
    required this.vMwareCloudFoundationLicenseCost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vMwareCloudFoundationLicenseCost': vMwareCloudFoundationLicenseCost,
    };
  }

  factory VirtualizationSoftwareSettingsResponse.fromMap(Map<String, dynamic> map) {
    return VirtualizationSoftwareSettingsResponse(
      vMwareCloudFoundationLicenseCost: map['vMwareCloudFoundationLicenseCost'] as double,
    );
  }
}

