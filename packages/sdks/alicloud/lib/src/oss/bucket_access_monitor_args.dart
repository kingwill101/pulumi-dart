// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oss_bucket_access_monitor_bucket_access_monitor_args_doc}
/// The set of arguments for BucketAccessMonitor.
/// {@endtemplate}
/// {@macro pulumi_oss_bucket_access_monitor_bucket_access_monitor_args_doc}
class BucketAccessMonitorArgs {
  /// The name of the bucket.
  final pulumi.Input<String> bucket;
  /// Specifies whether to enable access tracking for the bucket. Valid values: Enabled: enables access tracking. Disabled: disables access tracking.
  final pulumi.Input<String> status;

  /// Creates a new [BucketAccessMonitorArgs].
  /// [bucket] The name of the bucket.
  /// [status] Specifies whether to enable access tracking for the bucket. Valid values: Enabled: enables access tracking. Disabled: disables access tracking.
  const BucketAccessMonitorArgs({
    required this.bucket,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'status': status,
    };
  }

  factory BucketAccessMonitorArgs.fromMap(Map<String, dynamic> map) {
    return BucketAccessMonitorArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

