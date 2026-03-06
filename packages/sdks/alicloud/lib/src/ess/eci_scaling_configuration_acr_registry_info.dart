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
  const EciScalingConfigurationAcrRegistryInfo({
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
      domains: (() { final guardedValue = map['domains']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceName: (() { final guardedValue = map['instanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

