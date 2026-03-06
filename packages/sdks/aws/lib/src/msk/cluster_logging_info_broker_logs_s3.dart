// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterLoggingInfoBrokerLogsS3 {
  /// Name of the S3 bucket to deliver logs to.
  final pulumi.Input<String>? bucket;
  final pulumi.Input<bool> enabled;
  /// Prefix to append to the folder name.
  final pulumi.Input<String>? prefix;

  /// Creates a new [ClusterLoggingInfoBrokerLogsS3].
  /// [bucket] Name of the S3 bucket to deliver logs to.
  /// [enabled] Required.
  /// [prefix] Prefix to append to the folder name.
  const ClusterLoggingInfoBrokerLogsS3({
    this.bucket,
    required this.enabled,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'enabled': enabled,
      'prefix': ?prefix,
    };
  }

  factory ClusterLoggingInfoBrokerLogsS3.fromMap(Map<String, dynamic> map) {
    return ClusterLoggingInfoBrokerLogsS3(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

