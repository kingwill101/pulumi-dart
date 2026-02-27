import 'package:pulumi/pulumi.dart' as pulumi;
import '../organization_policy_boolean_policy/organization_policy_boolean_policy_projects.dart';
import '../organization_policy_list_policy/organization_policy_list_policy_projects.dart';
import '../organization_policy_restore_policy/organization_policy_restore_policy_projects.dart';
import 'organization_policy_projects_args.dart';

/// Allows management of Organization Policies for a Google Cloud Project.
///
/// > **Warning:** This resource has been superseded by `gcp.orgpolicy.Policy`. `gcp.orgpolicy.Policy` uses Organization Policy API V2 instead of Cloud Resource Manager API V1 and it supports additional features such as tags and conditions.
///
/// To get more information about Organization Policies, see:
///
/// * [API documentation](https://docs.cloud.google.com/resource-manager/reference/rest/v1/projects/setOrgPolicy)
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
///
/// Or to deny some services, use the following instead:
///
///
///
/// To restore the default project organization policy, use the following instead:
///
///
///
/// ## Import
///
/// Project organization policies can be imported using any of the follow formats:
///
/// * `projects/{{project_id}}:constraints/{{constraint}}`
///
/// * `{{project_id}}:constraints/{{constraint}}`
///
/// * `{{project_id}}:{{constraint}}`
///
/// When using the `pulumi import` command, project organization policies can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:projects/organizationPolicy:OrganizationPolicy default projects/{{project_id}}:constraints/{{constraint}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:projects/organizationPolicy:OrganizationPolicy default {{project_id}}:constraints/{{constraint}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:projects/organizationPolicy:OrganizationPolicy default {{project_id}}:{{constraint}}
/// ```
class OrganizationPolicyProjects extends pulumi.CustomResource {
  /// A boolean policy is a constraint that is either enforced or not. Structure is documented below.
  late final pulumi.Output<OrganizationPolicyBooleanPolicyProjects?>
      booleanPolicy;

  /// The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  ///
  /// - - -
  late final pulumi.Output<String> constraint;

  /// (Computed) The etag of the organization policy. `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other.
  late final pulumi.Output<String> etag;

  /// A policy that can define specific values that are allowed or denied for the given constraint. It can also be used to allow or deny all values. Structure is documented below.
  late final pulumi.Output<OrganizationPolicyListPolicyProjects?> listPolicy;

  /// The project id of the project to set the policy for.
  late final pulumi.Output<String> project;

  /// A restore policy is a constraint to restore the default policy. Structure is documented below.
  ///
  /// > **Note:** If none of [`boolean_policy`, `list_policy`, `restore_policy`] are defined the policy for a given constraint will
  /// effectively be unset. This is represented in the UI as the constraint being 'Inherited'.
  ///
  /// - - -
  late final pulumi.Output<OrganizationPolicyRestorePolicyProjects?>
      restorePolicy;

  /// (Computed) The timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds, representing when the variable was last updated. Example: "2016-10-09T12:33:37.578138407Z".
  late final pulumi.Output<String> updateTime;

  /// Version of the Policy. Default version is 0.
  late final pulumi.Output<int> version;

  OrganizationPolicyProjects(
    String name, {
    OrganizationPolicyProjectsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:projects/organizationPolicy:OrganizationPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.booleanPolicy =
        registerOutput<OrganizationPolicyBooleanPolicyProjects?>(
            'booleanPolicy');
    this.constraint = registerOutput<String>('constraint');
    this.etag = registerOutput<String>('etag');
    this.listPolicy =
        registerOutput<OrganizationPolicyListPolicyProjects?>('listPolicy');
    this.project = registerOutput<String>('project');
    this.restorePolicy =
        registerOutput<OrganizationPolicyRestorePolicyProjects?>(
            'restorePolicy');
    this.updateTime = registerOutput<String>('updateTime');
    this.version = registerOutput<int>('version');
  }
}
