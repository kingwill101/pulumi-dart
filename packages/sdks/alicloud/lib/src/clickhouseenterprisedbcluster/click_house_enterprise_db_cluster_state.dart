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
    pulumi.Output<String>? category,
    pulumi.Output<String>? chargeType,
    pulumi.Output<List<String>>? computingGroupIds,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<List<ClickHouseEnterpriseDbClusterEndpoint>>? endpoints,
    pulumi.Output<String>? engineMinorVersion,
    pulumi.Output<String>? instanceNetworkType,
    pulumi.Output<List<ClickHouseEnterpriseDbClusterMultiZone>>? multiZones,
    pulumi.Output<int>? nodeCount,
    pulumi.Output<int>? nodeScaleMax,
    pulumi.Output<int>? nodeScaleMin,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? scaleMax,
    pulumi.Output<String>? scaleMin,
    pulumi.Output<String>? status,
    pulumi.Output<String>? storageQuota,
    pulumi.Output<int>? storageSize,
    pulumi.Output<String>? storageType,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
    pulumi.Output<String>? zoneId,
  }) :
      category = pulumi.Input.asOptionalInput<String>(category),
      chargeType = pulumi.Input.asOptionalInput<String>(chargeType),
      computingGroupIds = pulumi.Input.asOptionalInput<List<String>>(computingGroupIds),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      endpoints = pulumi.Input.asOptionalInput<List<ClickHouseEnterpriseDbClusterEndpoint>>(endpoints),
      engineMinorVersion = pulumi.Input.asOptionalInput<String>(engineMinorVersion),
      instanceNetworkType = pulumi.Input.asOptionalInput<String>(instanceNetworkType),
      multiZones = pulumi.Input.asOptionalInput<List<ClickHouseEnterpriseDbClusterMultiZone>>(multiZones),
      nodeCount = pulumi.Input.asOptionalInput<int>(nodeCount),
      nodeScaleMax = pulumi.Input.asOptionalInput<int>(nodeScaleMax),
      nodeScaleMin = pulumi.Input.asOptionalInput<int>(nodeScaleMin),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      scaleMax = pulumi.Input.asOptionalInput<String>(scaleMax),
      scaleMin = pulumi.Input.asOptionalInput<String>(scaleMin),
      status = pulumi.Input.asOptionalInput<String>(status),
      storageQuota = pulumi.Input.asOptionalInput<String>(storageQuota),
      storageSize = pulumi.Input.asOptionalInput<int>(storageSize),
      storageType = pulumi.Input.asOptionalInput<String>(storageType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      category: map['category'] == null ? null : pulumi.Output.create<String>(map['category'] as String),
      chargeType: map['chargeType'] == null ? null : pulumi.Output.create<String>(map['chargeType'] as String),
      computingGroupIds: map['computingGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['computingGroupIds'] as List).cast<String>()),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      endpoints: map['endpoints'] == null ? null : pulumi.Output.create<List<ClickHouseEnterpriseDbClusterEndpoint>>(pulumi.Input.decodeList<ClickHouseEnterpriseDbClusterEndpoint>(map['endpoints'], (value) => ClickHouseEnterpriseDbClusterEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      engineMinorVersion: map['engineMinorVersion'] == null ? null : pulumi.Output.create<String>(map['engineMinorVersion'] as String),
      instanceNetworkType: map['instanceNetworkType'] == null ? null : pulumi.Output.create<String>(map['instanceNetworkType'] as String),
      multiZones: map['multiZones'] == null ? null : pulumi.Output.create<List<ClickHouseEnterpriseDbClusterMultiZone>>(pulumi.Input.decodeList<ClickHouseEnterpriseDbClusterMultiZone>(map['multiZones'], (value) => ClickHouseEnterpriseDbClusterMultiZone.fromMap((value as Map).cast<String, dynamic>()))),
      nodeCount: map['nodeCount'] == null ? null : pulumi.Output.create<int>(map['nodeCount'] as int),
      nodeScaleMax: map['nodeScaleMax'] == null ? null : pulumi.Output.create<int>(map['nodeScaleMax'] as int),
      nodeScaleMin: map['nodeScaleMin'] == null ? null : pulumi.Output.create<int>(map['nodeScaleMin'] as int),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      scaleMax: map['scaleMax'] == null ? null : pulumi.Output.create<String>(map['scaleMax'] as String),
      scaleMin: map['scaleMin'] == null ? null : pulumi.Output.create<String>(map['scaleMin'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      storageQuota: map['storageQuota'] == null ? null : pulumi.Output.create<String>(map['storageQuota'] as String),
      storageSize: map['storageSize'] == null ? null : pulumi.Output.create<int>(map['storageSize'] as int),
      storageType: map['storageType'] == null ? null : pulumi.Output.create<String>(map['storageType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

