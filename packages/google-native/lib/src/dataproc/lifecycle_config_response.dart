// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the cluster auto-delete schedule configuration.
class LifecycleConfigResponse {
  /// Optional. The time when cluster will be auto-deleted (see JSON representation of Timestamp (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  final String autoDeleteTime;

  /// Optional. The lifetime duration of cluster. The cluster will be auto-deleted at the end of this period. Minimum value is 10 minutes; maximum value is 14 days (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  final String autoDeleteTtl;

  /// Optional. The duration to keep the cluster alive while idling (when no jobs are running). Passing this threshold will cause the cluster to be deleted. Minimum value is 5 minutes; maximum value is 14 days (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  final String idleDeleteTtl;

  /// The time when cluster became idle (most recent job finished) and became eligible for deletion due to idleness (see JSON representation of Timestamp (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  final String idleStartTime;

  /// Creates a new [LifecycleConfigResponse].
  /// [autoDeleteTime] Optional. The time when cluster will be auto-deleted (see JSON representation of Timestamp (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  /// [autoDeleteTtl] Optional. The lifetime duration of cluster. The cluster will be auto-deleted at the end of this period. Minimum value is 10 minutes; maximum value is 14 days (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  /// [idleDeleteTtl] Optional. The duration to keep the cluster alive while idling (when no jobs are running). Passing this threshold will cause the cluster to be deleted. Minimum value is 5 minutes; maximum value is 14 days (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  /// [idleStartTime] The time when cluster became idle (most recent job finished) and became eligible for deletion due to idleness (see JSON representation of Timestamp (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  LifecycleConfigResponse({
    required this.autoDeleteTime,
    required this.autoDeleteTtl,
    required this.idleDeleteTtl,
    required this.idleStartTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoDeleteTime'] = autoDeleteTime;
    map['autoDeleteTtl'] = autoDeleteTtl;
    map['idleDeleteTtl'] = idleDeleteTtl;
    map['idleStartTime'] = idleStartTime;
    return map;
  }

  factory LifecycleConfigResponse.fromMap(Map<String, dynamic> map) {
    return LifecycleConfigResponse(
      autoDeleteTime: map['autoDeleteTime'] as String,
      autoDeleteTtl: map['autoDeleteTtl'] as String,
      idleDeleteTtl: map['idleDeleteTtl'] as String,
      idleStartTime: map['idleStartTime'] as String,
    );
  }
}
