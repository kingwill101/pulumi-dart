// ignore_for_file: unused_element, unnecessary_cast

class ClusterClusterConfigLifecycleConfig {
  /// The time when cluster will be auto-deleted.
  /// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds.
  /// Example: "2014-10-02T15:01:23.045123456Z".
  final String? autoDeleteTime;

  /// The time when cluster will be auto-stopped.
  /// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds.
  /// Example: "2014-10-02T15:01:23.045123456Z".
  ///
  /// - - -
  final String? autoStopTime;

  /// The duration to keep the cluster alive while idling
  /// (no jobs running). After this TTL, the cluster will be deleted. Valid range: [10m, 14d].
  final String? idleDeleteTtl;

  /// Time when the cluster became idle
  /// (most recent job finished) and became eligible for deletion due to idleness.
  final String? idleStartTime;

  /// The duration to keep the cluster alive while idling
  /// (no jobs running). After this TTL, the cluster will be stopped. Valid range: [10m, 14d].
  final String? idleStopTtl;

  /// Creates a new [ClusterClusterConfigLifecycleConfig].
  /// [autoDeleteTime] The time when cluster will be auto-deleted.
  /// [autoStopTime] The time when cluster will be auto-stopped.
  /// [idleDeleteTtl] The duration to keep the cluster alive while idling
  /// [idleStartTime] Time when the cluster became idle
  /// [idleStopTtl] The duration to keep the cluster alive while idling
  ClusterClusterConfigLifecycleConfig({
    this.autoDeleteTime,
    this.autoStopTime,
    this.idleDeleteTtl,
    this.idleStartTime,
    this.idleStopTtl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoDeleteTimeValue = autoDeleteTime;
    if (autoDeleteTimeValue != null) {
      map['autoDeleteTime'] = autoDeleteTimeValue;
    }
    final autoStopTimeValue = autoStopTime;
    if (autoStopTimeValue != null) {
      map['autoStopTime'] = autoStopTimeValue;
    }
    final idleDeleteTtlValue = idleDeleteTtl;
    if (idleDeleteTtlValue != null) {
      map['idleDeleteTtl'] = idleDeleteTtlValue;
    }
    final idleStartTimeValue = idleStartTime;
    if (idleStartTimeValue != null) {
      map['idleStartTime'] = idleStartTimeValue;
    }
    final idleStopTtlValue = idleStopTtl;
    if (idleStopTtlValue != null) {
      map['idleStopTtl'] = idleStopTtlValue;
    }
    return map;
  }

  factory ClusterClusterConfigLifecycleConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterClusterConfigLifecycleConfig(
      autoDeleteTime: map['autoDeleteTime'] == null
          ? null
          : map['autoDeleteTime'] as String,
      autoStopTime:
          map['autoStopTime'] == null ? null : map['autoStopTime'] as String,
      idleDeleteTtl:
          map['idleDeleteTtl'] == null ? null : map['idleDeleteTtl'] as String,
      idleStartTime:
          map['idleStartTime'] == null ? null : map['idleStartTime'] as String,
      idleStopTtl:
          map['idleStopTtl'] == null ? null : map['idleStopTtl'] as String,
    );
  }
}
