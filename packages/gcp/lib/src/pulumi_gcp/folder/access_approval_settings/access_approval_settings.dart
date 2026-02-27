import 'package:pulumi/pulumi.dart' as pulumi;
import '../access_approval_settings_enrolled_service/access_approval_settings_enrolled_service.dart';
import 'access_approval_settings_args.dart';

/// Access Approval enables you to require your explicit approval whenever Google support and engineering need to access your customer content.
///
///
/// To get more information about FolderSettings, see:
///
/// * [API documentation](https://cloud.google.com/access-approval/docs/reference/rest/v1/folders)
///
/// ## Example Usage
///
/// ### Folder Access Approval Full
///
///
///
/// ### Folder Access Approval Active Key Version
///
///
///
///
/// ## Import
///
/// FolderSettings can be imported using any of these accepted formats:
///
/// * `folders/{{folder_id}}/accessApprovalSettings`
///
/// * `{{folder_id}}`
///
/// When using the `pulumi import` command, FolderSettings can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:folder/accessApprovalSettings:AccessApprovalSettings default folders/{{folder_id}}/accessApprovalSettings
/// ```
///
/// ```sh
/// $ pulumi import gcp:folder/accessApprovalSettings:AccessApprovalSettings default {{folder_id}}
/// ```
class AccessApprovalSettings extends pulumi.CustomResource {
  /// The asymmetric crypto key version to use for signing approval requests.
  /// Empty active_key_version indicates that a Google-managed key should be used for signing.
  /// This property will be ignored if set by an ancestor of the resource, and new non-empty values may not be set.
  late final pulumi.Output<String?> activeKeyVersion;

  /// If the field is true, that indicates that an ancestor of this Folder has set active_key_version.
  late final pulumi.Output<bool> ancestorHasActiveKeyVersion;

  /// If the field is true, that indicates that at least one service is enrolled for Access Approval in one or more ancestors of the Folder.
  late final pulumi.Output<bool> enrolledAncestor;

  /// A list of Google Cloud Services for which the given resource has Access Approval enrolled.
  /// Access requests for the resource given by name against any of these services contained here will be required
  /// to have explicit approval. Enrollment can only be done on an all or nothing basis.
  /// A maximum of 10 enrolled services will be enforced, to be expanded as the set of supported services is expanded.
  /// Structure is documented below.
  late final pulumi.Output<List<AccessApprovalSettingsEnrolledService>>
      enrolledServices;

  /// ID of the folder of the access approval settings.
  late final pulumi.Output<String> folderId;

  /// If the field is true, that indicates that there is some configuration issue with the active_key_version
  /// configured on this Folder (e.g. it doesn't exist or the Access Approval service account doesn't have the
  /// correct permissions on it, etc.) This key version is not necessarily the effective key version at this level,
  /// as key versions are inherited top-down.
  late final pulumi.Output<bool> invalidKeyVersion;

  /// The resource name of the settings. Format is "folders/{folder_id}/accessApprovalSettings"
  late final pulumi.Output<String> name;

  /// A list of email addresses to which notifications relating to approval requests should be sent.
  /// Notifications relating to a resource will be sent to all emails in the settings of ancestor
  /// resources of that resource. A maximum of 50 email addresses are allowed.
  late final pulumi.Output<List<String>> notificationEmails;

  AccessApprovalSettings(
    String name, {
    AccessApprovalSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:folder/accessApprovalSettings:AccessApprovalSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activeKeyVersion = registerOutput<String?>('activeKeyVersion');
    this.ancestorHasActiveKeyVersion =
        registerOutput<bool>('ancestorHasActiveKeyVersion');
    this.enrolledAncestor = registerOutput<bool>('enrolledAncestor');
    this.enrolledServices =
        registerOutput<List<AccessApprovalSettingsEnrolledService>>(
            'enrolledServices');
    this.folderId = registerOutput<String>('folderId');
    this.invalidKeyVersion = registerOutput<bool>('invalidKeyVersion');
    this.name = registerOutput<String>('name');
    this.notificationEmails =
        registerOutput<List<String>>('notificationEmails');
  }
}
