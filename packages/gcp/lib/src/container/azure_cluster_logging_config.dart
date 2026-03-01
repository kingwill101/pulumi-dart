// ignore_for_file: unused_element, unnecessary_cast

import 'azure_cluster_logging_config_component_config.dart';

class AzureClusterLoggingConfig {
  /// Configuration of the logging components.
  final AzureClusterLoggingConfigComponentConfig? componentConfig;

  /// Creates a new [AzureClusterLoggingConfig].
  /// [componentConfig] Configuration of the logging components.
  AzureClusterLoggingConfig({this.componentConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentConfig': ?componentConfig == null
          ? null
          : componentConfig!.toMap(),
    };
  }

  factory AzureClusterLoggingConfig.fromMap(Map<String, dynamic> map) {
    return AzureClusterLoggingConfig(
      componentConfig: map['componentConfig'] == null
          ? null
          : AzureClusterLoggingConfigComponentConfig.fromMap(
              (map['componentConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
