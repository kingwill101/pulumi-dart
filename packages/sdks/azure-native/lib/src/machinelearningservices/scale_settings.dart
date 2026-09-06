// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// scale settings for AML Compute
class ScaleSettings {
  /// Max number of nodes to use
  final pulumi.Input<int> maxNodeCount;
  /// Min number of nodes to use
  final pulumi.Input<int?>? minNodeCount;
  /// Node Idle Time before scaling down amlCompute. This string needs to be in the RFC Format.
  final pulumi.Input<String?>? nodeIdleTimeBeforeScaleDown;

  /// Creates a new [ScaleSettings].
  /// [maxNodeCount] Max number of nodes to use
  /// [minNodeCount] Min number of nodes to use
  /// [nodeIdleTimeBeforeScaleDown] Node Idle Time before scaling down amlCompute. This string needs to be in the RFC Format.
  ScaleSettings({
    required this.maxNodeCount,
    pulumi.Input<int?>? minNodeCount,
    this.nodeIdleTimeBeforeScaleDown,
  }) : minNodeCount = minNodeCount ?? pulumi.Input.fromValue(0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNodeCount': maxNodeCount,
      'minNodeCount': ?minNodeCount,
      'nodeIdleTimeBeforeScaleDown': ?nodeIdleTimeBeforeScaleDown,
    };
  }

  factory ScaleSettings.fromMap(Map<String, dynamic> map) {
    return ScaleSettings(
      maxNodeCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxNodeCount'])),
      minNodeCount: (() { final guardedValue = map['minNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      nodeIdleTimeBeforeScaleDown: (() { final guardedValue = map['nodeIdleTimeBeforeScaleDown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
