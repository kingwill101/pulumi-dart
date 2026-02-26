// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_domain_cluster_config_cold_storage_option/get_domain_cluster_config_cold_storage_option.dart';
import '../get_domain_cluster_config_zone_awareness_config/get_domain_cluster_config_zone_awareness_config.dart';

class GetDomainClusterConfig {
  /// Configuration block containing cold storage configuration.
  final List<GetDomainClusterConfigColdStorageOption> coldStorageOptions;

  /// Number of dedicated master nodes in the cluster.
  final int dedicatedMasterCount;

  /// Indicates whether dedicated master nodes are enabled for the cluster.
  final bool dedicatedMasterEnabled;

  /// Instance type of the dedicated master nodes in the cluster.
  final String dedicatedMasterType;

  /// Number of instances in the cluster.
  final int instanceCount;

  /// Instance type of data nodes in the cluster.
  final String instanceType;

  /// The number of warm nodes in the cluster.
  final int warmCount;

  /// Warm storage is enabled.
  final bool warmEnabled;

  /// The instance type for the Elasticsearch cluster's warm nodes.
  final String warmType;

  /// Configuration block containing zone awareness settings.
  final List<GetDomainClusterConfigZoneAwarenessConfig> zoneAwarenessConfigs;

  /// Indicates whether zone awareness is enabled.
  final bool zoneAwarenessEnabled;

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
    final map = <String, dynamic>{};
    map['coldStorageOptions'] = Input.encodeList<
        GetDomainClusterConfigColdStorageOption,
        Map<String, dynamic>>(coldStorageOptions, (value) => value.toMap());
    map['dedicatedMasterCount'] = dedicatedMasterCount;
    map['dedicatedMasterEnabled'] = dedicatedMasterEnabled;
    map['dedicatedMasterType'] = dedicatedMasterType;
    map['instanceCount'] = instanceCount;
    map['instanceType'] = instanceType;
    map['warmCount'] = warmCount;
    map['warmEnabled'] = warmEnabled;
    map['warmType'] = warmType;
    map['zoneAwarenessConfigs'] = Input.encodeList<
        GetDomainClusterConfigZoneAwarenessConfig,
        Map<String, dynamic>>(zoneAwarenessConfigs, (value) => value.toMap());
    map['zoneAwarenessEnabled'] = zoneAwarenessEnabled;
    return map;
  }

  factory GetDomainClusterConfig.fromMap(Map<String, dynamic> map) {
    return GetDomainClusterConfig(
      coldStorageOptions:
          Input.decodeList<GetDomainClusterConfigColdStorageOption>(
              map['coldStorageOptions'],
              (value) => GetDomainClusterConfigColdStorageOption.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dedicatedMasterCount: map['dedicatedMasterCount'] as int,
      dedicatedMasterEnabled: map['dedicatedMasterEnabled'] as bool,
      dedicatedMasterType: map['dedicatedMasterType'] as String,
      instanceCount: map['instanceCount'] as int,
      instanceType: map['instanceType'] as String,
      warmCount: map['warmCount'] as int,
      warmEnabled: map['warmEnabled'] as bool,
      warmType: map['warmType'] as String,
      zoneAwarenessConfigs:
          Input.decodeList<GetDomainClusterConfigZoneAwarenessConfig>(
              map['zoneAwarenessConfigs'],
              (value) => GetDomainClusterConfigZoneAwarenessConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      zoneAwarenessEnabled: map['zoneAwarenessEnabled'] as bool,
    );
  }
}
