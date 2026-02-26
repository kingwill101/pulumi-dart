// ignore_for_file: unused_element, unnecessary_cast

/// Target scaling by network usage. Only applicable in the App Engine flexible environment.
class NetworkUtilization {
  /// Target bytes received per second.
  final int? targetReceivedBytesPerSecond;

  /// Target packets received per second.
  final int? targetReceivedPacketsPerSecond;

  /// Target bytes sent per second.
  final int? targetSentBytesPerSecond;

  /// Target packets sent per second.
  final int? targetSentPacketsPerSecond;

  NetworkUtilization({
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

  factory NetworkUtilization.fromMap(Map<String, dynamic> map) {
    return NetworkUtilization(
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
