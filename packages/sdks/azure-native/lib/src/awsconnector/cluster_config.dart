// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cold_storage_options.dart';
import 'open_search_partition_instance_type_enum_value.dart';
import 'open_search_warm_partition_instance_type_enum_value.dart';
import 'zone_awareness_config.dart';

/// Definition of ClusterConfig
class ClusterConfig {
  /// &lt;p&gt;Container for cold storage configuration options.&lt;/p&gt;
  final pulumi.Input<ColdStorageOptions?>? coldStorageOptions;
  /// &lt;p&gt;Number of dedicated master nodes in the cluster. This number must be greater than 2 and not 4, otherwise you receive a validation exception.&lt;/p&gt;
  final pulumi.Input<int?>? dedicatedMasterCount;
  /// &lt;p&gt;Indicates whether dedicated master nodes are enabled for the cluster.&lt;code&gt;True&lt;/code&gt; if the cluster will use a dedicated master node.&lt;code&gt;False&lt;/code&gt; if the cluster will not.&lt;/p&gt;
  final pulumi.Input<bool?>? dedicatedMasterEnabled;
  /// &lt;p&gt;OpenSearch Service instance type of the dedicated master nodes in the cluster.&lt;/p&gt;
  final pulumi.Input<OpenSearchPartitionInstanceTypeEnumValue?>? dedicatedMasterType;
  /// &lt;p&gt;Number of data nodes in the cluster. This number must be greater than 1, otherwise you receive a validation exception.&lt;/p&gt;
  final pulumi.Input<int?>? instanceCount;
  /// &lt;p&gt;Instance type of data nodes in the cluster.&lt;/p&gt;
  final pulumi.Input<OpenSearchPartitionInstanceTypeEnumValue?>? instanceType;
  /// &lt;p&gt;A boolean that indicates whether a multi-AZ domain is turned on with a standby AZ. For more information, see &lt;a href='https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-multiaz.html'&gt;Configuring a multi-AZ domain in Amazon OpenSearch Service&lt;/a&gt;. &lt;/p&gt;
  final pulumi.Input<bool?>? multiAZWithStandbyEnabled;
  /// &lt;p&gt;The number of warm nodes in the cluster.&lt;/p&gt;
  final pulumi.Input<int?>? warmCount;
  /// &lt;p&gt;Whether to enable warm storage for the cluster.&lt;/p&gt;
  final pulumi.Input<bool?>? warmEnabled;
  /// &lt;p&gt;The instance type for the cluster's warm nodes.&lt;/p&gt;
  final pulumi.Input<OpenSearchWarmPartitionInstanceTypeEnumValue?>? warmType;
  /// &lt;p&gt;Container for zone awareness configuration options. Only required if &lt;code&gt;ZoneAwarenessEnabled&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt;
  final pulumi.Input<ZoneAwarenessConfig?>? zoneAwarenessConfig;
  /// &lt;p&gt;Indicates whether multiple Availability Zones are enabled. For more information, see &lt;a href='https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-multiaz.html'&gt;Configuring a multi-AZ domain in Amazon OpenSearch Service&lt;/a&gt;.&lt;/p&gt;
  final pulumi.Input<bool?>? zoneAwarenessEnabled;

  /// Creates a new [ClusterConfig].
  /// [coldStorageOptions] &lt;p&gt;Container for cold storage configuration options.&lt;/p&gt;
  /// [dedicatedMasterCount] &lt;p&gt;Number of dedicated master nodes in the cluster. This number must be greater than 2 and not 4, otherwise you receive a validation exception.&lt;/p&gt;
  /// [dedicatedMasterEnabled] &lt;p&gt;Indicates whether dedicated master nodes are enabled for the cluster.&lt;code&gt;True&lt;/code&gt; if the cluster will use a dedicated master node.&lt;code&gt;False&lt;/code&gt; if the cluster will not.&lt;/p&gt;
  /// [dedicatedMasterType] &lt;p&gt;OpenSearch Service instance type of the dedicated master nodes in the cluster.&lt;/p&gt;
  /// [instanceCount] &lt;p&gt;Number of data nodes in the cluster. This number must be greater than 1, otherwise you receive a validation exception.&lt;/p&gt;
  /// [instanceType] &lt;p&gt;Instance type of data nodes in the cluster.&lt;/p&gt;
  /// [multiAZWithStandbyEnabled] &lt;p&gt;A boolean that indicates whether a multi-AZ domain is turned on with a standby AZ. For more information, see &lt;a href='https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-multiaz.html'&gt;Configuring a multi-AZ domain in Amazon OpenSearch Service&lt;/a&gt;. &lt;/p&gt;
  /// [warmCount] &lt;p&gt;The number of warm nodes in the cluster.&lt;/p&gt;
  /// [warmEnabled] &lt;p&gt;Whether to enable warm storage for the cluster.&lt;/p&gt;
  /// [warmType] &lt;p&gt;The instance type for the cluster's warm nodes.&lt;/p&gt;
  /// [zoneAwarenessConfig] &lt;p&gt;Container for zone awareness configuration options. Only required if &lt;code&gt;ZoneAwarenessEnabled&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt;
  /// [zoneAwarenessEnabled] &lt;p&gt;Indicates whether multiple Availability Zones are enabled. For more information, see &lt;a href='https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-multiaz.html'&gt;Configuring a multi-AZ domain in Amazon OpenSearch Service&lt;/a&gt;.&lt;/p&gt;
  const ClusterConfig({
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
      coldStorageOptions: (() { final guardedValue = map['coldStorageOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ColdStorageOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dedicatedMasterCount: (() { final guardedValue = map['dedicatedMasterCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      dedicatedMasterEnabled: (() { final guardedValue = map['dedicatedMasterEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dedicatedMasterType: (() { final guardedValue = map['dedicatedMasterType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpenSearchPartitionInstanceTypeEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpenSearchPartitionInstanceTypeEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      multiAZWithStandbyEnabled: (() { final guardedValue = map['multiAZWithStandbyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      warmCount: (() { final guardedValue = map['warmCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      warmEnabled: (() { final guardedValue = map['warmEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      warmType: (() { final guardedValue = map['warmType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpenSearchWarmPartitionInstanceTypeEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zoneAwarenessConfig: (() { final guardedValue = map['zoneAwarenessConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZoneAwarenessConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zoneAwarenessEnabled: (() { final guardedValue = map['zoneAwarenessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
