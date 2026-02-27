import 'package:pulumi/pulumi.dart';
import '../lifecycle_policy_policy_details/lifecycle_policy_policy_details.dart';
import 'lifecycle_policy_args.dart';

/// Provides a [Data Lifecycle Manager (DLM) lifecycle policy](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshot-lifecycle.html) for managing snapshots.
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### Example Default Policy
///
///
///
/// ### Example Cross-Region Snapshot Copy Usage
///
///
///
/// ### Example Event Based Policy Usage
///
///
///
/// ### Example Post/Pre Scripts
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DLM lifecycle policies using their policy ID. For example:
///
/// ```sh
/// $ pulumi import aws:dlm/lifecyclePolicy:LifecyclePolicy example policy-abcdef12345678901
/// ```
class LifecyclePolicy extends CustomResource {
  /// Amazon Resource Name (ARN) of the DLM Lifecycle Policy.
  late final Output<String> arn;

  /// Specify the type of default policy to create. valid values are `VOLUME` or `INSTANCE`.
  late final Output<String?> defaultPolicy;

  /// A description for the DLM lifecycle policy.
  late final Output<String> description;

  /// The ARN of an IAM role that is able to be assumed by the DLM service.
  late final Output<String> executionRoleArn;

  /// See the `policy_details` configuration block. Max of 1.
  late final Output<LifecyclePolicyPolicyDetails> policyDetails;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Whether the lifecycle policy should be enabled or disabled. `ENABLED` or `DISABLED` are valid values. Defaults to `ENABLED`.
  late final Output<String?> state;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  LifecyclePolicy(
    String name, {
    LifecyclePolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dlm/lifecyclePolicy:LifecyclePolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.defaultPolicy = registerOutput<String?>('defaultPolicy');
    this.description = registerOutput<String>('description');
    this.executionRoleArn = registerOutput<String>('executionRoleArn');
    this.policyDetails =
        registerOutput<LifecyclePolicyPolicyDetails>('policyDetails');
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String?>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
