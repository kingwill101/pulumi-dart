// ignore_for_file: unused_element, unnecessary_cast

import 'logging_component_config.dart';

/// LoggingConfig is cluster logging configuration.
class LoggingConfig {
  /// Logging components configuration
  final LoggingComponentConfig? componentConfig;

  /// Creates a new [LoggingConfig].
  /// [componentConfig] Logging components configuration
  LoggingConfig({this.componentConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentConfig': ?componentConfig == null
          ? null
          : componentConfig!.toMap(),
    };
  }

  factory LoggingConfig.fromMap(Map<String, dynamic> map) {
    return LoggingConfig(
      componentConfig: map['componentConfig'] == null
          ? null
          : LoggingComponentConfig.fromMap(
              (map['componentConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
