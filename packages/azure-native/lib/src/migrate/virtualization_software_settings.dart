// ignore_for_file: unused_element, unnecessary_cast


/// Virtualization software settings.
class VirtualizationSoftwareSettings {
  /// VMware cloud foundation license cost.
  final double vMwareCloudFoundationLicenseCost;

  /// Creates a new [VirtualizationSoftwareSettings].
  /// [vMwareCloudFoundationLicenseCost] VMware cloud foundation license cost.
  VirtualizationSoftwareSettings({
    required this.vMwareCloudFoundationLicenseCost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vMwareCloudFoundationLicenseCost': vMwareCloudFoundationLicenseCost,
    };
  }

  factory VirtualizationSoftwareSettings.fromMap(Map<String, dynamic> map) {
    return VirtualizationSoftwareSettings(
      vMwareCloudFoundationLicenseCost: map['vMwareCloudFoundationLicenseCost'] as double,
    );
  }
}

