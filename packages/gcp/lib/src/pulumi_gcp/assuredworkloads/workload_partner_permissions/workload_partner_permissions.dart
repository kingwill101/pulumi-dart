// ignore_for_file: unused_element, unnecessary_cast

class WorkloadPartnerPermissions {
  /// Optional. Allow partner to view violation alerts.
  final bool? assuredWorkloadsMonitoring;

  /// Allow the partner to view inspectability logs and monitoring violations.
  final bool? dataLogsViewer;

  /// Optional. Allow partner to view access approval logs.
  final bool? serviceAccessApprover;

  WorkloadPartnerPermissions({
    this.assuredWorkloadsMonitoring,
    this.dataLogsViewer,
    this.serviceAccessApprover,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final assuredWorkloadsMonitoringValue = assuredWorkloadsMonitoring;
    if (assuredWorkloadsMonitoringValue != null) {
      map['assuredWorkloadsMonitoring'] = assuredWorkloadsMonitoringValue;
    }
    final dataLogsViewerValue = dataLogsViewer;
    if (dataLogsViewerValue != null) {
      map['dataLogsViewer'] = dataLogsViewerValue;
    }
    final serviceAccessApproverValue = serviceAccessApprover;
    if (serviceAccessApproverValue != null) {
      map['serviceAccessApprover'] = serviceAccessApproverValue;
    }
    return map;
  }

  factory WorkloadPartnerPermissions.fromMap(Map<String, dynamic> map) {
    return WorkloadPartnerPermissions(
      assuredWorkloadsMonitoring: map['assuredWorkloadsMonitoring'] == null
          ? null
          : map['assuredWorkloadsMonitoring'] as bool,
      dataLogsViewer:
          map['dataLogsViewer'] == null ? null : map['dataLogsViewer'] as bool,
      serviceAccessApprover: map['serviceAccessApprover'] == null
          ? null
          : map['serviceAccessApprover'] as bool,
    );
  }
}
