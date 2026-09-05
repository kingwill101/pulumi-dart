// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TargetSuspendedState {
  /// Whether scale in by a target tracking scaling policy or a step scaling policy is suspended. Default is `false`.
  final pulumi.Input<bool?>? dynamicScalingInSuspended;
  /// Whether scale out by a target tracking scaling policy or a step scaling policy is suspended. Default is `false`.
  final pulumi.Input<bool?>? dynamicScalingOutSuspended;
  /// Whether scheduled scaling is suspended. Default is `false`.
  final pulumi.Input<bool?>? scheduledScalingSuspended;

  /// Creates a new [TargetSuspendedState].
  /// [dynamicScalingInSuspended] Whether scale in by a target tracking scaling policy or a step scaling policy is suspended. Default is `false`.
  /// [dynamicScalingOutSuspended] Whether scale out by a target tracking scaling policy or a step scaling policy is suspended. Default is `false`.
  /// [scheduledScalingSuspended] Whether scheduled scaling is suspended. Default is `false`.
  const TargetSuspendedState({
    this.dynamicScalingInSuspended,
    this.dynamicScalingOutSuspended,
    this.scheduledScalingSuspended,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamicScalingInSuspended': ?dynamicScalingInSuspended,
      'dynamicScalingOutSuspended': ?dynamicScalingOutSuspended,
      'scheduledScalingSuspended': ?scheduledScalingSuspended,
    };
  }

  factory TargetSuspendedState.fromMap(Map<String, dynamic> map) {
    return TargetSuspendedState(
      dynamicScalingInSuspended: (() { final guardedValue = map['dynamicScalingInSuspended']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dynamicScalingOutSuspended: (() { final guardedValue = map['dynamicScalingOutSuspended']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scheduledScalingSuspended: (() { final guardedValue = map['scheduledScalingSuspended']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
