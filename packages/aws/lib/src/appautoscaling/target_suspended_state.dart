// ignore_for_file: unused_element, unnecessary_cast

class TargetSuspendedState {
  /// Whether scale in by a target tracking scaling policy or a step scaling policy is suspended. Default is `false`.
  final bool? dynamicScalingInSuspended;

  /// Whether scale out by a target tracking scaling policy or a step scaling policy is suspended. Default is `false`.
  final bool? dynamicScalingOutSuspended;

  /// Whether scheduled scaling is suspended. Default is `false`.
  final bool? scheduledScalingSuspended;

  /// Creates a new [TargetSuspendedState].
  /// [dynamicScalingInSuspended] Whether scale in by a target tracking scaling policy or a step scaling policy is suspended. Default is `false`.
  /// [dynamicScalingOutSuspended] Whether scale out by a target tracking scaling policy or a step scaling policy is suspended. Default is `false`.
  /// [scheduledScalingSuspended] Whether scheduled scaling is suspended. Default is `false`.
  TargetSuspendedState({
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
      dynamicScalingInSuspended: map['dynamicScalingInSuspended'] == null
          ? null
          : map['dynamicScalingInSuspended'] as bool,
      dynamicScalingOutSuspended: map['dynamicScalingOutSuspended'] == null
          ? null
          : map['dynamicScalingOutSuspended'] as bool,
      scheduledScalingSuspended: map['scheduledScalingSuspended'] == null
          ? null
          : map['scheduledScalingSuspended'] as bool,
    );
  }
}
