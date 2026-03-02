// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerConnectionLogs {
  /// S3 bucket name to store the logs in.
  final pulumi.Input<String> bucket;
  /// Boolean to enable / disable `connection_logs`. Defaults to `false`, even when `bucket` is specified.
  final pulumi.Input<bool>? enabled;
  /// S3 bucket prefix. Logs are stored in the root if not configured.
  final pulumi.Input<String>? prefix;

  /// Creates a new [LoadBalancerConnectionLogs].
  /// [bucket] S3 bucket name to store the logs in.
  /// [enabled] Boolean to enable / disable `connection_logs`. Defaults to `false`, even when `bucket` is specified.
  /// [prefix] S3 bucket prefix. Logs are stored in the root if not configured.
  LoadBalancerConnectionLogs({
    required this.bucket,
    this.enabled,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'enabled': ?enabled,
      'prefix': ?prefix,
    };
  }

  factory LoadBalancerConnectionLogs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerConnectionLogs(
      bucket: (map['bucket'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      prefix: map['prefix'] == null ? null : (map['prefix'] as String).input(),
    );
  }
}

