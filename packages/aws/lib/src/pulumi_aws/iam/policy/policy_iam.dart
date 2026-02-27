import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_iam_args.dart';

/// Provides an IAM policy.
///
/// > **NOTE:** We suggest using explicit JSON encoding or `aws.iam.getPolicyDocument` when assigning a value to `policy`. They seamlessly translate configuration to JSON, enabling you to maintain consistency within your configuration without the need for context switches. Also, you can sidestep potential complications arising from formatting discrepancies, whitespace inconsistencies, and other nuances inherent to JSON.
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
/// - `arn` (String) Amazon Resource Name (ARN) of the IAM policy.
///
///
/// Using `pulumi import`, import IAM Policies using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/policy:Policy administrator arn:aws:iam::123456789012:policy/UsersManageOwnCredentials
/// ```
class PolicyIam extends pulumi.CustomResource {
  /// ARN assigned by AWS to this policy.
  late final pulumi.Output<String> arn;

  /// Number of entities (users, groups, and roles) that the policy is attached to.
  late final pulumi.Output<int> attachmentCount;

  /// Number of ms to wait between creating the policy and setting its version as default. May be required in environments with very high S3 IO loads.
  late final pulumi.Output<int?> delayAfterPolicyCreationInMs;

  /// Description of the IAM policy.
  late final pulumi.Output<String?> description;

  /// Name of the policy. If omitted, the provider will assign a random, unique name.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// Path in which to create the policy. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more information.
  late final pulumi.Output<String?> path;

  /// Policy document. This is a JSON formatted string. For more information about building AWS IAM policy documents, see the AWS IAM Policy Document Guide
  late final pulumi.Output<String> policy;

  /// Policy's ID.
  late final pulumi.Output<String> policyId;

  /// Map of resource tags for the IAM Policy. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  PolicyIam(
    String name, {
    PolicyIamArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/policy:Policy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.attachmentCount = registerOutput<int>('attachmentCount');
    this.delayAfterPolicyCreationInMs =
        registerOutput<int?>('delayAfterPolicyCreationInMs');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.path = registerOutput<String?>('path');
    this.policy = registerOutput<String>('policy');
    this.policyId = registerOutput<String>('policyId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
