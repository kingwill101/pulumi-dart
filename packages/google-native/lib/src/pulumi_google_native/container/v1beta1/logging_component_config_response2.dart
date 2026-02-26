// ignore_for_file: unused_element, unnecessary_cast

/// LoggingComponentConfig is cluster logging component configuration.
class LoggingComponentConfigResponse2 {
  /// Select components to collect logs. An empty set would disable all logging.
  final List<String> enableComponents;

  LoggingComponentConfigResponse2({
    required this.enableComponents,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableComponents'] = enableComponents;
    return map;
  }

  factory LoggingComponentConfigResponse2.fromMap(Map<String, dynamic> map) {
    return LoggingComponentConfigResponse2(
      enableComponents: (map['enableComponents'] as List).cast<String>(),
    );
  }
}
