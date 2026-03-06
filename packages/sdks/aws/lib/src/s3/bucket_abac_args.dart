// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_abac_abac_status.dart';

/// {@template pulumi_s3_bucket_abac_bucket_abac_args_doc}
/// The set of arguments for BucketAbac.
/// {@endtemplate}
/// {@macro pulumi_s3_bucket_abac_bucket_abac_args_doc}
class BucketAbacArgs {
  /// ABAC status configuration. See `abac_status` Block for details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<BucketAbacAbacStatus> abacStatus;
  /// General purpose bucket that you want to create the metadata configuration for.
  final pulumi.Input<String> bucket;
  /// Account ID of the expected bucket owner.
  final pulumi.Input<String>? expectedBucketOwner;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [BucketAbacArgs].
  /// [abacStatus] ABAC status configuration. See `abac_status` Block for details.
  /// [bucket] General purpose bucket that you want to create the metadata configuration for.
  /// [expectedBucketOwner] Account ID of the expected bucket owner.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const BucketAbacArgs({
    required this.abacStatus,
    required this.bucket,
    this.expectedBucketOwner,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abacStatus': pulumi.Input.mapInputValue<BucketAbacAbacStatus, Map<String, dynamic>>(abacStatus, (value) => value.toMap()),
      'bucket': bucket,
      'expectedBucketOwner': ?expectedBucketOwner,
      'region': ?region,
    };
  }

  factory BucketAbacArgs.fromMap(Map<String, dynamic> map) {
    return BucketAbacArgs(
      abacStatus: pulumi.Input.fromValue(BucketAbacAbacStatus.fromMap((map['abacStatus']! as Map).cast<String, dynamic>())),
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      expectedBucketOwner: (() { final guardedValue = map['expectedBucketOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

