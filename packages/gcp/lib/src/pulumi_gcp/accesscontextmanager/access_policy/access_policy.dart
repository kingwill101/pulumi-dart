import 'package:pulumi/pulumi.dart';
import 'access_policy_args.dart';

/// AccessPolicy is a container for AccessLevels (which define the necessary
/// attributes to use GCP services) and ServicePerimeters (which define
/// regions of services able to freely pass data within a perimeter). An
/// access policy is globally visible within an organization, and the
/// restrictions it specifies apply to all projects within an organization.
///
///
/// To get more information about AccessPolicy, see:
///
/// * [API documentation](https://cloud.google.com/access-context-manager/docs/reference/rest/v1/accessPolicies)
/// * How-to Guides
/// * [Access Policy Quickstart](https://cloud.google.com/access-context-manager/docs/quickstart)
///
/// > **Warning:** If you are using User ADCs (Application Default Credentials) with this resource,
/// you must specify a `billing_project` and set `user_project_override` to true
/// in the provider configuration. Otherwise the ACM API will return a 403 error.
/// Your account must have the `serviceusage.services.use` permission on the
/// `billing_project` you defined.
///
/// ## Example Usage
///
/// ### Access Context Manager Access Policy Basic
///
///
///
/// ### Access Context Manager Access Policy Scoped
///
///
///
///
/// ## Import
///
/// AccessPolicy can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, AccessPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:accesscontextmanager/accessPolicy:AccessPolicy default {{name}}
/// ```
class AccessPolicy extends CustomResource {
  /// Time the AccessPolicy was created in UTC.
  late final Output<String> createTime;

  /// Resource name of the AccessPolicy. Format: '{{policy_id}}'
  late final Output<String> name;

  /// The parent of this AccessPolicy in the Cloud Resource Hierarchy.
  /// Format: 'organizations/{{organization_id}}'
  late final Output<String> parent;

  /// Folder or project on which this policy is applicable.
  /// Format: 'folders/{{folder_id}}' or 'projects/{{project_number}}'
  late final Output<String?> scopes;

  /// Human readable title. Does not affect behavior.
  late final Output<String> title;

  /// Time the AccessPolicy was updated in UTC.
  late final Output<String> updateTime;

  AccessPolicy(
    String name, {
    AccessPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/accessPolicy:AccessPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.scopes = registerOutput<String?>('scopes');
    this.title = registerOutput<String>('title');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
