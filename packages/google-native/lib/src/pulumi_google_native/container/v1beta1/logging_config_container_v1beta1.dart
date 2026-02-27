// ignore_for_file: unused_element, unnecessary_cast

import 'logging_component_config_container_v1beta1.dart';

/// LoggingConfig is cluster logging configuration.
class LoggingConfigContainerV1beta1 {
  /// Logging components configuration
  final LoggingComponentConfigContainerV1beta1? componentConfig;

  LoggingConfigContainerV1beta1({
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

  factory LoggingConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return LoggingConfigContainerV1beta1(
      componentConfig: map['componentConfig'] == null
          ? null
          : LoggingComponentConfigContainerV1beta1.fromMap(
              (map['componentConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
