// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'report_state2.dart';
import 'report_type2.dart';

/// The set of arguments for Report.
class ReportArgs3 {
  /// Free-text description.
  final Input<String>? description;

  /// User-friendly display name. Maximum length is 63 characters.
  final Input<String>? displayName;
  final Input<String>? location;
  final Input<String>? project;
  final Input<String> reportConfigId;

  /// Required. User specified id for the report. It will become the last component of the report name. The id must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The id must match the regular expression: [a-z]([a-z0-9-]{0,61}[a-z0-9])?.
  final Input<String> reportId;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Report creation state.
  final Input<ReportState2>? state;

  /// Report type.
  final Input<ReportType2>? type;

  ReportArgs3({
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
      map['state'] = Input.mapOptionalInputValue<ReportState2, String>(
          stateValue, (value) => value.value);
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = Input.mapOptionalInputValue<ReportType2, String>(
          typeValue, (value) => value.value);
    }
    return map;
  }

  factory ReportArgs3.fromMap(Map<String, dynamic> map) {
    return ReportArgs3(
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      reportConfigId: Input.asInput<String>(map['reportConfigId']),
      reportId: Input.asInput<String>(map['reportId']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      state: Input.asOptionalInput<ReportState2>(map['state']),
      type: Input.asOptionalInput<ReportType2>(map['type']),
    );
  }
}
