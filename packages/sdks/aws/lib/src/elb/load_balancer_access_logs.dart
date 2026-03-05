// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerAccessLogs {
  /// The S3 bucket name to store the logs in.
  final pulumi.Input<String> bucket;
  /// The S3 bucket prefix. Logs are stored in the root if not configured.
  final pulumi.Input<String>? bucketPrefix;
  /// Boolean to enable / disable `access_logs`. Default is `true`
  final pulumi.Input<bool>? enabled;
  /// The publishing interval in minutes. Valid values: `5` and `60`. Default: `60`
  final pulumi.Input<int>? interval;

  /// Creates a new [LoadBalancerAccessLogs].
  /// [bucket] The S3 bucket name to store the logs in.
  /// [bucketPrefix] The S3 bucket prefix. Logs are stored in the root if not configured.
  /// [enabled] Boolean to enable / disable `access_logs`. Default is `true`
  /// [interval] The publishing interval in minutes. Valid values: `5` and `60`. Default: `60`
  LoadBalancerAccessLogs({
    required this.bucket,
    this.bucketPrefix,
    this.enabled,
    this.interval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'bucketPrefix': ?bucketPrefix,
      'enabled': ?enabled,
      'interval': ?interval,
    };
  }

  factory LoadBalancerAccessLogs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerAccessLogs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      bucketPrefix: (() { final guardedValue = map['bucketPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

