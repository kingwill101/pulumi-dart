// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../access_approval_settings_enrolled_service/access_approval_settings_enrolled_service3.dart';

/// The set of arguments for AccessApprovalSettings.
class AccessApprovalSettingsArgs3 {
  /// The asymmetric crypto key version to use for signing approval requests.
  /// Empty<span pulumi-lang-nodejs=" activeKeyVersion " pulumi-lang-dotnet=" ActiveKeyVersion " pulumi-lang-go=" activeKeyVersion " pulumi-lang-python=" active_key_version " pulumi-lang-yaml=" activeKeyVersion " pulumi-lang-java=" activeKeyVersion "> active_key_version </span>indicates that a Google-managed key should be used for signing.
  /// This property will be ignored if set by an ancestor of the resource, and new non-empty values may not be set.
  final Input<String>? activeKeyVersion;

  /// A list of Google Cloud Services for which the given resource has Access Approval enrolled.
  /// Access requests for the resource given by name against any of these services contained here will be required
  /// to have explicit approval. Enrollment can only be done on an all or nothing basis.
  /// A maximum of 10 enrolled services will be enforced, to be expanded as the set of supported services is expanded.
  /// Structure is documented below.
  final Input<List<AccessApprovalSettingsEnrolledService3>> enrolledServices;

  /// A list of email addresses to which notifications relating to approval requests should be sent.
  /// Notifications relating to a resource will be sent to all emails in the settings of ancestor
  /// resources of that resource. A maximum of 50 email addresses are allowed.
  final Input<List<String>>? notificationEmails;

  /// (Optional, Deprecated)
  /// Project id.
  ///
  /// > **Warning:** <span pulumi-lang-nodejs="`project`" pulumi-lang-dotnet="`Project`" pulumi-lang-go="`project`" pulumi-lang-python="`project`" pulumi-lang-yaml="`project`" pulumi-lang-java="`project`">`project`</span> is deprecated and will be removed in a future major release. Use <span pulumi-lang-nodejs="`projectId`" pulumi-lang-dotnet="`ProjectId`" pulumi-lang-go="`projectId`" pulumi-lang-python="`project_id`" pulumi-lang-yaml="`projectId`" pulumi-lang-java="`projectId`">`project_id`</span> instead.
  final Input<String>? project;

  /// ID of the project of the access approval settings.
  final Input<String> projectId;

  AccessApprovalSettingsArgs3({
    this.activeKeyVersion,
    required this.enrolledServices,
    this.notificationEmails,
    this.project,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activeKeyVersionValue = activeKeyVersion;
    if (activeKeyVersionValue != null) {
      map['activeKeyVersion'] = activeKeyVersionValue;
    }
    map['enrolledServices'] = Input.mapInputValue<
            List<AccessApprovalSettingsEnrolledService3>,
            List<Map<String, dynamic>>>(
        enrolledServices,
        (value) => Input.encodeList<AccessApprovalSettingsEnrolledService3,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final notificationEmailsValue = notificationEmails;
    if (notificationEmailsValue != null) {
      map['notificationEmails'] = notificationEmailsValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['projectId'] = projectId;
    return map;
  }

  factory AccessApprovalSettingsArgs3.fromMap(Map<String, dynamic> map) {
    return AccessApprovalSettingsArgs3(
      activeKeyVersion: Input.asOptionalInput<String>(map['activeKeyVersion']),
      enrolledServices:
          Input.asInput<List<AccessApprovalSettingsEnrolledService3>>(
              map['enrolledServices']),
      notificationEmails:
          Input.asOptionalInput<List<String>>(map['notificationEmails']),
      project: Input.asOptionalInput<String>(map['project']),
      projectId: Input.asInput<String>(map['projectId']),
    );
  }
}
