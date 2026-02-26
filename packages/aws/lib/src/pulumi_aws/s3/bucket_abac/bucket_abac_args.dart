// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bucket_abac_abac_status/bucket_abac_abac_status.dart';

/// The set of arguments for BucketAbac.
class BucketAbacArgs {
  /// ABAC status configuration. See <span pulumi-lang-nodejs="`abacStatus`" pulumi-lang-dotnet="`AbacStatus`" pulumi-lang-go="`abacStatus`" pulumi-lang-python="`abac_status`" pulumi-lang-yaml="`abacStatus`" pulumi-lang-java="`abacStatus`">`abac_status`</span> Block for details.
  ///
  /// The following arguments are optional:
  final Input<BucketAbacAbacStatus> abacStatus;

  /// General purpose bucket that you want to create the metadata configuration for.
  final Input<String> bucket;

  /// Account ID of the expected bucket owner.
  final Input<String>? expectedBucketOwner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  BucketAbacArgs({
    required this.abacStatus,
    required this.bucket,
    this.expectedBucketOwner,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['abacStatus'] =
        Input.mapInputValue<BucketAbacAbacStatus, Map<String, dynamic>>(
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
      abacStatus: Input.asInput<BucketAbacAbacStatus>(map['abacStatus']),
      bucket: Input.asInput<String>(map['bucket']),
      expectedBucketOwner:
          Input.asOptionalInput<String>(map['expectedBucketOwner']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
