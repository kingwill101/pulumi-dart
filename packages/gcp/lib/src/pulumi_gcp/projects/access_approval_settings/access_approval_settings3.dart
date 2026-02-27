import 'package:pulumi/pulumi.dart';
import '../access_approval_settings_enrolled_service/access_approval_settings_enrolled_service3.dart';
import 'access_approval_settings_args3.dart';

/// Access Approval enables you to require your explicit approval whenever Google support and engineering need to access your customer content.
///
///
/// To get more information about ProjectSettings, see:
///
/// * [API documentation](https://cloud.google.com/access-approval/docs/reference/rest/v1/projects)
///
/// ## Example Usage
///
/// ### Project Access Approval Full
///
///
///
/// ### Project Access Approval Active Key Version
///
///
///
///
/// ## Import
///
/// ProjectSettings can be imported using any of these accepted formats:
///
/// * `projects/{{project_id}}/accessApprovalSettings`
///
/// * `{{project_id}}`
///
/// When using the `pulumi import` command, ProjectSettings can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:projects/accessApprovalSettings:AccessApprovalSettings default projects/{{project_id}}/accessApprovalSettings
/// ```
///
/// ```sh
/// $ pulumi import gcp:projects/accessApprovalSettings:AccessApprovalSettings default {{project_id}}
/// ```
class AccessApprovalSettings3 extends CustomResource {
  /// The asymmetric crypto key version to use for signing approval requests.
  /// Empty active_key_version indicates that a Google-managed key should be used for signing.
  /// This property will be ignored if set by an ancestor of the resource, and new non-empty values may not be set.
  late final Output<String?> activeKeyVersion;

  /// If the field is true, that indicates that an ancestor of this Project has set active_key_version.
  late final Output<bool> ancestorHasActiveKeyVersion;

  /// If the field is true, that indicates that at least one service is enrolled for Access Approval in one or more ancestors of the Project.
  late final Output<bool> enrolledAncestor;

  /// A list of Google Cloud Services for which the given resource has Access Approval enrolled.
  /// Access requests for the resource given by name against any of these services contained here will be required
  /// to have explicit approval. Enrollment can only be done on an all or nothing basis.
  /// A maximum of 10 enrolled services will be enforced, to be expanded as the set of supported services is expanded.
  /// Structure is documented below.
  late final Output<List<AccessApprovalSettingsEnrolledService3>>
      enrolledServices;

  /// If the field is true, that indicates that there is some configuration issue with the active_key_version
  /// configured on this Project (e.g. it doesn't exist or the Access Approval service account doesn't have the
  /// correct permissions on it, etc.) This key version is not necessarily the effective key version at this level,
  /// as key versions are inherited top-down.
  late final Output<bool> invalidKeyVersion;

  /// The resource name of the settings. Format is "projects/{project_id}/accessApprovalSettings"
  late final Output<String> name;

  /// A list of email addresses to which notifications relating to approval requests should be sent.
  /// Notifications relating to a resource will be sent to all emails in the settings of ancestor
  /// resources of that resource. A maximum of 50 email addresses are allowed.
  late final Output<List<String>> notificationEmails;

  /// (Optional, Deprecated)
  /// Project id.
  ///
  /// > **Warning:** `project` is deprecated and will be removed in a future major release. Use `project_id` instead.
  late final Output<String?> project;

  /// ID of the project of the access approval settings.
  late final Output<String> projectId;

  AccessApprovalSettings3(
    String name, {
    AccessApprovalSettingsArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:projects/accessApprovalSettings:AccessApprovalSettings',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.activeKeyVersion = registerOutput<String?>('activeKeyVersion');
    this.ancestorHasActiveKeyVersion =
        registerOutput<bool>('ancestorHasActiveKeyVersion');
    this.enrolledAncestor = registerOutput<bool>('enrolledAncestor');
    this.enrolledServices =
        registerOutput<List<AccessApprovalSettingsEnrolledService3>>(
            'enrolledServices');
    this.invalidKeyVersion = registerOutput<bool>('invalidKeyVersion');
    this.name = registerOutput<String>('name');
    this.notificationEmails =
        registerOutput<List<String>>('notificationEmails');
    this.project = registerOutput<String?>('project');
    this.projectId = registerOutput<String>('projectId');
  }
}
