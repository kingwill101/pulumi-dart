// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oss_bucket_transfer_acceleration_bucket_transfer_acceleration_args_doc}
/// The set of arguments for BucketTransferAcceleration.
/// {@endtemplate}
/// {@macro pulumi_oss_bucket_transfer_acceleration_bucket_transfer_acceleration_args_doc}
class BucketTransferAccelerationArgs {
  /// The name of the Bucket.
  final pulumi.Input<String> bucket;
  /// Specifies whether to enable transfer acceleration for the bucket. Valid values: true: transfer acceleration for the bucket is enabled. false: transfer acceleration for the bucket is disabled.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [BucketTransferAccelerationArgs].
  /// [bucket] The name of the Bucket.
  /// [enabled] Specifies whether to enable transfer acceleration for the bucket. Valid values: true: transfer acceleration for the bucket is enabled. false: transfer acceleration for the bucket is disabled.
  BucketTransferAccelerationArgs({
    required pulumi.Output<String> bucket,
    pulumi.Output<bool>? enabled,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'enabled': ?enabled,
    };
  }

  factory BucketTransferAccelerationArgs.fromMap(Map<String, dynamic> map) {
    return BucketTransferAccelerationArgs(
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
    );
  }
}

