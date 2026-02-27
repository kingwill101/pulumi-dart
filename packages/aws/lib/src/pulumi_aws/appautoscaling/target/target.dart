import 'package:pulumi/pulumi.dart' as pulumi;
import '../target_suspended_state/target_suspended_state.dart';
import 'target_args.dart';

/// Provides an Application AutoScaling ScalableTarget resource. To manage policies which get attached to the target, see the `aws.appautoscaling.Policy` resource.
///
/// > **NOTE:** Scalable targets created before 2023-03-20 may not have an assigned `arn`. These resource cannot use `tags` or participate in `default_tags`. To prevent `pulumi preview` showing differences that can never be reconciled, use the `lifecycle.ignore_changes` meta-argument. See the example below.
///
/// > **NOTE:** The [Application Auto Scaling service automatically attempts to manage IAM Service-Linked Roles](https://docs.aws.amazon.com/autoscaling/application/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-roles) when registering certain service namespaces for the first time. To manually manage this role, see the `aws.iam.ServiceLinkedRole` resource.
///
/// ## Example Usage
///
/// ### DynamoDB Table Autoscaling
///
///
///
/// ### DynamoDB Index Autoscaling
///
///
///
/// ### ECS Service Autoscaling
///
///
///
/// ### Aurora Read Replica Autoscaling
///
///
///
/// ### Suppressing `tags_all` Differences For Older Resources
///
///
///
/// ### MSK / Kafka Autoscaling
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Application AutoScaling Target using the `service-namespace` , `resource-id` and `scalable-dimension` separated by `/`. For example:
///
/// ```sh
/// $ pulumi import aws:appautoscaling/target:Target test-target service-namespace/resource-id/scalable-dimension
/// ```
class Target extends pulumi.CustomResource {
  /// The ARN of the scalable target.
  late final pulumi.Output<String> arn;

  /// Max capacity of the scalable target.
  late final pulumi.Output<int> maxCapacity;

  /// Min capacity of the scalable target.
  late final pulumi.Output<int> minCapacity;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Resource type and unique identifier string for the resource associated with the scaling policy. Documentation can be found in the `ResourceId` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html#API_RegisterScalableTarget_RequestParameters)
  late final pulumi.Output<String> resourceId;

  /// ARN of the IAM role that allows Application AutoScaling to modify your scalable target on your behalf. This defaults to an IAM Service-Linked Role for most services and custom IAM Roles are ignored by the API for those namespaces. See the [AWS Application Auto Scaling documentation](https://docs.aws.amazon.com/autoscaling/application/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-roles) for more information about how this service interacts with IAM.
  late final pulumi.Output<String> roleArn;

  /// Scalable dimension of the scalable target. Documentation can be found in the `ScalableDimension` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html#API_RegisterScalableTarget_RequestParameters)
  late final pulumi.Output<String> scalableDimension;

  /// AWS service namespace of the scalable target. Documentation can be found in the `ServiceNamespace` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html#API_RegisterScalableTarget_RequestParameters)
  late final pulumi.Output<String> serviceNamespace;

  /// Specifies whether the scaling activities for a scalable target are in a suspended state.
  late final pulumi.Output<TargetSuspendedState> suspendedState;

  /// Map of tags to assign to the scalable target. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  Target(
    String name, {
    TargetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appautoscaling/target:Target',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.maxCapacity = registerOutput<int>('maxCapacity');
    this.minCapacity = registerOutput<int>('minCapacity');
    this.region = registerOutput<String>('region');
    this.resourceId = registerOutput<String>('resourceId');
    this.roleArn = registerOutput<String>('roleArn');
    this.scalableDimension = registerOutput<String>('scalableDimension');
    this.serviceNamespace = registerOutput<String>('serviceNamespace');
    this.suspendedState =
        registerOutput<TargetSuspendedState>('suspendedState');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
