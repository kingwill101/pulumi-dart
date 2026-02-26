// ignore_for_file: unused_element, unnecessary_cast

import '../domain_cluster_config_cold_storage_options/domain_cluster_config_cold_storage_options.dart';
import '../domain_cluster_config_zone_awareness_config/domain_cluster_config_zone_awareness_config.dart';

class DomainClusterConfig {
  /// Configuration block containing cold storage configuration. Detailed below.
  final DomainClusterConfigColdStorageOptions? coldStorageOptions;

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

  /// Number of warm nodes in the cluster. Valid values are between <span pulumi-lang-nodejs="`2`" pulumi-lang-dotnet="`2`" pulumi-lang-go="`2`" pulumi-lang-python="`2`" pulumi-lang-yaml="`2`" pulumi-lang-java="`2`">`2`</span> and <span pulumi-lang-nodejs="`150`" pulumi-lang-dotnet="`150`" pulumi-lang-go="`150`" pulumi-lang-python="`150`" pulumi-lang-yaml="`150`" pulumi-lang-java="`150`">`150`</span>. <span pulumi-lang-nodejs="`warmCount`" pulumi-lang-dotnet="`WarmCount`" pulumi-lang-go="`warmCount`" pulumi-lang-python="`warm_count`" pulumi-lang-yaml="`warmCount`" pulumi-lang-java="`warmCount`">`warm_count`</span> can be only and must be set when <span pulumi-lang-nodejs="`warmEnabled`" pulumi-lang-dotnet="`WarmEnabled`" pulumi-lang-go="`warmEnabled`" pulumi-lang-python="`warm_enabled`" pulumi-lang-yaml="`warmEnabled`" pulumi-lang-java="`warmEnabled`">`warm_enabled`</span> is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final int? warmCount;

  /// Whether to enable warm storage.
  final bool? warmEnabled;

  /// Instance type for the Elasticsearch cluster's warm nodes. Valid values are `ultrawarm1.medium.elasticsearch`, `ultrawarm1.large.elasticsearch` and `ultrawarm1.xlarge.elasticsearch`. <span pulumi-lang-nodejs="`warmType`" pulumi-lang-dotnet="`WarmType`" pulumi-lang-go="`warmType`" pulumi-lang-python="`warm_type`" pulumi-lang-yaml="`warmType`" pulumi-lang-java="`warmType`">`warm_type`</span> can be only and must be set when <span pulumi-lang-nodejs="`warmEnabled`" pulumi-lang-dotnet="`WarmEnabled`" pulumi-lang-go="`warmEnabled`" pulumi-lang-python="`warm_enabled`" pulumi-lang-yaml="`warmEnabled`" pulumi-lang-java="`warmEnabled`">`warm_enabled`</span> is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final String? warmType;

  /// Configuration block containing zone awareness settings. Detailed below.
  final DomainClusterConfigZoneAwarenessConfig? zoneAwarenessConfig;

  /// Whether zone awareness is enabled, set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> for multi-az deployment. To enable awareness with three Availability Zones, the <span pulumi-lang-nodejs="`availabilityZoneCount`" pulumi-lang-dotnet="`AvailabilityZoneCount`" pulumi-lang-go="`availabilityZoneCount`" pulumi-lang-python="`availability_zone_count`" pulumi-lang-yaml="`availabilityZoneCount`" pulumi-lang-java="`availabilityZoneCount`">`availability_zone_count`</span> within the <span pulumi-lang-nodejs="`zoneAwarenessConfig`" pulumi-lang-dotnet="`ZoneAwarenessConfig`" pulumi-lang-go="`zoneAwarenessConfig`" pulumi-lang-python="`zone_awareness_config`" pulumi-lang-yaml="`zoneAwarenessConfig`" pulumi-lang-java="`zoneAwarenessConfig`">`zone_awareness_config`</span> must be set to <span pulumi-lang-nodejs="`3`" pulumi-lang-dotnet="`3`" pulumi-lang-go="`3`" pulumi-lang-python="`3`" pulumi-lang-yaml="`3`" pulumi-lang-java="`3`">`3`</span>.
  final bool? zoneAwarenessEnabled;

  DomainClusterConfig({
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

  factory DomainClusterConfig.fromMap(Map<String, dynamic> map) {
    return DomainClusterConfig(
      coldStorageOptions: map['coldStorageOptions'] == null
          ? null
          : DomainClusterConfigColdStorageOptions.fromMap(
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
      warmCount: map['warmCount'] == null ? null : map['warmCount'] as int,
      warmEnabled:
          map['warmEnabled'] == null ? null : map['warmEnabled'] as bool,
      warmType: map['warmType'] == null ? null : map['warmType'] as String,
      zoneAwarenessConfig: map['zoneAwarenessConfig'] == null
          ? null
          : DomainClusterConfigZoneAwarenessConfig.fromMap(
              (map['zoneAwarenessConfig'] as Map).cast<String, dynamic>()),
      zoneAwarenessEnabled: map['zoneAwarenessEnabled'] == null
          ? null
          : map['zoneAwarenessEnabled'] as bool,
    );
  }
}
