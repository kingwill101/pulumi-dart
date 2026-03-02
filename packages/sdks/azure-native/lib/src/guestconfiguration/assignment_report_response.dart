// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_info_response.dart';
import 'assignment_report_resource_response.dart';
import 'vminfo_response.dart';

class AssignmentReportResponse {
  /// Configuration details of the guest configuration assignment.
  final pulumi.Input<AssignmentInfoResponse>? assignment;
  /// A value indicating compliance status of the machine for the assigned guest configuration.
  final pulumi.Input<String> complianceStatus;
  /// End date and time of the guest configuration assignment compliance status check.
  final pulumi.Input<String> endTime;
  /// ARM resource id of the report for the guest configuration assignment.
  final pulumi.Input<String> id;
  /// Type of report, Consistency or Initial
  final pulumi.Input<String> operationType;
  /// GUID that identifies the guest configuration assignment report under a subscription, resource group.
  final pulumi.Input<String> reportId;
  /// The list of resources for which guest configuration assignment compliance is checked.
  final pulumi.Input<List<AssignmentReportResourceResponse>>? resources;
  /// Start date and time of the guest configuration assignment compliance status check.
  final pulumi.Input<String> startTime;
  /// Information about the VM.
  final pulumi.Input<VMInfoResponse>? vm;

  /// Creates a new [AssignmentReportResponse].
  /// [assignment] Configuration details of the guest configuration assignment.
  /// [complianceStatus] A value indicating compliance status of the machine for the assigned guest configuration.
  /// [endTime] End date and time of the guest configuration assignment compliance status check.
  /// [id] ARM resource id of the report for the guest configuration assignment.
  /// [operationType] Type of report, Consistency or Initial
  /// [reportId] GUID that identifies the guest configuration assignment report under a subscription, resource group.
  /// [resources] The list of resources for which guest configuration assignment compliance is checked.
  /// [startTime] Start date and time of the guest configuration assignment compliance status check.
  /// [vm] Information about the VM.
  AssignmentReportResponse({
    this.assignment,
    required this.complianceStatus,
    required this.endTime,
    required this.id,
    required this.operationType,
    required this.reportId,
    this.resources,
    required this.startTime,
    this.vm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignment': ?pulumi.Input.mapOptionalInputValue<AssignmentInfoResponse, Map<String, dynamic>>(assignment, (value) => value.toMap()),
      'complianceStatus': complianceStatus,
      'endTime': endTime,
      'id': id,
      'operationType': operationType,
      'reportId': reportId,
      'resources': ?pulumi.Input.mapOptionalInputValue<List<AssignmentReportResourceResponse>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<AssignmentReportResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'startTime': startTime,
      'vm': ?pulumi.Input.mapOptionalInputValue<VMInfoResponse, Map<String, dynamic>>(vm, (value) => value.toMap()),
    };
  }

  factory AssignmentReportResponse.fromMap(Map<String, dynamic> map) {
    return AssignmentReportResponse(
      assignment: map['assignment'] == null ? null : (AssignmentInfoResponse.fromMap((map['assignment']! as Map).cast<String, dynamic>())).input(),
      complianceStatus: (map['complianceStatus'] as String).input(),
      endTime: (map['endTime'] as String).input(),
      id: (map['id'] as String).input(),
      operationType: (map['operationType'] as String).input(),
      reportId: (map['reportId'] as String).input(),
      resources: map['resources'] == null ? null : (pulumi.Input.decodeList<AssignmentReportResourceResponse>(map['resources']!, (value) => AssignmentReportResourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      startTime: (map['startTime'] as String).input(),
      vm: map['vm'] == null ? null : (VMInfoResponse.fromMap((map['vm']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

