import 'package:pulumi/pulumi.dart';
import 'lifecycle_hook_args.dart';

/// Provides an AutoScaling Lifecycle Hook resource.
///
/// > **NOTE:** This provider has two types of ways you can add lifecycle hooks - via
/// the `initial_lifecycle_hook` attribute from the
/// `aws.autoscaling.Group`
/// resource, or via this one. Hooks added via this resource will not be added
/// until the autoscaling group has been created, and depending on your
/// capacity
/// settings, after the initial instances have been launched, creating unintended
/// behavior. If you need hooks to run on all instances, add them with
/// `initial_lifecycle_hook` in
/// `aws.autoscaling.Group`,
/// but take care to not duplicate those hooks with this resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AutoScaling Lifecycle Hooks using the role autoscaling_group_name and name separated by `/`. For example:
///
/// ```sh
/// $ pulumi import aws:autoscaling/lifecycleHook:LifecycleHook test-lifecycle-hook asg-name/lifecycle-hook-name
/// ```
class LifecycleHook extends CustomResource {
  /// Name of the Auto Scaling group to which you want to assign the lifecycle hook
  late final Output<String> autoscalingGroupName;

  /// Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses or if an unexpected failure occurs. The value for this parameter can be either CONTINUE or ABANDON. The default value for this parameter is ABANDON.
  late final Output<String> defaultResult;

  /// Defines the amount of time, in seconds, that can elapse before the lifecycle hook times out. When the lifecycle hook times out, Auto Scaling performs the action defined in the DefaultResult parameter
  late final Output<int?> heartbeatTimeout;

  /// Instance state to which you want to attach the lifecycle hook. For a list of lifecycle hook types, see [describe-lifecycle-hook-types](https://docs.aws.amazon.com/cli/latest/reference/autoscaling/describe-lifecycle-hook-types.html#examples)
  late final Output<String> lifecycleTransition;

  /// Name of the lifecycle hook.
  late final Output<String> name;

  /// Contains additional information that you want to include any time Auto Scaling sends a message to the notification target.
  late final Output<String?> notificationMetadata;

  /// ARN of the notification target that Auto Scaling will use to notify you when an instance is in the transition state for the lifecycle hook. This ARN target can be either an SQS queue, an SNS topic, or a Lambda function.
  late final Output<String?> notificationTargetArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of the IAM role that allows the Auto Scaling group to publish to the specified notification target.
  late final Output<String?> roleArn;

  LifecycleHook(
    String name, {
    LifecycleHookArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:autoscaling/lifecycleHook:LifecycleHook',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoscalingGroupName = registerOutput<String>('autoscalingGroupName');
    this.defaultResult = registerOutput<String>('defaultResult');
    this.heartbeatTimeout = registerOutput<int?>('heartbeatTimeout');
    this.lifecycleTransition = registerOutput<String>('lifecycleTransition');
    this.name = registerOutput<String>('name');
    this.notificationMetadata = registerOutput<String?>('notificationMetadata');
    this.notificationTargetArn =
        registerOutput<String?>('notificationTargetArn');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String?>('roleArn');
  }
}
