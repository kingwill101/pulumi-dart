// ignore_for_file: unused_element, unnecessary_cast

class GetRegionBackendServiceCustomMetric {
  /// If true, the metric data is not used for load balancing.
  final bool dryRun;

  /// The name of the regional backend service.
  final String name;

  /// Creates a new [GetRegionBackendServiceCustomMetric].
  /// [dryRun] If true, the metric data is not used for load balancing.
  /// [name] The name of the regional backend service.
  GetRegionBackendServiceCustomMetric({
    required this.dryRun,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'dryRun': dryRun, 'name': name};
  }

  factory GetRegionBackendServiceCustomMetric.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRegionBackendServiceCustomMetric(
      dryRun: map['dryRun'] as bool,
      name: map['name'] as String,
    );
  }
}
