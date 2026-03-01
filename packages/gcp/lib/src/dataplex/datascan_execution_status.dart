// ignore_for_file: unused_element, unnecessary_cast

class DatascanExecutionStatus {
  /// (Output)
  /// The time when the latest DataScanJob started.
  final String? latestJobEndTime;

  /// (Output)
  /// The time when the latest DataScanJob ended.
  final String? latestJobStartTime;

  /// Creates a new [DatascanExecutionStatus].
  /// [latestJobEndTime] (Output)
  /// [latestJobStartTime] (Output)
  DatascanExecutionStatus({this.latestJobEndTime, this.latestJobStartTime});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latestJobEndTime': ?latestJobEndTime,
      'latestJobStartTime': ?latestJobStartTime,
    };
  }

  factory DatascanExecutionStatus.fromMap(Map<String, dynamic> map) {
    return DatascanExecutionStatus(
      latestJobEndTime: map['latestJobEndTime'] == null
          ? null
          : map['latestJobEndTime'] as String,
      latestJobStartTime: map['latestJobStartTime'] == null
          ? null
          : map['latestJobStartTime'] as String,
    );
  }
}
