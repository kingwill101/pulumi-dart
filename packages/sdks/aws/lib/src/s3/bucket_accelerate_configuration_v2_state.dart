// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BucketAccelerateConfigurationV2 resources.
class BucketAccelerateConfigurationV2State {
  /// Name of the bucket.
  final pulumi.Input<String>? bucket;
  /// Account ID of the expected bucket owner.
  final pulumi.Input<String>? expectedBucketOwner;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Transfer acceleration state of the bucket. Valid values: `Enabled`, `Suspended`.
  final pulumi.Input<String>? status;

  /// Creates a new [BucketAccelerateConfigurationV2State].
  /// [bucket] Name of the bucket.
  /// [expectedBucketOwner] Account ID of the expected bucket owner.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Transfer acceleration state of the bucket. Valid values: `Enabled`, `Suspended`.
  BucketAccelerateConfigurationV2State({
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? expectedBucketOwner,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      expectedBucketOwner = pulumi.Input.asOptionalInput<String>(expectedBucketOwner),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'expectedBucketOwner': ?expectedBucketOwner,
      'region': ?region,
      'status': ?status,
    };
  }

  factory BucketAccelerateConfigurationV2State.fromMap(Map<String, dynamic> map) {
    return BucketAccelerateConfigurationV2State(
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      expectedBucketOwner: map['expectedBucketOwner'] == null ? null : pulumi.Output.create<String>(map['expectedBucketOwner'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

