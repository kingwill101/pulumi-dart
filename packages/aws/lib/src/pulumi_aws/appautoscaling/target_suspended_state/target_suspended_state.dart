// ignore_for_file: unused_element, unnecessary_cast

class TargetSuspendedState {
  /// Whether scale in by a target tracking scaling policy or a step scaling policy is suspended. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? dynamicScalingInSuspended;

  /// Whether scale out by a target tracking scaling policy or a step scaling policy is suspended. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? dynamicScalingOutSuspended;

  /// Whether scheduled scaling is suspended. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? scheduledScalingSuspended;

  TargetSuspendedState({
    this.dynamicScalingInSuspended,
    this.dynamicScalingOutSuspended,
    this.scheduledScalingSuspended,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dynamicScalingInSuspendedValue = dynamicScalingInSuspended;
    if (dynamicScalingInSuspendedValue != null) {
      map['dynamicScalingInSuspended'] = dynamicScalingInSuspendedValue;
    }
    final dynamicScalingOutSuspendedValue = dynamicScalingOutSuspended;
    if (dynamicScalingOutSuspendedValue != null) {
      map['dynamicScalingOutSuspended'] = dynamicScalingOutSuspendedValue;
    }
    final scheduledScalingSuspendedValue = scheduledScalingSuspended;
    if (scheduledScalingSuspendedValue != null) {
      map['scheduledScalingSuspended'] = scheduledScalingSuspendedValue;
    }
    return map;
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
