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
  BucketAccessMonitorArgs({
    required pulumi.Output<String> bucket,
    required pulumi.Output<String> status,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      status = pulumi.Input.asInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'status': status,
    };
  }

  factory BucketAccessMonitorArgs.fromMap(Map<String, dynamic> map) {
    return BucketAccessMonitorArgs(
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
      status: pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

