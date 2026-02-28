// ignore_for_file: unused_element, unnecessary_cast

/// ReplicatingStep contains specific step details.
class ReplicatingStepResponse {
  /// The source disks replication rate for the last 30 minutes in bytes per second.
  final String lastThirtyMinutesAverageBytesPerSecond;

  /// The source disks replication rate for the last 2 minutes in bytes per second.
  final String lastTwoMinutesAverageBytesPerSecond;

  /// Replicated bytes in the step.
  final String replicatedBytes;

  /// Total bytes to be handled in the step.
  final String totalBytes;

  /// Creates a new [ReplicatingStepResponse].
  /// [lastThirtyMinutesAverageBytesPerSecond] The source disks replication rate for the last 30 minutes in bytes per second.
  /// [lastTwoMinutesAverageBytesPerSecond] The source disks replication rate for the last 2 minutes in bytes per second.
  /// [replicatedBytes] Replicated bytes in the step.
  /// [totalBytes] Total bytes to be handled in the step.
  ReplicatingStepResponse({
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

  factory ReplicatingStepResponse.fromMap(Map<String, dynamic> map) {
    return ReplicatingStepResponse(
      lastThirtyMinutesAverageBytesPerSecond:
          map['lastThirtyMinutesAverageBytesPerSecond'] as String,
      lastTwoMinutesAverageBytesPerSecond:
          map['lastTwoMinutesAverageBytesPerSecond'] as String,
      replicatedBytes: map['replicatedBytes'] as String,
      totalBytes: map['totalBytes'] as String,
    );
  }
}
