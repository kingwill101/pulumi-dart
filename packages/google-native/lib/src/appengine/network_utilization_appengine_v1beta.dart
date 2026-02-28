// ignore_for_file: unused_element, unnecessary_cast

/// Target scaling by network usage. Only applicable in the App Engine flexible environment.
class NetworkUtilizationAppengineV1beta {
  /// Target bytes received per second.
  final int? targetReceivedBytesPerSecond;

  /// Target packets received per second.
  final int? targetReceivedPacketsPerSecond;

  /// Target bytes sent per second.
  final int? targetSentBytesPerSecond;

  /// Target packets sent per second.
  final int? targetSentPacketsPerSecond;

  /// Creates a new [NetworkUtilizationAppengineV1beta].
  /// [targetReceivedBytesPerSecond] Target bytes received per second.
  /// [targetReceivedPacketsPerSecond] Target packets received per second.
  /// [targetSentBytesPerSecond] Target bytes sent per second.
  /// [targetSentPacketsPerSecond] Target packets sent per second.
  NetworkUtilizationAppengineV1beta({
    this.targetReceivedBytesPerSecond,
    this.targetReceivedPacketsPerSecond,
    this.targetSentBytesPerSecond,
    this.targetSentPacketsPerSecond,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final targetReceivedBytesPerSecondValue = targetReceivedBytesPerSecond;
    if (targetReceivedBytesPerSecondValue != null) {
      map['targetReceivedBytesPerSecond'] = targetReceivedBytesPerSecondValue;
    }
    final targetReceivedPacketsPerSecondValue = targetReceivedPacketsPerSecond;
    if (targetReceivedPacketsPerSecondValue != null) {
      map['targetReceivedPacketsPerSecond'] =
          targetReceivedPacketsPerSecondValue;
    }
    final targetSentBytesPerSecondValue = targetSentBytesPerSecond;
    if (targetSentBytesPerSecondValue != null) {
      map['targetSentBytesPerSecond'] = targetSentBytesPerSecondValue;
    }
    final targetSentPacketsPerSecondValue = targetSentPacketsPerSecond;
    if (targetSentPacketsPerSecondValue != null) {
      map['targetSentPacketsPerSecond'] = targetSentPacketsPerSecondValue;
    }
    return map;
  }

  factory NetworkUtilizationAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return NetworkUtilizationAppengineV1beta(
      targetReceivedBytesPerSecond: map['targetReceivedBytesPerSecond'] == null
          ? null
          : map['targetReceivedBytesPerSecond'] as int,
      targetReceivedPacketsPerSecond:
          map['targetReceivedPacketsPerSecond'] == null
              ? null
              : map['targetReceivedPacketsPerSecond'] as int,
      targetSentBytesPerSecond: map['targetSentBytesPerSecond'] == null
          ? null
          : map['targetSentBytesPerSecond'] as int,
      targetSentPacketsPerSecond: map['targetSentPacketsPerSecond'] == null
          ? null
          : map['targetSentPacketsPerSecond'] as int,
    );
  }
}
