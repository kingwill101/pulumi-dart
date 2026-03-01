// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_abac_abac_status.dart';

/// Input properties used for looking up and filtering BucketAbac resources.
class BucketAbacState {
  /// ABAC status configuration. See `abac_status` Block for details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<BucketAbacAbacStatus>? abacStatus;
  /// General purpose bucket that you want to create the metadata configuration for.
  final pulumi.Input<String>? bucket;
  /// Account ID of the expected bucket owner.
  final pulumi.Input<String>? expectedBucketOwner;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [BucketAbacState].
  /// [abacStatus] ABAC status configuration. See `abac_status` Block for details.
  /// [bucket] General purpose bucket that you want to create the metadata configuration for.
  /// [expectedBucketOwner] Account ID of the expected bucket owner.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  BucketAbacState({
    pulumi.Output<BucketAbacAbacStatus>? abacStatus,
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? expectedBucketOwner,
    pulumi.Output<String>? region,
  }) :
      abacStatus = pulumi.Input.asOptionalInput<BucketAbacAbacStatus>(abacStatus),
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      expectedBucketOwner = pulumi.Input.asOptionalInput<String>(expectedBucketOwner),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abacStatus': ?pulumi.Input.mapOptionalInputValue<BucketAbacAbacStatus, Map<String, dynamic>>(abacStatus, (value) => value.toMap()),
      'bucket': ?bucket,
      'expectedBucketOwner': ?expectedBucketOwner,
      'region': ?region,
    };
  }

  factory BucketAbacState.fromMap(Map<String, dynamic> map) {
    return BucketAbacState(
      abacStatus: map['abacStatus'] == null ? null : pulumi.Output.create<BucketAbacAbacStatus>(BucketAbacAbacStatus.fromMap((map['abacStatus'] as Map).cast<String, dynamic>())),
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      expectedBucketOwner: map['expectedBucketOwner'] == null ? null : pulumi.Output.create<String>(map['expectedBucketOwner'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

