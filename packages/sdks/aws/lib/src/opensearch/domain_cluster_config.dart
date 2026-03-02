// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_cluster_config_cold_storage_options.dart';
import 'domain_cluster_config_node_option.dart';
import 'domain_cluster_config_zone_awareness_config.dart';

class DomainClusterConfig {
  /// Configuration block containing cold storage configuration. Detailed below.
  final pulumi.Input<DomainClusterConfigColdStorageOptions>? coldStorageOptions;
  /// Number of dedicated main nodes in the cluster.
  final pulumi.Input<int>? dedicatedMasterCount;
  /// Whether dedicated main nodes are enabled for the cluster.
  final pulumi.Input<bool>? dedicatedMasterEnabled;
  /// Instance type of the dedicated main nodes in the cluster.
  final pulumi.Input<String>? dedicatedMasterType;
  /// Number of instances in the cluster.
  final pulumi.Input<int>? instanceCount;
  /// Instance type of data nodes in the cluster.
  final pulumi.Input<String>? instanceType;
  /// Whether a multi-AZ domain is turned on with a standby AZ. For more information, see [Configuring a multi-AZ domain in Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-multiaz.html).
  final pulumi.Input<bool>? multiAzWithStandbyEnabled;
  /// List of node options for the domain.
  final pulumi.Input<List<DomainClusterConfigNodeOption>>? nodeOptions;
  /// Number of warm nodes in the cluster. Valid values are between `2` and `150`. `warm_count` can be only and must be set when `warm_enabled` is set to `true`.
  final pulumi.Input<int>? warmCount;
  /// Whether to enable warm storage.
  final pulumi.Input<bool>? warmEnabled;
  /// Instance type for the OpenSearch cluster's warm nodes. Valid values are `ultrawarm1.medium.search`, `ultrawarm1.large.search` and `ultrawarm1.xlarge.search`. `warm_type` can be only and must be set when `warm_enabled` is set to `true`.
  final pulumi.Input<String>? warmType;
  /// Configuration block containing zone awareness settings. Detailed below.
  final pulumi.Input<DomainClusterConfigZoneAwarenessConfig>? zoneAwarenessConfig;
  /// Whether zone awareness is enabled, set to `true` for multi-az deployment. To enable awareness with three Availability Zones, the `availability_zone_count` within the `zone_awareness_config` must be set to `3`.
  final pulumi.Input<bool>? zoneAwarenessEnabled;

  /// Creates a new [DomainClusterConfig].
  /// [coldStorageOptions] Configuration block containing cold storage configuration. Detailed below.
  /// [dedicatedMasterCount] Number of dedicated main nodes in the cluster.
  /// [dedicatedMasterEnabled] Whether dedicated main nodes are enabled for the cluster.
  /// [dedicatedMasterType] Instance type of the dedicated main nodes in the cluster.
  /// [instanceCount] Number of instances in the cluster.
  /// [instanceType] Instance type of data nodes in the cluster.
  /// [multiAzWithStandbyEnabled] Whether a multi-AZ domain is turned on with a standby AZ. For more information, see [Configuring a multi-AZ domain in Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-multiaz.html).
  /// [nodeOptions] List of node options for the domain.
  /// [warmCount] Number of warm nodes in the cluster. Valid values are between `2` and `150`. `warm_count` can be only and must be set when `warm_enabled` is set to `true`.
  /// [warmEnabled] Whether to enable warm storage.
  /// [warmType] Instance type for the OpenSearch cluster's warm nodes. Valid values are `ultrawarm1.medium.search`, `ultrawarm1.large.search` and `ultrawarm1.xlarge.search`. `warm_type` can be only and must be set when `warm_enabled` is set to `true`.
  /// [zoneAwarenessConfig] Configuration block containing zone awareness settings. Detailed below.
  /// [zoneAwarenessEnabled] Whether zone awareness is enabled, set to `true` for multi-az deployment. To enable awareness with three Availability Zones, the `availability_zone_count` within the `zone_awareness_config` must be set to `3`.
  DomainClusterConfig({
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
    return <String, dynamic>{
      'coldStorageOptions': ?pulumi.Input.mapOptionalInputValue<DomainClusterConfigColdStorageOptions, Map<String, dynamic>>(coldStorageOptions, (value) => value.toMap()),
      'dedicatedMasterCount': ?dedicatedMasterCount,
      'dedicatedMasterEnabled': ?dedicatedMasterEnabled,
      'dedicatedMasterType': ?dedicatedMasterType,
      'instanceCount': ?instanceCount,
      'instanceType': ?instanceType,
      'multiAzWithStandbyEnabled': ?multiAzWithStandbyEnabled,
      'nodeOptions': ?pulumi.Input.mapOptionalInputValue<List<DomainClusterConfigNodeOption>, List<Map<String, dynamic>>>(nodeOptions, (value) => pulumi.Input.encodeList<DomainClusterConfigNodeOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'warmCount': ?warmCount,
      'warmEnabled': ?warmEnabled,
      'warmType': ?warmType,
      'zoneAwarenessConfig': ?pulumi.Input.mapOptionalInputValue<DomainClusterConfigZoneAwarenessConfig, Map<String, dynamic>>(zoneAwarenessConfig, (value) => value.toMap()),
      'zoneAwarenessEnabled': ?zoneAwarenessEnabled,
    };
  }

  factory DomainClusterConfig.fromMap(Map<String, dynamic> map) {
    return DomainClusterConfig(
      coldStorageOptions: map['coldStorageOptions'] == null ? null : (DomainClusterConfigColdStorageOptions.fromMap((map['coldStorageOptions'] as Map).cast<String, dynamic>())).input(),
      dedicatedMasterCount: map['dedicatedMasterCount'] == null ? null : (map['dedicatedMasterCount'] as int).input(),
      dedicatedMasterEnabled: map['dedicatedMasterEnabled'] == null ? null : (map['dedicatedMasterEnabled'] as bool).input(),
      dedicatedMasterType: map['dedicatedMasterType'] == null ? null : (map['dedicatedMasterType'] as String).input(),
      instanceCount: map['instanceCount'] == null ? null : (map['instanceCount'] as int).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType'] as String).input(),
      multiAzWithStandbyEnabled: map['multiAzWithStandbyEnabled'] == null ? null : (map['multiAzWithStandbyEnabled'] as bool).input(),
      nodeOptions: map['nodeOptions'] == null ? null : (pulumi.Input.decodeList<DomainClusterConfigNodeOption>(map['nodeOptions'], (value) => DomainClusterConfigNodeOption.fromMap((value as Map).cast<String, dynamic>()))).input(),
      warmCount: map['warmCount'] == null ? null : (map['warmCount'] as int).input(),
      warmEnabled: map['warmEnabled'] == null ? null : (map['warmEnabled'] as bool).input(),
      warmType: map['warmType'] == null ? null : (map['warmType'] as String).input(),
      zoneAwarenessConfig: map['zoneAwarenessConfig'] == null ? null : (DomainClusterConfigZoneAwarenessConfig.fromMap((map['zoneAwarenessConfig'] as Map).cast<String, dynamic>())).input(),
      zoneAwarenessEnabled: map['zoneAwarenessEnabled'] == null ? null : (map['zoneAwarenessEnabled'] as bool).input(),
    );
  }
}

