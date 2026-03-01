// ignore_for_file: unused_element, unnecessary_cast


class ClusterConfig {
  /// Custom configuration service config key, e.g. ’dfs.replication’.
  final String configKey;
  /// Custom configuration service config value, e.g. ’3’.
  final String configValue;
  /// Custom configuration service file name, e.g. ’hdfs-site’.
  final String fileName;
  final String serviceName;

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
      configKey: map['configKey'] as String,
      configValue: map['configValue'] as String,
      fileName: map['fileName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

