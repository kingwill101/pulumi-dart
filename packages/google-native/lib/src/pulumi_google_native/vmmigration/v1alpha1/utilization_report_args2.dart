// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'utilization_report_time_frame2.dart';
import 'vm_utilization_info2.dart';

/// The set of arguments for UtilizationReport.
class UtilizationReportArgs2 {
  /// The report display name, as assigned by the user.
  final Input<String>? displayName;
  final Input<String>? location;
  final Input<String>? project;

  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;
  final Input<String> sourceId;

  /// Time frame of the report.
  final Input<UtilizationReportTimeFrame2>? timeFrame;

  /// Required. The ID to use for the report, which will become the final component of the reports's resource name. This value maximum length is 63 characters, and valid characters are /a-z-/. It must start with an english letter and must not end with a hyphen.
  final Input<String> utilizationReportId;

  /// List of utilization information per VM. When sent as part of the request, the "vm_id" field is used in order to specify which VMs to include in the report. In that case all other fields are ignored.
  final Input<List<VmUtilizationInfo2>>? vms;

  UtilizationReportArgs2({
    this.displayName,
    this.location,
    this.project,
    this.requestId,
    required this.sourceId,
    this.timeFrame,
    required this.utilizationReportId,
    this.vms,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['sourceId'] = sourceId;
    final timeFrameValue = timeFrame;
    if (timeFrameValue != null) {
      map['timeFrame'] =
          Input.mapOptionalInputValue<UtilizationReportTimeFrame2, String>(
              timeFrameValue, (value) => value.value);
    }
    map['utilizationReportId'] = utilizationReportId;
    final vmsValue = vms;
    if (vmsValue != null) {
      map['vms'] = Input.mapOptionalInputValue<List<VmUtilizationInfo2>,
              List<Map<String, dynamic>>>(
          vmsValue,
          (value) => Input.encodeList<VmUtilizationInfo2, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    return map;
  }

  factory UtilizationReportArgs2.fromMap(Map<String, dynamic> map) {
    return UtilizationReportArgs2(
      displayName: Input.asOptionalInput<String>(map['displayName']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      sourceId: Input.asInput<String>(map['sourceId']),
      timeFrame:
          Input.asOptionalInput<UtilizationReportTimeFrame2>(map['timeFrame']),
      utilizationReportId: Input.asInput<String>(map['utilizationReportId']),
      vms: Input.asOptionalInput<List<VmUtilizationInfo2>>(map['vms']),
    );
  }
}
