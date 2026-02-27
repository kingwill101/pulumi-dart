// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../access_approval_settings_enrolled_service/access_approval_settings_enrolled_service_projects.dart';

/// The set of arguments for AccessApprovalSettings.
class AccessApprovalSettingsProjectsArgs {
  /// The asymmetric crypto key version to use for signing approval requests.
  /// Empty active_key_version indicates that a Google-managed key should be used for signing.
  /// This property will be ignored if set by an ancestor of the resource, and new non-empty values may not be set.
  final pulumi.Input<String>? activeKeyVersion;

  /// A list of Google Cloud Services for which the given resource has Access Approval enrolled.
  /// Access requests for the resource given by name against any of these services contained here will be required
  /// to have explicit approval. Enrollment can only be done on an all or nothing basis.
  /// A maximum of 10 enrolled services will be enforced, to be expanded as the set of supported services is expanded.
  /// Structure is documented below.
  final pulumi.Input<List<AccessApprovalSettingsEnrolledServiceProjects>>
      enrolledServices;

  /// A list of email addresses to which notifications relating to approval requests should be sent.
  /// Notifications relating to a resource will be sent to all emails in the settings of ancestor
  /// resources of that resource. A maximum of 50 email addresses are allowed.
  final pulumi.Input<List<String>>? notificationEmails;

  /// (Optional, Deprecated)
  /// Project id.
  ///
  /// > **Warning:** `project` is deprecated and will be removed in a future major release. Use `project_id` instead.
  final pulumi.Input<String>? project;

  /// ID of the project of the access approval settings.
  final pulumi.Input<String> projectId;

  AccessApprovalSettingsProjectsArgs({
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
    map['enrolledServices'] = pulumi.Input.mapInputValue<
            List<AccessApprovalSettingsEnrolledServiceProjects>,
            List<Map<String, dynamic>>>(
        enrolledServices,
        (value) => pulumi.Input.encodeList<
            AccessApprovalSettingsEnrolledServiceProjects,
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

  factory AccessApprovalSettingsProjectsArgs.fromMap(Map<String, dynamic> map) {
    return AccessApprovalSettingsProjectsArgs(
      activeKeyVersion:
          pulumi.Input.asOptionalInput<String>(map['activeKeyVersion']),
      enrolledServices: pulumi.Input.asInput<
              List<AccessApprovalSettingsEnrolledServiceProjects>>(
          map['enrolledServices']),
      notificationEmails:
          pulumi.Input.asOptionalInput<List<String>>(map['notificationEmails']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      projectId: pulumi.Input.asInput<String>(map['projectId']),
    );
  }
}
