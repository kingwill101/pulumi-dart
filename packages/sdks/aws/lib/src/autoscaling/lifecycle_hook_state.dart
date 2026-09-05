// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LifecycleHook resources.
class LifecycleHookState {
  /// Name of the Auto Scaling group to which you want to assign the lifecycle hook
  final pulumi.Input<String?>? autoscalingGroupName;
  /// Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses or if an unexpected failure occurs. The value for this parameter can be either CONTINUE or ABANDON. The default value for this parameter is ABANDON.
  final pulumi.Input<String?>? defaultResult;
  /// Defines the amount of time, in seconds, that can elapse before the lifecycle hook times out. When the lifecycle hook times out, Auto Scaling performs the action defined in the DefaultResult parameter
  final pulumi.Input<int?>? heartbeatTimeout;
  /// Instance state to which you want to attach the lifecycle hook. For a list of lifecycle hook types, see [describe-lifecycle-hook-types](https://docs.aws.amazon.com/cli/latest/reference/autoscaling/describe-lifecycle-hook-types.html#examples)
  final pulumi.Input<String?>? lifecycleTransition;
  /// Name of the lifecycle hook.
  final pulumi.Input<String?>? name;
  /// Contains additional information that you want to include any time Auto Scaling sends a message to the notification target.
  final pulumi.Input<String?>? notificationMetadata;
  /// ARN of the notification target that Auto Scaling will use to notify you when an instance is in the transition state for the lifecycle hook. This ARN target can be either an SQS queue, an SNS topic, or a Lambda function.
  final pulumi.Input<String?>? notificationTargetArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the IAM role that allows the Auto Scaling group to publish to the specified notification target.
  final pulumi.Input<String?>? roleArn;

  /// Creates a new [LifecycleHookState].
  /// [autoscalingGroupName] Name of the Auto Scaling group to which you want to assign the lifecycle hook
  /// [defaultResult] Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses or if an unexpected failure occurs. The value for this parameter can be either CONTINUE or ABANDON. The default value for this parameter is ABANDON.
  /// [heartbeatTimeout] Defines the amount of time, in seconds, that can elapse before the lifecycle hook times out. When the lifecycle hook times out, Auto Scaling performs the action defined in the DefaultResult parameter
  /// [lifecycleTransition] Instance state to which you want to attach the lifecycle hook. For a list of lifecycle hook types, see [describe-lifecycle-hook-types](https://docs.aws.amazon.com/cli/latest/reference/autoscaling/describe-lifecycle-hook-types.html#examples)
  /// [name] Name of the lifecycle hook.
  /// [notificationMetadata] Contains additional information that you want to include any time Auto Scaling sends a message to the notification target.
  /// [notificationTargetArn] ARN of the notification target that Auto Scaling will use to notify you when an instance is in the transition state for the lifecycle hook. This ARN target can be either an SQS queue, an SNS topic, or a Lambda function.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of the IAM role that allows the Auto Scaling group to publish to the specified notification target.
  const LifecycleHookState({
    this.autoscalingGroupName,
    this.defaultResult,
    this.heartbeatTimeout,
    this.lifecycleTransition,
    this.name,
    this.notificationMetadata,
    this.notificationTargetArn,
    this.region,
    this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingGroupName': ?autoscalingGroupName,
      'defaultResult': ?defaultResult,
      'heartbeatTimeout': ?heartbeatTimeout,
      'lifecycleTransition': ?lifecycleTransition,
      'name': ?name,
      'notificationMetadata': ?notificationMetadata,
      'notificationTargetArn': ?notificationTargetArn,
      'region': ?region,
      'roleArn': ?roleArn,
    };
  }

  factory LifecycleHookState.fromMap(Map<String, dynamic> map) {
    return LifecycleHookState(
      autoscalingGroupName: (() { final guardedValue = map['autoscalingGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultResult: (() { final guardedValue = map['defaultResult']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      heartbeatTimeout: (() { final guardedValue = map['heartbeatTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      lifecycleTransition: (() { final guardedValue = map['lifecycleTransition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationMetadata: (() { final guardedValue = map['notificationMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationTargetArn: (() { final guardedValue = map['notificationTargetArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
