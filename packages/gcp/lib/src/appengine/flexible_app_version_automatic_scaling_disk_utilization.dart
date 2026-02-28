// ignore_for_file: unused_element, unnecessary_cast

class FlexibleAppVersionAutomaticScalingDiskUtilization {
  /// Target bytes read per second.
  final int? targetReadBytesPerSecond;

  /// Target ops read per seconds.
  final int? targetReadOpsPerSecond;

  /// Target bytes written per second.
  final int? targetWriteBytesPerSecond;

  /// Target ops written per second.
  final int? targetWriteOpsPerSecond;

  /// Creates a new [FlexibleAppVersionAutomaticScalingDiskUtilization].
  /// [targetReadBytesPerSecond] Target bytes read per second.
  /// [targetReadOpsPerSecond] Target ops read per seconds.
  /// [targetWriteBytesPerSecond] Target bytes written per second.
  /// [targetWriteOpsPerSecond] Target ops written per second.
  FlexibleAppVersionAutomaticScalingDiskUtilization({
    this.targetReadBytesPerSecond,
    this.targetReadOpsPerSecond,
    this.targetWriteBytesPerSecond,
    this.targetWriteOpsPerSecond,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final targetReadBytesPerSecondValue = targetReadBytesPerSecond;
    if (targetReadBytesPerSecondValue != null) {
      map['targetReadBytesPerSecond'] = targetReadBytesPerSecondValue;
    }
    final targetReadOpsPerSecondValue = targetReadOpsPerSecond;
    if (targetReadOpsPerSecondValue != null) {
      map['targetReadOpsPerSecond'] = targetReadOpsPerSecondValue;
    }
    final targetWriteBytesPerSecondValue = targetWriteBytesPerSecond;
    if (targetWriteBytesPerSecondValue != null) {
      map['targetWriteBytesPerSecond'] = targetWriteBytesPerSecondValue;
    }
    final targetWriteOpsPerSecondValue = targetWriteOpsPerSecond;
    if (targetWriteOpsPerSecondValue != null) {
      map['targetWriteOpsPerSecond'] = targetWriteOpsPerSecondValue;
    }
    return map;
  }

  factory FlexibleAppVersionAutomaticScalingDiskUtilization.fromMap(
      Map<String, dynamic> map) {
    return FlexibleAppVersionAutomaticScalingDiskUtilization(
      targetReadBytesPerSecond: map['targetReadBytesPerSecond'] == null
          ? null
          : map['targetReadBytesPerSecond'] as int,
      targetReadOpsPerSecond: map['targetReadOpsPerSecond'] == null
          ? null
          : map['targetReadOpsPerSecond'] as int,
      targetWriteBytesPerSecond: map['targetWriteBytesPerSecond'] == null
          ? null
          : map['targetWriteBytesPerSecond'] as int,
      targetWriteOpsPerSecond: map['targetWriteOpsPerSecond'] == null
          ? null
          : map['targetWriteOpsPerSecond'] as int,
    );
  }
}
