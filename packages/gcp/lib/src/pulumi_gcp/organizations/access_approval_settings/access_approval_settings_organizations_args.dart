// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../access_approval_settings_enrolled_service/access_approval_settings_enrolled_service_organizations.dart';

/// The set of arguments for AccessApprovalSettings.
class AccessApprovalSettingsOrganizationsArgs {
  /// The asymmetric crypto key version to use for signing approval requests.
  /// Empty active_key_version indicates that a Google-managed key should be used for signing.
  final pulumi.Input<String>? activeKeyVersion;

  /// A list of Google Cloud Services for which the given resource has Access Approval enrolled.
  /// Access requests for the resource given by name against any of these services contained here will be required
  /// to have explicit approval. Enrollment can be done for individual services.
  /// A maximum of 10 enrolled services will be enforced, to be expanded as the set of supported services is expanded.
  /// Structure is documented below.
  final pulumi.Input<List<AccessApprovalSettingsEnrolledServiceOrganizations>>
      enrolledServices;

  /// A list of email addresses to which notifications relating to approval requests should be sent.
  /// Notifications relating to a resource will be sent to all emails in the settings of ancestor
  /// resources of that resource. A maximum of 50 email addresses are allowed.
  final pulumi.Input<List<String>>? notificationEmails;

  /// ID of the organization of the access approval settings.
  final pulumi.Input<String> organizationId;

  AccessApprovalSettingsOrganizationsArgs({
    this.activeKeyVersion,
    required this.enrolledServices,
    this.notificationEmails,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activeKeyVersionValue = activeKeyVersion;
    if (activeKeyVersionValue != null) {
      map['activeKeyVersion'] = activeKeyVersionValue;
    }
    map['enrolledServices'] = pulumi.Input.mapInputValue<
            List<AccessApprovalSettingsEnrolledServiceOrganizations>,
            List<Map<String, dynamic>>>(
        enrolledServices,
        (value) => pulumi.Input.encodeList<
            AccessApprovalSettingsEnrolledServiceOrganizations,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final notificationEmailsValue = notificationEmails;
    if (notificationEmailsValue != null) {
      map['notificationEmails'] = notificationEmailsValue;
    }
    map['organizationId'] = organizationId;
    return map;
  }

  factory AccessApprovalSettingsOrganizationsArgs.fromMap(
      Map<String, dynamic> map) {
    return AccessApprovalSettingsOrganizationsArgs(
      activeKeyVersion:
          pulumi.Input.asOptionalInput<String>(map['activeKeyVersion']),
      enrolledServices: pulumi.Input.asInput<
              List<AccessApprovalSettingsEnrolledServiceOrganizations>>(
          map['enrolledServices']),
      notificationEmails:
          pulumi.Input.asOptionalInput<List<String>>(map['notificationEmails']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
