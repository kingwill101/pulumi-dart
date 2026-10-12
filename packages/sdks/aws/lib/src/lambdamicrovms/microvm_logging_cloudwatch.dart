// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MicrovmLoggingCloudwatch {
  /// Name of the CloudWatch Logs log group to send logs to.
  final pulumi.Input<String?>? logGroup;
  /// Name of the CloudWatch Logs log stream within the log group.
  final pulumi.Input<String?>? logStream;

  /// Creates a new [MicrovmLoggingCloudwatch].
  /// [logGroup] Name of the CloudWatch Logs log group to send logs to.
  /// [logStream] Name of the CloudWatch Logs log stream within the log group.
  const MicrovmLoggingCloudwatch({
    this.logGroup,
    this.logStream,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logGroup': ?logGroup,
      'logStream': ?logStream,
    };
  }

  factory MicrovmLoggingCloudwatch.fromMap(Map<String, dynamic> map) {
    return MicrovmLoggingCloudwatch(
      logGroup: (() { final guardedValue = map['logGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logStream: (() { final guardedValue = map['logStream']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
