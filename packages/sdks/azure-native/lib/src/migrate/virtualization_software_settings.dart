// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Virtualization software settings.
class VirtualizationSoftwareSettings {
  /// VMware cloud foundation license cost.
  final pulumi.Input<double> vMwareCloudFoundationLicenseCost;

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
      vMwareCloudFoundationLicenseCost: pulumi.Input.fromValue(map['vMwareCloudFoundationLicenseCost'] as double),
    );
  }
}

