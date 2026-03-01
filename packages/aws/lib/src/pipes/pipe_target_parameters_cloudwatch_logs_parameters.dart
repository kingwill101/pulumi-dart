// ignore_for_file: unused_element, unnecessary_cast

class PipeTargetParametersCloudwatchLogsParameters {
  /// The name of the log stream.
  final String? logStreamName;

  /// The time the event occurred, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. This is the JSON path to the field in the event e.g. $.detail.timestamp
  final String? timestamp;

  /// Creates a new [PipeTargetParametersCloudwatchLogsParameters].
  /// [logStreamName] The name of the log stream.
  /// [timestamp] The time the event occurred, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. This is the JSON path to the field in the event e.g. $.detail.timestamp
  PipeTargetParametersCloudwatchLogsParameters({
    this.logStreamName,
    this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logStreamName': ?logStreamName,
      'timestamp': ?timestamp,
    };
  }

  factory PipeTargetParametersCloudwatchLogsParameters.fromMap(
    Map<String, dynamic> map,
  ) {
    return PipeTargetParametersCloudwatchLogsParameters(
      logStreamName: map['logStreamName'] == null
          ? null
          : map['logStreamName'] as String,
      timestamp: map['timestamp'] == null ? null : map['timestamp'] as String,
    );
  }
}
