// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cold_storage_options.dart';
import 'open_search_partition_instance_type_enum_value.dart';
import 'open_search_warm_partition_instance_type_enum_value.dart';
import 'zone_awareness_config.dart';

/// Definition of ClusterConfig
class ClusterConfig {
  /// <p>Container for cold storage configuration options.</p>
  final pulumi.Input<ColdStorageOptions>? coldStorageOptions;
  /// <p>Number of dedicated master nodes in the cluster. This number must be greater than 2 and not 4, otherwise you receive a validation exception.</p>
  final pulumi.Input<int>? dedicatedMasterCount;
  /// <p>Indicates whether dedicated master nodes are enabled for the cluster.<code>True</code> if the cluster will use a dedicated master node.<code>False</code> if the cluster will not.</p>
  final pulumi.Input<bool>? dedicatedMasterEnabled;
  /// <p>OpenSearch Service instance type of the dedicated master nodes in the cluster.</p>
  final pulumi.Input<OpenSearchPartitionInstanceTypeEnumValue>? dedicatedMasterType;
  /// <p>Number of data nodes in the cluster. This number must be greater than 1, otherwise you receive a validation exception.</p>
  final pulumi.Input<int>? instanceCount;
  /// <p>Instance type of data nodes in the cluster.</p>
  final pulumi.Input<OpenSearchPartitionInstanceTypeEnumValue>? instanceType;
  /// <p>A boolean that indicates whether a multi-AZ domain is turned on with a standby AZ. For more information, see <a href='https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-multiaz.html'>Configuring a multi-AZ domain in Amazon OpenSearch Service</a>. </p>
  final pulumi.Input<bool>? multiAZWithStandbyEnabled;
  /// <p>The number of warm nodes in the cluster.</p>
  final pulumi.Input<int>? warmCount;
  /// <p>Whether to enable warm storage for the cluster.</p>
  final pulumi.Input<bool>? warmEnabled;
  /// <p>The instance type for the cluster's warm nodes.</p>
  final pulumi.Input<OpenSearchWarmPartitionInstanceTypeEnumValue>? warmType;
  /// <p>Container for zone awareness configuration options. Only required if <code>ZoneAwarenessEnabled</code> is <code>true</code>.</p>
  final pulumi.Input<ZoneAwarenessConfig>? zoneAwarenessConfig;
  /// <p>Indicates whether multiple Availability Zones are enabled. For more information, see <a href='https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-multiaz.html'>Configuring a multi-AZ domain in Amazon OpenSearch Service</a>.</p>
  final pulumi.Input<bool>? zoneAwarenessEnabled;

