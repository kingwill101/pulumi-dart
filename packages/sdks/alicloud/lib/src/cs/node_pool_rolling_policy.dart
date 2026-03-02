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
  NodePoolRollingPolicy({
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
      batchInterval: map['batchInterval'] == null ? null : (map['batchInterval']! as String).input(),
      maxParallelism: map['maxParallelism'] == null ? null : (map['maxParallelism']! as int).input(),
      nodeNames: map['nodeNames'] == null ? null : ((map['nodeNames']! as List).cast<String>()).input(),
      pausePolicy: map['pausePolicy'] == null ? null : (map['pausePolicy']! as String).input(),
    );
  }
}

