// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterModifyClusterServiceConfig {
  /// Cluster service configuration modification comment, e.g. "Modify tez configuration".
  final pulumi.Input<String>? comment;
  /// Cluster service configuration modification params, e.g. ’{"hdfs-site":{"dfs.replication":"3"}}’.
  final pulumi.Input<String> configParams;
  /// Cluster service configuration modification type.
  final pulumi.Input<String>? configType;
  /// Cluster service configuration modification custom params, e.g. ’{"tez-site":{"key":{"Value":"value"}}}’.
  final pulumi.Input<String>? customConfigParams;
  /// Cluster service configuration modification related gateway cluster id list.
  final pulumi.Input<List<String>>? gatewayClusterIdLists;
  /// Cluster service configuration modification node group id, e.g. ’G-XXX’.
  final pulumi.Input<String>? groupId;
  /// Cluster service configuration modification host instance id, e.g. ’i-bp146tnrkq4tcxxxxx’.
  final pulumi.Input<String>? hostInstanceId;
  /// Cluster service configuration modification refresh host config, ’true’ or ’false’.
  final pulumi.Input<bool>? refreshHostConfig;
  final pulumi.Input<String> serviceName;

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
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configParams: pulumi.Input.fromValue(map['configParams'] as String),
      configType: (() { final guardedValue = map['configType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customConfigParams: (() { final guardedValue = map['customConfigParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayClusterIdLists: (() { final guardedValue = map['gatewayClusterIdLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostInstanceId: (() { final guardedValue = map['hostInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      refreshHostConfig: (() { final guardedValue = map['refreshHostConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}

