// ignore_for_file: unused_element, unnecessary_cast


/// Information about VMSS VM
class VMSSVMInfoResponse {
  /// A value indicating compliance status of the machine for the assigned guest configuration.
  final String complianceStatus;
  /// Date and time when last compliance status was checked.
  final String lastComplianceChecked;
  /// Id of the latest report for the guest configuration assignment.
  final String latestReportId;
  /// UUID of the VM.
  final String vmId;
  /// Azure resource Id of the VM.
  final String vmResourceId;

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
      complianceStatus: map['complianceStatus'] as String,
      lastComplianceChecked: map['lastComplianceChecked'] as String,
      latestReportId: map['latestReportId'] as String,
      vmId: map['vmId'] as String,
      vmResourceId: map['vmResourceId'] as String,
    );
  }
}

