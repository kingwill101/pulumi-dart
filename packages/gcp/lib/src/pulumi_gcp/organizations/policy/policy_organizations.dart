import 'package:pulumi/pulumi.dart' as pulumi;
import '../policy_boolean_policy/policy_boolean_policy.dart';
import '../policy_list_policy/policy_list_policy.dart';
import '../policy_restore_policy/policy_restore_policy.dart';
import 'policy_organizations_args.dart';

/// Allows management of Organization Policies for a Google Cloud Organization.
///
/// > **Warning:** This resource has been superseded by `gcp.orgpolicy.Policy`. `gcp.orgpolicy.Policy` uses Organization Policy API V2 instead of Cloud Resource Manager API V1 and it supports additional features such as tags and conditions.
///
/// To get more information about Organization Policies, see:
///
/// * [API documentation](https://docs.cloud.google.com/resource-manager/reference/rest/v1/organizations/setOrgPolicy)
/// * How-to Guides
/// * [Introduction to the Organization Policy Service](https://docs.cloud.google.com/resource-manager/docs/organization-policy/overview)
///
/// ## Example Usage
///
/// To set policy with a [boolean constraint](https://docs.cloud.google.com/resource-manager/docs/organization-policy/quickstart-boolean-constraints):
///
///
///
///
/// To set a policy with a [list constraint](https://docs.cloud.google.com/resource-manager/docs/organization-policy/quickstart-list-constraints):
///
///
///
/// Or to deny some services, use the following instead:
///
///
///
/// To restore the default organization policy, use the following instead:
///
///
///
/// ## Import
///
/// Organization Policies can be imported using the `org_id` and the `constraint`, e.g.
///
/// * `{{org_id}}/constraints/{{constraint}}`
///
/// When using the `pulumi import` command, Organization Policies can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:organizations/policy:Policy default {{org_id}}/constraints/{{constraint}}
/// ```
///
/// It is all right if the constraint contains a slash, as in the example above.
class PolicyOrganizations extends pulumi.CustomResource {
  /// A boolean policy is a constraint that is either enforced or not. Structure is documented
  /// below.
  late final pulumi.Output<PolicyBooleanPolicy?> booleanPolicy;

  /// The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  ///
  /// - - -
  late final pulumi.Output<String> constraint;

  /// (Computed) The etag of the organization policy. `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other.
  late final pulumi.Output<String> etag;

  /// A policy that can define specific values that are allowed or denied for the given constraint. It can also be used to allow or deny all values. Structure is documented below.
  late final pulumi.Output<PolicyListPolicy?> listPolicy;

  /// The numeric ID of the organization to set the policy for.
  late final pulumi.Output<String> orgId;

  /// A restore policy is a constraint to restore the default policy. Structure is documented below.
  ///
  /// > **Note:** If none of [`boolean_policy`, `list_policy`, `restore_policy`] are defined the policy for a given constraint will
  /// effectively be unset. This is represented in the UI as the constraint being 'Inherited'.
  ///
  /// - - -
  late final pulumi.Output<PolicyRestorePolicy?> restorePolicy;

  /// (Computed) The timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds, representing when the variable was last updated. Example: "2016-10-09T12:33:37.578138407Z".
  late final pulumi.Output<String> updateTime;

  /// Version of the Policy. Default version is 0.
  late final pulumi.Output<int> version;

  PolicyOrganizations(
    String name, {
    PolicyOrganizationsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:organizations/policy:Policy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.booleanPolicy = registerOutput<PolicyBooleanPolicy?>('booleanPolicy');
    this.constraint = registerOutput<String>('constraint');
    this.etag = registerOutput<String>('etag');
    this.listPolicy = registerOutput<PolicyListPolicy?>('listPolicy');
    this.orgId = registerOutput<String>('orgId');
    this.restorePolicy = registerOutput<PolicyRestorePolicy?>('restorePolicy');
    this.updateTime = registerOutput<String>('updateTime');
    this.version = registerOutput<int>('version');
  }
}
