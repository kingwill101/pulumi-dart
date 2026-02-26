// ignore_for_file: unused_element, unnecessary_cast

/// MonitoringConfig specifies the backends Policy Controller should export metrics to. For example, to specify metrics should be exported to Cloud Monitoring and Prometheus, specify backends: ["cloudmonitoring", "prometheus"]
class PolicyControllerMonitoringConfigResponse {
  /// Specifies the list of backends Policy Controller will export to. An empty list would effectively disable metrics export.
  final List<String> backends;

  PolicyControllerMonitoringConfigResponse({
    required this.backends,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backends'] = backends;
    return map;
  }

  factory PolicyControllerMonitoringConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return PolicyControllerMonitoringConfigResponse(
      backends: (map['backends'] as List).cast<String>(),
    );
  }
}
