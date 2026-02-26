// ignore_for_file: unused_element, unnecessary_cast

/// MonitoringComponentConfig is cluster monitoring component configuration.
class MonitoringComponentConfigResponse {
  /// Select components to collect metrics. An empty set would disable all monitoring.
  final List<String> enableComponents;

  MonitoringComponentConfigResponse({
    required this.enableComponents,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableComponents'] = enableComponents;
    return map;
  }

  factory MonitoringComponentConfigResponse.fromMap(Map<String, dynamic> map) {
    return MonitoringComponentConfigResponse(
      enableComponents: (map['enableComponents'] as List).cast<String>(),
    );
  }
}
