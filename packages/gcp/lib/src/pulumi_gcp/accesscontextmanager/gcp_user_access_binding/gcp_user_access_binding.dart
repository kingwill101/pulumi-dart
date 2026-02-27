import 'package:pulumi/pulumi.dart' as pulumi;
import '../gcp_user_access_binding_scoped_access_setting/gcp_user_access_binding_scoped_access_setting.dart';
import '../gcp_user_access_binding_session_settings/gcp_user_access_binding_session_settings.dart';
import 'gcp_user_access_binding_args.dart';

/// Restricts access to Cloud Console and Google Cloud APIs for a set of users using Context-Aware Access.
///
///
/// To get more information about GcpUserAccessBinding, see:
///
/// * [API documentation](https://cloud.google.com/access-context-manager/docs/reference/rest/v1/organizations.gcpUserAccessBindings)
///
/// ## Example Usage
///
/// ### Access Context Manager Gcp User Access Binding Basic
///
///
///
///
/// ## Import
///
/// GcpUserAccessBinding can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, GcpUserAccessBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:accesscontextmanager/gcpUserAccessBinding:GcpUserAccessBinding default {{name}}
/// ```
class GcpUserAccessBinding extends pulumi.CustomResource {
  /// Optional. Access level that a user must have to be granted access. Only one access level is supported, not multiple. This repeated field must have exactly one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
  late final pulumi.Output<String?> accessLevels;

  /// Required. Immutable. Google Group id whose members are subject to this binding's restrictions. See "id" in the G Suite Directory API's Groups resource. If a group's email address/alias is changed, this resource will continue to point at the changed group. This field does not accept group email addresses or aliases. Example: "01d520gv4vjcrht"
  late final pulumi.Output<String> groupKey;

  /// Immutable. Assigned by the server during creation. The last segment has an arbitrary length and has only URI unreserved characters (as defined by RFC 3986 Section 2.3). Should not be specified by the client during creation. Example: "organizations/256/gcpUserAccessBindings/b3-BhcX_Ud5N"
  late final pulumi.Output<String> name;

  /// Required. ID of the parent organization.
  late final pulumi.Output<String> organizationId;

  /// Optional. A list of scoped access settings that set this binding's restrictions on a subset of applications.
  /// Structure is documented below.
  late final pulumi.Output<List<GcpUserAccessBindingScopedAccessSetting>?>
      scopedAccessSettings;

  /// Optional. The Google Cloud session length (GCSL) policy for the group key.
  /// Structure is documented below.
  late final pulumi.Output<GcpUserAccessBindingSessionSettings?>
      sessionSettings;

  GcpUserAccessBinding(
    String name, {
    GcpUserAccessBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/gcpUserAccessBinding:GcpUserAccessBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessLevels = registerOutput<String?>('accessLevels');
    this.groupKey = registerOutput<String>('groupKey');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.scopedAccessSettings =
        registerOutput<List<GcpUserAccessBindingScopedAccessSetting>?>(
            'scopedAccessSettings');
    this.sessionSettings =
        registerOutput<GcpUserAccessBindingSessionSettings?>('sessionSettings');
  }
}
