// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_approval_settings_enrolled_service.dart';

/// {@template pulumi_projects_access_approval_settings_access_approval_settings_args_doc}
/// The set of arguments for AccessApprovalSettings.
/// {@endtemplate}
/// {@macro pulumi_projects_access_approval_settings_access_approval_settings_args_doc}
class AccessApprovalSettingsArgs {
  /// The asymmetric crypto key version to use for signing approval requests.
  /// Empty active_key_version indicates that a Google-managed key should be used for signing.
  /// This property will be ignored if set by an ancestor of the resource, and new non-empty values may not be set.
  final pulumi.Input<String>? activeKeyVersion;

  /// A list of Google Cloud Services for which the given resource has Access Approval enrolled.
  /// Access requests for the resource given by name against any of these services contained here will be required
  /// to have explicit approval. Enrollment can only be done on an all or nothing basis.
  /// A maximum of 10 enrolled services will be enforced, to be expanded as the set of supported services is expanded.
  /// Structure is documented below.
  final pulumi.Input<List<AccessApprovalSettingsEnrolledService>>
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

  /// Creates a new [AccessApprovalSettingsArgs].
  /// [activeKeyVersion] The asymmetric crypto key version to use for signing approval requests.
  /// [enrolledServices] A list of Google Cloud Services for which the given resource has Access Approval enrolled.
  /// [notificationEmails] A list of email addresses to which notifications relating to approval requests should be sent.
  /// [project] (Optional, Deprecated)
  /// [projectId] ID of the project of the access approval settings.
  AccessApprovalSettingsArgs({
    String? activeKeyVersion,
    required List<AccessApprovalSettingsEnrolledService> enrolledServices,
    List<String>? notificationEmails,
    String? project,
    required String projectId,
  })  : activeKeyVersion =
            pulumi.Input.asOptionalInput<String>(activeKeyVersion),
        enrolledServices =
            pulumi.Input.asInput<List<AccessApprovalSettingsEnrolledService>>(
                enrolledServices),
        notificationEmails =
            pulumi.Input.asOptionalInput<List<String>>(notificationEmails),
        project = pulumi.Input.asOptionalInput<String>(project),
        projectId = pulumi.Input.asInput<String>(projectId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activeKeyVersionValue = activeKeyVersion;
    if (activeKeyVersionValue != null) {
      map['activeKeyVersion'] = activeKeyVersionValue;
    }
    map['enrolledServices'] = pulumi.Input.mapInputValue<
            List<AccessApprovalSettingsEnrolledService>,
            List<Map<String, dynamic>>>(
        enrolledServices,
        (value) => pulumi.Input.encodeList<
            AccessApprovalSettingsEnrolledService,
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

  factory AccessApprovalSettingsArgs.fromMap(Map<String, dynamic> map) {
    return AccessApprovalSettingsArgs(
      activeKeyVersion: map['activeKeyVersion'] == null
          ? null
          : map['activeKeyVersion'] as String,
      enrolledServices:
          pulumi.Input.decodeList<AccessApprovalSettingsEnrolledService>(
              map['enrolledServices'],
              (value) => AccessApprovalSettingsEnrolledService.fromMap(
                  (value as Map).cast<String, dynamic>())),
      notificationEmails: map['notificationEmails'] == null
          ? null
          : (map['notificationEmails'] as List).cast<String>(),
      project: map['project'] == null ? null : map['project'] as String,
      projectId: map['projectId'] as String,
    );
  }
}
