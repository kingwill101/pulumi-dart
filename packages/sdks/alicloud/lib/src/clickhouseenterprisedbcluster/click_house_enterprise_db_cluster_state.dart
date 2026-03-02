// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'click_house_enterprise_db_cluster_endpoint.dart';
import 'click_house_enterprise_db_cluster_multi_zone.dart';

/// Input properties used for looking up and filtering ClickHouseEnterpriseDbCluster resources.
class ClickHouseEnterpriseDbClusterState {
  /// Instance type.
  final pulumi.Input<String>? category;
  /// The billing method.
  final pulumi.Input<String>? chargeType;
  /// List of computing group IDs.
  final pulumi.Input<List<String>>? computingGroupIds;
  /// The cluster creation time, in the format yyyy-MM-ddTHH:mm:ssZ.
  final pulumi.Input<String>? createTime;
  /// Cluster description.
  final pulumi.Input<String>? description;
  /// List of endpoint details.
  final pulumi.Input<List<ClickHouseEnterpriseDbClusterEndpoint>>? endpoints;
  /// The minor version number of the cluster engine.
  final pulumi.Input<String>? engineMinorVersion;
  /// Network type of the instance.
  final pulumi.Input<String>? instanceNetworkType;
  /// The multi-zone configuration. See `multi_zones` below.
  final pulumi.Input<List<ClickHouseEnterpriseDbClusterMultiZone>>? multiZones;
  /// The number of nodes. Valid values: 2 to 16. This parameter is required when NodeScaleMin and NodeScaleMax are configured to define the auto-scaling range.
  final pulumi.Input<int>? nodeCount;
  /// Maximum value for serverless node auto scaling. Valid values range from 4 to 32 and must be greater than the minimum value.
  final pulumi.Input<int>? nodeScaleMax;
  /// The minimum value for serverless node auto-scaling. Valid values: 4–32.
  final pulumi.Input<int>? nodeScaleMin;
  /// The region ID.
  final pulumi.Input<String>? regionId;
  /// Resource group ID of the cluster.
  final pulumi.Input<String>? resourceGroupId;
  /// The maximum value for serverless auto scaling. This parameter is not recommended. We recommend that you use NodeCount, NodeScaleMin, and NodeScaleMax to configure auto scaling capabilities.
  final pulumi.Input<String>? scaleMax;
  /// The minimum value for serverless auto scaling. This parameter is not recommended. We recommend that you use NodeCount, NodeScaleMin, and NodeScaleMax to configure auto scaling capabilities.
  final pulumi.Input<String>? scaleMin;
  /// The instance status.
  final pulumi.Input<String>? status;
  /// Pre-purchased storage capacity (GB).
  final pulumi.Input<String>? storageQuota;
  /// The storage capacity.
  final pulumi.Input<int>? storageSize;
  /// The storage type.
  final pulumi.Input<String>? storageType;
  /// Tag information.
  final pulumi.Input<Map<String, String>>? tags;
  /// The VPC ID.
  final pulumi.Input<String>? vpcId;
  /// vSwitch ID.
  final pulumi.Input<String>? vswitchId;
  /// The zone ID.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [ClickHouseEnterpriseDbClusterState].
  /// [category] Instance type.
  /// [chargeType] The billing method.
  /// [computingGroupIds] List of computing group IDs.
  /// [createTime] The cluster creation time, in the format yyyy-MM-ddTHH:mm:ssZ.
  /// [description] Cluster description.
  /// [endpoints] List of endpoint details.
  /// [engineMinorVersion] The minor version number of the cluster engine.
  /// [instanceNetworkType] Network type of the instance.
  /// [multiZones] The multi-zone configuration. See `multi_zones` below.
  /// [nodeCount] The number of nodes. Valid values: 2 to 16. This parameter is required when NodeScaleMin and NodeScaleMax are configured to define the auto-scaling range.
  /// [nodeScaleMax] Maximum value for serverless node auto scaling. Valid values range from 4 to 32 and must be greater than the minimum value.
  /// [nodeScaleMin] The minimum value for serverless node auto-scaling. Valid values: 4–32.
  /// [regionId] The region ID.
  /// [resourceGroupId] Resource group ID of the cluster.
  /// [scaleMax] The maximum value for serverless auto scaling. This parameter is not recommended. We recommend that you use NodeCount, NodeScaleMin, and NodeScaleMax to configure auto scaling capabilities.
  /// [scaleMin] The minimum value for serverless auto scaling. This parameter is not recommended. We recommend that you use NodeCount, NodeScaleMin, and NodeScaleMax to configure auto scaling capabilities.
  /// [status] The instance status.
  /// [storageQuota] Pre-purchased storage capacity (GB).
  /// [storageSize] The storage capacity.
  /// [storageType] The storage type.
  /// [tags] Tag information.
  /// [vpcId] The VPC ID.
  /// [vswitchId] vSwitch ID.
  /// [zoneId] The zone ID.
  ClickHouseEnterpriseDbClusterState({
    this.category,
    this.chargeType,
    this.computingGroupIds,
    this.createTime,
    this.description,
    this.endpoints,
    this.engineMinorVersion,
    this.instanceNetworkType,
    this.multiZones,
    this.nodeCount,
    this.nodeScaleMax,
    this.nodeScaleMin,
    this.regionId,
    this.resourceGroupId,
    this.scaleMax,
    this.scaleMin,
    this.status,
    this.storageQuota,
    this.storageSize,
    this.storageType,
    this.tags,
    this.vpcId,
    this.vswitchId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'chargeType': ?chargeType,
      'computingGroupIds': ?computingGroupIds,
      'createTime': ?createTime,
      'description': ?description,
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<ClickHouseEnterpriseDbClusterEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<ClickHouseEnterpriseDbClusterEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'engineMinorVersion': ?engineMinorVersion,
      'instanceNetworkType': ?instanceNetworkType,
      'multiZones': ?pulumi.Input.mapOptionalInputValue<List<ClickHouseEnterpriseDbClusterMultiZone>, List<Map<String, dynamic>>>(multiZones, (value) => pulumi.Input.encodeList<ClickHouseEnterpriseDbClusterMultiZone, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeCount': ?nodeCount,
      'nodeScaleMax': ?nodeScaleMax,
      'nodeScaleMin': ?nodeScaleMin,
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'scaleMax': ?scaleMax,
      'scaleMin': ?scaleMin,
      'status': ?status,
      'storageQuota': ?storageQuota,
      'storageSize': ?storageSize,
      'storageType': ?storageType,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory ClickHouseEnterpriseDbClusterState.fromMap(Map<String, dynamic> map) {
    return ClickHouseEnterpriseDbClusterState(
      category: map['category'] == null ? null : (map['category'] as String).input(),
      chargeType: map['chargeType'] == null ? null : (map['chargeType'] as String).input(),
      computingGroupIds: map['computingGroupIds'] == null ? null : ((map['computingGroupIds'] as List).cast<String>()).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      endpoints: map['endpoints'] == null ? null : (pulumi.Input.decodeList<ClickHouseEnterpriseDbClusterEndpoint>(map['endpoints'], (value) => ClickHouseEnterpriseDbClusterEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      engineMinorVersion: map['engineMinorVersion'] == null ? null : (map['engineMinorVersion'] as String).input(),
      instanceNetworkType: map['instanceNetworkType'] == null ? null : (map['instanceNetworkType'] as String).input(),
      multiZones: map['multiZones'] == null ? null : (pulumi.Input.decodeList<ClickHouseEnterpriseDbClusterMultiZone>(map['multiZones'], (value) => ClickHouseEnterpriseDbClusterMultiZone.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nodeCount: map['nodeCount'] == null ? null : (map['nodeCount'] as int).input(),
      nodeScaleMax: map['nodeScaleMax'] == null ? null : (map['nodeScaleMax'] as int).input(),
      nodeScaleMin: map['nodeScaleMin'] == null ? null : (map['nodeScaleMin'] as int).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      scaleMax: map['scaleMax'] == null ? null : (map['scaleMax'] as String).input(),
      scaleMin: map['scaleMin'] == null ? null : (map['scaleMin'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      storageQuota: map['storageQuota'] == null ? null : (map['storageQuota'] as String).input(),
      storageSize: map['storageSize'] == null ? null : (map['storageSize'] as int).input(),
      storageType: map['storageType'] == null ? null : (map['storageType'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId'] as String).input(),
    );
  }
}

