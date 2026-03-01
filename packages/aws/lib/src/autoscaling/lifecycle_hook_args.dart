// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_autoscaling_lifecycle_hook_lifecycle_hook_args_doc}
/// The set of arguments for LifecycleHook.
/// {@endtemplate}
/// {@macro pulumi_autoscaling_lifecycle_hook_lifecycle_hook_args_doc}
class LifecycleHookArgs {
  /// Name of the Auto Scaling group to which you want to assign the lifecycle hook
  final pulumi.Input<String> autoscalingGroupName;

  /// Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses or if an unexpected failure occurs. The value for this parameter can be either CONTINUE or ABANDON. The default value for this parameter is ABANDON.
  final pulumi.Input<String>? defaultResult;

  /// Defines the amount of time, in seconds, that can elapse before the lifecycle hook times out. When the lifecycle hook times out, Auto Scaling performs the action defined in the DefaultResult parameter
  final pulumi.Input<int>? heartbeatTimeout;

  /// Instance state to which you want to attach the lifecycle hook. For a list of lifecycle hook types, see [describe-lifecycle-hook-types](https://docs.aws.amazon.com/cli/latest/reference/autoscaling/describe-lifecycle-hook-types.html#examples)
  final pulumi.Input<String> lifecycleTransition;

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

  /// Creates a new [LifecycleHookArgs].
  /// [autoscalingGroupName] Name of the Auto Scaling group to which you want to assign the lifecycle hook
  /// [defaultResult] Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses or if an unexpected failure occurs. The value for this parameter can be either CONTINUE or ABANDON. The default value for this parameter is ABANDON.
  /// [heartbeatTimeout] Defines the amount of time, in seconds, that can elapse before the lifecycle hook times out. When the lifecycle hook times out, Auto Scaling performs the action defined in the DefaultResult parameter
  /// [lifecycleTransition] Instance state to which you want to attach the lifecycle hook. For a list of lifecycle hook types, see [describe-lifecycle-hook-types](https://docs.aws.amazon.com/cli/latest/reference/autoscaling/describe-lifecycle-hook-types.html#examples)
  /// [name] Name of the lifecycle hook.
  /// [notificationMetadata] Contains additional information that you want to include any time Auto Scaling sends a message to the notification target.
  /// [notificationTargetArn] ARN of the notification target that Auto Scaling will use to notify you when an instance is in the transition state for the lifecycle hook. This ARN target can be either an SQS queue, an SNS topic, or a Lambda function.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of the IAM role that allows the Auto Scaling group to publish to the specified notification target.
  LifecycleHookArgs({
    required String autoscalingGroupName,
    String? defaultResult,
    int? heartbeatTimeout,
    required String lifecycleTransition,
    String? name,
    String? notificationMetadata,
    String? notificationTargetArn,
    String? region,
    String? roleArn,
  }) : autoscalingGroupName = pulumi.Input.asInput<String>(
         autoscalingGroupName,
       ),
       defaultResult = pulumi.Input.asOptionalInput<String>(defaultResult),
       heartbeatTimeout = pulumi.Input.asOptionalInput<int>(heartbeatTimeout),
       lifecycleTransition = pulumi.Input.asInput<String>(lifecycleTransition),
       name = pulumi.Input.asOptionalInput<String>(name),
       notificationMetadata = pulumi.Input.asOptionalInput<String>(
         notificationMetadata,
       ),
       notificationTargetArn = pulumi.Input.asOptionalInput<String>(
         notificationTargetArn,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       roleArn = pulumi.Input.asOptionalInput<String>(roleArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingGroupName': autoscalingGroupName,
      'defaultResult': ?defaultResult,
      'heartbeatTimeout': ?heartbeatTimeout,
      'lifecycleTransition': lifecycleTransition,
      'name': ?name,
      'notificationMetadata': ?notificationMetadata,
      'notificationTargetArn': ?notificationTargetArn,
      'region': ?region,
      'roleArn': ?roleArn,
    };
  }

  factory LifecycleHookArgs.fromMap(Map<String, dynamic> map) {
    return LifecycleHookArgs(
      autoscalingGroupName: map['autoscalingGroupName'] as String,
      defaultResult: map['defaultResult'] == null
          ? null
          : map['defaultResult'] as String,
      heartbeatTimeout: map['heartbeatTimeout'] == null
          ? null
          : map['heartbeatTimeout'] as int,
      lifecycleTransition: map['lifecycleTransition'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      notificationMetadata: map['notificationMetadata'] == null
          ? null
          : map['notificationMetadata'] as String,
      notificationTargetArn: map['notificationTargetArn'] == null
          ? null
          : map['notificationTargetArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
    );
  }
}
