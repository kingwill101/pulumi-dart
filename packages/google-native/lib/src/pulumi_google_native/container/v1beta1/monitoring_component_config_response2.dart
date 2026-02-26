// ignore_for_file: unused_element, unnecessary_cast

/// MonitoringComponentConfig is cluster monitoring component configuration.
class MonitoringComponentConfigResponse2 {
  /// Select components to collect metrics. An empty set would disable all monitoring.
  final List<String> enableComponents;

  MonitoringComponentConfigResponse2({
    required this.enableComponents,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableComponents'] = enableComponents;
    return map;
  }

  factory MonitoringComponentConfigResponse2.fromMap(Map<String, dynamic> map) {
    return MonitoringComponentConfigResponse2(
      enableComponents: (map['enableComponents'] as List).cast<String>(),
    );
  }
}
