// ignore_for_file: unused_element, unnecessary_cast

class GetBackendServiceBackendCustomMetric {
  /// If true, the metric data is collected and reported to Cloud
  /// Monitoring, but is not used for load balancing.
  final bool dryRun;

  /// Optional parameter to define a target utilization for the Custom Metrics
  /// balancing mode. The valid range is <code>[0.0, 1.0]</code>.
  final double maxUtilization;

  /// The name of the Backend Service.
  ///
  /// - - -
  final String name;

  GetBackendServiceBackendCustomMetric({
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

  factory GetBackendServiceBackendCustomMetric.fromMap(
      Map<String, dynamic> map) {
    return GetBackendServiceBackendCustomMetric(
      dryRun: map['dryRun'] as bool,
      maxUtilization: map['maxUtilization'] as double,
      name: map['name'] as String,
    );
  }
}
