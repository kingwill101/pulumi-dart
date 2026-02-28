// ignore_for_file: unused_element, unnecessary_cast

class GetRegionBackendServiceBackendCustomMetric {
  /// If true, the metric data is collected and reported to Cloud
  /// Monitoring, but is not used for load balancing.
  final bool dryRun;

  /// Optional parameter to define a target utilization for the Custom Metrics
  /// balancing mode. The valid range is <code>[0.0, 1.0]</code>.
  final double maxUtilization;

  /// The name of the regional backend service.
  final String name;

  /// Creates a new [GetRegionBackendServiceBackendCustomMetric].
  /// [dryRun] If true, the metric data is collected and reported to Cloud
  /// [maxUtilization] Optional parameter to define a target utilization for the Custom Metrics
  /// [name] The name of the regional backend service.
  GetRegionBackendServiceBackendCustomMetric({
    required this.dryRun,
    required this.maxUtilization,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dryRun'] = dryRun;
    map['maxUtilization'] = maxUtilization;
    map['name'] = name;
    return map;
  }

  factory GetRegionBackendServiceBackendCustomMetric.fromMap(
      Map<String, dynamic> map) {
    return GetRegionBackendServiceBackendCustomMetric(
      dryRun: map['dryRun'] as bool,
      maxUtilization: map['maxUtilization'] as double,
      name: map['name'] as String,
    );
  }
}
