// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'queue_compute_node.dart';

/// Input properties used for looking up and filtering Queue resources.
class QueueState {
  /// The cluster ID.
  /// You can call the ListClusters operation to query the cluster ID.
  final pulumi.Input<String>? clusterId;
  /// The hardware configurations of the compute nodes in the queue. Valid values of N: 1 to 10. See `compute_nodes` below.
  final pulumi.Input<List<QueueComputeNode>>? computeNodes;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// Specifies whether to enable auto scale-in for the queue. Valid values:
  ///
  /// - true
  /// - false
  final pulumi.Input<bool>? enableScaleIn;
  /// Specifies whether to enable auto scale-out for the queue. Valid values:
  ///
  /// - true
  /// - false
  final pulumi.Input<bool>? enableScaleOut;
  /// The hostname prefix of the added compute nodes.
  final pulumi.Input<String>? hostnamePrefix;
  /// The hostname suffix of the compute nodes in the queue.
  final pulumi.Input<String>? hostnameSuffix;
  /// The initial number of compute nodes in the queue.
  final pulumi.Input<int>? initialCount;
  /// The type of the network for interconnecting compute nodes in the queue.
  final pulumi.Input<String>? interConnect;
  /// The maximum number of compute nodes that the queue can contain.
  final pulumi.Input<int>? maxCount;
  /// The minimum number of compute nodes that the queue must contain.
  final pulumi.Input<int>? minCount;
  /// The queue name.
  final pulumi.Input<String>? queueName;
  /// The vSwitches available for use by compute nodes in the queue.
  final pulumi.Input<List<String>>? vswitchIds;

  /// Creates a new [QueueState].
  /// [clusterId] The cluster ID.
  /// [computeNodes] The hardware configurations of the compute nodes in the queue. Valid values of N: 1 to 10. See `compute_nodes` below.
  /// [createTime] The creation time of the resource
  /// [enableScaleIn] Specifies whether to enable auto scale-in for the queue. Valid values:
  /// [enableScaleOut] Specifies whether to enable auto scale-out for the queue. Valid values:
  /// [hostnamePrefix] The hostname prefix of the added compute nodes.
  /// [hostnameSuffix] The hostname suffix of the compute nodes in the queue.
  /// [initialCount] The initial number of compute nodes in the queue.
  /// [interConnect] The type of the network for interconnecting compute nodes in the queue.
  /// [maxCount] The maximum number of compute nodes that the queue can contain.
  /// [minCount] The minimum number of compute nodes that the queue must contain.
  /// [queueName] The queue name.
  /// [vswitchIds] The vSwitches available for use by compute nodes in the queue.
  QueueState({
    this.clusterId,
    this.computeNodes,
    this.createTime,
    this.enableScaleIn,
    this.enableScaleOut,
    this.hostnamePrefix,
    this.hostnameSuffix,
    this.initialCount,
    this.interConnect,
    this.maxCount,
    this.minCount,
    this.queueName,
    this.vswitchIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'computeNodes': ?pulumi.Input.mapOptionalInputValue<List<QueueComputeNode>, List<Map<String, dynamic>>>(computeNodes, (value) => pulumi.Input.encodeList<QueueComputeNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'enableScaleIn': ?enableScaleIn,
      'enableScaleOut': ?enableScaleOut,
      'hostnamePrefix': ?hostnamePrefix,
      'hostnameSuffix': ?hostnameSuffix,
      'initialCount': ?initialCount,
      'interConnect': ?interConnect,
      'maxCount': ?maxCount,
      'minCount': ?minCount,
      'queueName': ?queueName,
      'vswitchIds': ?vswitchIds,
    };
  }

  factory QueueState.fromMap(Map<String, dynamic> map) {
    return QueueState(
      clusterId: map['clusterId'] == null ? null : (map['clusterId'] as String).input(),
      computeNodes: map['computeNodes'] == null ? null : (pulumi.Input.decodeList<QueueComputeNode>(map['computeNodes'], (value) => QueueComputeNode.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      enableScaleIn: map['enableScaleIn'] == null ? null : (map['enableScaleIn'] as bool).input(),
      enableScaleOut: map['enableScaleOut'] == null ? null : (map['enableScaleOut'] as bool).input(),
      hostnamePrefix: map['hostnamePrefix'] == null ? null : (map['hostnamePrefix'] as String).input(),
      hostnameSuffix: map['hostnameSuffix'] == null ? null : (map['hostnameSuffix'] as String).input(),
      initialCount: map['initialCount'] == null ? null : (map['initialCount'] as int).input(),
      interConnect: map['interConnect'] == null ? null : (map['interConnect'] as String).input(),
      maxCount: map['maxCount'] == null ? null : (map['maxCount'] as int).input(),
      minCount: map['minCount'] == null ? null : (map['minCount'] as int).input(),
      queueName: map['queueName'] == null ? null : (map['queueName'] as String).input(),
      vswitchIds: map['vswitchIds'] == null ? null : ((map['vswitchIds'] as List).cast<String>()).input(),
    );
  }
}

