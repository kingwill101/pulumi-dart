// ignore_for_file: unused_element, unnecessary_cast

import 'logging_component_config_response.dart';

/// LoggingConfig is cluster logging configuration.
class LoggingConfigResponse {
  /// Logging components configuration
  final LoggingComponentConfigResponse componentConfig;

  /// Creates a new [LoggingConfigResponse].
  /// [componentConfig] Logging components configuration
  LoggingConfigResponse({
    required this.componentConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentConfig': componentConfig.toMap(),
    };
  }

  factory LoggingConfigResponse.fromMap(Map<String, dynamic> map) {
    return LoggingConfigResponse(
      componentConfig: LoggingComponentConfigResponse.fromMap((map['componentConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

