// ignore_for_file: unused_element, unnecessary_cast

import 'logging_component_config.dart';

/// LoggingConfig is cluster logging configuration.
class LoggingConfig {
  /// Logging components configuration
  final LoggingComponentConfig? componentConfig;

  LoggingConfig({
    this.componentConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final componentConfigValue = componentConfig;
    if (componentConfigValue != null) {
      map['componentConfig'] = componentConfigValue.toMap();
    }
    return map;
  }

  factory LoggingConfig.fromMap(Map<String, dynamic> map) {
    return LoggingConfig(
      componentConfig: map['componentConfig'] == null
          ? null
          : LoggingComponentConfig.fromMap(
              (map['componentConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
