// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterConfig {
  /// Custom configuration service config key, e.g. ’dfs.replication’.
  final pulumi.Input<String> configKey;
  /// Custom configuration service config value, e.g. ’3’.
  final pulumi.Input<String> configValue;
  /// Custom configuration service file name, e.g. ’hdfs-site’.
  final pulumi.Input<String> fileName;
  final pulumi.Input<String> serviceName;

  /// Creates a new [ClusterConfig].
  /// [configKey] Custom configuration service config key, e.g. ’dfs.replication’.
  /// [configValue] Custom configuration service config value, e.g. ’3’.
  /// [fileName] Custom configuration service file name, e.g. ’hdfs-site’.
  /// [serviceName] Required.
  ClusterConfig({
    required this.configKey,
    required this.configValue,
    required this.fileName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configKey': configKey,
      'configValue': configValue,
      'fileName': fileName,
      'serviceName': serviceName,
    };
  }

  factory ClusterConfig.fromMap(Map<String, dynamic> map) {
    return ClusterConfig(
      configKey: pulumi.Input.fromValue(map['configKey'] as String),
      configValue: pulumi.Input.fromValue(map['configValue'] as String),
      fileName: pulumi.Input.fromValue(map['fileName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}

