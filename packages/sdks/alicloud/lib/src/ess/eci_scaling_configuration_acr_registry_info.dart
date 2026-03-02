// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EciScalingConfigurationAcrRegistryInfo {
  /// Endpoint of Container Registry Enterprise Edition instance. By default, all endpoints of the Container Registry Enterprise Edition instance are displayed. It is required
  /// when `acr_registry_info` is configured.
  final pulumi.Input<List<String>>? domains;
  /// The ID of Container Registry Enterprise Edition instance. It is required
  /// when `acr_registry_info` is configured.
  final pulumi.Input<String>? instanceId;
  /// The name of Container Registry Enterprise Edition instance. It is required when `acr_registry_info` is
  /// configured.
  final pulumi.Input<String>? instanceName;
  /// The region ID of Container Registry Enterprise Edition instance. It is required
  /// when `acr_registry_info` is configured.
  final pulumi.Input<String>? regionId;

  /// Creates a new [EciScalingConfigurationAcrRegistryInfo].
  /// [domains] Endpoint of Container Registry Enterprise Edition instance. By default, all endpoints of the Container Registry Enterprise Edition instance are displayed. It is required
  /// [instanceId] The ID of Container Registry Enterprise Edition instance. It is required
  /// [instanceName] The name of Container Registry Enterprise Edition instance. It is required when `acr_registry_info` is
  /// [regionId] The region ID of Container Registry Enterprise Edition instance. It is required
  EciScalingConfigurationAcrRegistryInfo({
    this.domains,
    this.instanceId,
    this.instanceName,
    this.regionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domains': ?domains,
      'instanceId': ?instanceId,
      'instanceName': ?instanceName,
      'regionId': ?regionId,
    };
  }

  factory EciScalingConfigurationAcrRegistryInfo.fromMap(Map<String, dynamic> map) {
    return EciScalingConfigurationAcrRegistryInfo(
      domains: map['domains'] == null ? null : ((map['domains'] as List).cast<String>()).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName'] as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
    );
  }
}

