// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_group_ack_config.dart';
import 'cluster_node_group_auto_scaling_policy.dart';
import 'cluster_node_group_cost_optimized_config.dart';
import 'cluster_node_group_data_disk.dart';
import 'cluster_node_group_private_pool_options.dart';
import 'cluster_node_group_spot_bid_price.dart';
import 'cluster_node_group_subscription_config.dart';
import 'cluster_node_group_system_disk.dart';

class ClusterNodeGroup {
  /// The node group of ack configuration for emr cluster to deploying on kubernetes. See `ack_config` below.
  final ClusterNodeGroupAckConfig? ackConfig;
  /// Additional security Group IDS for Cluster, you can also specify this key for each node group. **NOTE:** From version 1.236.0, `additional_security_group_ids` can be modified.
  final List<String>? additionalSecurityGroupIds;
  /// The node group auto scaling policy for emr cluster. See `auto_scaling_policy` below.
  final ClusterNodeGroupAutoScalingPolicy? autoScalingPolicy;
  /// The detail cost optimized configuration of emr cluster. See `cost_optimized_config` below. **NOTE:** From version 1.236.0, `cost_optimized_config` can be modified.
  final ClusterNodeGroupCostOptimizedConfig? costOptimizedConfig;
  /// Host Ecs data disks information in this node group. See `data_disks` below.
  final List<ClusterNodeGroupDataDisk> dataDisks;
  /// Deployment set strategy for this cluster node group. Supported value: NONE, CLUSTER or NODE_GROUP. **NOTE:** From version 1.236.0, `deployment_set_strategy` can be modified.
  final String? deploymentSetStrategy;
  /// Enable emr cluster of task node graceful decommission, ’true’ or ‘false’ .
  final bool? gracefulShutdown;
  /// Host Ecs instance types. **NOTE:** From version 1.236.0, `instance_types` can be modified.
  final List<String> instanceTypes;
  /// Host Ecs number in this node group.
  final int nodeCount;
  /// The node group name of emr cluster.
  final String nodeGroupName;
  /// The node group type of emr cluster, supported value: MASTER, CORE or TASK. Node group type of GATEWAY is available since v1.219.0. Node group type of MASTER-EXTEND is available since v1.243.0.
  final String nodeGroupType;
  /// Node resize strategy for this cluster node group. Supported value: PRIORITY, COST_OPTIMIZED.
  final String? nodeResizeStrategy;
  /// Payment Type for this cluster. Supported value: PayAsYouGo or Subscription.
  final String? paymentType;
  /// The node group specific private pool resources. See `private_pool_options` below.
  final ClusterNodeGroupPrivatePoolOptions? privatePoolOptions;
  /// The spot bid prices of a PayAsYouGo instance. See `spot_bid_prices` below.
  final List<ClusterNodeGroupSpotBidPrice>? spotBidPrices;
  /// Whether to replace spot instances with newly created spot/onDemand instance when receive a spot recycling message.
  final bool? spotInstanceRemedy;
  /// The spot strategy configuration of emr cluster. Valid values: `NoSpot`, `SpotWithPriceLimit`, `SpotAsPriceGo`.
  final String? spotStrategy;
  /// The detail configuration of subscription payment type. See `subscription_config` below.
  final ClusterNodeGroupSubscriptionConfig? subscriptionConfig;
  /// Host Ecs system disk information in this node group. See `system_disk` below.
  final ClusterNodeGroupSystemDisk systemDisk;
  /// Global vSwitch ids, you can also specify it in node group. **NOTE:** From version 1.236.0, `vswitch_ids` can be modified.
  final List<String>? vswitchIds;
  /// Whether the node has a public IP address enabled. **NOTE:** From version 1.236.0, `with_public_ip` can be modified.
  final bool? withPublicIp;