  /// Creates a new [ClusterConfig].
  /// [coldStorageOptions] <p>Container for cold storage configuration options.</p>
  /// [dedicatedMasterCount] <p>Number of dedicated master nodes in the cluster. This number must be greater than 2 and not 4, otherwise you receive a validation exception.</p>
  /// [dedicatedMasterEnabled] <p>Indicates whether dedicated master nodes are enabled for the cluster.<code>True</code> if the cluster will use a dedicated master node.<code>False</code> if the cluster will not.</p>
  /// [dedicatedMasterType] <p>OpenSearch Service instance type of the dedicated master nodes in the cluster.</p>
  /// [instanceCount] <p>Number of data nodes in the cluster. This number must be greater than 1, otherwise you receive a validation exception.</p>
  /// [instanceType] <p>Instance type of data nodes in the cluster.</p>
  /// [multiAZWithStandbyEnabled] <p>A boolean that indicates whether a multi-AZ domain is turned on with a standby AZ. For more information, see <a href='https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-multiaz.html'>Configuring a multi-AZ domain in Amazon OpenSearch Service</a>. </p>
  /// [warmCount] <p>The number of warm nodes in the cluster.</p>
  /// [warmEnabled] <p>Whether to enable warm storage for the cluster.</p>
  /// [warmType] <p>The instance type for the cluster's warm nodes.</p>
  /// [zoneAwarenessConfig] <p>Container for zone awareness configuration options. Only required if <code>ZoneAwarenessEnabled</code> is <code>true</code>.</p>
  /// [zoneAwarenessEnabled] <p>Indicates whether multiple Availability Zones are enabled. For more information, see <a href='https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-multiaz.html'>Configuring a multi-AZ domain in Amazon OpenSearch Service</a>.</p>
  ClusterConfig({
    this.coldStorageOptions,
    this.dedicatedMasterCount,
    this.dedicatedMasterEnabled,
    this.dedicatedMasterType,
    this.instanceCount,
    this.instanceType,
    this.multiAZWithStandbyEnabled,
    this.warmCount,
    this.warmEnabled,
    this.warmType,
    this.zoneAwarenessConfig,
    this.zoneAwarenessEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coldStorageOptions': ?pulumi.Input.mapOptionalInputValue<ColdStorageOptions, Map<String, dynamic>>(coldStorageOptions, (value) => value.toMap()),
      'dedicatedMasterCount': ?dedicatedMasterCount,
      'dedicatedMasterEnabled': ?dedicatedMasterEnabled,
      'dedicatedMasterType': ?pulumi.Input.mapOptionalInputValue<OpenSearchPartitionInstanceTypeEnumValue, Map<String, dynamic>>(dedicatedMasterType, (value) => value.toMap()),
      'instanceCount': ?instanceCount,
      'instanceType': ?pulumi.Input.mapOptionalInputValue<OpenSearchPartitionInstanceTypeEnumValue, Map<String, dynamic>>(instanceType, (value) => value.toMap()),
      'multiAZWithStandbyEnabled': ?multiAZWithStandbyEnabled,
      'warmCount': ?warmCount,
      'warmEnabled': ?warmEnabled,
      'warmType': ?pulumi.Input.mapOptionalInputValue<OpenSearchWarmPartitionInstanceTypeEnumValue, Map<String, dynamic>>(warmType, (value) => value.toMap()),
      'zoneAwarenessConfig': ?pulumi.Input.mapOptionalInputValue<ZoneAwarenessConfig, Map<String, dynamic>>(zoneAwarenessConfig, (value) => value.toMap()),
      'zoneAwarenessEnabled': ?zoneAwarenessEnabled,
    };
  }

  factory ClusterConfig.fromMap(Map<String, dynamic> map) {
    return ClusterConfig(
      coldStorageOptions: map['coldStorageOptions'] == null ? null : (ColdStorageOptions.fromMap((map['coldStorageOptions'] as Map).cast<String, dynamic>())).input(),
      dedicatedMasterCount: map['dedicatedMasterCount'] == null ? null : (map['dedicatedMasterCount'] as int).input(),
      dedicatedMasterEnabled: map['dedicatedMasterEnabled'] == null ? null : (map['dedicatedMasterEnabled'] as bool).input(),
      dedicatedMasterType: map['dedicatedMasterType'] == null ? null : (OpenSearchPartitionInstanceTypeEnumValue.fromMap((map['dedicatedMasterType'] as Map).cast<String, dynamic>())).input(),
      instanceCount: map['instanceCount'] == null ? null : (map['instanceCount'] as int).input(),
      instanceType: map['instanceType'] == null ? null : (OpenSearchPartitionInstanceTypeEnumValue.fromMap((map['instanceType'] as Map).cast<String, dynamic>())).input(),
      multiAZWithStandbyEnabled: map['multiAZWithStandbyEnabled'] == null ? null : (map['multiAZWithStandbyEnabled'] as bool).input(),
      warmCount: map['warmCount'] == null ? null : (map['warmCount'] as int).input(),
      warmEnabled: map['warmEnabled'] == null ? null : (map['warmEnabled'] as bool).input(),
      warmType: map['warmType'] == null ? null : (OpenSearchWarmPartitionInstanceTypeEnumValue.fromMap((map['warmType'] as Map).cast<String, dynamic>())).input(),
      zoneAwarenessConfig: map['zoneAwarenessConfig'] == null ? null : (ZoneAwarenessConfig.fromMap((map['zoneAwarenessConfig'] as Map).cast<String, dynamic>())).input(),
      zoneAwarenessEnabled: map['zoneAwarenessEnabled'] == null ? null : (map['zoneAwarenessEnabled'] as bool).input(),
    );
  }
}

