// ignore_for_file: unused_element, unnecessary_cast


class ClusterModifyClusterServiceConfig {
  /// Cluster service configuration modification comment, e.g. "Modify tez configuration".
  final String? comment;
  /// Cluster service configuration modification params, e.g. ’{"hdfs-site":{"dfs.replication":"3"}}’.
  final String configParams;
  /// Cluster service configuration modification type.
  final String? configType;
  /// Cluster service configuration modification custom params, e.g. ’{"tez-site":{"key":{"Value":"value"}}}’.
  final String? customConfigParams;
  /// Cluster service configuration modification related gateway cluster id list.
  final List<String>? gatewayClusterIdLists;
  /// Cluster service configuration modification node group id, e.g. ’G-XXX’.
  final String? groupId;
  /// Cluster service configuration modification host instance id, e.g. ’i-bp146tnrkq4tcxxxxx’.
  final String? hostInstanceId;
  /// Cluster service configuration modification refresh host config, ’true’ or ’false’.
  final bool? refreshHostConfig;
  final String serviceName;

  /// Creates a new [ClusterModifyClusterServiceConfig].
  /// [comment] Cluster service configuration modification comment, e.g. "Modify tez configuration".
  /// [configParams] Cluster service configuration modification params, e.g. ’{"hdfs-site":{"dfs.replication":"3"}}’.
  /// [configType] Cluster service configuration modification type.
  /// [customConfigParams] Cluster service configuration modification custom params, e.g. ’{"tez-site":{"key":{"Value":"value"}}}’.
  /// [gatewayClusterIdLists] Cluster service configuration modification related gateway cluster id list.
  /// [groupId] Cluster service configuration modification node group id, e.g. ’G-XXX’.
  /// [hostInstanceId] Cluster service configuration modification host instance id, e.g. ’i-bp146tnrkq4tcxxxxx’.
  /// [refreshHostConfig] Cluster service configuration modification refresh host config, ’true’ or ’false’.
  /// [serviceName] Required.
  ClusterModifyClusterServiceConfig({
    this.comment,
    required this.configParams,
    this.configType,
    this.customConfigParams,
    this.gatewayClusterIdLists,
    this.groupId,
    this.hostInstanceId,
    this.refreshHostConfig,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'configParams': configParams,
      'configType': ?configType,
      'customConfigParams': ?customConfigParams,
      'gatewayClusterIdLists': ?gatewayClusterIdLists,
      'groupId': ?groupId,
      'hostInstanceId': ?hostInstanceId,
      'refreshHostConfig': ?refreshHostConfig,
      'serviceName': serviceName,
    };
  }

  factory ClusterModifyClusterServiceConfig.fromMap(Map<String, dynamic> map) {
    return ClusterModifyClusterServiceConfig(
      comment: map['comment'] == null ? null : map['comment'] as String,
      configParams: map['configParams'] as String,
      configType: map['configType'] == null ? null : map['configType'] as String,
      customConfigParams: map['customConfigParams'] == null ? null : map['customConfigParams'] as String,
      gatewayClusterIdLists: map['gatewayClusterIdLists'] == null ? null : (map['gatewayClusterIdLists'] as List).cast<String>(),
      groupId: map['groupId'] == null ? null : map['groupId'] as String,
      hostInstanceId: map['hostInstanceId'] == null ? null : map['hostInstanceId'] as String,
      refreshHostConfig: map['refreshHostConfig'] == null ? null : map['refreshHostConfig'] as bool,
      serviceName: map['serviceName'] as String,
    );
  }
}