  /// Creates a new [ClusterNodeGroup].
  /// [ackConfig] The node group of ack configuration for emr cluster to deploying on kubernetes. See `ack_config` below.
  /// [additionalSecurityGroupIds] Additional security Group IDS for Cluster, you can also specify this key for each node group. **NOTE:** From version 1.236.0, `additional_security_group_ids` can be modified.
  /// [autoScalingPolicy] The node group auto scaling policy for emr cluster. See `auto_scaling_policy` below.
  /// [costOptimizedConfig] The detail cost optimized configuration of emr cluster. See `cost_optimized_config` below. **NOTE:** From version 1.236.0, `cost_optimized_config` can be modified.
  /// [dataDisks] Host Ecs data disks information in this node group. See `data_disks` below.
  /// [deploymentSetStrategy] Deployment set strategy for this cluster node group. Supported value: NONE, CLUSTER or NODE_GROUP. **NOTE:** From version 1.236.0, `deployment_set_strategy` can be modified.
  /// [gracefulShutdown] Enable emr cluster of task node graceful decommission, ’true’ or ‘false’ .
  /// [instanceTypes] Host Ecs instance types. **NOTE:** From version 1.236.0, `instance_types` can be modified.
  /// [nodeCount] Host Ecs number in this node group.
  /// [nodeGroupName] The node group name of emr cluster.
  /// [nodeGroupType] The node group type of emr cluster, supported value: MASTER, CORE or TASK. Node group type of GATEWAY is available since v1.219.0. Node group type of MASTER-EXTEND is available since v1.243.0.
  /// [nodeResizeStrategy] Node resize strategy for this cluster node group. Supported value: PRIORITY, COST_OPTIMIZED.
  /// [paymentType] Payment Type for this cluster. Supported value: PayAsYouGo or Subscription.
  /// [privatePoolOptions] The node group specific private pool resources. See `private_pool_options` below.
  /// [spotBidPrices] The spot bid prices of a PayAsYouGo instance. See `spot_bid_prices` below.
  /// [spotInstanceRemedy] Whether to replace spot instances with newly created spot/onDemand instance when receive a spot recycling message.
  /// [spotStrategy] The spot strategy configuration of emr cluster. Valid values: `NoSpot`, `SpotWithPriceLimit`, `SpotAsPriceGo`.
  /// [subscriptionConfig] The detail configuration of subscription payment type. See `subscription_config` below.
  /// [systemDisk] Host Ecs system disk information in this node group. See `system_disk` below.
  /// [vswitchIds] Global vSwitch ids, you can also specify it in node group. **NOTE:** From version 1.236.0, `vswitch_ids` can be modified.
  /// [withPublicIp] Whether the node has a public IP address enabled. **NOTE:** From version 1.236.0, `with_public_ip` can be modified.
  ClusterNodeGroup({
    this.ackConfig,
    this.additionalSecurityGroupIds,
    this.autoScalingPolicy,
    this.costOptimizedConfig,
    required this.dataDisks,
    this.deploymentSetStrategy,
    this.gracefulShutdown,
    required this.instanceTypes,
    required this.nodeCount,
    required this.nodeGroupName,
    required this.nodeGroupType,
    this.nodeResizeStrategy,
    this.paymentType,
    this.privatePoolOptions,
    this.spotBidPrices,
    this.spotInstanceRemedy,
    this.spotStrategy,
    this.subscriptionConfig,
    required this.systemDisk,
    this.vswitchIds,
    this.withPublicIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ackConfig': ?ackConfig == null ? null : ackConfig!.toMap(),
      'additionalSecurityGroupIds': ?additionalSecurityGroupIds,
      'autoScalingPolicy': ?autoScalingPolicy == null ? null : autoScalingPolicy!.toMap(),
      'costOptimizedConfig': ?costOptimizedConfig == null ? null : costOptimizedConfig!.toMap(),
      'dataDisks': pulumi.Input.encodeList<ClusterNodeGroupDataDisk, Map<String, dynamic>>(dataDisks, (value) => value.toMap()),
      'deploymentSetStrategy': ?deploymentSetStrategy,
      'gracefulShutdown': ?gracefulShutdown,
      'instanceTypes': instanceTypes,
      'nodeCount': nodeCount,
      'nodeGroupName': nodeGroupName,
      'nodeGroupType': nodeGroupType,
      'nodeResizeStrategy': ?nodeResizeStrategy,
      'paymentType': ?paymentType,
      'privatePoolOptions': ?privatePoolOptions == null ? null : privatePoolOptions!.toMap(),
      'spotBidPrices': ?spotBidPrices == null ? null : pulumi.Input.encodeList<ClusterNodeGroupSpotBidPrice, Map<String, dynamic>>(spotBidPrices!, (value) => value.toMap()),
      'spotInstanceRemedy': ?spotInstanceRemedy,
      'spotStrategy': ?spotStrategy,
      'subscriptionConfig': ?subscriptionConfig == null ? null : subscriptionConfig!.toMap(),
      'systemDisk': systemDisk.toMap(),
      'vswitchIds': ?vswitchIds,
      'withPublicIp': ?withPublicIp,
    };
  }

