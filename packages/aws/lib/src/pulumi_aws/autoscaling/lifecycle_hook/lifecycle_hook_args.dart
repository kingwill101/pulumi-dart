// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for LifecycleHook.
class LifecycleHookArgs {
  /// Name of the Auto Scaling group to which you want to assign the lifecycle hook
  final Input<String> autoscalingGroupName;

  /// Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses or if an unexpected failure occurs. The value for this parameter can be either CONTINUE or ABANDON. The default value for this parameter is ABANDON.
  final Input<String>? defaultResult;

  /// Defines the amount of time, in seconds, that can elapse before the lifecycle hook times out. When the lifecycle hook times out, Auto Scaling performs the action defined in the DefaultResult parameter
  final Input<int>? heartbeatTimeout;

  /// Instance state to which you want to attach the lifecycle hook. For a list of lifecycle hook types, see [describe-lifecycle-hook-types](https://docs.aws.amazon.com/cli/latest/reference/autoscaling/describe-lifecycle-hook-types.html#examples)
  final Input<String> lifecycleTransition;

  /// Name of the lifecycle hook.
  final Input<String>? name;

  /// Contains additional information that you want to include any time Auto Scaling sends a message to the notification target.
  final Input<String>? notificationMetadata;

  /// ARN of the notification target that Auto Scaling will use to notify you when an instance is in the transition state for the lifecycle hook. This ARN target can be either an SQS queue, an SNS topic, or a Lambda function.
  final Input<String>? notificationTargetArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of the IAM role that allows the Auto Scaling group to publish to the specified notification target.
  final Input<String>? roleArn;

  LifecycleHookArgs({
    required this.autoscalingGroupName,
    this.defaultResult,
    this.heartbeatTimeout,
    required this.lifecycleTransition,
    this.name,
    this.notificationMetadata,
    this.notificationTargetArn,
    this.region,
    this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingGroupName'] = autoscalingGroupName;
    final defaultResultValue = defaultResult;
    if (defaultResultValue != null) {
      map['defaultResult'] = defaultResultValue;
    }
    final heartbeatTimeoutValue = heartbeatTimeout;
    if (heartbeatTimeoutValue != null) {
      map['heartbeatTimeout'] = heartbeatTimeoutValue;
    }
    map['lifecycleTransition'] = lifecycleTransition;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final notificationMetadataValue = notificationMetadata;
    if (notificationMetadataValue != null) {
      map['notificationMetadata'] = notificationMetadataValue;
    }
    final notificationTargetArnValue = notificationTargetArn;
    if (notificationTargetArnValue != null) {
      map['notificationTargetArn'] = notificationTargetArnValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final roleArnValue = roleArn;
    if (roleArnValue != null) {
      map['roleArn'] = roleArnValue;
    }
    return map;
  }

  factory LifecycleHookArgs.fromMap(Map<String, dynamic> map) {
    return LifecycleHookArgs(
      autoscalingGroupName: Input.asInput<String>(map['autoscalingGroupName']),
      defaultResult: Input.asOptionalInput<String>(map['defaultResult']),
      heartbeatTimeout: Input.asOptionalInput<int>(map['heartbeatTimeout']),
      lifecycleTransition: Input.asInput<String>(map['lifecycleTransition']),
      name: Input.asOptionalInput<String>(map['name']),
      notificationMetadata:
          Input.asOptionalInput<String>(map['notificationMetadata']),
      notificationTargetArn:
          Input.asOptionalInput<String>(map['notificationTargetArn']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asOptionalInput<String>(map['roleArn']),
    );
  }
}
