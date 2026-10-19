// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImageVersionLoggingCloudwatch {
  /// Name of the CloudWatch Logs log group.
  final pulumi.Input<String> logGroup;
  /// Name of the CloudWatch Logs log stream.
  final pulumi.Input<String> logStream;

  /// Creates a new [GetImageVersionLoggingCloudwatch].
  /// [logGroup] Name of the CloudWatch Logs log group.
  /// [logStream] Name of the CloudWatch Logs log stream.
  const GetImageVersionLoggingCloudwatch({
    required this.logGroup,
    required this.logStream,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logGroup': logGroup,
      'logStream': logStream,
    };
  }

  factory GetImageVersionLoggingCloudwatch.fromMap(Map<String, dynamic> map) {
    return GetImageVersionLoggingCloudwatch(
      logGroup: pulumi.Input.fromValue(map['logGroup'] as String),
      logStream: pulumi.Input.fromValue(map['logStream'] as String),
    );
  }
}
