// ignore_for_file: unused_element, unnecessary_cast

/// Target scaling by disk usage. Only applicable in the App Engine flexible environment.
class DiskUtilizationResponseAppengineV1beta {
  /// Target bytes read per second.
  final int targetReadBytesPerSecond;

  /// Target ops read per seconds.
  final int targetReadOpsPerSecond;

  /// Target bytes written per second.
  final int targetWriteBytesPerSecond;

  /// Target ops written per second.
  final int targetWriteOpsPerSecond;

  DiskUtilizationResponseAppengineV1beta({
    required this.targetReadBytesPerSecond,
    required this.targetReadOpsPerSecond,
    required this.targetWriteBytesPerSecond,
    required this.targetWriteOpsPerSecond,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetReadBytesPerSecond'] = targetReadBytesPerSecond;
    map['targetReadOpsPerSecond'] = targetReadOpsPerSecond;
    map['targetWriteBytesPerSecond'] = targetWriteBytesPerSecond;
    map['targetWriteOpsPerSecond'] = targetWriteOpsPerSecond;
    return map;
  }

  factory DiskUtilizationResponseAppengineV1beta.fromMap(
      Map<String, dynamic> map) {
    return DiskUtilizationResponseAppengineV1beta(
      targetReadBytesPerSecond: map['targetReadBytesPerSecond'] as int,
      targetReadOpsPerSecond: map['targetReadOpsPerSecond'] as int,
      targetWriteBytesPerSecond: map['targetWriteBytesPerSecond'] as int,
      targetWriteOpsPerSecond: map['targetWriteOpsPerSecond'] as int,
    );
  }
}
