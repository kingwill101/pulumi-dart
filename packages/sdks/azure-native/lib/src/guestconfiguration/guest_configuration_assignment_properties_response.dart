// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_report_response.dart';
import 'guest_configuration_navigation_response.dart';
import 'vmssvminfo_response.dart';

/// Guest configuration assignment properties.
class GuestConfigurationAssignmentPropertiesResponse {
  /// Combined hash of the configuration package and parameters.
  final String assignmentHash;
  /// A value indicating compliance status of the machine for the assigned guest configuration.
  final String complianceStatus;
  /// The source which initiated the guest configuration assignment. Ex: Azure Policy
  final String? context;
  /// The guest configuration to assign.
  final GuestConfigurationNavigationResponse? guestConfiguration;
  /// Date and time when last compliance status was checked.
  final String lastComplianceStatusChecked;
  /// Last reported guest configuration assignment report.
  final AssignmentReportResponse? latestAssignmentReport;
  /// Id of the latest report for the guest configuration assignment.
  final String latestReportId;
  /// parameter hash for the guest configuration assignment.
  final String parameterHash;
  /// The provisioning state, which only appears in the response.
  final String provisioningState;
  /// Type of the resource - VMSS / VM
  final String resourceType;
  /// VM resource Id.
  final String targetResourceId;
  /// The list of VM Compliance data for VMSS
  final List<VMSSVMInfoResponse>? vmssVMList;

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
      'guestConfiguration': ?guestConfiguration == null ? null : guestConfiguration!.toMap(),
      'lastComplianceStatusChecked': lastComplianceStatusChecked,
      'latestAssignmentReport': ?latestAssignmentReport == null ? null : latestAssignmentReport!.toMap(),
      'latestReportId': latestReportId,
      'parameterHash': parameterHash,
      'provisioningState': provisioningState,
      'resourceType': resourceType,
      'targetResourceId': targetResourceId,
      'vmssVMList': ?vmssVMList == null ? null : pulumi.Input.encodeList<VMSSVMInfoResponse, Map<String, dynamic>>(vmssVMList!, (value) => value.toMap()),
    };
  }

  factory GuestConfigurationAssignmentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return GuestConfigurationAssignmentPropertiesResponse(
      assignmentHash: map['assignmentHash'] as String,
      complianceStatus: map['complianceStatus'] as String,
      context: map['context'] == null ? null : map['context'] as String,
      guestConfiguration: map['guestConfiguration'] == null ? null : GuestConfigurationNavigationResponse.fromMap((map['guestConfiguration'] as Map).cast<String, dynamic>()),
      lastComplianceStatusChecked: map['lastComplianceStatusChecked'] as String,
      latestAssignmentReport: map['latestAssignmentReport'] == null ? null : AssignmentReportResponse.fromMap((map['latestAssignmentReport'] as Map).cast<String, dynamic>()),
      latestReportId: map['latestReportId'] as String,
      parameterHash: map['parameterHash'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceType: map['resourceType'] as String,
      targetResourceId: map['targetResourceId'] as String,
      vmssVMList: map['vmssVMList'] == null ? null : pulumi.Input.decodeList<VMSSVMInfoResponse>(map['vmssVMList'], (value) => VMSSVMInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

