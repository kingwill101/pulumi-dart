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
  ClusterLoggingInfoBrokerLogsS3({
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
      bucket: map['bucket'] == null ? null : (map['bucket'] as String).input(),
      enabled: (map['enabled'] as bool).input(),
      prefix: map['prefix'] == null ? null : (map['prefix'] as String).input(),
    );
  }
}

