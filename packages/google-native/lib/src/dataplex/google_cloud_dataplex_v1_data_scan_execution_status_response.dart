// ignore_for_file: unused_element, unnecessary_cast

/// Status of the data scan execution.
class GoogleCloudDataplexV1DataScanExecutionStatusResponse {
  /// The time when the latest DataScanJob ended.
  final String latestJobEndTime;

  /// The time when the latest DataScanJob started.
  final String latestJobStartTime;

  /// Creates a new [GoogleCloudDataplexV1DataScanExecutionStatusResponse].
  /// [latestJobEndTime] The time when the latest DataScanJob ended.
  /// [latestJobStartTime] The time when the latest DataScanJob started.
  GoogleCloudDataplexV1DataScanExecutionStatusResponse({
    required this.latestJobEndTime,
    required this.latestJobStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latestJobEndTime': latestJobEndTime,
      'latestJobStartTime': latestJobStartTime,
    };
  }

  factory GoogleCloudDataplexV1DataScanExecutionStatusResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDataplexV1DataScanExecutionStatusResponse(
      latestJobEndTime: map['latestJobEndTime'] as String,
      latestJobStartTime: map['latestJobStartTime'] as String,
    );
  }
}
