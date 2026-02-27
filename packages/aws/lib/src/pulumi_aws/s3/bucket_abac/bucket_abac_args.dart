// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../bucket_abac_abac_status/bucket_abac_abac_status.dart';

/// The set of arguments for BucketAbac.
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

  BucketAbacArgs({
    required this.abacStatus,
    required this.bucket,
    this.expectedBucketOwner,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['abacStatus'] =
        pulumi.Input.mapInputValue<BucketAbacAbacStatus, Map<String, dynamic>>(
            abacStatus, (value) => value.toMap());
    map['bucket'] = bucket;
    final expectedBucketOwnerValue = expectedBucketOwner;
    if (expectedBucketOwnerValue != null) {
      map['expectedBucketOwner'] = expectedBucketOwnerValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory BucketAbacArgs.fromMap(Map<String, dynamic> map) {
    return BucketAbacArgs(
      abacStatus: pulumi.Input.asInput<BucketAbacAbacStatus>(map['abacStatus']),
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      expectedBucketOwner:
          pulumi.Input.asOptionalInput<String>(map['expectedBucketOwner']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
