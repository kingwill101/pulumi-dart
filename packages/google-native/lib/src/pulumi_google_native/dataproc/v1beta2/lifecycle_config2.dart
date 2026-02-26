// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the cluster auto-delete schedule configuration.
class LifecycleConfig2 {
  /// Optional. The time when cluster will be auto-deleted. (see JSON representation of Timestamp (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  final String? autoDeleteTime;

  /// Optional. The lifetime duration of cluster. The cluster will be auto-deleted at the end of this period. Minimum value is 10 minutes; maximum value is 14 days (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  final String? autoDeleteTtl;

  /// Optional. The duration to keep the cluster alive while idling (when no jobs are running). Passing this threshold will cause the cluster to be deleted. Minimum value is 5 minutes; maximum value is 14 days (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  final String? idleDeleteTtl;

  LifecycleConfig2({
    this.autoDeleteTime,
    this.autoDeleteTtl,
    this.idleDeleteTtl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoDeleteTimeValue = autoDeleteTime;
    if (autoDeleteTimeValue != null) {
      map['autoDeleteTime'] = autoDeleteTimeValue;
    }
    final autoDeleteTtlValue = autoDeleteTtl;
    if (autoDeleteTtlValue != null) {
      map['autoDeleteTtl'] = autoDeleteTtlValue;
    }
    final idleDeleteTtlValue = idleDeleteTtl;
    if (idleDeleteTtlValue != null) {
      map['idleDeleteTtl'] = idleDeleteTtlValue;
    }
    return map;
  }

  factory LifecycleConfig2.fromMap(Map<String, dynamic> map) {
    return LifecycleConfig2(
      autoDeleteTime: map['autoDeleteTime'] == null
          ? null
          : map['autoDeleteTime'] as String,
      autoDeleteTtl:
          map['autoDeleteTtl'] == null ? null : map['autoDeleteTtl'] as String,
      idleDeleteTtl:
          map['idleDeleteTtl'] == null ? null : map['idleDeleteTtl'] as String,
    );
  }
}
