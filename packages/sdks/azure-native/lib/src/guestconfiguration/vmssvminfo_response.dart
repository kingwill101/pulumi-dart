// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about VMSS VM
class VMSSVMInfoResponse {
  /// A value indicating compliance status of the machine for the assigned guest configuration.
  final pulumi.Input<String> complianceStatus;
  /// Date and time when last compliance status was checked.
  final pulumi.Input<String> lastComplianceChecked;
  /// Id of the latest report for the guest configuration assignment.
  final pulumi.Input<String> latestReportId;
  /// UUID of the VM.
  final pulumi.Input<String> vmId;
  /// Azure resource Id of the VM.
  final pulumi.Input<String> vmResourceId;

  /// Creates a new [VMSSVMInfoResponse].
  /// [complianceStatus] A value indicating compliance status of the machine for the assigned guest configuration.
  /// [lastComplianceChecked] Date and time when last compliance status was checked.
  /// [latestReportId] Id of the latest report for the guest configuration assignment.
  /// [vmId] UUID of the VM.
  /// [vmResourceId] Azure resource Id of the VM.
  VMSSVMInfoResponse({
    required this.complianceStatus,
    required this.lastComplianceChecked,
    required this.latestReportId,
    required this.vmId,
    required this.vmResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complianceStatus': complianceStatus,
      'lastComplianceChecked': lastComplianceChecked,
      'latestReportId': latestReportId,
      'vmId': vmId,
      'vmResourceId': vmResourceId,
    };
  }

  factory VMSSVMInfoResponse.fromMap(Map<String, dynamic> map) {
    return VMSSVMInfoResponse(
      complianceStatus: pulumi.Input.fromValue(map['complianceStatus'] as String),
      lastComplianceChecked: pulumi.Input.fromValue(map['lastComplianceChecked'] as String),
      latestReportId: pulumi.Input.fromValue(map['latestReportId'] as String),
      vmId: pulumi.Input.fromValue(map['vmId'] as String),
      vmResourceId: pulumi.Input.fromValue(map['vmResourceId'] as String),
    );
  }
}

