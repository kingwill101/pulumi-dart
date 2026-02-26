// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_domain_cluster_config_cold_storage_option/get_domain_cluster_config_cold_storage_option2.dart';
import '../get_domain_cluster_config_node_option/get_domain_cluster_config_node_option.dart';
import '../get_domain_cluster_config_zone_awareness_config/get_domain_cluster_config_zone_awareness_config2.dart';

class GetDomainClusterConfig2 {
  /// Configuration block containing cold storage configuration.
  final List<GetDomainClusterConfigColdStorageOption2> coldStorageOptions;

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

  /// Whether a multi-AZ domain is turned on with a standby AZ.
  final bool multiAzWithStandbyEnabled;

  /// List of node options for the domain.
  final List<GetDomainClusterConfigNodeOption> nodeOptions;

  /// Number of warm nodes in the cluster.
  final int warmCount;

  /// Warm storage is enabled.
  final bool? warmEnabled;

  /// Instance type for the OpenSearch cluster's warm nodes.
  final String warmType;

  /// Configuration block containing zone awareness settings.
  final List<GetDomainClusterConfigZoneAwarenessConfig2> zoneAwarenessConfigs;

  /// Indicates whether zone awareness is enabled.
  final bool zoneAwarenessEnabled;

  GetDomainClusterConfig2({
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
    final map = <String, dynamic>{};
    map['coldStorageOptions'] = Input.encodeList<
        GetDomainClusterConfigColdStorageOption2,
        Map<String, dynamic>>(coldStorageOptions, (value) => value.toMap());
    map['dedicatedMasterCount'] = dedicatedMasterCount;
    map['dedicatedMasterEnabled'] = dedicatedMasterEnabled;
    map['dedicatedMasterType'] = dedicatedMasterType;
    map['instanceCount'] = instanceCount;
    map['instanceType'] = instanceType;
    map['multiAzWithStandbyEnabled'] = multiAzWithStandbyEnabled;
    map['nodeOptions'] = Input.encodeList<GetDomainClusterConfigNodeOption,
        Map<String, dynamic>>(nodeOptions, (value) => value.toMap());
    map['warmCount'] = warmCount;
    final warmEnabledValue = warmEnabled;
    if (warmEnabledValue != null) {
      map['warmEnabled'] = warmEnabledValue;
    }
    map['warmType'] = warmType;
    map['zoneAwarenessConfigs'] = Input.encodeList<
        GetDomainClusterConfigZoneAwarenessConfig2,
        Map<String, dynamic>>(zoneAwarenessConfigs, (value) => value.toMap());
    map['zoneAwarenessEnabled'] = zoneAwarenessEnabled;
    return map;
  }

  factory GetDomainClusterConfig2.fromMap(Map<String, dynamic> map) {
    return GetDomainClusterConfig2(
      coldStorageOptions:
          Input.decodeList<GetDomainClusterConfigColdStorageOption2>(
              map['coldStorageOptions'],
              (value) => GetDomainClusterConfigColdStorageOption2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dedicatedMasterCount: map['dedicatedMasterCount'] as int,
      dedicatedMasterEnabled: map['dedicatedMasterEnabled'] as bool,
      dedicatedMasterType: map['dedicatedMasterType'] as String,
      instanceCount: map['instanceCount'] as int,
      instanceType: map['instanceType'] as String,
      multiAzWithStandbyEnabled: map['multiAzWithStandbyEnabled'] as bool,
      nodeOptions: Input.decodeList<GetDomainClusterConfigNodeOption>(
          map['nodeOptions'],
          (value) => GetDomainClusterConfigNodeOption.fromMap(
              (value as Map).cast<String, dynamic>())),
      warmCount: map['warmCount'] as int,
      warmEnabled:
          map['warmEnabled'] == null ? null : map['warmEnabled'] as bool,
      warmType: map['warmType'] as String,
      zoneAwarenessConfigs:
          Input.decodeList<GetDomainClusterConfigZoneAwarenessConfig2>(
              map['zoneAwarenessConfigs'],
              (value) => GetDomainClusterConfigZoneAwarenessConfig2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      zoneAwarenessEnabled: map['zoneAwarenessEnabled'] as bool,
    );
  }
}
