// ignore_for_file: unused_element, unnecessary_cast

import 'vm_scanners_base_configuration.dart';

/// The Microsoft Defender for Container K8s VM host scanning configuration
class DefenderForContainersAwsOfferingVmScanners {
  /// The cloud role ARN in AWS for this feature
  final String? cloudRoleArn;
  /// Configuration for VM scanning
  final VmScannersBaseConfiguration? configuration;
  /// Is VM scanning enabled
  final bool? enabled;

  /// Creates a new [DefenderForContainersAwsOfferingVmScanners].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature
  /// [configuration] Configuration for VM scanning
  /// [enabled] Is VM scanning enabled
  DefenderForContainersAwsOfferingVmScanners({
    this.cloudRoleArn,
    this.configuration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
      'configuration': ?configuration == null ? null : configuration!.toMap(),
      'enabled': ?enabled,
    };
  }

  factory DefenderForContainersAwsOfferingVmScanners.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersAwsOfferingVmScanners(
      cloudRoleArn: map['cloudRoleArn'] == null ? null : map['cloudRoleArn'] as String,
      configuration: map['configuration'] == null ? null : VmScannersBaseConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

