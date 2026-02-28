// ignore_for_file: unused_element, unnecessary_cast

/// Target scaling by network usage. Only applicable in the App Engine flexible environment.
class NetworkUtilizationResponseAppengineV1beta {
  /// Target bytes received per second.
  final int targetReceivedBytesPerSecond;

  /// Target packets received per second.
  final int targetReceivedPacketsPerSecond;

  /// Target bytes sent per second.
  final int targetSentBytesPerSecond;

  /// Target packets sent per second.
  final int targetSentPacketsPerSecond;

  /// Creates a new [NetworkUtilizationResponseAppengineV1beta].
  /// [targetReceivedBytesPerSecond] Target bytes received per second.
  /// [targetReceivedPacketsPerSecond] Target packets received per second.
  /// [targetSentBytesPerSecond] Target bytes sent per second.
  /// [targetSentPacketsPerSecond] Target packets sent per second.
  NetworkUtilizationResponseAppengineV1beta({
    required this.targetReceivedBytesPerSecond,
    required this.targetReceivedPacketsPerSecond,
    required this.targetSentBytesPerSecond,
    required this.targetSentPacketsPerSecond,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetReceivedBytesPerSecond'] = targetReceivedBytesPerSecond;
    map['targetReceivedPacketsPerSecond'] = targetReceivedPacketsPerSecond;
    map['targetSentBytesPerSecond'] = targetSentBytesPerSecond;
    map['targetSentPacketsPerSecond'] = targetSentPacketsPerSecond;
    return map;
  }

  factory NetworkUtilizationResponseAppengineV1beta.fromMap(
      Map<String, dynamic> map) {
    return NetworkUtilizationResponseAppengineV1beta(
      targetReceivedBytesPerSecond: map['targetReceivedBytesPerSecond'] as int,
      targetReceivedPacketsPerSecond:
          map['targetReceivedPacketsPerSecond'] as int,
      targetSentBytesPerSecond: map['targetSentBytesPerSecond'] as int,
      targetSentPacketsPerSecond: map['targetSentPacketsPerSecond'] as int,
    );
  }
}
