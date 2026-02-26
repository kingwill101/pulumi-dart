// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'report_config_group_preference_set_assignment2.dart';

/// The set of arguments for ReportConfig.
class ReportConfigArgs2 {
  /// Free-text description.
  final Input<String>? description;

  /// User-friendly display name. Maximum length is 63 characters.
  final Input<String>? displayName;

  /// Collection of combinations of groups and preference sets.
  final Input<List<ReportConfigGroupPreferenceSetAssignment2>>
      groupPreferencesetAssignments;
  final Input<String>? location;
  final Input<String>? project;

  /// Required. User specified ID for the report config. It will become the last component of the report config name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression: [a-z]([a-z0-9-]{0,61}[a-z0-9])?.
  final Input<String> reportConfigId;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  ReportConfigArgs2({
    this.description,
    this.displayName,
    required this.groupPreferencesetAssignments,
    this.location,
    this.project,
    required this.reportConfigId,
    this.requestId,
  });

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
    map['groupPreferencesetAssignments'] = Input.mapInputValue<
            List<ReportConfigGroupPreferenceSetAssignment2>,
            List<Map<String, dynamic>>>(
        groupPreferencesetAssignments,
        (value) => Input.encodeList<ReportConfigGroupPreferenceSetAssignment2,
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

  factory ReportConfigArgs2.fromMap(Map<String, dynamic> map) {
    return ReportConfigArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      groupPreferencesetAssignments:
          Input.asInput<List<ReportConfigGroupPreferenceSetAssignment2>>(
              map['groupPreferencesetAssignments']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      reportConfigId: Input.asInput<String>(map['reportConfigId']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
    );
  }
}
