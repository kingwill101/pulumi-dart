// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_cluster_config_cold_storage_option.dart';
import 'get_domain_cluster_config_node_option.dart';
import 'get_domain_cluster_config_zone_awareness_config.dart';

class GetDomainClusterConfig {
  /// Configuration block containing cold storage configuration.
  final pulumi.Input<List<GetDomainClusterConfigColdStorageOption>> coldStorageOptions;
  /// Number of dedicated master nodes in the cluster.
  final pulumi.Input<int> dedicatedMasterCount;
  /// Indicates whether dedicated master nodes are enabled for the cluster.
  final pulumi.Input<bool> dedicatedMasterEnabled;
  /// Instance type of the dedicated master nodes in the cluster.
  final pulumi.Input<String> dedicatedMasterType;
  /// Number of instances in the cluster.
  final pulumi.Input<int> instanceCount;
  /// Instance type of data nodes in the cluster.
  final pulumi.Input<String> instanceType;
  /// Whether a multi-AZ domain is turned on with a standby AZ.
  final pulumi.Input<bool> multiAzWithStandbyEnabled;
  /// List of node options for the domain.
  final pulumi.Input<List<GetDomainClusterConfigNodeOption>> nodeOptions;
  /// Number of warm nodes in the cluster.
  final pulumi.Input<int> warmCount;
  /// Warm storage is enabled.
  final pulumi.Input<bool>? warmEnabled;
  /// Instance type for the OpenSearch cluster's warm nodes.
  final pulumi.Input<String> warmType;
  /// Configuration block containing zone awareness settings.
  final pulumi.Input<List<GetDomainClusterConfigZoneAwarenessConfig>> zoneAwarenessConfigs;
  /// Indicates whether zone awareness is enabled.
  final pulumi.Input<bool> zoneAwarenessEnabled;

  /// Creates a new [GetDomainClusterConfig].
  /// [coldStorageOptions] Configuration block containing cold storage configuration.
  /// [dedicatedMasterCount] Number of dedicated master nodes in the cluster.
  /// [dedicatedMasterEnabled] Indicates whether dedicated master nodes are enabled for the cluster.
  /// [dedicatedMasterType] Instance type of the dedicated master nodes in the cluster.
  /// [instanceCount] Number of instances in the cluster.
  /// [instanceType] Instance type of data nodes in the cluster.
  /// [multiAzWithStandbyEnabled] Whether a multi-AZ domain is turned on with a standby AZ.
  /// [nodeOptions] List of node options for the domain.
  /// [warmCount] Number of warm nodes in the cluster.
  /// [warmEnabled] Warm storage is enabled.
  /// [warmType] Instance type for the OpenSearch cluster's warm nodes.
  /// [zoneAwarenessConfigs] Configuration block containing zone awareness settings.
  /// [zoneAwarenessEnabled] Indicates whether zone awareness is enabled.
  const GetDomainClusterConfig({
    required this.coldStorageOptions,
    required this.dedicatedMasterCount,
    required this.dedicatedMasterEnabled,
    required this.dedicatedMasterType,
    required this.instanceCount,
    required this.instanceType,
    required this.multiAzWithStandbyEnabled,
    required this.nodeOptions,
    required this.warmCount,
    this.warmEnabled,
    required this.warmType,
    required this.zoneAwarenessConfigs,
    required this.zoneAwarenessEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coldStorageOptions': pulumi.Input.mapInputValue<List<GetDomainClusterConfigColdStorageOption>, List<Map<String, dynamic>>>(coldStorageOptions, (value) => pulumi.Input.encodeList<GetDomainClusterConfigColdStorageOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dedicatedMasterCount': dedicatedMasterCount,
      'dedicatedMasterEnabled': dedicatedMasterEnabled,
      'dedicatedMasterType': dedicatedMasterType,
      'instanceCount': instanceCount,
      'instanceType': instanceType,
      'multiAzWithStandbyEnabled': multiAzWithStandbyEnabled,
      'nodeOptions': pulumi.Input.mapInputValue<List<GetDomainClusterConfigNodeOption>, List<Map<String, dynamic>>>(nodeOptions, (value) => pulumi.Input.encodeList<GetDomainClusterConfigNodeOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'warmCount': warmCount,
      'warmEnabled': ?warmEnabled,
      'warmType': warmType,
      'zoneAwarenessConfigs': pulumi.Input.mapInputValue<List<GetDomainClusterConfigZoneAwarenessConfig>, List<Map<String, dynamic>>>(zoneAwarenessConfigs, (value) => pulumi.Input.encodeList<GetDomainClusterConfigZoneAwarenessConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneAwarenessEnabled': zoneAwarenessEnabled,
    };
  }

  factory GetDomainClusterConfig.fromMap(Map<String, dynamic> map) {
    return GetDomainClusterConfig(
      coldStorageOptions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDomainClusterConfigColdStorageOption>(map['coldStorageOptions']!, (value) => GetDomainClusterConfigColdStorageOption.fromMap((value as Map).cast<String, dynamic>()))),
      dedicatedMasterCount: pulumi.Input.fromValue(map['dedicatedMasterCount'] as int),
      dedicatedMasterEnabled: pulumi.Input.fromValue(map['dedicatedMasterEnabled'] as bool),
      dedicatedMasterType: pulumi.Input.fromValue(map['dedicatedMasterType'] as String),
      instanceCount: pulumi.Input.fromValue(map['instanceCount'] as int),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      multiAzWithStandbyEnabled: pulumi.Input.fromValue(map['multiAzWithStandbyEnabled'] as bool),
      nodeOptions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDomainClusterConfigNodeOption>(map['nodeOptions']!, (value) => GetDomainClusterConfigNodeOption.fromMap((value as Map).cast<String, dynamic>()))),
      warmCount: pulumi.Input.fromValue(map['warmCount'] as int),
      warmEnabled: (() { final guardedValue = map['warmEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      warmType: pulumi.Input.fromValue(map['warmType'] as String),
      zoneAwarenessConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDomainClusterConfigZoneAwarenessConfig>(map['zoneAwarenessConfigs']!, (value) => GetDomainClusterConfigZoneAwarenessConfig.fromMap((value as Map).cast<String, dynamic>()))),
      zoneAwarenessEnabled: pulumi.Input.fromValue(map['zoneAwarenessEnabled'] as bool),
    );
  }
}

