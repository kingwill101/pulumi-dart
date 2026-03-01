// ignore_for_file: unused_element, unnecessary_cast

import 'cold_storage_options_response.dart';
import 'open_search_partition_instance_type_enum_value_response.dart';
import 'open_search_warm_partition_instance_type_enum_value_response.dart';
import 'zone_awareness_config_response.dart';

/// Definition of ClusterConfig
class ClusterConfigResponse {
  /// <p>Container for cold storage configuration options.</p>
  final ColdStorageOptionsResponse? coldStorageOptions;
  /// <p>Number of dedicated master nodes in the cluster. This number must be greater than 2 and not 4, otherwise you receive a validation exception.</p>
  final int? dedicatedMasterCount;
  /// <p>Indicates whether dedicated master nodes are enabled for the cluster.<code>True</code> if the cluster will use a dedicated master node.<code>False</code> if the cluster will not.</p>
  final bool? dedicatedMasterEnabled;
  /// <p>OpenSearch Service instance type of the dedicated master nodes in the cluster.</p>
  final OpenSearchPartitionInstanceTypeEnumValueResponse? dedicatedMasterType;
  /// <p>Number of data nodes in the cluster. This number must be greater than 1, otherwise you receive a validation exception.</p>
  final int? instanceCount;
  /// <p>Instance type of data nodes in the cluster.</p>
  final OpenSearchPartitionInstanceTypeEnumValueResponse? instanceType;
  /// <p>A boolean that indicates whether a multi-AZ domain is turned on with a standby AZ. For more information, see <a href='https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-multiaz.html'>Configuring a multi-AZ domain in Amazon OpenSearch Service</a>. </p>
  final bool? multiAZWithStandbyEnabled;
  /// <p>The number of warm nodes in the cluster.</p>
  final int? warmCount;
  /// <p>Whether to enable warm storage for the cluster.</p>
  final bool? warmEnabled;
  /// <p>The instance type for the cluster's warm nodes.</p>
  final OpenSearchWarmPartitionInstanceTypeEnumValueResponse? warmType;
  /// <p>Container for zone awareness configuration options. Only required if <code>ZoneAwarenessEnabled</code> is <code>true</code>.</p>
  final ZoneAwarenessConfigResponse? zoneAwarenessConfig;
  /// <p>Indicates whether multiple Availability Zones are enabled. For more information, see <a href='https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-multiaz.html'>Configuring a multi-AZ domain in Amazon OpenSearch Service</a>.</p>
  final bool? zoneAwarenessEnabled;

  /// Creates a new [ClusterConfigResponse].
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
  ClusterConfigResponse({
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
      'coldStorageOptions': ?coldStorageOptions == null ? null : coldStorageOptions!.toMap(),
      'dedicatedMasterCount': ?dedicatedMasterCount,
      'dedicatedMasterEnabled': ?dedicatedMasterEnabled,
      'dedicatedMasterType': ?dedicatedMasterType == null ? null : dedicatedMasterType!.toMap(),
      'instanceCount': ?instanceCount,
      'instanceType': ?instanceType == null ? null : instanceType!.toMap(),
      'multiAZWithStandbyEnabled': ?multiAZWithStandbyEnabled,
      'warmCount': ?warmCount,
      'warmEnabled': ?warmEnabled,
      'warmType': ?warmType == null ? null : warmType!.toMap(),
      'zoneAwarenessConfig': ?zoneAwarenessConfig == null ? null : zoneAwarenessConfig!.toMap(),
      'zoneAwarenessEnabled': ?zoneAwarenessEnabled,
    };
  }

  factory ClusterConfigResponse.fromMap(Map<String, dynamic> map) {
    return ClusterConfigResponse(
      coldStorageOptions: map['coldStorageOptions'] == null ? null : ColdStorageOptionsResponse.fromMap((map['coldStorageOptions'] as Map).cast<String, dynamic>()),
      dedicatedMasterCount: map['dedicatedMasterCount'] == null ? null : map['dedicatedMasterCount'] as int,
      dedicatedMasterEnabled: map['dedicatedMasterEnabled'] == null ? null : map['dedicatedMasterEnabled'] as bool,
      dedicatedMasterType: map['dedicatedMasterType'] == null ? null : OpenSearchPartitionInstanceTypeEnumValueResponse.fromMap((map['dedicatedMasterType'] as Map).cast<String, dynamic>()),
      instanceCount: map['instanceCount'] == null ? null : map['instanceCount'] as int,
      instanceType: map['instanceType'] == null ? null : OpenSearchPartitionInstanceTypeEnumValueResponse.fromMap((map['instanceType'] as Map).cast<String, dynamic>()),
      multiAZWithStandbyEnabled: map['multiAZWithStandbyEnabled'] == null ? null : map['multiAZWithStandbyEnabled'] as bool,
      warmCount: map['warmCount'] == null ? null : map['warmCount'] as int,
      warmEnabled: map['warmEnabled'] == null ? null : map['warmEnabled'] as bool,
      warmType: map['warmType'] == null ? null : OpenSearchWarmPartitionInstanceTypeEnumValueResponse.fromMap((map['warmType'] as Map).cast<String, dynamic>()),
      zoneAwarenessConfig: map['zoneAwarenessConfig'] == null ? null : ZoneAwarenessConfigResponse.fromMap((map['zoneAwarenessConfig'] as Map).cast<String, dynamic>()),
      zoneAwarenessEnabled: map['zoneAwarenessEnabled'] == null ? null : map['zoneAwarenessEnabled'] as bool,
    );
  }
}

