// ignore_for_file: unused_element, unnecessary_cast

/// PolicyControllerMonitoring specifies the backends Policy Controller should export metrics to. For example, to specify metrics should be exported to Cloud Monitoring and Prometheus, specify backends: ["cloudmonitoring", "prometheus"]
class ConfigManagementPolicyControllerMonitoringResponse2 {
  /// Specifies the list of backends Policy Controller will export to. An empty list would effectively disable metrics export.
  final List<String> backends;

  ConfigManagementPolicyControllerMonitoringResponse2({
    required this.backends,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backends'] = backends;
    return map;
  }

  factory ConfigManagementPolicyControllerMonitoringResponse2.fromMap(
      Map<String, dynamic> map) {
    return ConfigManagementPolicyControllerMonitoringResponse2(
      backends: (map['backends'] as List).cast<String>(),
    );
  }
}
