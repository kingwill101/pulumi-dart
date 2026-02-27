import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_policies_exclusive_args.dart';

/// Resource for maintaining exclusive management of inline policies assigned to an AWS IAM (Identity & Access Management) group.
///
/// !> This resource takes exclusive ownership over inline policies assigned to a group. This includes removal of inline policies which are not explicitly configured. To prevent persistent drift, ensure any `aws.iam.GroupPolicy` resources managed alongside this resource are included in the `policy_names` argument.
///
/// > Destruction of this resource means Terraform will no longer manage reconciliation of the configured inline policy assignments. It __will not__ delete the configured policies from the group.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Disallow Inline Policies
///
/// To automatically remove any configured inline policies, set the `policy_names` argument to an empty list.
///
/// > This will not __prevent__ inline policies from being assigned to a group via Terraform (or any other interface). This resource enables bringing inline policy assignments into a configured state, however, this reconciliation happens only when `apply` is proactively run.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import exclusive management of inline policy assignments using the `group_name`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/groupPoliciesExclusive:GroupPoliciesExclusive example MyGroup
/// ```
class GroupPoliciesExclusive extends pulumi.CustomResource {
  /// IAM group name.
  late final pulumi.Output<String> groupName;

  /// A list of inline policy names to be assigned to the group. Policies attached to this group but not configured in this argument will be removed.
  late final pulumi.Output<List<String>> policyNames;

  GroupPoliciesExclusive(
    String name, {
    GroupPoliciesExclusiveArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/groupPoliciesExclusive:GroupPoliciesExclusive',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.groupName = registerOutput<String>('groupName');
    this.policyNames = registerOutput<List<String>>('policyNames');
  }
}
