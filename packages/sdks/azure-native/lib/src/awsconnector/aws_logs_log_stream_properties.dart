// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of awsLogsLogStream
class AwsLogsLogStreamProperties {
  /// The name of the log group where the log stream is created.
  final pulumi.Input<String>? logGroupName;
  /// The name of the log stream. The name must be unique wihtin the log group.
  final pulumi.Input<String>? logStreamName;

  /// Creates a new [AwsLogsLogStreamProperties].
  /// [logGroupName] The name of the log group where the log stream is created.
  /// [logStreamName] The name of the log stream. The name must be unique wihtin the log group.
  const AwsLogsLogStreamProperties({
    this.logGroupName,
    this.logStreamName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logGroupName': ?logGroupName,
      'logStreamName': ?logStreamName,
    };
  }

  factory AwsLogsLogStreamProperties.fromMap(Map<String, dynamic> map) {
    return AwsLogsLogStreamProperties(
      logGroupName: (() { final guardedValue = map['logGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logStreamName: (() { final guardedValue = map['logStreamName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

