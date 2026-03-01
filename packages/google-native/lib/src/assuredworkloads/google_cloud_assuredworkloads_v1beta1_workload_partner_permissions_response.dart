// ignore_for_file: unused_element, unnecessary_cast

/// Permissions granted to the AW Partner SA account for the customer workload
class GoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissionsResponse {
  /// Optional. Allow partner to view violation alerts.
  final bool assuredWorkloadsMonitoring;

  /// Allow the partner to view inspectability logs and monitoring violations.
  final bool dataLogsViewer;

  /// Optional. Allow partner to view access approval logs.
  final bool serviceAccessApprover;

  /// Creates a new [GoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissionsResponse].
  /// [assuredWorkloadsMonitoring] Optional. Allow partner to view violation alerts.
  /// [dataLogsViewer] Allow the partner to view inspectability logs and monitoring violations.
  /// [serviceAccessApprover] Optional. Allow partner to view access approval logs.
  GoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissionsResponse({
    required this.assuredWorkloadsMonitoring,
    required this.dataLogsViewer,
    required this.serviceAccessApprover,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assuredWorkloadsMonitoring': assuredWorkloadsMonitoring,
      'dataLogsViewer': dataLogsViewer,
      'serviceAccessApprover': serviceAccessApprover,
    };
  }

  factory GoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissionsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissionsResponse(
      assuredWorkloadsMonitoring: map['assuredWorkloadsMonitoring'] as bool,
      dataLogsViewer: map['dataLogsViewer'] as bool,
      serviceAccessApprover: map['serviceAccessApprover'] as bool,
    );
  }
}
