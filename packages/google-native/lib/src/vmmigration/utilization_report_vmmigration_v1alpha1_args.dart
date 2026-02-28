// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'utilization_report_time_frame_vmmigration_v1alpha1.dart';
import 'vm_utilization_info_vmmigration_v1alpha1.dart';

/// {@template pulumi_vmmigration_v1alpha1_utilization_report_vmmigration_v1alpha1_args_doc}
/// The set of arguments for UtilizationReport.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1alpha1_utilization_report_vmmigration_v1alpha1_args_doc}
class UtilizationReportVmmigrationV1alpha1Args {
  /// The report display name, as assigned by the user.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  final pulumi.Input<String> sourceId;

  /// Time frame of the report.
  final pulumi.Input<UtilizationReportTimeFrameVmmigrationV1alpha1>? timeFrame;

  /// Required. The ID to use for the report, which will become the final component of the reports's resource name. This value maximum length is 63 characters, and valid characters are /a-z-/. It must start with an english letter and must not end with a hyphen.
  final pulumi.Input<String> utilizationReportId;

  /// List of utilization information per VM. When sent as part of the request, the "vm_id" field is used in order to specify which VMs to include in the report. In that case all other fields are ignored.
  final pulumi.Input<List<VmUtilizationInfoVmmigrationV1alpha1>>? vms;

  /// Creates a new [UtilizationReportVmmigrationV1alpha1Args].
  /// [displayName] The report display name, as assigned by the user.
  /// [location] Optional.
  /// [project] Optional.
  /// [requestId] A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [sourceId] Required.
  /// [timeFrame] Time frame of the report.
  /// [utilizationReportId] Required. The ID to use for the report, which will become the final component of the reports's resource name. This value maximum length is 63 characters, and valid characters are /a-z-/. It must start with an english letter and must not end with a hyphen.
  /// [vms] List of utilization information per VM. When sent as part of the request, the "vm_id" field is used in order to specify which VMs to include in the report. In that case all other fields are ignored.
  UtilizationReportVmmigrationV1alpha1Args({
    String? displayName,
    String? location,
    String? project,
    String? requestId,
    required String sourceId,
    UtilizationReportTimeFrameVmmigrationV1alpha1? timeFrame,
    required String utilizationReportId,
    List<VmUtilizationInfoVmmigrationV1alpha1>? vms,
  })  : displayName = pulumi.Input.asOptionalInput<String>(displayName),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        sourceId = pulumi.Input.asInput<String>(sourceId),
        timeFrame = pulumi.Input.asOptionalInput<
            UtilizationReportTimeFrameVmmigrationV1alpha1>(timeFrame),
        utilizationReportId = pulumi.Input.asInput<String>(utilizationReportId),
        vms = pulumi.Input.asOptionalInput<
            List<VmUtilizationInfoVmmigrationV1alpha1>>(vms);

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
      map['timeFrame'] = pulumi.Input.mapOptionalInputValue<
          UtilizationReportTimeFrameVmmigrationV1alpha1,
          String>(timeFrameValue, (value) => value.value);
    }
    map['utilizationReportId'] = utilizationReportId;
    final vmsValue = vms;
    if (vmsValue != null) {
      map['vms'] = pulumi.Input.mapOptionalInputValue<
              List<VmUtilizationInfoVmmigrationV1alpha1>,
              List<Map<String, dynamic>>>(
          vmsValue,
          (value) => pulumi.Input.encodeList<
              VmUtilizationInfoVmmigrationV1alpha1,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory UtilizationReportVmmigrationV1alpha1Args.fromMap(
      Map<String, dynamic> map) {
    return UtilizationReportVmmigrationV1alpha1Args(
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      sourceId: map['sourceId'] as String,
      timeFrame: map['timeFrame'] == null
          ? null
          : UtilizationReportTimeFrameVmmigrationV1alpha1.fromValue(
              map['timeFrame'] as String),
      utilizationReportId: map['utilizationReportId'] as String,
      vms: map['vms'] == null
          ? null
          : pulumi.Input.decodeList<VmUtilizationInfoVmmigrationV1alpha1>(
              map['vms'],
              (value) => VmUtilizationInfoVmmigrationV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
