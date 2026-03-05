// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of LifecycleHookSpecification
class LifecycleHookSpecificationResponse {
  /// The action the Auto Scaling group takes when the lifecycle hook timeout elapses or if an unexpected failure occurs. The default value is ``ABANDON``. Valid values: ``CONTINUE`` | ``ABANDON``
  final pulumi.Input<String>? defaultResult;
  /// The maximum time, in seconds, that can elapse before the lifecycle hook times out. The range is from ``30`` to ``7200`` seconds. The default value is ``3600`` seconds (1 hour).
  final pulumi.Input<int>? heartbeatTimeout;
  /// The name of the lifecycle hook.
  final pulumi.Input<String>? lifecycleHookName;
  /// The lifecycle transition. For Auto Scaling groups, there are two major lifecycle transitions.  +  To create a lifecycle hook for scale-out events, specify ``autoscaling:EC2_INSTANCE_LAUNCHING``.  +  To create a lifecycle hook for scale-in events, specify ``autoscaling:EC2_INSTANCE_TERMINATING``.
  final pulumi.Input<String>? lifecycleTransition;
  /// Additional information that you want to include any time Amazon EC2 Auto Scaling sends a message to the notification target.
  final pulumi.Input<String>? notificationMetadata;
  /// The Amazon Resource Name (ARN) of the notification target that Amazon EC2 Auto Scaling sends notifications to when an instance is in a wait state for the lifecycle hook. You can specify an Amazon SNS topic or an Amazon SQS queue.
  final pulumi.Input<String>? notificationTargetARN;
  /// The ARN of the IAM role that allows the Auto Scaling group to publish to the specified notification target. For information about creating this role, see [Configure a notification target for a lifecycle hook](https://docs.aws.amazon.com/autoscaling/ec2/userguide/prepare-for-lifecycle-notifications.html#lifecycle-hook-notification-target) in the *Amazon EC2 Auto Scaling User Guide*. Valid only if the notification target is an Amazon SNS topic or an Amazon SQS queue.
  final pulumi.Input<String>? roleARN;

  /// Creates a new [LifecycleHookSpecificationResponse].
  /// [defaultResult] The action the Auto Scaling group takes when the lifecycle hook timeout elapses or if an unexpected failure occurs. The default value is ``ABANDON``. Valid values: ``CONTINUE`` | ``ABANDON``
  /// [heartbeatTimeout] The maximum time, in seconds, that can elapse before the lifecycle hook times out. The range is from ``30`` to ``7200`` seconds. The default value is ``3600`` seconds (1 hour).
  /// [lifecycleHookName] The name of the lifecycle hook.
  /// [lifecycleTransition] The lifecycle transition. For Auto Scaling groups, there are two major lifecycle transitions.  +  To create a lifecycle hook for scale-out events, specify ``autoscaling:EC2_INSTANCE_LAUNCHING``.  +  To create a lifecycle hook for scale-in events, specify ``autoscaling:EC2_INSTANCE_TERMINATING``.
  /// [notificationMetadata] Additional information that you want to include any time Amazon EC2 Auto Scaling sends a message to the notification target.
  /// [notificationTargetARN] The Amazon Resource Name (ARN) of the notification target that Amazon EC2 Auto Scaling sends notifications to when an instance is in a wait state for the lifecycle hook. You can specify an Amazon SNS topic or an Amazon SQS queue.
  /// [roleARN] The ARN of the IAM role that allows the Auto Scaling group to publish to the specified notification target. For information about creating this role, see [Configure a notification target for a lifecycle hook](https://docs.aws.amazon.com/autoscaling/ec2/userguide/prepare-for-lifecycle-notifications.html#lifecycle-hook-notification-target) in the *Amazon EC2 Auto Scaling User Guide*. Valid only if the notification target is an Amazon SNS topic or an Amazon SQS queue.
  LifecycleHookSpecificationResponse({
    this.defaultResult,
    this.heartbeatTimeout,
    this.lifecycleHookName,
    this.lifecycleTransition,
    this.notificationMetadata,
    this.notificationTargetARN,
    this.roleARN,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultResult': ?defaultResult,
      'heartbeatTimeout': ?heartbeatTimeout,
      'lifecycleHookName': ?lifecycleHookName,
      'lifecycleTransition': ?lifecycleTransition,
      'notificationMetadata': ?notificationMetadata,
      'notificationTargetARN': ?notificationTargetARN,
      'roleARN': ?roleARN,
    };
  }

  factory LifecycleHookSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return LifecycleHookSpecificationResponse(
      defaultResult: (() { final guardedValue = map['defaultResult']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      heartbeatTimeout: (() { final guardedValue = map['heartbeatTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      lifecycleHookName: (() { final guardedValue = map['lifecycleHookName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lifecycleTransition: (() { final guardedValue = map['lifecycleTransition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationMetadata: (() { final guardedValue = map['notificationMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationTargetARN: (() { final guardedValue = map['notificationTargetARN']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleARN: (() { final guardedValue = map['roleARN']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

