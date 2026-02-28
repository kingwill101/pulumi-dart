// ignore_for_file: unused_element, unnecessary_cast

/// A VMWare Engine Node
class ReportSummaryVMWareNodeResponse {
  /// Code to identify VMware Engine node series, e.g. "ve1-standard-72". Based on the displayName of cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.nodeTypes
  final String code;

  /// Creates a new [ReportSummaryVMWareNodeResponse].
  /// [code] Code to identify VMware Engine node series, e.g. "ve1-standard-72". Based on the displayName of cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.nodeTypes
  ReportSummaryVMWareNodeResponse({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    return map;
  }

  factory ReportSummaryVMWareNodeResponse.fromMap(Map<String, dynamic> map) {
    return ReportSummaryVMWareNodeResponse(
      code: map['code'] as String,
    );
  }
}
