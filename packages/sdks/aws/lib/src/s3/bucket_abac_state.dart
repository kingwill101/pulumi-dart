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
    this.abacStatus,
    this.bucket,
    this.expectedBucketOwner,
    this.region,
  });

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
      abacStatus: map['abacStatus'] == null ? null : (BucketAbacAbacStatus.fromMap((map['abacStatus'] as Map).cast<String, dynamic>())).input(),
      bucket: map['bucket'] == null ? null : (map['bucket'] as String).input(),
      expectedBucketOwner: map['expectedBucketOwner'] == null ? null : (map['expectedBucketOwner'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

