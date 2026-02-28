// ignore_for_file: unused_element, unnecessary_cast

import 'logging_component_config_response_container_v1beta1.dart';

/// LoggingConfig is cluster logging configuration.
class LoggingConfigResponseContainerV1beta1 {
  /// Logging components configuration
  final LoggingComponentConfigResponseContainerV1beta1 componentConfig;

  /// Creates a new [LoggingConfigResponseContainerV1beta1].
  /// [componentConfig] Logging components configuration
  LoggingConfigResponseContainerV1beta1({
    required this.componentConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['componentConfig'] = componentConfig.toMap();
    return map;
  }

  factory LoggingConfigResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return LoggingConfigResponseContainerV1beta1(
      componentConfig: LoggingComponentConfigResponseContainerV1beta1.fromMap(
          (map['componentConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
