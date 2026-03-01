// ignore_for_file: unused_element, unnecessary_cast


class GetBackendServiceCustomMetric {
  /// If true, the metric data is not used for load balancing.
  final bool dryRun;
  /// The name of the Backend Service.
  ///
  /// - - -
  final String name;

  /// Creates a new [GetBackendServiceCustomMetric].
  /// [dryRun] If true, the metric data is not used for load balancing.
  /// [name] The name of the Backend Service.
  GetBackendServiceCustomMetric({
    required this.dryRun,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': dryRun,
      'name': name,
    };
  }

  factory GetBackendServiceCustomMetric.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceCustomMetric(
      dryRun: map['dryRun'] as bool,
      name: map['name'] as String,
    );
  }
}

