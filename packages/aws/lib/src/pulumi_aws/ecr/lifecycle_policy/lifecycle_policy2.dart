import 'package:pulumi/pulumi.dart';
import 'lifecycle_policy_args2.dart';

/// Manages an ECR repository lifecycle policy.
///
/// > **NOTE:** Only one `aws.ecr.LifecyclePolicy` resource can be used with the same ECR repository. To apply multiple rules, they must be combined in the `policy` JSON.
///
/// > **NOTE:** The AWS ECR API seems to reorder rules based on `rulePriority`. If you define multiple rules that are not sorted in ascending `rulePriority` order in the this provider code, the resource will be flagged for recreation every deployment.
///
/// ## Example Usage
///
/// ### Policy on Untagged Images
///
///
///
/// ### Policy on Tagged Images
///
///
///
/// ### Policy to Archive and Delete
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `repository` - (String) Name of the ECR repository.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import ECR Lifecycle Policy using the name of the repository. For example:
///
/// ```sh
/// $ pulumi import aws:ecr/lifecyclePolicy:LifecyclePolicy example tf-example
/// ```
class LifecyclePolicy2 extends CustomResource {
  /// The policy document. This is a JSON formatted string. See more details about [Policy Parameters](http://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html#lifecycle_policy_parameters) in the official AWS docs. Consider using the `aws.ecr.getLifecyclePolicyDocument` data_source to generate/manage the JSON document used for the `policy` argument.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The registry ID where the repository was created.
  late final Output<String> registryId;

  /// Name of the repository to apply the policy.
  late final Output<String> repository;

  LifecyclePolicy2(
    String name, {
    LifecyclePolicyArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ecr/lifecyclePolicy:LifecyclePolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.registryId = registerOutput<String>('registryId');
    this.repository = registerOutput<String>('repository');
  }
}
