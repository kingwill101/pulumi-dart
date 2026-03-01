// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LifecycleHook resources.
class LifecycleHookState {
  /// Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses. Applicable value: CONTINUE, ABANDON, ROLLBACK, default value: CONTINUE.
  final pulumi.Input<String>? defaultResult;
  /// Defines the amount of time, in seconds, that can elapse before the lifecycle hook times out. When the lifecycle hook times out, Auto Scaling performs the action defined in the default_result parameter. Default value: 600.
  final pulumi.Input<int>? heartbeatTimeout;
  /// Type of Scaling activity attached to lifecycle hook. Supported value: SCALE_OUT, SCALE_IN.
  final pulumi.Input<String>? lifecycleTransition;
  /// The name of the lifecycle hook, which must contain 2-64 characters (English or Chinese), starting with numbers, English letters or Chinese characters, and can contain number, underscores `_`, hypens `-`, and decimal point `.`. If this parameter value is not specified, the default value is lifecycle hook id.
  final pulumi.Input<String>? name;
  /// The Arn of notification target.
  final pulumi.Input<String>? notificationArn;
  /// Additional information that you want to include when Auto Scaling sends a message to the notification target.
  final pulumi.Input<String>? notificationMetadata;
  /// The ID of the Auto Scaling group to which you want to assign the lifecycle hook.
  final pulumi.Input<String>? scalingGroupId;

  /// Creates a new [LifecycleHookState].
  /// [defaultResult] Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses. Applicable value: CONTINUE, ABANDON, ROLLBACK, default value: CONTINUE.
  /// [heartbeatTimeout] Defines the amount of time, in seconds, that can elapse before the lifecycle hook times out. When the lifecycle hook times out, Auto Scaling performs the action defined in the default_result parameter. Default value: 600.
  /// [lifecycleTransition] Type of Scaling activity attached to lifecycle hook. Supported value: SCALE_OUT, SCALE_IN.
  /// [name] The name of the lifecycle hook, which must contain 2-64 characters (English or Chinese), starting with numbers, English letters or Chinese characters, and can contain number, underscores `_`, hypens `-`, and decimal point `.`. If this parameter value is not specified, the default value is lifecycle hook id.
  /// [notificationArn] The Arn of notification target.
  /// [notificationMetadata] Additional information that you want to include when Auto Scaling sends a message to the notification target.
  /// [scalingGroupId] The ID of the Auto Scaling group to which you want to assign the lifecycle hook.
  LifecycleHookState({
    pulumi.Output<String>? defaultResult,
    pulumi.Output<int>? heartbeatTimeout,
    pulumi.Output<String>? lifecycleTransition,
    pulumi.Output<String>? name,
    pulumi.Output<String>? notificationArn,
    pulumi.Output<String>? notificationMetadata,
    pulumi.Output<String>? scalingGroupId,
  }) :
      defaultResult = pulumi.Input.asOptionalInput<String>(defaultResult),
      heartbeatTimeout = pulumi.Input.asOptionalInput<int>(heartbeatTimeout),
      lifecycleTransition = pulumi.Input.asOptionalInput<String>(lifecycleTransition),
      name = pulumi.Input.asOptionalInput<String>(name),
      notificationArn = pulumi.Input.asOptionalInput<String>(notificationArn),
      notificationMetadata = pulumi.Input.asOptionalInput<String>(notificationMetadata),
      scalingGroupId = pulumi.Input.asOptionalInput<String>(scalingGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultResult': ?defaultResult,
      'heartbeatTimeout': ?heartbeatTimeout,
      'lifecycleTransition': ?lifecycleTransition,
      'name': ?name,
      'notificationArn': ?notificationArn,
      'notificationMetadata': ?notificationMetadata,
      'scalingGroupId': ?scalingGroupId,
    };
  }

  factory LifecycleHookState.fromMap(Map<String, dynamic> map) {
    return LifecycleHookState(
      defaultResult: map['defaultResult'] == null ? null : pulumi.Output.create<String>(map['defaultResult'] as String),
      heartbeatTimeout: map['heartbeatTimeout'] == null ? null : pulumi.Output.create<int>(map['heartbeatTimeout'] as int),
      lifecycleTransition: map['lifecycleTransition'] == null ? null : pulumi.Output.create<String>(map['lifecycleTransition'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notificationArn: map['notificationArn'] == null ? null : pulumi.Output.create<String>(map['notificationArn'] as String),
      notificationMetadata: map['notificationMetadata'] == null ? null : pulumi.Output.create<String>(map['notificationMetadata'] as String),
      scalingGroupId: map['scalingGroupId'] == null ? null : pulumi.Output.create<String>(map['scalingGroupId'] as String),
    );
  }
}

