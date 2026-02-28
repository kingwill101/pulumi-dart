// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_config_group_preference_set_assignment_migrationcenter_v1alpha1.dart';

/// {@template pulumi_migrationcenter_v1alpha1_report_config_migrationcenter_v1alpha1_args_doc}
/// The set of arguments for ReportConfig.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_v1alpha1_report_config_migrationcenter_v1alpha1_args_doc}
class ReportConfigMigrationcenterV1alpha1Args {
  /// Free-text description.
  final pulumi.Input<String>? description;

  /// User-friendly display name. Maximum length is 63 characters.
  final pulumi.Input<String>? displayName;

  /// Collection of combinations of groups and preference sets.
  final pulumi.Input<
          List<ReportConfigGroupPreferenceSetAssignmentMigrationcenterV1alpha1>>
      groupPreferencesetAssignments;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Required. User specified ID for the report config. It will become the last component of the report config name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression: [a-z]([a-z0-9-]{0,61}[a-z0-9])?.
  final pulumi.Input<String> reportConfigId;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Creates a new [ReportConfigMigrationcenterV1alpha1Args].
  /// [description] Free-text description.
  /// [displayName] User-friendly display name. Maximum length is 63 characters.
  /// [groupPreferencesetAssignments] Collection of combinations of groups and preference sets.
  /// [location] Optional.
  /// [project] Optional.
  /// [reportConfigId] Required. User specified ID for the report config. It will become the last component of the report config name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression: [a-z]([a-z0-9-]{0,61}[a-z0-9])?.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  ReportConfigMigrationcenterV1alpha1Args({
    String? description,
    String? displayName,
    required List<
            ReportConfigGroupPreferenceSetAssignmentMigrationcenterV1alpha1>
        groupPreferencesetAssignments,
    String? location,
    String? project,
    required String reportConfigId,
    String? requestId,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        groupPreferencesetAssignments = pulumi.Input.asInput<
                List<
                    ReportConfigGroupPreferenceSetAssignmentMigrationcenterV1alpha1>>(
            groupPreferencesetAssignments),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        reportConfigId = pulumi.Input.asInput<String>(reportConfigId),
        requestId = pulumi.Input.asOptionalInput<String>(requestId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['groupPreferencesetAssignments'] = pulumi.Input.mapInputValue<
            List<ReportConfigGroupPreferenceSetAssignmentMigrationcenterV1alpha1>,
            List<Map<String, dynamic>>>(
        groupPreferencesetAssignments,
        (value) => pulumi.Input.encodeList<
            ReportConfigGroupPreferenceSetAssignmentMigrationcenterV1alpha1,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['reportConfigId'] = reportConfigId;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    return map;
  }

  factory ReportConfigMigrationcenterV1alpha1Args.fromMap(
      Map<String, dynamic> map) {
    return ReportConfigMigrationcenterV1alpha1Args(
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      groupPreferencesetAssignments: pulumi.Input.decodeList<
              ReportConfigGroupPreferenceSetAssignmentMigrationcenterV1alpha1>(
          map['groupPreferencesetAssignments'],
          (value) =>
              ReportConfigGroupPreferenceSetAssignmentMigrationcenterV1alpha1
                  .fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      reportConfigId: map['reportConfigId'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
    );
  }
}
