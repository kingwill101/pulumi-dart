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
  final pulumi.Input<ClusterNodeGroupAckConfig>? ackConfig;
  /// Additional security Group IDS for Cluster, you can also specify this key for each node group. **NOTE:** From version 1.236.0, `additional_security_group_ids` can be modified.
  final pulumi.Input<List<String>>? additionalSecurityGroupIds;
  /// The node group auto scaling policy for emr cluster. See `auto_scaling_policy` below.
  final pulumi.Input<ClusterNodeGroupAutoScalingPolicy>? autoScalingPolicy;
  /// The detail cost optimized configuration of emr cluster. See `cost_optimized_config` below. **NOTE:** From version 1.236.0, `cost_optimized_config` can be modified.
  final pulumi.Input<ClusterNodeGroupCostOptimizedConfig>? costOptimizedConfig;
  /// Host Ecs data disks information in this node group. See `data_disks` below.
  final pulumi.Input<List<ClusterNodeGroupDataDisk>> dataDisks;
  /// Deployment set strategy for this cluster node group. Supported value: NONE, CLUSTER or NODE_GROUP. **NOTE:** From version 1.236.0, `deployment_set_strategy` can be modified.
  final pulumi.Input<String>? deploymentSetStrategy;
  /// Enable emr cluster of task node graceful decommission, ’true’ or ‘false’ .
  final pulumi.Input<bool>? gracefulShutdown;
  /// Host Ecs instance types. **NOTE:** From version 1.236.0, `instance_types` can be modified.
  final pulumi.Input<List<String>> instanceTypes;
  /// Host Ecs number in this node group.
  final pulumi.Input<int> nodeCount;
  /// The node group name of emr cluster.
  final pulumi.Input<String> nodeGroupName;
  /// The node group type of emr cluster, supported value: MASTER, CORE or TASK. Node group type of GATEWAY is available since v1.219.0. Node group type of MASTER-EXTEND is available since v1.243.0.
  final pulumi.Input<String> nodeGroupType;
  /// Node resize strategy for this cluster node group. Supported value: PRIORITY, COST_OPTIMIZED.
  final pulumi.Input<String>? nodeResizeStrategy;
  /// Payment Type for this cluster. Supported value: PayAsYouGo or Subscription.
  final pulumi.Input<String>? paymentType;
  /// The node group specific private pool resources. See `private_pool_options` below.
  final pulumi.Input<ClusterNodeGroupPrivatePoolOptions>? privatePoolOptions;
  /// The spot bid prices of a PayAsYouGo instance. See `spot_bid_prices` below.
  final pulumi.Input<List<ClusterNodeGroupSpotBidPrice>>? spotBidPrices;
  /// Whether to replace spot instances with newly created spot/onDemand instance when receive a spot recycling message.
  final pulumi.Input<bool>? spotInstanceRemedy;
  /// The spot strategy configuration of emr cluster. Valid values: `NoSpot`, `SpotWithPriceLimit`, `SpotAsPriceGo`.
  final pulumi.Input<String>? spotStrategy;
  /// The detail configuration of subscription payment type. See `subscription_config` below.
  final pulumi.Input<ClusterNodeGroupSubscriptionConfig>? subscriptionConfig;
  /// Host Ecs system disk information in this node group. See `system_disk` below.
  final pulumi.Input<ClusterNodeGroupSystemDisk> systemDisk;
  /// Global vSwitch ids, you can also specify it in node group. **NOTE:** From version 1.236.0, `vswitch_ids` can be modified.
  final pulumi.Input<List<String>>? vswitchIds;
  /// Whether the node has a public IP address enabled. **NOTE:** From version 1.236.0, `with_public_ip` can be modified.
  final pulumi.Input<bool>? withPublicIp;

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
  const ClusterNodeGroup({
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
      'ackConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodeGroupAckConfig, Map<String, dynamic>>(ackConfig, (value) => value.toMap()),
      'additionalSecurityGroupIds': ?additionalSecurityGroupIds,
      'autoScalingPolicy': ?pulumi.Input.mapOptionalInputValue<ClusterNodeGroupAutoScalingPolicy, Map<String, dynamic>>(autoScalingPolicy, (value) => value.toMap()),
      'costOptimizedConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodeGroupCostOptimizedConfig, Map<String, dynamic>>(costOptimizedConfig, (value) => value.toMap()),
      'dataDisks': pulumi.Input.mapInputValue<List<ClusterNodeGroupDataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<ClusterNodeGroupDataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deploymentSetStrategy': ?deploymentSetStrategy,
      'gracefulShutdown': ?gracefulShutdown,
      'instanceTypes': instanceTypes,
      'nodeCount': nodeCount,
      'nodeGroupName': nodeGroupName,
      'nodeGroupType': nodeGroupType,
      'nodeResizeStrategy': ?nodeResizeStrategy,
      'paymentType': ?paymentType,
      'privatePoolOptions': ?pulumi.Input.mapOptionalInputValue<ClusterNodeGroupPrivatePoolOptions, Map<String, dynamic>>(privatePoolOptions, (value) => value.toMap()),
      'spotBidPrices': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodeGroupSpotBidPrice>, List<Map<String, dynamic>>>(spotBidPrices, (value) => pulumi.Input.encodeList<ClusterNodeGroupSpotBidPrice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'spotInstanceRemedy': ?spotInstanceRemedy,
      'spotStrategy': ?spotStrategy,
      'subscriptionConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodeGroupSubscriptionConfig, Map<String, dynamic>>(subscriptionConfig, (value) => value.toMap()),
      'systemDisk': pulumi.Input.mapInputValue<ClusterNodeGroupSystemDisk, Map<String, dynamic>>(systemDisk, (value) => value.toMap()),
      'vswitchIds': ?vswitchIds,
      'withPublicIp': ?withPublicIp,
    };
  }

  factory ClusterNodeGroup.fromMap(Map<String, dynamic> map) {
    return ClusterNodeGroup(
      ackConfig: (() { final guardedValue = map['ackConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodeGroupAckConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      additionalSecurityGroupIds: (() { final guardedValue = map['additionalSecurityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      autoScalingPolicy: (() { final guardedValue = map['autoScalingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodeGroupAutoScalingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      costOptimizedConfig: (() { final guardedValue = map['costOptimizedConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodeGroupCostOptimizedConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataDisks: pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterNodeGroupDataDisk>(map['dataDisks']!, (value) => ClusterNodeGroupDataDisk.fromMap((value as Map).cast<String, dynamic>()))),
      deploymentSetStrategy: (() { final guardedValue = map['deploymentSetStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gracefulShutdown: (() { final guardedValue = map['gracefulShutdown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instanceTypes: pulumi.Input.fromValue((map['instanceTypes'] as List).cast<String>()),
      nodeCount: pulumi.Input.fromValue(map['nodeCount'] as int),
      nodeGroupName: pulumi.Input.fromValue(map['nodeGroupName'] as String),
      nodeGroupType: pulumi.Input.fromValue(map['nodeGroupType'] as String),
      nodeResizeStrategy: (() { final guardedValue = map['nodeResizeStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privatePoolOptions: (() { final guardedValue = map['privatePoolOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodeGroupPrivatePoolOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spotBidPrices: (() { final guardedValue = map['spotBidPrices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterNodeGroupSpotBidPrice>(guardedValue, (value) => ClusterNodeGroupSpotBidPrice.fromMap((value as Map).cast<String, dynamic>()))); })(),
      spotInstanceRemedy: (() { final guardedValue = map['spotInstanceRemedy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      spotStrategy: (() { final guardedValue = map['spotStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionConfig: (() { final guardedValue = map['subscriptionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodeGroupSubscriptionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      systemDisk: pulumi.Input.fromValue(ClusterNodeGroupSystemDisk.fromMap((map['systemDisk']! as Map).cast<String, dynamic>())),
      vswitchIds: (() { final guardedValue = map['vswitchIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      withPublicIp: (() { final guardedValue = map['withPublicIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

