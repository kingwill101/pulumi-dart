// ignore_for_file: unused_element, unnecessary_cast

class WorkflowTemplatePlacementManagedClusterConfigLifecycleConfig {
  /// The time when cluster will be auto-deleted (see JSON representation of [JSON Mapping - Language Guide (proto 3)](https://developers.google.com/protocol-buffers/docs/proto3#json)).
  final String? autoDeleteTime;

  /// The lifetime duration of cluster. The cluster will be auto-deleted at the end of this period. Minimum value is 10 minutes; maximum value is 14 days (see JSON representation of [JSON Mapping - Language Guide (proto 3)](https://developers.google.com/protocol-buffers/docs/proto3#json)).
  final String? autoDeleteTtl;

  /// The duration to keep the cluster alive while idling (when no jobs are running). Passing this threshold will cause the cluster to be deleted. Minimum value is 5 minutes; maximum value is 14 days (see JSON representation of [JSON Mapping - Language Guide (proto 3)](https://developers.google.com/protocol-buffers/docs/proto3#json).
  final String? idleDeleteTtl;

  /// Output only. The time when cluster became idle (most recent job finished) and became eligible for deletion due to idleness (see JSON representation of [JSON Mapping - Language Guide (proto 3)](https://developers.google.com/protocol-buffers/docs/proto3#json)).
  final String? idleStartTime;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigLifecycleConfig].
  /// [autoDeleteTime] The time when cluster will be auto-deleted (see JSON representation of [JSON Mapping - Language Guide (proto 3)](https://developers.google.com/protocol-buffers/docs/proto3#json)).
  /// [autoDeleteTtl] The lifetime duration of cluster. The cluster will be auto-deleted at the end of this period. Minimum value is 10 minutes; maximum value is 14 days (see JSON representation of [JSON Mapping - Language Guide (proto 3)](https://developers.google.com/protocol-buffers/docs/proto3#json)).
  /// [idleDeleteTtl] The duration to keep the cluster alive while idling (when no jobs are running). Passing this threshold will cause the cluster to be deleted. Minimum value is 5 minutes; maximum value is 14 days (see JSON representation of [JSON Mapping - Language Guide (proto 3)](https://developers.google.com/protocol-buffers/docs/proto3#json).
  /// [idleStartTime] Output only. The time when cluster became idle (most recent job finished) and became eligible for deletion due to idleness (see JSON representation of [JSON Mapping - Language Guide (proto 3)](https://developers.google.com/protocol-buffers/docs/proto3#json)).
  WorkflowTemplatePlacementManagedClusterConfigLifecycleConfig({
    this.autoDeleteTime,
    this.autoDeleteTtl,
    this.idleDeleteTtl,
    this.idleStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDeleteTime': ?autoDeleteTime,
      'autoDeleteTtl': ?autoDeleteTtl,
      'idleDeleteTtl': ?idleDeleteTtl,
      'idleStartTime': ?idleStartTime,
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigLifecycleConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return WorkflowTemplatePlacementManagedClusterConfigLifecycleConfig(
      autoDeleteTime: map['autoDeleteTime'] == null
          ? null
          : map['autoDeleteTime'] as String,
      autoDeleteTtl: map['autoDeleteTtl'] == null
          ? null
          : map['autoDeleteTtl'] as String,
      idleDeleteTtl: map['idleDeleteTtl'] == null
          ? null
          : map['idleDeleteTtl'] as String,
      idleStartTime: map['idleStartTime'] == null
          ? null
          : map['idleStartTime'] as String,
    );
  }
}
