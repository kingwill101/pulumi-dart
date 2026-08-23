// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Virtualization software settings.
class VirtualizationSoftwareSettingsResponse {
  /// VMware cloud foundation license cost.
  final pulumi.Input<double> vMwareCloudFoundationLicenseCost;

  /// Creates a new [VirtualizationSoftwareSettingsResponse].
  /// [vMwareCloudFoundationLicenseCost] VMware cloud foundation license cost.
  const VirtualizationSoftwareSettingsResponse({
    required this.vMwareCloudFoundationLicenseCost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vMwareCloudFoundationLicenseCost': vMwareCloudFoundationLicenseCost,
    };
  }

  factory VirtualizationSoftwareSettingsResponse.fromMap(Map<String, dynamic> map) {
    return VirtualizationSoftwareSettingsResponse(
      vMwareCloudFoundationLicenseCost: pulumi.Input.fromValue(map['vMwareCloudFoundationLicenseCost'] as double),
    );
  }
}
