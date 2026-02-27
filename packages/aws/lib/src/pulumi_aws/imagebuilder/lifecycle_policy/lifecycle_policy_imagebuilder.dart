import 'package:pulumi/pulumi.dart' as pulumi;
import '../lifecycle_policy_policy_detail/lifecycle_policy_policy_detail.dart';
import '../lifecycle_policy_resource_selection/lifecycle_policy_resource_selection.dart';
import 'lifecycle_policy_imagebuilder_args.dart';

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
class LifecyclePolicyImagebuilder extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the lifecycle policy.
  late final pulumi.Output<String> arn;

  /// description for the lifecycle policy.
  late final pulumi.Output<String?> description;

  /// The Amazon Resource Name (ARN) for the IAM role you create that grants Image Builder access to run lifecycle actions. More information about this role can be found [`here`](https://docs.aws.amazon.com/imagebuilder/latest/userguide/image-lifecycle-prerequisites.html#image-lifecycle-prereq-role).
  late final pulumi.Output<String> executionRole;

  /// The name of the lifecycle policy to create.
  late final pulumi.Output<String> name;

  /// Configuration block with policy details. Detailed below.
  late final pulumi.Output<List<LifecyclePolicyPolicyDetail>> policyDetails;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Selection criteria for the resources that the lifecycle policy applies to. Detailed below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<LifecyclePolicyResourceSelection> resourceSelection;

  /// The type of Image Builder resource that the lifecycle policy applies to. Valid values: `AMI_IMAGE` or `CONTAINER_IMAGE`.
  late final pulumi.Output<String> resourceType;

  /// The status of the lifecycle policy.
  late final pulumi.Output<String> status;

  /// Key-value map of resource tags for the Image Builder Lifecycle Policy. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  LifecyclePolicyImagebuilder(
    String name, {
    LifecyclePolicyImagebuilderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:imagebuilder/lifecyclePolicy:LifecyclePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
