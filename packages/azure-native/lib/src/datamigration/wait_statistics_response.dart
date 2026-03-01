// ignore_for_file: unused_element, unnecessary_cast


/// Wait statistics gathered during query batch execution
class WaitStatisticsResponse {
  /// Total no. of waits
  final double? waitCount;
  /// Total wait time in millisecond(s)
  final double? waitTimeMs;
  /// Type of the Wait
  final String? waitType;

  /// Creates a new [WaitStatisticsResponse].
  /// [waitCount] Total no. of waits
  /// [waitTimeMs] Total wait time in millisecond(s)
  /// [waitType] Type of the Wait
  WaitStatisticsResponse({
    this.waitCount,
    this.waitTimeMs,
    this.waitType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'waitCount': ?waitCount,
      'waitTimeMs': ?waitTimeMs,
      'waitType': ?waitType,
    };
  }

  factory WaitStatisticsResponse.fromMap(Map<String, dynamic> map) {
    return WaitStatisticsResponse(
      waitCount: map['waitCount'] == null ? null : map['waitCount'] as double,
      waitTimeMs: map['waitTimeMs'] == null ? null : map['waitTimeMs'] as double,
      waitType: map['waitType'] == null ? null : map['waitType'] as String,
    );
  }
}

