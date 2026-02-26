// ignore_for_file: unused_element, unnecessary_cast

import 'logging_component_config2.dart';

/// LoggingConfig is cluster logging configuration.
class LoggingConfig2 {
  /// Logging components configuration
  final LoggingComponentConfig2? componentConfig;

  LoggingConfig2({
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

  factory LoggingConfig2.fromMap(Map<String, dynamic> map) {
    return LoggingConfig2(
      componentConfig: map['componentConfig'] == null
          ? null
          : LoggingComponentConfig2.fromMap(
              (map['componentConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
