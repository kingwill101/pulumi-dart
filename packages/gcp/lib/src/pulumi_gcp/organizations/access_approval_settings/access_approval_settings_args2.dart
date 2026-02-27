// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../access_approval_settings_enrolled_service/access_approval_settings_enrolled_service2.dart';

/// The set of arguments for AccessApprovalSettings.
class AccessApprovalSettingsArgs2 {
  /// The asymmetric crypto key version to use for signing approval requests.
  /// Empty active_key_version indicates that a Google-managed key should be used for signing.
  final Input<String>? activeKeyVersion;

  /// A list of Google Cloud Services for which the given resource has Access Approval enrolled.
  /// Access requests for the resource given by name against any of these services contained here will be required
  /// to have explicit approval. Enrollment can be done for individual services.
  /// A maximum of 10 enrolled services will be enforced, to be expanded as the set of supported services is expanded.
  /// Structure is documented below.
  final Input<List<AccessApprovalSettingsEnrolledService2>> enrolledServices;

  /// A list of email addresses to which notifications relating to approval requests should be sent.
  /// Notifications relating to a resource will be sent to all emails in the settings of ancestor
  /// resources of that resource. A maximum of 50 email addresses are allowed.
  final Input<List<String>>? notificationEmails;

  /// ID of the organization of the access approval settings.
  final Input<String> organizationId;

  AccessApprovalSettingsArgs2({
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
    map['enrolledServices'] = Input.mapInputValue<
            List<AccessApprovalSettingsEnrolledService2>,
            List<Map<String, dynamic>>>(
        enrolledServices,
        (value) => Input.encodeList<AccessApprovalSettingsEnrolledService2,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final notificationEmailsValue = notificationEmails;
    if (notificationEmailsValue != null) {
      map['notificationEmails'] = notificationEmailsValue;
    }
    map['organizationId'] = organizationId;
    return map;
  }

  factory AccessApprovalSettingsArgs2.fromMap(Map<String, dynamic> map) {
    return AccessApprovalSettingsArgs2(
      activeKeyVersion: Input.asOptionalInput<String>(map['activeKeyVersion']),
      enrolledServices:
          Input.asInput<List<AccessApprovalSettingsEnrolledService2>>(
              map['enrolledServices']),
      notificationEmails:
          Input.asOptionalInput<List<String>>(map['notificationEmails']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
