// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'click_house_enterprise_db_cluster_multi_zone.dart';

/// {@template pulumi_clickhouseenterprisedbcluster_click_house_enterprise_db_cluster_click_house_enterprise_db_cluster_args_doc}
/// The set of arguments for ClickHouseEnterpriseDbCluster.
/// {@endtemplate}
/// {@macro pulumi_clickhouseenterprisedbcluster_click_house_enterprise_db_cluster_click_house_enterprise_db_cluster_args_doc}
class ClickHouseEnterpriseDbClusterArgs {
  /// Cluster description.
  final pulumi.Input<String>? description;
  /// The multi-zone configuration. See `multi_zones` below.
  final pulumi.Input<List<ClickHouseEnterpriseDbClusterMultiZone>>? multiZones;
  /// The number of nodes. Valid values: 2 to 16. This parameter is required when NodeScaleMin and NodeScaleMax are configured to define the auto-scaling range.
  final pulumi.Input<int>? nodeCount;
  /// Maximum value for serverless node auto scaling. Valid values range from 4 to 32 and must be greater than the minimum value.
  final pulumi.Input<int>? nodeScaleMax;
  /// The minimum value for serverless node auto-scaling. Valid values: 4–32.
  final pulumi.Input<int>? nodeScaleMin;
  /// Resource group ID of the cluster.
  final pulumi.Input<String>? resourceGroupId;
  /// The maximum value for serverless auto scaling. This parameter is not recommended. We recommend that you use NodeCount, NodeScaleMin, and NodeScaleMax to configure auto scaling capabilities.
  final pulumi.Input<String>? scaleMax;
  /// The minimum value for serverless auto scaling. This parameter is not recommended. We recommend that you use NodeCount, NodeScaleMin, and NodeScaleMax to configure auto scaling capabilities.
  final pulumi.Input<String>? scaleMin;
  /// Tag information.
  final pulumi.Input<Map<String, String>>? tags;
  /// The VPC ID.
  final pulumi.Input<String>? vpcId;
  /// vSwitch ID.
  final pulumi.Input<String>? vswitchId;
  /// The zone ID.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [ClickHouseEnterpriseDbClusterArgs].
  /// [description] Cluster description.
  /// [multiZones] The multi-zone configuration. See `multi_zones` below.
  /// [nodeCount] The number of nodes. Valid values: 2 to 16. This parameter is required when NodeScaleMin and NodeScaleMax are configured to define the auto-scaling range.
  /// [nodeScaleMax] Maximum value for serverless node auto scaling. Valid values range from 4 to 32 and must be greater than the minimum value.
  /// [nodeScaleMin] The minimum value for serverless node auto-scaling. Valid values: 4–32.
  /// [resourceGroupId] Resource group ID of the cluster.
  /// [scaleMax] The maximum value for serverless auto scaling. This parameter is not recommended. We recommend that you use NodeCount, NodeScaleMin, and NodeScaleMax to configure auto scaling capabilities.
  /// [scaleMin] The minimum value for serverless auto scaling. This parameter is not recommended. We recommend that you use NodeCount, NodeScaleMin, and NodeScaleMax to configure auto scaling capabilities.
  /// [tags] Tag information.
  /// [vpcId] The VPC ID.
  /// [vswitchId] vSwitch ID.
  /// [zoneId] The zone ID.
  ClickHouseEnterpriseDbClusterArgs({
    pulumi.Output<String>? description,
    pulumi.Output<List<ClickHouseEnterpriseDbClusterMultiZone>>? multiZones,
    pulumi.Output<int>? nodeCount,
    pulumi.Output<int>? nodeScaleMax,
    pulumi.Output<int>? nodeScaleMin,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? scaleMax,
    pulumi.Output<String>? scaleMin,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
    pulumi.Output<String>? zoneId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      multiZones = pulumi.Input.asOptionalInput<List<ClickHouseEnterpriseDbClusterMultiZone>>(multiZones),
      nodeCount = pulumi.Input.asOptionalInput<int>(nodeCount),
      nodeScaleMax = pulumi.Input.asOptionalInput<int>(nodeScaleMax),
      nodeScaleMin = pulumi.Input.asOptionalInput<int>(nodeScaleMin),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      scaleMax = pulumi.Input.asOptionalInput<String>(scaleMax),
      scaleMin = pulumi.Input.asOptionalInput<String>(scaleMin),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'multiZones': ?pulumi.Input.mapOptionalInputValue<List<ClickHouseEnterpriseDbClusterMultiZone>, List<Map<String, dynamic>>>(multiZones, (value) => pulumi.Input.encodeList<ClickHouseEnterpriseDbClusterMultiZone, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeCount': ?nodeCount,
      'nodeScaleMax': ?nodeScaleMax,
      'nodeScaleMin': ?nodeScaleMin,
      'resourceGroupId': ?resourceGroupId,
      'scaleMax': ?scaleMax,
      'scaleMin': ?scaleMin,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory ClickHouseEnterpriseDbClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClickHouseEnterpriseDbClusterArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      multiZones: map['multiZones'] == null ? null : pulumi.Output.create<List<ClickHouseEnterpriseDbClusterMultiZone>>(pulumi.Input.decodeList<ClickHouseEnterpriseDbClusterMultiZone>(map['multiZones'], (value) => ClickHouseEnterpriseDbClusterMultiZone.fromMap((value as Map).cast<String, dynamic>()))),
      nodeCount: map['nodeCount'] == null ? null : pulumi.Output.create<int>(map['nodeCount'] as int),
      nodeScaleMax: map['nodeScaleMax'] == null ? null : pulumi.Output.create<int>(map['nodeScaleMax'] as int),
      nodeScaleMin: map['nodeScaleMin'] == null ? null : pulumi.Output.create<int>(map['nodeScaleMin'] as int),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      scaleMax: map['scaleMax'] == null ? null : pulumi.Output.create<String>(map['scaleMax'] as String),
      scaleMin: map['scaleMin'] == null ? null : pulumi.Output.create<String>(map['scaleMin'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

