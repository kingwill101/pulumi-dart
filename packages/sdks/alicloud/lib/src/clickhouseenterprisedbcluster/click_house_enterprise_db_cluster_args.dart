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
    this.description,
    this.multiZones,
    this.nodeCount,
    this.nodeScaleMax,
    this.nodeScaleMin,
    this.resourceGroupId,
    this.scaleMax,
    this.scaleMin,
    this.tags,
    this.vpcId,
    this.vswitchId,
    this.zoneId,
  });

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
      description: map['description'] == null ? null : (map['description'] as String).input(),
      multiZones: map['multiZones'] == null ? null : (pulumi.Input.decodeList<ClickHouseEnterpriseDbClusterMultiZone>(map['multiZones'], (value) => ClickHouseEnterpriseDbClusterMultiZone.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nodeCount: map['nodeCount'] == null ? null : (map['nodeCount'] as int).input(),
      nodeScaleMax: map['nodeScaleMax'] == null ? null : (map['nodeScaleMax'] as int).input(),
      nodeScaleMin: map['nodeScaleMin'] == null ? null : (map['nodeScaleMin'] as int).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      scaleMax: map['scaleMax'] == null ? null : (map['scaleMax'] as String).input(),
      scaleMin: map['scaleMin'] == null ? null : (map['scaleMin'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId'] as String).input(),
    );
  }
}

