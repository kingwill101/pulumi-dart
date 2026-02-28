// ignore_for_file: unused_element, unnecessary_cast

import 'attached_cluster_logging_config_component_config.dart';

class AttachedClusterLoggingConfig {
  /// The configuration of the logging components
  /// Structure is documented below.
  final AttachedClusterLoggingConfigComponentConfig? componentConfig;

  /// Creates a new [AttachedClusterLoggingConfig].
  /// [componentConfig] The configuration of the logging components
  AttachedClusterLoggingConfig({
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

  factory AttachedClusterLoggingConfig.fromMap(Map<String, dynamic> map) {
    return AttachedClusterLoggingConfig(
      componentConfig: map['componentConfig'] == null
          ? null
          : AttachedClusterLoggingConfigComponentConfig.fromMap(
              (map['componentConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
