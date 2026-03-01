// ignore_for_file: unused_element, unnecessary_cast


/// Definition of awsLogsLogStream
class AwsLogsLogStreamPropertiesResponse {
  /// The name of the log group where the log stream is created.
  final String? logGroupName;
  /// The name of the log stream. The name must be unique wihtin the log group.
  final String? logStreamName;

  /// Creates a new [AwsLogsLogStreamPropertiesResponse].
  /// [logGroupName] The name of the log group where the log stream is created.
  /// [logStreamName] The name of the log stream. The name must be unique wihtin the log group.
  AwsLogsLogStreamPropertiesResponse({
    this.logGroupName,
    this.logStreamName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logGroupName': ?logGroupName,
      'logStreamName': ?logStreamName,
    };
  }

  factory AwsLogsLogStreamPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsLogsLogStreamPropertiesResponse(
      logGroupName: map['logGroupName'] == null ? null : map['logGroupName'] as String,
      logStreamName: map['logStreamName'] == null ? null : map['logStreamName'] as String,
    );
  }
}

