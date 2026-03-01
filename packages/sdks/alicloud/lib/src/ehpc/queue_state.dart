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
    pulumi.Output<String>? clusterId,
    pulumi.Output<List<QueueComputeNode>>? computeNodes,
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? enableScaleIn,
    pulumi.Output<bool>? enableScaleOut,
    pulumi.Output<String>? hostnamePrefix,
    pulumi.Output<String>? hostnameSuffix,
    pulumi.Output<int>? initialCount,
    pulumi.Output<String>? interConnect,
    pulumi.Output<int>? maxCount,
    pulumi.Output<int>? minCount,
    pulumi.Output<String>? queueName,
    pulumi.Output<List<String>>? vswitchIds,
  }) :
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      computeNodes = pulumi.Input.asOptionalInput<List<QueueComputeNode>>(computeNodes),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      enableScaleIn = pulumi.Input.asOptionalInput<bool>(enableScaleIn),
      enableScaleOut = pulumi.Input.asOptionalInput<bool>(enableScaleOut),
      hostnamePrefix = pulumi.Input.asOptionalInput<String>(hostnamePrefix),
      hostnameSuffix = pulumi.Input.asOptionalInput<String>(hostnameSuffix),
      initialCount = pulumi.Input.asOptionalInput<int>(initialCount),
      interConnect = pulumi.Input.asOptionalInput<String>(interConnect),
      maxCount = pulumi.Input.asOptionalInput<int>(maxCount),
      minCount = pulumi.Input.asOptionalInput<int>(minCount),
      queueName = pulumi.Input.asOptionalInput<String>(queueName),
      vswitchIds = pulumi.Input.asOptionalInput<List<String>>(vswitchIds);

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
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      computeNodes: map['computeNodes'] == null ? null : pulumi.Output.create<List<QueueComputeNode>>(pulumi.Input.decodeList<QueueComputeNode>(map['computeNodes'], (value) => QueueComputeNode.fromMap((value as Map).cast<String, dynamic>()))),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      enableScaleIn: map['enableScaleIn'] == null ? null : pulumi.Output.create<bool>(map['enableScaleIn'] as bool),
      enableScaleOut: map['enableScaleOut'] == null ? null : pulumi.Output.create<bool>(map['enableScaleOut'] as bool),
      hostnamePrefix: map['hostnamePrefix'] == null ? null : pulumi.Output.create<String>(map['hostnamePrefix'] as String),
      hostnameSuffix: map['hostnameSuffix'] == null ? null : pulumi.Output.create<String>(map['hostnameSuffix'] as String),
      initialCount: map['initialCount'] == null ? null : pulumi.Output.create<int>(map['initialCount'] as int),
      interConnect: map['interConnect'] == null ? null : pulumi.Output.create<String>(map['interConnect'] as String),
      maxCount: map['maxCount'] == null ? null : pulumi.Output.create<int>(map['maxCount'] as int),
      minCount: map['minCount'] == null ? null : pulumi.Output.create<int>(map['minCount'] as int),
      queueName: map['queueName'] == null ? null : pulumi.Output.create<String>(map['queueName'] as String),
      vswitchIds: map['vswitchIds'] == null ? null : pulumi.Output.create<List<String>>((map['vswitchIds'] as List).cast<String>()),
    );
  }
}

