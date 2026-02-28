// ignore_for_file: unused_element, unnecessary_cast

/// A VMWare Engine Node
class ReportSummaryVmwareNodeResponse {
  /// Code to identify VMware Engine node series, e.g. "ve1-standard-72". Based on the displayName of cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.nodeTypes
  final String code;

  /// Creates a new [ReportSummaryVmwareNodeResponse].
  /// [code] Code to identify VMware Engine node series, e.g. "ve1-standard-72". Based on the displayName of cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.nodeTypes
  ReportSummaryVmwareNodeResponse({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    return map;
  }

  factory ReportSummaryVmwareNodeResponse.fromMap(Map<String, dynamic> map) {
    return ReportSummaryVmwareNodeResponse(
      code: map['code'] as String,
    );
  }
}
