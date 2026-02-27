import 'package:pulumi/pulumi.dart';
import '../organization_policy_boolean_policy/organization_policy_boolean_policy.dart';
import '../organization_policy_list_policy/organization_policy_list_policy.dart';
import '../organization_policy_restore_policy/organization_policy_restore_policy.dart';
import 'organization_policy_args.dart';

/// Allows management of Organization Policies for a Google Cloud Folder.
///
/// > **Warning:** This resource has been superseded by `gcp.orgpolicy.Policy`. `gcp.orgpolicy.Policy` uses Organization Policy API V2 instead of Cloud Resource Manager API V1 and it supports additional features such as tags and conditions.
///
/// To get more information about Organization Policies, see:
///
/// * [API documentation](https://docs.cloud.google.com/resource-manager/reference/rest/v1/folders/setOrgPolicy)
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
/// To restore the default folder organization policy, use the following instead:
///
///
///
/// ## Import
///
/// Folder organization policies can be imported using any of the follow formats:
///
/// * `folders/{{folder_id}}/constraints/serviceuser.services`
///
/// * `{{folder_id}}/serviceuser.services`
///
/// When using the `pulumi import` command, folder organization policies can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:folder/organizationPolicy:OrganizationPolicy * `google_folder_organization_policy.default folders/* ``{{folder_id}}/constraints/serviceuser.services`
/// ```
///
/// ```sh
/// $ pulumi import gcp:folder/organizationPolicy:OrganizationPolicy * `* `google_folder_organization_policy.default {{folder_id}}/``serviceuser.services
/// ```
class OrganizationPolicy extends CustomResource {
  /// A boolean policy is a constraint that is either enforced or not. Structure is documented below.
  late final Output<OrganizationPolicyBooleanPolicy?> booleanPolicy;

  /// The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  ///
  /// - - -
  late final Output<String> constraint;

  /// (Computed) The etag of the organization policy. `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other.
  late final Output<String> etag;

  /// The resource name of the folder to set the policy for. Its format is folders/{folder_id}.
  late final Output<String> folder;

  /// A policy that can define specific values that are allowed or denied for the given constraint. It
  /// can also be used to allow or deny all values. Structure is documented below.
  late final Output<OrganizationPolicyListPolicy?> listPolicy;

  /// A restore policy is a constraint to restore the default policy. Structure is documented below.
  ///
  /// > **Note:** If none of [`boolean_policy`, `list_policy`, `restore_policy`] are defined the policy for a given constraint will
  /// effectively be unset. This is represented in the UI as the constraint being 'Inherited'.
  ///
  /// - - -
  late final Output<OrganizationPolicyRestorePolicy?> restorePolicy;

  /// (Computed) The timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds, representing when the variable was last updated. Example: "2016-10-09T12:33:37.578138407Z".
  late final Output<String> updateTime;

  /// Version of the Policy. Default version is 0.
  late final Output<int> version;

  OrganizationPolicy(
    String name, {
    OrganizationPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:folder/organizationPolicy:OrganizationPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.booleanPolicy =
        registerOutput<OrganizationPolicyBooleanPolicy?>('booleanPolicy');
    this.constraint = registerOutput<String>('constraint');
    this.etag = registerOutput<String>('etag');
    this.folder = registerOutput<String>('folder');
    this.listPolicy =
        registerOutput<OrganizationPolicyListPolicy?>('listPolicy');
    this.restorePolicy =
        registerOutput<OrganizationPolicyRestorePolicy?>('restorePolicy');
    this.updateTime = registerOutput<String>('updateTime');
    this.version = registerOutput<int>('version');
  }
}
