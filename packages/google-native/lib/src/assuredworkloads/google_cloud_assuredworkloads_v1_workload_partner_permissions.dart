// ignore_for_file: unused_element, unnecessary_cast


/// Permissions granted to the AW Partner SA account for the customer workload
class GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions {
  /// Optional. Allow partner to view violation alerts.
  final bool? assuredWorkloadsMonitoring;
  /// Allow the partner to view inspectability logs and monitoring violations.
  final bool? dataLogsViewer;
  /// Optional. Allow partner to view access approval logs.
  final bool? serviceAccessApprover;

  /// Creates a new [GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions].
  /// [assuredWorkloadsMonitoring] Optional. Allow partner to view violation alerts.
  /// [dataLogsViewer] Allow the partner to view inspectability logs and monitoring violations.
  /// [serviceAccessApprover] Optional. Allow partner to view access approval logs.
  GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions({
    this.assuredWorkloadsMonitoring,
    this.dataLogsViewer,
    this.serviceAccessApprover,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assuredWorkloadsMonitoring': ?assuredWorkloadsMonitoring,
      'dataLogsViewer': ?dataLogsViewer,
      'serviceAccessApprover': ?serviceAccessApprover,
    };
  }

  factory GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions(
      assuredWorkloadsMonitoring: map['assuredWorkloadsMonitoring'] == null ? null : map['assuredWorkloadsMonitoring'] as bool,
      dataLogsViewer: map['dataLogsViewer'] == null ? null : map['dataLogsViewer'] as bool,
      serviceAccessApprover: map['serviceAccessApprover'] == null ? null : map['serviceAccessApprover'] as bool,
    );
  }
}

