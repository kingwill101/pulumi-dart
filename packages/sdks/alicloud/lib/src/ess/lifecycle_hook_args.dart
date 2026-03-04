// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ess_lifecycle_hook_lifecycle_hook_args_doc}
/// The set of arguments for LifecycleHook.
/// {@endtemplate}
/// {@macro pulumi_ess_lifecycle_hook_lifecycle_hook_args_doc}
class LifecycleHookArgs {
  /// Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses. Applicable value: CONTINUE, ABANDON, ROLLBACK, default value: CONTINUE.
  final pulumi.Input<String>? defaultResult;

  /// Defines the amount of time, in seconds, that can elapse before the lifecycle hook times out. When the lifecycle hook times out, Auto Scaling performs the action defined in the default_result parameter. Default value: 600.
  final pulumi.Input<int>? heartbeatTimeout;

  /// Type of Scaling activity attached to lifecycle hook. Supported value: SCALE_OUT, SCALE_IN.
  final pulumi.Input<String> lifecycleTransition;

  /// The name of the lifecycle hook, which must contain 2-64 characters (English or Chinese), starting with numbers, English letters or Chinese characters, and can contain number, underscores `_`, hypens `-`, and decimal point `.`. If this parameter value is not specified, the default value is lifecycle hook id.
  final pulumi.Input<String>? name;

  /// The Arn of notification target.
  final pulumi.Input<String>? notificationArn;

  /// Additional information that you want to include when Auto Scaling sends a message to the notification target.
  final pulumi.Input<String>? notificationMetadata;

  /// The ID of the Auto Scaling group to which you want to assign the lifecycle hook.
  final pulumi.Input<String> scalingGroupId;

  /// Creates a new [LifecycleHookArgs].
  /// [defaultResult] Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses. Applicable value: CONTINUE, ABANDON, ROLLBACK, default value: CONTINUE.
  /// [heartbeatTimeout] Defines the amount of time, in seconds, that can elapse before the lifecycle hook times out. When the lifecycle hook times out, Auto Scaling performs the action defined in the default_result parameter. Default value: 600.
  /// [lifecycleTransition] Type of Scaling activity attached to lifecycle hook. Supported value: SCALE_OUT, SCALE_IN.
  /// [name] The name of the lifecycle hook, which must contain 2-64 characters (English or Chinese), starting with numbers, English letters or Chinese characters, and can contain number, underscores `_`, hypens `-`, and decimal point `.`. If this parameter value is not specified, the default value is lifecycle hook id.
  /// [notificationArn] The Arn of notification target.
  /// [notificationMetadata] Additional information that you want to include when Auto Scaling sends a message to the notification target.
  /// [scalingGroupId] The ID of the Auto Scaling group to which you want to assign the lifecycle hook.
  LifecycleHookArgs({
    this.defaultResult,
    this.heartbeatTimeout,
    required this.lifecycleTransition,
    this.name,
    this.notificationArn,
    this.notificationMetadata,
    required this.scalingGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultResult': ?defaultResult,
      'heartbeatTimeout': ?heartbeatTimeout,
      'lifecycleTransition': lifecycleTransition,
      'name': ?name,
      'notificationArn': ?notificationArn,
      'notificationMetadata': ?notificationMetadata,
      'scalingGroupId': scalingGroupId,
    };
  }

  factory LifecycleHookArgs.fromMap(Map<String, dynamic> map) {
    return LifecycleHookArgs(
      defaultResult: (() {
        final guardedValue = map['defaultResult'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      heartbeatTimeout: (() {
        final guardedValue = map['heartbeatTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      lifecycleTransition: pulumi.Input.fromValue(
        map['lifecycleTransition'] as String,
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      notificationArn: (() {
        final guardedValue = map['notificationArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      notificationMetadata: (() {
        final guardedValue = map['notificationMetadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scalingGroupId: pulumi.Input.fromValue(map['scalingGroupId'] as String),
    );
  }
}
