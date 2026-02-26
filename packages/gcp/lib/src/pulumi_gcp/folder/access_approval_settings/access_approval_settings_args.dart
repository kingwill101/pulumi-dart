// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../access_approval_settings_enrolled_service/access_approval_settings_enrolled_service.dart';

/// The set of arguments for AccessApprovalSettings.
class AccessApprovalSettingsArgs {
  /// The asymmetric crypto key version to use for signing approval requests.
  /// Empty<span pulumi-lang-nodejs=" activeKeyVersion " pulumi-lang-dotnet=" ActiveKeyVersion " pulumi-lang-go=" activeKeyVersion " pulumi-lang-python=" active_key_version " pulumi-lang-yaml=" activeKeyVersion " pulumi-lang-java=" activeKeyVersion "> active_key_version </span>indicates that a Google-managed key should be used for signing.
  /// This property will be ignored if set by an ancestor of the resource, and new non-empty values may not be set.
  final Input<String>? activeKeyVersion;

  /// A list of Google Cloud Services for which the given resource has Access Approval enrolled.
  /// Access requests for the resource given by name against any of these services contained here will be required
  /// to have explicit approval. Enrollment can only be done on an all or nothing basis.
  /// A maximum of 10 enrolled services will be enforced, to be expanded as the set of supported services is expanded.
  /// Structure is documented below.
  final Input<List<AccessApprovalSettingsEnrolledService>> enrolledServices;

  /// ID of the folder of the access approval settings.
  final Input<String> folderId;

  /// A list of email addresses to which notifications relating to approval requests should be sent.
  /// Notifications relating to a resource will be sent to all emails in the settings of ancestor
  /// resources of that resource. A maximum of 50 email addresses are allowed.
  final Input<List<String>>? notificationEmails;

  AccessApprovalSettingsArgs({
    this.activeKeyVersion,
    required this.enrolledServices,
    required this.folderId,
    this.notificationEmails,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activeKeyVersionValue = activeKeyVersion;
    if (activeKeyVersionValue != null) {
      map['activeKeyVersion'] = activeKeyVersionValue;
    }
    map['enrolledServices'] = Input.mapInputValue<
            List<AccessApprovalSettingsEnrolledService>,
            List<Map<String, dynamic>>>(
        enrolledServices,
        (value) => Input.encodeList<AccessApprovalSettingsEnrolledService,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['folderId'] = folderId;
    final notificationEmailsValue = notificationEmails;
    if (notificationEmailsValue != null) {
      map['notificationEmails'] = notificationEmailsValue;
    }
    return map;
  }

  factory AccessApprovalSettingsArgs.fromMap(Map<String, dynamic> map) {
    return AccessApprovalSettingsArgs(
      activeKeyVersion: Input.asOptionalInput<String>(map['activeKeyVersion']),
      enrolledServices:
          Input.asInput<List<AccessApprovalSettingsEnrolledService>>(
              map['enrolledServices']),
      folderId: Input.asInput<String>(map['folderId']),
      notificationEmails:
          Input.asOptionalInput<List<String>>(map['notificationEmails']),
    );
  }
}
