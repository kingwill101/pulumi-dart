// ignore_for_file: unused_element, unnecessary_cast


class GetRegionsRegionMonitors {
  /// A list of ACLP alerts services supported in the region.
  final List<String> alerts;
  /// A list of ACLP metrics services supported in the region.
  final List<String> metrics;

  /// Creates a new [GetRegionsRegionMonitors].
  /// [alerts] A list of ACLP alerts services supported in the region.
  /// [metrics] A list of ACLP metrics services supported in the region.
  GetRegionsRegionMonitors({
    required this.alerts,
    required this.metrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts': alerts,
      'metrics': metrics,
    };
  }

  factory GetRegionsRegionMonitors.fromMap(Map<String, dynamic> map) {
    return GetRegionsRegionMonitors(
      alerts: (map['alerts'] as List).cast<String>(),
      metrics: (map['metrics'] as List).cast<String>(),
    );
  }
}

