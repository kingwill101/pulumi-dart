// ignore_for_file: unused_element, unnecessary_cast

/// Target scaling by disk usage. Only applicable in the App Engine flexible environment.
class DiskUtilizationResponse {
  /// Target bytes read per second.
  final int targetReadBytesPerSecond;

  /// Target ops read per seconds.
  final int targetReadOpsPerSecond;

  /// Target bytes written per second.
  final int targetWriteBytesPerSecond;

  /// Target ops written per second.
  final int targetWriteOpsPerSecond;

  /// Creates a new [DiskUtilizationResponse].
  /// [targetReadBytesPerSecond] Target bytes read per second.
  /// [targetReadOpsPerSecond] Target ops read per seconds.
  /// [targetWriteBytesPerSecond] Target bytes written per second.
  /// [targetWriteOpsPerSecond] Target ops written per second.
  DiskUtilizationResponse({
    required this.targetReadBytesPerSecond,
    required this.targetReadOpsPerSecond,
    required this.targetWriteBytesPerSecond,
    required this.targetWriteOpsPerSecond,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetReadBytesPerSecond': targetReadBytesPerSecond,
      'targetReadOpsPerSecond': targetReadOpsPerSecond,
      'targetWriteBytesPerSecond': targetWriteBytesPerSecond,
      'targetWriteOpsPerSecond': targetWriteOpsPerSecond,
    };
  }

  factory DiskUtilizationResponse.fromMap(Map<String, dynamic> map) {
    return DiskUtilizationResponse(
      targetReadBytesPerSecond: map['targetReadBytesPerSecond'] as int,
      targetReadOpsPerSecond: map['targetReadOpsPerSecond'] as int,
      targetWriteBytesPerSecond: map['targetWriteBytesPerSecond'] as int,
      targetWriteOpsPerSecond: map['targetWriteOpsPerSecond'] as int,
    );
  }
}
