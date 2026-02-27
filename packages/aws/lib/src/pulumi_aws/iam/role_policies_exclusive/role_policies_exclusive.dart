import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_policies_exclusive_args.dart';

/// > **NOTE:**: To reliably detect drift between customer managed inline policies listed in this resource and actual policies attached to the role in the cloud, you currently need to run Pulumi with `pulumi up --refresh`. See [#4766](https://github.com/pulumi/pulumi-aws/issues/4766) for tracking making this work with regular `pulumi up` invocations.
///
/// Resource for maintaining exclusive management of inline policies assigned to an AWS IAM (Identity & Access Management) role.
///
/// !> This resource takes exclusive ownership over inline policies assigned to a role. This includes removal of inline policies which are not explicitly configured. To prevent persistent drift, ensure any `aws.iam.RolePolicy` resources managed alongside this resource are included in the `policy_names` argument.
///
/// > Destruction of this resource means Pulumi will no longer manage reconciliation of the configured inline policy assignments. It __will not__ delete the configured policies from the role.
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
/// > This will not __prevent__ inline policies from being assigned to a role via Pulumi (or any other interface). This resource enables bringing inline policy assignments into a configured state, however, this reconciliation happens only when `apply` is proactively run.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import exclusive management of inline policy assignments using the `role_name`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/rolePoliciesExclusive:RolePoliciesExclusive example MyRole
/// ```
class RolePoliciesExclusive extends pulumi.CustomResource {
  /// A list of inline policy names to be assigned to the role. Policies attached to this role but not configured in this argument will be removed.
  late final pulumi.Output<List<String>> policyNames;

  /// IAM role name.
  late final pulumi.Output<String> roleName;

  RolePoliciesExclusive(
    String name, {
    RolePoliciesExclusiveArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/rolePoliciesExclusive:RolePoliciesExclusive',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.policyNames = registerOutput<List<String>>('policyNames');
    this.roleName = registerOutput<String>('roleName');
  }
}
