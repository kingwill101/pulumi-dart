// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_cluster_config_cold_storage_option.dart';
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
  /// The number of warm nodes in the cluster.
  final pulumi.Input<int> warmCount;
  /// Warm storage is enabled.
  final pulumi.Input<bool> warmEnabled;
  /// The instance type for the Elasticsearch cluster's warm nodes.
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
  /// [warmCount] The number of warm nodes in the cluster.
  /// [warmEnabled] Warm storage is enabled.
  /// [warmType] The instance type for the Elasticsearch cluster's warm nodes.
  /// [zoneAwarenessConfigs] Configuration block containing zone awareness settings.
  /// [zoneAwarenessEnabled] Indicates whether zone awareness is enabled.
  GetDomainClusterConfig({
    required this.coldStorageOptions,
    required this.dedicatedMasterCount,
    required this.dedicatedMasterEnabled,
    required this.dedicatedMasterType,
    required this.instanceCount,
    required this.instanceType,
    required this.warmCount,
    required this.warmEnabled,
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
      'warmCount': warmCount,
      'warmEnabled': warmEnabled,
      'warmType': warmType,
      'zoneAwarenessConfigs': pulumi.Input.mapInputValue<List<GetDomainClusterConfigZoneAwarenessConfig>, List<Map<String, dynamic>>>(zoneAwarenessConfigs, (value) => pulumi.Input.encodeList<GetDomainClusterConfigZoneAwarenessConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneAwarenessEnabled': zoneAwarenessEnabled,
    };
  }

  factory GetDomainClusterConfig.fromMap(Map<String, dynamic> map) {
    return GetDomainClusterConfig(
      coldStorageOptions: (pulumi.Input.decodeList<GetDomainClusterConfigColdStorageOption>(map['coldStorageOptions']!, (value) => GetDomainClusterConfigColdStorageOption.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dedicatedMasterCount: (map['dedicatedMasterCount'] as int).input(),
      dedicatedMasterEnabled: (map['dedicatedMasterEnabled'] as bool).input(),
      dedicatedMasterType: (map['dedicatedMasterType'] as String).input(),
      instanceCount: (map['instanceCount'] as int).input(),
      instanceType: (map['instanceType'] as String).input(),
      warmCount: (map['warmCount'] as int).input(),
      warmEnabled: (map['warmEnabled'] as bool).input(),
      warmType: (map['warmType'] as String).input(),
      zoneAwarenessConfigs: (pulumi.Input.decodeList<GetDomainClusterConfigZoneAwarenessConfig>(map['zoneAwarenessConfigs']!, (value) => GetDomainClusterConfigZoneAwarenessConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      zoneAwarenessEnabled: (map['zoneAwarenessEnabled'] as bool).input(),
    );
  }
}

