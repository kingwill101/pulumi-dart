// ignore_for_file: unused_element, unnecessary_cast

import 'aws_cluster_logging_config_component_config.dart';

class AwsClusterLoggingConfig {
  /// Configuration of the logging components.
  final AwsClusterLoggingConfigComponentConfig? componentConfig;

  /// Creates a new [AwsClusterLoggingConfig].
  /// [componentConfig] Configuration of the logging components.
  AwsClusterLoggingConfig({this.componentConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentConfig': ?componentConfig == null
          ? null
          : componentConfig!.toMap(),
    };
  }

  factory AwsClusterLoggingConfig.fromMap(Map<String, dynamic> map) {
    return AwsClusterLoggingConfig(
      componentConfig: map['componentConfig'] == null
          ? null
          : AwsClusterLoggingConfigComponentConfig.fromMap(
              (map['componentConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
