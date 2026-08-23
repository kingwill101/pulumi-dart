// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_cluster_config_cold_storage_options.dart';
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
  /// Number of warm nodes in the cluster. Valid values are between `2` and `150`. `warmCount` can be only and must be set when `warmEnabled` is set to `true`.
  final pulumi.Input<int>? warmCount;
  /// Whether to enable warm storage.
  final pulumi.Input<bool>? warmEnabled;
  /// Instance type for the Elasticsearch cluster's warm nodes. Valid values are `ultrawarm1.medium.elasticsearch`, `ultrawarm1.large.elasticsearch` and `ultrawarm1.xlarge.elasticsearch`. `warmType` can be only and must be set when `warmEnabled` is set to `true`.
  final pulumi.Input<String>? warmType;
  /// Configuration block containing zone awareness settings. Detailed below.
  final pulumi.Input<DomainClusterConfigZoneAwarenessConfig>? zoneAwarenessConfig;
  /// Whether zone awareness is enabled, set to `true` for multi-az deployment. To enable awareness with three Availability Zones, the `availabilityZoneCount` within the `zoneAwarenessConfig` must be set to `3`.
  final pulumi.Input<bool>? zoneAwarenessEnabled;

  /// Creates a new [DomainClusterConfig].
  /// [coldStorageOptions] Configuration block containing cold storage configuration. Detailed below.
  /// [dedicatedMasterCount] Number of dedicated main nodes in the cluster.
  /// [dedicatedMasterEnabled] Whether dedicated main nodes are enabled for the cluster.
  /// [dedicatedMasterType] Instance type of the dedicated main nodes in the cluster.
  /// [instanceCount] Number of instances in the cluster.
  /// [instanceType] Instance type of data nodes in the cluster.
  /// [warmCount] Number of warm nodes in the cluster. Valid values are between `2` and `150`. `warmCount` can be only and must be set when `warmEnabled` is set to `true`.
  /// [warmEnabled] Whether to enable warm storage.
  /// [warmType] Instance type for the Elasticsearch cluster's warm nodes. Valid values are `ultrawarm1.medium.elasticsearch`, `ultrawarm1.large.elasticsearch` and `ultrawarm1.xlarge.elasticsearch`. `warmType` can be only and must be set when `warmEnabled` is set to `true`.
  /// [zoneAwarenessConfig] Configuration block containing zone awareness settings. Detailed below.
  /// [zoneAwarenessEnabled] Whether zone awareness is enabled, set to `true` for multi-az deployment. To enable awareness with three Availability Zones, the `availabilityZoneCount` within the `zoneAwarenessConfig` must be set to `3`.
  const DomainClusterConfig({
    this.coldStorageOptions,
    this.dedicatedMasterCount,
    this.dedicatedMasterEnabled,
    this.dedicatedMasterType,
    this.instanceCount,
    this.instanceType,
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
      'warmCount': ?warmCount,
      'warmEnabled': ?warmEnabled,
      'warmType': ?warmType,
      'zoneAwarenessConfig': ?pulumi.Input.mapOptionalInputValue<DomainClusterConfigZoneAwarenessConfig, Map<String, dynamic>>(zoneAwarenessConfig, (value) => value.toMap()),
      'zoneAwarenessEnabled': ?zoneAwarenessEnabled,
    };
  }

  factory DomainClusterConfig.fromMap(Map<String, dynamic> map) {
    return DomainClusterConfig(
      coldStorageOptions: (() { final guardedValue = map['coldStorageOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainClusterConfigColdStorageOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dedicatedMasterCount: (() { final guardedValue = map['dedicatedMasterCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dedicatedMasterEnabled: (() { final guardedValue = map['dedicatedMasterEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dedicatedMasterType: (() { final guardedValue = map['dedicatedMasterType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      warmCount: (() { final guardedValue = map['warmCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      warmEnabled: (() { final guardedValue = map['warmEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      warmType: (() { final guardedValue = map['warmType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneAwarenessConfig: (() { final guardedValue = map['zoneAwarenessConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainClusterConfigZoneAwarenessConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zoneAwarenessEnabled: (() { final guardedValue = map['zoneAwarenessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
