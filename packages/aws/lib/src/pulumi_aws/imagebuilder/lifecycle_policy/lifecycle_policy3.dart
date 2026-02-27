import 'package:pulumi/pulumi.dart';
import '../lifecycle_policy_policy_detail/lifecycle_policy_policy_detail.dart';
import '../lifecycle_policy_resource_selection/lifecycle_policy_resource_selection.dart';
import 'lifecycle_policy_args3.dart';

/// Manages an Image Builder Lifecycle Policy.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Image Builder lifecycle policy.
///
///
/// Using `pulumi import`, import `aws.imagebuilder.LifecyclePolicy` using the Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:imagebuilder/lifecyclePolicy:LifecyclePolicy example arn:aws:imagebuilder:us-east-1:123456789012:lifecycle-policy/example
/// ```
class LifecyclePolicy3 extends CustomResource {
  /// Amazon Resource Name (ARN) of the lifecycle policy.
  late final Output<String> arn;

  /// description for the lifecycle policy.
  late final Output<String?> description;

  /// The Amazon Resource Name (ARN) for the IAM role you create that grants Image Builder access to run lifecycle actions. More information about this role can be found [`here`](https://docs.aws.amazon.com/imagebuilder/latest/userguide/image-lifecycle-prerequisites.html#image-lifecycle-prereq-role).
  late final Output<String> executionRole;

  /// The name of the lifecycle policy to create.
  late final Output<String> name;

  /// Configuration block with policy details. Detailed below.
  late final Output<List<LifecyclePolicyPolicyDetail>> policyDetails;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Selection criteria for the resources that the lifecycle policy applies to. Detailed below.
  ///
  /// The following arguments are optional:
  late final Output<LifecyclePolicyResourceSelection> resourceSelection;

  /// The type of Image Builder resource that the lifecycle policy applies to. Valid values: `AMI_IMAGE` or `CONTAINER_IMAGE`.
  late final Output<String> resourceType;

  /// The status of the lifecycle policy.
  late final Output<String> status;

  /// Key-value map of resource tags for the Image Builder Lifecycle Policy. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  LifecyclePolicy3(
    String name, {
    LifecyclePolicyArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:imagebuilder/lifecyclePolicy:LifecyclePolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.executionRole = registerOutput<String>('executionRole');
    this.name = registerOutput<String>('name');
    this.policyDetails =
        registerOutput<List<LifecyclePolicyPolicyDetail>>('policyDetails');
    this.region = registerOutput<String>('region');
    this.resourceSelection =
        registerOutput<LifecyclePolicyResourceSelection>('resourceSelection');
    this.resourceType = registerOutput<String>('resourceType');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
