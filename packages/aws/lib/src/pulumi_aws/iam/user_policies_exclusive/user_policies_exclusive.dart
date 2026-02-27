import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_policies_exclusive_args.dart';

/// Resource for maintaining exclusive management of inline policies assigned to an AWS IAM (Identity & Access Management) user.
///
/// !> This resource takes exclusive ownership over inline policies assigned to a user. This includes removal of inline policies which are not explicitly configured. To prevent persistent drift, ensure any `aws.iam.UserPolicy` resources managed alongside this resource are included in the `policy_names` argument.
///
/// > Destruction of this resource means Terraform will no longer manage reconciliation of the configured inline policy assignments. It __will not__ delete the configured policies from the user.
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
/// > This will not __prevent__ inline policies from being assigned to a user via Terraform (or any other interface). This resource enables bringing inline policy assignments into a configured state, however, this reconciliation happens only when `apply` is proactively run.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import exclusive management of inline policy assignments using the `user_name`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/userPoliciesExclusive:UserPoliciesExclusive example MyUser
/// ```
class UserPoliciesExclusive extends pulumi.CustomResource {
  /// A list of inline policy names to be assigned to the user. Policies attached to this user but not configured in this argument will be removed.
  late final pulumi.Output<List<String>> policyNames;

  /// IAM user name.
  late final pulumi.Output<String> userName;

  UserPoliciesExclusive(
    String name, {
    UserPoliciesExclusiveArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/userPoliciesExclusive:UserPoliciesExclusive',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.policyNames = registerOutput<List<String>>('policyNames');
    this.userName = registerOutput<String>('userName');
  }
}