  factory ClusterNodeGroup.fromMap(Map<String, dynamic> map) {
    return ClusterNodeGroup(
      ackConfig: map['ackConfig'] == null ? null : ClusterNodeGroupAckConfig.fromMap((map['ackConfig'] as Map).cast<String, dynamic>()),
      additionalSecurityGroupIds: map['additionalSecurityGroupIds'] == null ? null : (map['additionalSecurityGroupIds'] as List).cast<String>(),
      autoScalingPolicy: map['autoScalingPolicy'] == null ? null : ClusterNodeGroupAutoScalingPolicy.fromMap((map['autoScalingPolicy'] as Map).cast<String, dynamic>()),
      costOptimizedConfig: map['costOptimizedConfig'] == null ? null : ClusterNodeGroupCostOptimizedConfig.fromMap((map['costOptimizedConfig'] as Map).cast<String, dynamic>()),
      dataDisks: pulumi.Input.decodeList<ClusterNodeGroupDataDisk>(map['dataDisks'], (value) => ClusterNodeGroupDataDisk.fromMap((value as Map).cast<String, dynamic>())),
      deploymentSetStrategy: map['deploymentSetStrategy'] == null ? null : map['deploymentSetStrategy'] as String,
      gracefulShutdown: map['gracefulShutdown'] == null ? null : map['gracefulShutdown'] as bool,
      instanceTypes: (map['instanceTypes'] as List).cast<String>(),
      nodeCount: map['nodeCount'] as int,
      nodeGroupName: map['nodeGroupName'] as String,
      nodeGroupType: map['nodeGroupType'] as String,
      nodeResizeStrategy: map['nodeResizeStrategy'] == null ? null : map['nodeResizeStrategy'] as String,
      paymentType: map['paymentType'] == null ? null : map['paymentType'] as String,
      privatePoolOptions: map['privatePoolOptions'] == null ? null : ClusterNodeGroupPrivatePoolOptions.fromMap((map['privatePoolOptions'] as Map).cast<String, dynamic>()),
      spotBidPrices: map['spotBidPrices'] == null ? null : pulumi.Input.decodeList<ClusterNodeGroupSpotBidPrice>(map['spotBidPrices'], (value) => ClusterNodeGroupSpotBidPrice.fromMap((value as Map).cast<String, dynamic>())),
      spotInstanceRemedy: map['spotInstanceRemedy'] == null ? null : map['spotInstanceRemedy'] as bool,
      spotStrategy: map['spotStrategy'] == null ? null : map['spotStrategy'] as String,
      subscriptionConfig: map['subscriptionConfig'] == null ? null : ClusterNodeGroupSubscriptionConfig.fromMap((map['subscriptionConfig'] as Map).cast<String, dynamic>()),
      systemDisk: ClusterNodeGroupSystemDisk.fromMap((map['systemDisk'] as Map).cast<String, dynamic>()),
      vswitchIds: map['vswitchIds'] == null ? null : (map['vswitchIds'] as List).cast<String>(),
      withPublicIp: map['withPublicIp'] == null ? null : map['withPublicIp'] as bool,
    );
  }
}

