// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LifecycleHook resources.
class LifecycleHookState {
  /// Name of the Auto Scaling group to which you want to assign the lifecycle hook
  final pulumi.Input<String>? autoscalingGroupName;
  /// Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses or if an unexpected failure occurs. The value for this parameter can be either CONTINUE or ABANDON. The default value for this parameter is ABANDON.
  final pulumi.Input<String>? defaultResult;
  /// Defines the amount of time, in seconds, that can elapse before the lifecycle hook times out. When the lifecycle hook times out, Auto Scaling performs the action defined in the DefaultResult parameter
  final pulumi.Input<int>? heartbeatTimeout;
  /// Instance state to which you want to attach the lifecycle hook. For a list of lifecycle hook types, see [describe-lifecycle-hook-types](https://docs.aws.amazon.com/cli/latest/reference/autoscaling/describe-lifecycle-hook-types.html#examples)
  final pulumi.Input<String>? lifecycleTransition;
  /// Name of the lifecycle hook.
  final pulumi.Input<String>? name;
  /// Contains additional information that you want to include any time Auto Scaling sends a message to the notification target.
  final pulumi.Input<String>? notificationMetadata;
  /// ARN of the notification target that Auto Scaling will use to notify you when an instance is in the transition state for the lifecycle hook. This ARN target can be either an SQS queue, an SNS topic, or a Lambda function.
  final pulumi.Input<String>? notificationTargetArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the IAM role that allows the Auto Scaling group to publish to the specified notification target.
  final pulumi.Input<String>? roleArn;

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
  LifecycleHookState({
    pulumi.Output<String>? autoscalingGroupName,
    pulumi.Output<String>? defaultResult,
    pulumi.Output<int>? heartbeatTimeout,
    pulumi.Output<String>? lifecycleTransition,
    pulumi.Output<String>? name,
    pulumi.Output<String>? notificationMetadata,
    pulumi.Output<String>? notificationTargetArn,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
  }) :
      autoscalingGroupName = pulumi.Input.asOptionalInput<String>(autoscalingGroupName),
      defaultResult = pulumi.Input.asOptionalInput<String>(defaultResult),
      heartbeatTimeout = pulumi.Input.asOptionalInput<int>(heartbeatTimeout),
      lifecycleTransition = pulumi.Input.asOptionalInput<String>(lifecycleTransition),
      name = pulumi.Input.asOptionalInput<String>(name),
      notificationMetadata = pulumi.Input.asOptionalInput<String>(notificationMetadata),
      notificationTargetArn = pulumi.Input.asOptionalInput<String>(notificationTargetArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn);

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
      autoscalingGroupName: map['autoscalingGroupName'] == null ? null : pulumi.Output.create<String>(map['autoscalingGroupName'] as String),
      defaultResult: map['defaultResult'] == null ? null : pulumi.Output.create<String>(map['defaultResult'] as String),
      heartbeatTimeout: map['heartbeatTimeout'] == null ? null : pulumi.Output.create<int>(map['heartbeatTimeout'] as int),
      lifecycleTransition: map['lifecycleTransition'] == null ? null : pulumi.Output.create<String>(map['lifecycleTransition'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notificationMetadata: map['notificationMetadata'] == null ? null : pulumi.Output.create<String>(map['notificationMetadata'] as String),
      notificationTargetArn: map['notificationTargetArn'] == null ? null : pulumi.Output.create<String>(map['notificationTargetArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
    );
  }
}

