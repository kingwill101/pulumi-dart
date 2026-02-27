import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_policy_args.dart';

/// Provides an IAM role inline policy.
///
/// > **NOTE:** For a given role, this resource is incompatible with using the `aws.iam.Role` resource `inline_policy` argument. When using that argument and this resource, both will attempt to manage the role's inline policies and the provider will show a permanent difference.
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
/// * `role` (String) Name of the IAM role.
/// * `name` (String) Name of the role policy.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import IAM Role Policies using the `role_name:role_policy_name`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/rolePolicy:RolePolicy example role_of_mypolicy_name:mypolicy_name
/// ```
class RolePolicy extends pulumi.CustomResource {
  /// The name of the role policy.
  /// If omitted, the provider will assign a random, unique name.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix.
  /// Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// The inline policy document.
  /// This is a JSON formatted string.
  /// For more information about building IAM policy documents with Pulumi, see the AWS IAM Policy Document Guide
  late final pulumi.Output<String> policy;

  /// The name of the IAM role to attach to the policy.
  late final pulumi.Output<String> role;

  RolePolicy(
    String name, {
    RolePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/rolePolicy:RolePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.policy = registerOutput<String>('policy');
    this.role = registerOutput<String>('role');
  }
}
