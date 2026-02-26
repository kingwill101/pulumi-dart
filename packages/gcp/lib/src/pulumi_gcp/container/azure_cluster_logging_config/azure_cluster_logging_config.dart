// ignore_for_file: unused_element, unnecessary_cast

import '../azure_cluster_logging_config_component_config/azure_cluster_logging_config_component_config.dart';

class AzureClusterLoggingConfig {
  /// Configuration of the logging components.
  final AzureClusterLoggingConfigComponentConfig? componentConfig;

  AzureClusterLoggingConfig({
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

  factory AzureClusterLoggingConfig.fromMap(Map<String, dynamic> map) {
    return AzureClusterLoggingConfig(
      componentConfig: map['componentConfig'] == null
          ? null
          : AzureClusterLoggingConfigComponentConfig.fromMap(
              (map['componentConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
