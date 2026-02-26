// ignore_for_file: unused_element, unnecessary_cast

/// LoggingComponentConfig is cluster logging component configuration.
class LoggingComponentConfigResponse {
  /// Select components to collect logs. An empty set would disable all logging.
  final List<String> enableComponents;

  LoggingComponentConfigResponse({
    required this.enableComponents,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableComponents'] = enableComponents;
    return map;
  }

  factory LoggingComponentConfigResponse.fromMap(Map<String, dynamic> map) {
    return LoggingComponentConfigResponse(
      enableComponents: (map['enableComponents'] as List).cast<String>(),
    );
  }
}
