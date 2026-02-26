// ignore_for_file: unused_element, unnecessary_cast

import 'logging_component_config_response2.dart';

/// LoggingConfig is cluster logging configuration.
class LoggingConfigResponse2 {
  /// Logging components configuration
  final LoggingComponentConfigResponse2 componentConfig;

  LoggingConfigResponse2({
    required this.componentConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['componentConfig'] = componentConfig.toMap();
    return map;
  }

  factory LoggingConfigResponse2.fromMap(Map<String, dynamic> map) {
    return LoggingConfigResponse2(
      componentConfig: LoggingComponentConfigResponse2.fromMap(
          (map['componentConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
