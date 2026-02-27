import 'package:pulumi/pulumi.dart' as pulumi;
import '../role_inline_policy/role_inline_policy.dart';
import 'role_args.dart';

/// Provides an IAM role.
///
/// > **NOTE:** If policies are attached to the role via the `aws.iam.PolicyAttachment` resource and you are modifying the role `name` or `path`, the `force_detach_policies` argument must be set to `true` and applied before attempting the operation otherwise you will encounter a `DeleteConflict` error. The `aws.iam.RolePolicyAttachment` resource (recommended) does not have this requirement.
///
/// > **NOTE:** If you use this resource's `managed_policy_arns` argument or `inline_policy` configuration blocks, this resource will take over exclusive management of the role's respective policy types (e.g., both policy types if both arguments are used). These arguments are incompatible with other ways of managing a role's policies, such as `aws.iam.PolicyAttachment`, `aws.iam.RolePolicyAttachment`, and `aws.iam.RolePolicy`. If you attempt to manage a role's policies by multiple means, you will get resource cycling and/or errors.
///
/// > **NOTE:** We suggest using explicit JSON encoding or `aws.iam.getPolicyDocument` when assigning a value to `policy`. They seamlessly translate configuration to JSON, enabling you to maintain consistency within your configuration without the need for context switches. Also, you can sidestep potential complications arising from formatting discrepancies, whitespace inconsistencies, and other nuances inherent to JSON.
///
/// ## Example Usage
///
/// ### Basic Example
///
///
///
/// ### Example of Using Data Source for Assume Role Policy
///
///
///
/// ### Example of Exclusive Inline Policies
///
/// > The `inline_policy` argument is deprecated. Use the `aws.iam.RolePolicy` resource instead. If Pulumi should exclusively manage all inline policy associations (the current behavior of this argument), use the `aws.iam.RolePoliciesExclusive` resource as well.
///
/// This example creates an IAM role with two inline IAM policies. If someone adds another inline policy out-of-band, on the next apply, this provider will remove that policy. If someone deletes these policies out-of-band, this provider will recreate them.
///
///
///
/// ### Example of Removing Inline Policies
///
/// > The `inline_policy` argument is deprecated. Use the `aws.iam.RolePolicy` resource instead. If Pulumi should exclusively manage all inline policy associations (the current behavior of this argument), use the `aws.iam.RolePoliciesExclusive` resource as well.
///
/// This example creates an IAM role with what appears to be empty IAM `inline_policy` argument instead of using `inline_policy` as a configuration block. The result is that if someone were to add an inline policy out-of-band, on the next apply, this provider will remove that policy.
///
///
///
/// ### Example of Exclusive Managed Policies
///
/// > The `managed_policy_arns` argument is deprecated. Use the `aws.iam.RolePolicyAttachment` resource instead. If Pulumi should exclusively manage all managed policy attachments (the current behavior of this argument), use the `aws.iam.RolePolicyAttachmentsExclusive` resource as well.
///
/// This example creates an IAM role and attaches two managed IAM policies. If someone attaches another managed policy out-of-band, on the next apply, this provider will detach that policy. If someone detaches these policies out-of-band, this provider will attach them again.
///
///
///
/// ### Example of Removing Managed Policies
///
/// > The `managed_policy_arns` argument is deprecated. Use the `aws.iam.RolePolicyAttachment` resource instead. If Pulumi should exclusively manage all managed policy attachments (the current behavior of this argument), use the `aws.iam.RolePolicyAttachmentsExclusive` resource as well.
///
/// This example creates an IAM role with an empty `managed_policy_arns` argument. If someone attaches a policy out-of-band, on the next apply, this provider will detach that policy.
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) Name of the IAM role.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import IAM Roles using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/role:Role example developer_name
/// ```
class Role extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) specifying the role.
  late final pulumi.Output<String> arn;

  /// Policy that grants an entity permission to assume the role.
  ///
  /// > **NOTE:** The `assume_role_policy` is very similar to but slightly different than a standard IAM policy and cannot use an `aws.iam.Policy` resource.  However, it _can_ use an `aws.iam.getPolicyDocument` data source. See the example above of how this works.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> assumeRolePolicy;

  /// Creation date of the IAM role.
  late final pulumi.Output<String> createDate;

  /// Description of the role.
  late final pulumi.Output<String?> description;

  /// Whether to force detaching any policies the role has before destroying it. Defaults to `false`.
  late final pulumi.Output<bool?> forceDetachPolicies;

  /// Configuration block defining an exclusive set of IAM inline policies associated with the IAM role. See below. If no blocks are configured, Pulumi will not manage any inline policies in this resource. Configuring one empty block (i.e., `inline_policy {}`) will cause Pulumi to remove _all_ inline policies added out of band on `apply`.
  late final pulumi.Output<List<RoleInlinePolicy>> inlinePolicies;

  /// Set of exclusive IAM managed policy ARNs to attach to the IAM role. If this attribute is not configured, Pulumi will ignore policy attachments to this resource. When configured, Pulumi will align the role's managed policy attachments with this set by attaching or detaching managed policies. Configuring an empty set (i.e., `managed_policy_arns = []`) will cause Pulumi to remove _all_ managed policy attachments.
  late final pulumi.Output<List<String>> managedPolicyArns;

  /// Maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours.
  late final pulumi.Output<int?> maxSessionDuration;

  /// Friendly name of the role. If omitted, the provider will assign a random, unique name. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more information.
  late final pulumi.Output<String> name;

  /// Creates a unique friendly name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// Path to the role. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more information.
  late final pulumi.Output<String?> path;

  /// ARN of the policy that is used to set the permissions boundary for the role.
  late final pulumi.Output<String?> permissionsBoundary;

  /// Key-value mapping of tags for the IAM role. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Stable and unique string identifying the role.
  late final pulumi.Output<String> uniqueId;

  Role(
    String name, {
    RoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/role:Role',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.assumeRolePolicy = registerOutput<String>('assumeRolePolicy');
    this.createDate = registerOutput<String>('createDate');
    this.description = registerOutput<String?>('description');
    this.forceDetachPolicies = registerOutput<bool?>('forceDetachPolicies');
    this.inlinePolicies =
        registerOutput<List<RoleInlinePolicy>>('inlinePolicies');
    this.managedPolicyArns = registerOutput<List<String>>('managedPolicyArns');
    this.maxSessionDuration = registerOutput<int?>('maxSessionDuration');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.path = registerOutput<String?>('path');
    this.permissionsBoundary = registerOutput<String?>('permissionsBoundary');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.uniqueId = registerOutput<String>('uniqueId');
  }
}
