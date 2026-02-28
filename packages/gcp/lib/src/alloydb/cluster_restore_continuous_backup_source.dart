// ignore_for_file: unused_element, unnecessary_cast

class ClusterRestoreContinuousBackupSource {
  /// The name of the source cluster that this cluster is restored from.
  final String cluster;

  /// The point in time that this cluster is restored to, in RFC 3339 format.
  final String pointInTime;

  /// Creates a new [ClusterRestoreContinuousBackupSource].
  /// [cluster] The name of the source cluster that this cluster is restored from.
  /// [pointInTime] The point in time that this cluster is restored to, in RFC 3339 format.
  ClusterRestoreContinuousBackupSource({
    required this.cluster,
    required this.pointInTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cluster'] = cluster;
    map['pointInTime'] = pointInTime;
    return map;
  }

  factory ClusterRestoreContinuousBackupSource.fromMap(
      Map<String, dynamic> map) {
    return ClusterRestoreContinuousBackupSource(
      cluster: map['cluster'] as String,
      pointInTime: map['pointInTime'] as String,
    );
  }
}
