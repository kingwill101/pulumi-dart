// ignore_for_file: unused_element, unnecessary_cast

/// ReplicatingStep contains specific step details.
class ReplicatingStepResponseVmmigrationV1alpha1 {
  /// The source disks replication rate for the last 30 minutes in bytes per second.
  final String lastThirtyMinutesAverageBytesPerSecond;

  /// The source disks replication rate for the last 2 minutes in bytes per second.
  final String lastTwoMinutesAverageBytesPerSecond;

  /// Replicated bytes in the step.
  final String replicatedBytes;

  /// Total bytes to be handled in the step.
  final String totalBytes;

  ReplicatingStepResponseVmmigrationV1alpha1({
    required this.lastThirtyMinutesAverageBytesPerSecond,
    required this.lastTwoMinutesAverageBytesPerSecond,
    required this.replicatedBytes,
    required this.totalBytes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lastThirtyMinutesAverageBytesPerSecond'] =
        lastThirtyMinutesAverageBytesPerSecond;
    map['lastTwoMinutesAverageBytesPerSecond'] =
        lastTwoMinutesAverageBytesPerSecond;
    map['replicatedBytes'] = replicatedBytes;
    map['totalBytes'] = totalBytes;
    return map;
  }

  factory ReplicatingStepResponseVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return ReplicatingStepResponseVmmigrationV1alpha1(
      lastThirtyMinutesAverageBytesPerSecond:
          map['lastThirtyMinutesAverageBytesPerSecond'] as String,
      lastTwoMinutesAverageBytesPerSecond:
          map['lastTwoMinutesAverageBytesPerSecond'] as String,
      replicatedBytes: map['replicatedBytes'] as String,
      totalBytes: map['totalBytes'] as String,
    );
  }
}
