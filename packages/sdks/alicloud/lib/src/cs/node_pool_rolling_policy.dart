// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolRollingPolicy {
  /// The upgrade interval time between batches, in minutes. This parameter only takes effect when `pause_policy` is set to `NotPause`.
  final pulumi.Input<String>? batchInterval;
  /// The maximum number of nodes that can be upgraded in parallel per batch when updating nodes in the node pool.
  final pulumi.Input<int>? maxParallelism;
  /// Specify the list of nodes to be upgraded.
  final pulumi.Input<List<String>>? nodeNames;
  /// The auto-pause policy during node upgrade. Valid values:
  /// - `FirstBatch`: Pause after the first batch is completed.
  /// - `EveryBatch`: Pause after each batch is completed.
  /// - `NotPause`: Do not pause during the upgrade process.
  final pulumi.Input<String>? pausePolicy;

  /// Creates a new [NodePoolRollingPolicy].
  /// [batchInterval] The upgrade interval time between batches, in minutes. This parameter only takes effect when `pause_policy` is set to `NotPause`.
  /// [maxParallelism] The maximum number of nodes that can be upgraded in parallel per batch when updating nodes in the node pool.
  /// [nodeNames] Specify the list of nodes to be upgraded.
  /// [pausePolicy] The auto-pause policy during node upgrade. Valid values:
  const NodePoolRollingPolicy({
    this.batchInterval,
    this.maxParallelism,
    this.nodeNames,
    this.pausePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchInterval': ?batchInterval,
      'maxParallelism': ?maxParallelism,
      'nodeNames': ?nodeNames,
      'pausePolicy': ?pausePolicy,
    };
  }

  factory NodePoolRollingPolicy.fromMap(Map<String, dynamic> map) {
    return NodePoolRollingPolicy(
      batchInterval: (() { final guardedValue = map['batchInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxParallelism: (() { final guardedValue = map['maxParallelism']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nodeNames: (() { final guardedValue = map['nodeNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      pausePolicy: (() { final guardedValue = map['pausePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

