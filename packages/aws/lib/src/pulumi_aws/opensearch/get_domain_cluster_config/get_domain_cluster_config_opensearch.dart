// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_domain_cluster_config_cold_storage_option/get_domain_cluster_config_cold_storage_option_opensearch.dart';
import '../get_domain_cluster_config_node_option/get_domain_cluster_config_node_option.dart';
import '../get_domain_cluster_config_zone_awareness_config/get_domain_cluster_config_zone_awareness_config_opensearch.dart';

class GetDomainClusterConfigOpensearch {
  /// Configuration block containing cold storage configuration.
  final List<GetDomainClusterConfigColdStorageOptionOpensearch>
      coldStorageOptions;

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
  final List<GetDomainClusterConfigZoneAwarenessConfigOpensearch>
      zoneAwarenessConfigs;

  /// Indicates whether zone awareness is enabled.
  final bool zoneAwarenessEnabled;

  GetDomainClusterConfigOpensearch({
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
    map['coldStorageOptions'] = pulumi.Input.encodeList<
        GetDomainClusterConfigColdStorageOptionOpensearch,
        Map<String, dynamic>>(coldStorageOptions, (value) => value.toMap());
    map['dedicatedMasterCount'] = dedicatedMasterCount;
    map['dedicatedMasterEnabled'] = dedicatedMasterEnabled;
    map['dedicatedMasterType'] = dedicatedMasterType;
    map['instanceCount'] = instanceCount;
    map['instanceType'] = instanceType;
    map['multiAzWithStandbyEnabled'] = multiAzWithStandbyEnabled;
    map['nodeOptions'] = pulumi.Input.encodeList<
        GetDomainClusterConfigNodeOption,
        Map<String, dynamic>>(nodeOptions, (value) => value.toMap());
    map['warmCount'] = warmCount;
    final warmEnabledValue = warmEnabled;
    if (warmEnabledValue != null) {
      map['warmEnabled'] = warmEnabledValue;
    }
    map['warmType'] = warmType;
    map['zoneAwarenessConfigs'] = pulumi.Input.encodeList<
        GetDomainClusterConfigZoneAwarenessConfigOpensearch,
        Map<String, dynamic>>(zoneAwarenessConfigs, (value) => value.toMap());
    map['zoneAwarenessEnabled'] = zoneAwarenessEnabled;
    return map;
  }

  factory GetDomainClusterConfigOpensearch.fromMap(Map<String, dynamic> map) {
    return GetDomainClusterConfigOpensearch(
      coldStorageOptions: pulumi.Input.decodeList<
              GetDomainClusterConfigColdStorageOptionOpensearch>(
          map['coldStorageOptions'],
          (value) => GetDomainClusterConfigColdStorageOptionOpensearch.fromMap(
              (value as Map).cast<String, dynamic>())),
      dedicatedMasterCount: map['dedicatedMasterCount'] as int,
      dedicatedMasterEnabled: map['dedicatedMasterEnabled'] as bool,
      dedicatedMasterType: map['dedicatedMasterType'] as String,
      instanceCount: map['instanceCount'] as int,
      instanceType: map['instanceType'] as String,
      multiAzWithStandbyEnabled: map['multiAzWithStandbyEnabled'] as bool,
      nodeOptions: pulumi.Input.decodeList<GetDomainClusterConfigNodeOption>(
          map['nodeOptions'],
          (value) => GetDomainClusterConfigNodeOption.fromMap(
              (value as Map).cast<String, dynamic>())),
      warmCount: map['warmCount'] as int,
      warmEnabled:
          map['warmEnabled'] == null ? null : map['warmEnabled'] as bool,
      warmType: map['warmType'] as String,
      zoneAwarenessConfigs: pulumi.Input.decodeList<
              GetDomainClusterConfigZoneAwarenessConfigOpensearch>(
          map['zoneAwarenessConfigs'],
          (value) =>
              GetDomainClusterConfigZoneAwarenessConfigOpensearch.fromMap(
                  (value as Map).cast<String, dynamic>())),
      zoneAwarenessEnabled: map['zoneAwarenessEnabled'] as bool,
    );
  }
}
