// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BucketTransferAcceleration resources.
class BucketTransferAccelerationState {
  /// The name of the Bucket.
  final pulumi.Input<String>? bucket;
  /// Specifies whether to enable transfer acceleration for the bucket. Valid values: true: transfer acceleration for the bucket is enabled. false: transfer acceleration for the bucket is disabled.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [BucketTransferAccelerationState].
  /// [bucket] The name of the Bucket.
  /// [enabled] Specifies whether to enable transfer acceleration for the bucket. Valid values: true: transfer acceleration for the bucket is enabled. false: transfer acceleration for the bucket is disabled.
  const BucketTransferAccelerationState({
    this.bucket,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'enabled': ?enabled,
    };
  }

  factory BucketTransferAccelerationState.fromMap(Map<String, dynamic> map) {
    return BucketTransferAccelerationState(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

