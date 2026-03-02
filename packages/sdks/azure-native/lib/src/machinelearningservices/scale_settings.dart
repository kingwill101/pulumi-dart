// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// scale settings for AML Compute
class ScaleSettings {
  /// Max number of nodes to use
  final pulumi.Input<int> maxNodeCount;
  /// Min number of nodes to use
  final pulumi.Input<int>? minNodeCount;
  /// Node Idle Time before scaling down amlCompute. This string needs to be in the RFC Format.
  final pulumi.Input<String>? nodeIdleTimeBeforeScaleDown;

  /// Creates a new [ScaleSettings].
  /// [maxNodeCount] Max number of nodes to use
  /// [minNodeCount] Min number of nodes to use
  /// [nodeIdleTimeBeforeScaleDown] Node Idle Time before scaling down amlCompute. This string needs to be in the RFC Format.
  ScaleSettings({
    required this.maxNodeCount,
    this.minNodeCount,
    this.nodeIdleTimeBeforeScaleDown,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNodeCount': maxNodeCount,
      'minNodeCount': ?minNodeCount,
      'nodeIdleTimeBeforeScaleDown': ?nodeIdleTimeBeforeScaleDown,
    };
  }

  factory ScaleSettings.fromMap(Map<String, dynamic> map) {
    return ScaleSettings(
      maxNodeCount: (map['maxNodeCount'] as int).input(),
      minNodeCount: map['minNodeCount'] == null ? null : (map['minNodeCount']! as int).input(),
      nodeIdleTimeBeforeScaleDown: map['nodeIdleTimeBeforeScaleDown'] == null ? null : (map['nodeIdleTimeBeforeScaleDown']! as String).input(),
    );
  }
}

