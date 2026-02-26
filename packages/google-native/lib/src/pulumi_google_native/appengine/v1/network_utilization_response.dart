// ignore_for_file: unused_element, unnecessary_cast

/// Target scaling by network usage. Only applicable in the App Engine flexible environment.
class NetworkUtilizationResponse {
  /// Target bytes received per second.
  final int targetReceivedBytesPerSecond;

  /// Target packets received per second.
  final int targetReceivedPacketsPerSecond;

  /// Target bytes sent per second.
  final int targetSentBytesPerSecond;

  /// Target packets sent per second.
  final int targetSentPacketsPerSecond;

  NetworkUtilizationResponse({
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

  factory NetworkUtilizationResponse.fromMap(Map<String, dynamic> map) {
    return NetworkUtilizationResponse(
      targetReceivedBytesPerSecond: map['targetReceivedBytesPerSecond'] as int,
      targetReceivedPacketsPerSecond:
          map['targetReceivedPacketsPerSecond'] as int,
      targetSentBytesPerSecond: map['targetSentBytesPerSecond'] as int,
      targetSentPacketsPerSecond: map['targetSentPacketsPerSecond'] as int,
    );
  }
}
