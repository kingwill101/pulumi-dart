// ignore_for_file: unused_element, unnecessary_cast

import '../aws_cluster_logging_config_component_config/aws_cluster_logging_config_component_config.dart';

class AwsClusterLoggingConfig {
  /// Configuration of the logging components.
  final AwsClusterLoggingConfigComponentConfig? componentConfig;

  AwsClusterLoggingConfig({
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

  factory AwsClusterLoggingConfig.fromMap(Map<String, dynamic> map) {
    return AwsClusterLoggingConfig(
      componentConfig: map['componentConfig'] == null
          ? null
          : AwsClusterLoggingConfigComponentConfig.fromMap(
              (map['componentConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
