// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BucketAccessMonitor resources.
class BucketAccessMonitorState {
  /// The name of the bucket.
  final pulumi.Input<String>? bucket;
  /// Specifies whether to enable access tracking for the bucket. Valid values: Enabled: enables access tracking. Disabled: disables access tracking.
  final pulumi.Input<String>? status;

  /// Creates a new [BucketAccessMonitorState].
  /// [bucket] The name of the bucket.
  /// [status] Specifies whether to enable access tracking for the bucket. Valid values: Enabled: enables access tracking. Disabled: disables access tracking.
  BucketAccessMonitorState({
    this.bucket,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'status': ?status,
    };
  }

  factory BucketAccessMonitorState.fromMap(Map<String, dynamic> map) {
    return BucketAccessMonitorState(
      bucket: map['bucket'] == null ? null : (map['bucket'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

