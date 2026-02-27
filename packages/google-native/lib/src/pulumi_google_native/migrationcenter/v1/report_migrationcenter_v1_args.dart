// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_state.dart';
import 'report_type.dart';

/// The set of arguments for Report.
class ReportMigrationcenterV1Args {
  /// Free-text description.
  final pulumi.Input<String>? description;

  /// User-friendly display name. Maximum length is 63 characters.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> reportConfigId;

  /// Required. User specified id for the report. It will become the last component of the report name. The id must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The id must match the regular expression: [a-z]([a-z0-9-]{0,61}[a-z0-9])?.
  final pulumi.Input<String> reportId;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Report creation state.
  final pulumi.Input<ReportState>? state;

  /// Report type.
  final pulumi.Input<ReportType>? type;

  ReportMigrationcenterV1Args({
    this.description,
    this.displayName,
    this.location,
    this.project,
    required this.reportConfigId,
    required this.reportId,
    this.requestId,
    this.state,
    this.type,
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
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['reportConfigId'] = reportConfigId;
    map['reportId'] = reportId;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = pulumi.Input.mapOptionalInputValue<ReportState, String>(
          stateValue, (value) => value.value);
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = pulumi.Input.mapOptionalInputValue<ReportType, String>(
          typeValue, (value) => value.value);
    }
    return map;
  }

  factory ReportMigrationcenterV1Args.fromMap(Map<String, dynamic> map) {
    return ReportMigrationcenterV1Args(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      reportConfigId: pulumi.Input.asInput<String>(map['reportConfigId']),
      reportId: pulumi.Input.asInput<String>(map['reportId']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      state: pulumi.Input.asOptionalInput<ReportState>(map['state']),
      type: pulumi.Input.asOptionalInput<ReportType>(map['type']),
    );
  }
}
