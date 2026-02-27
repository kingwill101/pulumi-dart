// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../domain_cluster_config_cold_storage_options/domain_cluster_config_cold_storage_options_opensearch.dart';
import '../domain_cluster_config_node_option/domain_cluster_config_node_option.dart';
import '../domain_cluster_config_zone_awareness_config/domain_cluster_config_zone_awareness_config_opensearch.dart';

class DomainClusterConfigOpensearch {
  /// Configuration block containing cold storage configuration. Detailed below.
  final DomainClusterConfigColdStorageOptionsOpensearch? coldStorageOptions;

  /// Number of dedicated main nodes in the cluster.
  final int? dedicatedMasterCount;

  /// Whether dedicated main nodes are enabled for the cluster.
  final bool? dedicatedMasterEnabled;

  /// Instance type of the dedicated main nodes in the cluster.
  final String? dedicatedMasterType;

  /// Number of instances in the cluster.
  final int? instanceCount;

  /// Instance type of data nodes in the cluster.
  final String? instanceType;

  /// Whether a multi-AZ domain is turned on with a standby AZ. For more information, see [Configuring a multi-AZ domain in Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-multiaz.html).
  final bool? multiAzWithStandbyEnabled;

  /// List of node options for the domain.
  final List<DomainClusterConfigNodeOption>? nodeOptions;

  /// Number of warm nodes in the cluster. Valid values are between `2` and `150`. `warm_count` can be only and must be set when `warm_enabled` is set to `true`.
  final int? warmCount;

  /// Whether to enable warm storage.
  final bool? warmEnabled;

  /// Instance type for the OpenSearch cluster's warm nodes. Valid values are `ultrawarm1.medium.search`, `ultrawarm1.large.search` and `ultrawarm1.xlarge.search`. `warm_type` can be only and must be set when `warm_enabled` is set to `true`.
  final String? warmType;

  /// Configuration block containing zone awareness settings. Detailed below.
  final DomainClusterConfigZoneAwarenessConfigOpensearch? zoneAwarenessConfig;

  /// Whether zone awareness is enabled, set to `true` for multi-az deployment. To enable awareness with three Availability Zones, the `availability_zone_count` within the `zone_awareness_config` must be set to `3`.
  final bool? zoneAwarenessEnabled;

  DomainClusterConfigOpensearch({
    this.coldStorageOptions,
    this.dedicatedMasterCount,
    this.dedicatedMasterEnabled,
    this.dedicatedMasterType,
    this.instanceCount,
    this.instanceType,
    this.multiAzWithStandbyEnabled,
    this.nodeOptions,
    this.warmCount,
    this.warmEnabled,
    this.warmType,
    this.zoneAwarenessConfig,
    this.zoneAwarenessEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final coldStorageOptionsValue = coldStorageOptions;
    if (coldStorageOptionsValue != null) {
      map['coldStorageOptions'] = coldStorageOptionsValue.toMap();
    }
    final dedicatedMasterCountValue = dedicatedMasterCount;
    if (dedicatedMasterCountValue != null) {
      map['dedicatedMasterCount'] = dedicatedMasterCountValue;
    }
    final dedicatedMasterEnabledValue = dedicatedMasterEnabled;
    if (dedicatedMasterEnabledValue != null) {
      map['dedicatedMasterEnabled'] = dedicatedMasterEnabledValue;
    }
    final dedicatedMasterTypeValue = dedicatedMasterType;
    if (dedicatedMasterTypeValue != null) {
      map['dedicatedMasterType'] = dedicatedMasterTypeValue;
    }
    final instanceCountValue = instanceCount;
    if (instanceCountValue != null) {
      map['instanceCount'] = instanceCountValue;
    }
    final instanceTypeValue = instanceType;
    if (instanceTypeValue != null) {
      map['instanceType'] = instanceTypeValue;
    }
    final multiAzWithStandbyEnabledValue = multiAzWithStandbyEnabled;
    if (multiAzWithStandbyEnabledValue != null) {
      map['multiAzWithStandbyEnabled'] = multiAzWithStandbyEnabledValue;
    }
    final nodeOptionsValue = nodeOptions;
    if (nodeOptionsValue != null) {
      map['nodeOptions'] = pulumi.Input.encodeList<
          DomainClusterConfigNodeOption,
          Map<String, dynamic>>(nodeOptionsValue, (value) => value.toMap());
    }
    final warmCountValue = warmCount;
    if (warmCountValue != null) {
      map['warmCount'] = warmCountValue;
    }
    final warmEnabledValue = warmEnabled;
    if (warmEnabledValue != null) {
      map['warmEnabled'] = warmEnabledValue;
    }
    final warmTypeValue = warmType;
    if (warmTypeValue != null) {
      map['warmType'] = warmTypeValue;
    }
    final zoneAwarenessConfigValue = zoneAwarenessConfig;
    if (zoneAwarenessConfigValue != null) {
      map['zoneAwarenessConfig'] = zoneAwarenessConfigValue.toMap();
    }
    final zoneAwarenessEnabledValue = zoneAwarenessEnabled;
    if (zoneAwarenessEnabledValue != null) {
      map['zoneAwarenessEnabled'] = zoneAwarenessEnabledValue;
    }
    return map;
  }

  factory DomainClusterConfigOpensearch.fromMap(Map<String, dynamic> map) {
    return DomainClusterConfigOpensearch(
      coldStorageOptions: map['coldStorageOptions'] == null
          ? null
          : DomainClusterConfigColdStorageOptionsOpensearch.fromMap(
              (map['coldStorageOptions'] as Map).cast<String, dynamic>()),
      dedicatedMasterCount: map['dedicatedMasterCount'] == null
          ? null
          : map['dedicatedMasterCount'] as int,
      dedicatedMasterEnabled: map['dedicatedMasterEnabled'] == null
          ? null
          : map['dedicatedMasterEnabled'] as bool,
      dedicatedMasterType: map['dedicatedMasterType'] == null
          ? null
          : map['dedicatedMasterType'] as String,
      instanceCount:
          map['instanceCount'] == null ? null : map['instanceCount'] as int,
      instanceType:
          map['instanceType'] == null ? null : map['instanceType'] as String,
      multiAzWithStandbyEnabled: map['multiAzWithStandbyEnabled'] == null
          ? null
          : map['multiAzWithStandbyEnabled'] as bool,
      nodeOptions: map['nodeOptions'] == null
          ? null
          : pulumi.Input.decodeList<DomainClusterConfigNodeOption>(
              map['nodeOptions'],
              (value) => DomainClusterConfigNodeOption.fromMap(
                  (value as Map).cast<String, dynamic>())),
      warmCount: map['warmCount'] == null ? null : map['warmCount'] as int,
      warmEnabled:
          map['warmEnabled'] == null ? null : map['warmEnabled'] as bool,
      warmType: map['warmType'] == null ? null : map['warmType'] as String,
      zoneAwarenessConfig: map['zoneAwarenessConfig'] == null
          ? null
          : DomainClusterConfigZoneAwarenessConfigOpensearch.fromMap(
              (map['zoneAwarenessConfig'] as Map).cast<String, dynamic>()),
      zoneAwarenessEnabled: map['zoneAwarenessEnabled'] == null
          ? null
          : map['zoneAwarenessEnabled'] as bool,
    );
  }
}
