// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_report_response.dart';
import 'guest_configuration_navigation_response.dart';
import 'vmssvminfo_response.dart';

/// Guest configuration assignment properties.
class GuestConfigurationAssignmentPropertiesResponse {
  /// Combined hash of the configuration package and parameters.
  final pulumi.Input<String> assignmentHash;
  /// A value indicating compliance status of the machine for the assigned guest configuration.
  final pulumi.Input<String> complianceStatus;
  /// The source which initiated the guest configuration assignment. Ex: Azure Policy
  final pulumi.Input<String>? context;
  /// The guest configuration to assign.
  final pulumi.Input<GuestConfigurationNavigationResponse>? guestConfiguration;
  /// Date and time when last compliance status was checked.
  final pulumi.Input<String> lastComplianceStatusChecked;
  /// Last reported guest configuration assignment report.
  final pulumi.Input<AssignmentReportResponse>? latestAssignmentReport;
  /// Id of the latest report for the guest configuration assignment.
  final pulumi.Input<String> latestReportId;
  /// parameter hash for the guest configuration assignment.
  final pulumi.Input<String> parameterHash;
  /// The provisioning state, which only appears in the response.
  final pulumi.Input<String> provisioningState;
  /// Type of the resource - VMSS / VM
  final pulumi.Input<String> resourceType;
  /// VM resource Id.
  final pulumi.Input<String> targetResourceId;
  /// The list of VM Compliance data for VMSS
  final pulumi.Input<List<VMSSVMInfoResponse>>? vmssVMList;

  /// Creates a new [GuestConfigurationAssignmentPropertiesResponse].
  /// [assignmentHash] Combined hash of the configuration package and parameters.
  /// [complianceStatus] A value indicating compliance status of the machine for the assigned guest configuration.
  /// [context] The source which initiated the guest configuration assignment. Ex: Azure Policy
  /// [guestConfiguration] The guest configuration to assign.
  /// [lastComplianceStatusChecked] Date and time when last compliance status was checked.
  /// [latestAssignmentReport] Last reported guest configuration assignment report.
  /// [latestReportId] Id of the latest report for the guest configuration assignment.
  /// [parameterHash] parameter hash for the guest configuration assignment.
  /// [provisioningState] The provisioning state, which only appears in the response.
  /// [resourceType] Type of the resource - VMSS / VM
  /// [targetResourceId] VM resource Id.
  /// [vmssVMList] The list of VM Compliance data for VMSS
  GuestConfigurationAssignmentPropertiesResponse({
    required this.assignmentHash,
    required this.complianceStatus,
    this.context,
    this.guestConfiguration,
    required this.lastComplianceStatusChecked,
    this.latestAssignmentReport,
    required this.latestReportId,
    required this.parameterHash,
    required this.provisioningState,
    required this.resourceType,
    required this.targetResourceId,
    this.vmssVMList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignmentHash': assignmentHash,
      'complianceStatus': complianceStatus,
      'context': ?context,
      'guestConfiguration': ?pulumi.Input.mapOptionalInputValue<GuestConfigurationNavigationResponse, Map<String, dynamic>>(guestConfiguration, (value) => value.toMap()),
      'lastComplianceStatusChecked': lastComplianceStatusChecked,
      'latestAssignmentReport': ?pulumi.Input.mapOptionalInputValue<AssignmentReportResponse, Map<String, dynamic>>(latestAssignmentReport, (value) => value.toMap()),
      'latestReportId': latestReportId,
      'parameterHash': parameterHash,
      'provisioningState': provisioningState,
      'resourceType': resourceType,
      'targetResourceId': targetResourceId,
      'vmssVMList': ?pulumi.Input.mapOptionalInputValue<List<VMSSVMInfoResponse>, List<Map<String, dynamic>>>(vmssVMList, (value) => pulumi.Input.encodeList<VMSSVMInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GuestConfigurationAssignmentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return GuestConfigurationAssignmentPropertiesResponse(
      assignmentHash: (map['assignmentHash'] as String).input(),
      complianceStatus: (map['complianceStatus'] as String).input(),
      context: map['context'] == null ? null : (map['context']! as String).input(),
      guestConfiguration: map['guestConfiguration'] == null ? null : (GuestConfigurationNavigationResponse.fromMap((map['guestConfiguration']! as Map).cast<String, dynamic>())).input(),
      lastComplianceStatusChecked: (map['lastComplianceStatusChecked'] as String).input(),
      latestAssignmentReport: map['latestAssignmentReport'] == null ? null : (AssignmentReportResponse.fromMap((map['latestAssignmentReport']! as Map).cast<String, dynamic>())).input(),
      latestReportId: (map['latestReportId'] as String).input(),
      parameterHash: (map['parameterHash'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      resourceType: (map['resourceType'] as String).input(),
      targetResourceId: (map['targetResourceId'] as String).input(),
      vmssVMList: map['vmssVMList'] == null ? null : (pulumi.Input.decodeList<VMSSVMInfoResponse>(map['vmssVMList']!, (value) => VMSSVMInfoResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

