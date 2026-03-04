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
      'computeNodes':
          ?pulumi.Input.mapOptionalInputValue<
            List<QueueComputeNode>,
            List<Map<String, dynamic>>
          >(
            computeNodes,
            (value) =>
                pulumi.Input.encodeList<QueueComputeNode, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
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
      clusterId: (() {
        final guardedValue = map['clusterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      computeNodes: (() {
        final guardedValue = map['computeNodes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<QueueComputeNode>(
            guardedValue,
            (value) => QueueComputeNode.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableScaleIn: (() {
        final guardedValue = map['enableScaleIn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableScaleOut: (() {
        final guardedValue = map['enableScaleOut'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      hostnamePrefix: (() {
        final guardedValue = map['hostnamePrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hostnameSuffix: (() {
        final guardedValue = map['hostnameSuffix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      initialCount: (() {
        final guardedValue = map['initialCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      interConnect: (() {
        final guardedValue = map['interConnect'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maxCount: (() {
        final guardedValue = map['maxCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minCount: (() {
        final guardedValue = map['minCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      queueName: (() {
        final guardedValue = map['queueName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchIds: (() {
        final guardedValue = map['vswitchIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
