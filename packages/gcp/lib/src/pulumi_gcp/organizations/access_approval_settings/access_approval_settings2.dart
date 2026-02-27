import 'package:pulumi/pulumi.dart';
import '../access_approval_settings_enrolled_service/access_approval_settings_enrolled_service2.dart';
import 'access_approval_settings_args2.dart';

/// Access Approval enables you to require your explicit approval whenever Google support and engineering need to access your customer content.
///
///
/// To get more information about OrganizationSettings, see:
///
/// * [API documentation](https://cloud.google.com/access-approval/docs/reference/rest/v1/organizations)
///
/// ## Example Usage
///
/// ### Organization Access Approval Full
///
///
///
/// ### Organization Access Approval Active Key Version
///
///
///
///
/// ## Import
///
/// OrganizationSettings can be imported using any of these accepted formats:
///
/// * `organizations/{{organization_id}}/accessApprovalSettings`
///
/// * `{{organization_id}}`
///
/// When using the `pulumi import` command, OrganizationSettings can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:organizations/accessApprovalSettings:AccessApprovalSettings default organizations/{{organization_id}}/accessApprovalSettings
/// ```
///
/// ```sh
/// $ pulumi import gcp:organizations/accessApprovalSettings:AccessApprovalSettings default {{organization_id}}
/// ```
class AccessApprovalSettings2 extends CustomResource {
  /// The asymmetric crypto key version to use for signing approval requests.
  /// Empty active_key_version indicates that a Google-managed key should be used for signing.
  late final Output<String?> activeKeyVersion;

  /// This field will always be unset for the organization since organizations do not have ancestors.
  late final Output<bool> ancestorHasActiveKeyVersion;

  /// This field will always be unset for the organization since organizations do not have ancestors.
  late final Output<bool> enrolledAncestor;

  /// A list of Google Cloud Services for which the given resource has Access Approval enrolled.
  /// Access requests for the resource given by name against any of these services contained here will be required
  /// to have explicit approval. Enrollment can be done for individual services.
  /// A maximum of 10 enrolled services will be enforced, to be expanded as the set of supported services is expanded.
  /// Structure is documented below.
  late final Output<List<AccessApprovalSettingsEnrolledService2>>
      enrolledServices;

  /// If the field is true, that indicates that there is some configuration issue with the active_key_version
  /// configured on this Organization (e.g. it doesn't exist or the Access Approval service account doesn't have the
  /// correct permissions on it, etc.).
  late final Output<bool> invalidKeyVersion;

  /// The resource name of the settings. Format is "organizations/{organization_id}/accessApprovalSettings"
  late final Output<String> name;

  /// A list of email addresses to which notifications relating to approval requests should be sent.
  /// Notifications relating to a resource will be sent to all emails in the settings of ancestor
  /// resources of that resource. A maximum of 50 email addresses are allowed.
  late final Output<List<String>> notificationEmails;

  /// ID of the organization of the access approval settings.
  late final Output<String> organizationId;

  AccessApprovalSettings2(
    String name, {
    AccessApprovalSettingsArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:organizations/accessApprovalSettings:AccessApprovalSettings',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.activeKeyVersion = registerOutput<String?>('activeKeyVersion');
    this.ancestorHasActiveKeyVersion =
        registerOutput<bool>('ancestorHasActiveKeyVersion');
    this.enrolledAncestor = registerOutput<bool>('enrolledAncestor');
    this.enrolledServices =
        registerOutput<List<AccessApprovalSettingsEnrolledService2>>(
            'enrolledServices');
    this.invalidKeyVersion = registerOutput<bool>('invalidKeyVersion');
    this.name = registerOutput<String>('name');
    this.notificationEmails =
        registerOutput<List<String>>('notificationEmails');
    this.organizationId = registerOutput<String>('organizationId');
  }
}
