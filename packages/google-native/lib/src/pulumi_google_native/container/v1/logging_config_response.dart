// ignore_for_file: unused_element, unnecessary_cast

import 'logging_component_config_response.dart';

/// LoggingConfig is cluster logging configuration.
class LoggingConfigResponse {
  /// Logging components configuration
  final LoggingComponentConfigResponse componentConfig;

  LoggingConfigResponse({
    required this.componentConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['componentConfig'] = componentConfig.toMap();
    return map;
  }

  factory LoggingConfigResponse.fromMap(Map<String, dynamic> map) {
    return LoggingConfigResponse(
      componentConfig: LoggingComponentConfigResponse.fromMap(
          (map['componentConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
