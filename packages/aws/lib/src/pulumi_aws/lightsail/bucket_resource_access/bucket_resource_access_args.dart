// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for BucketResourceAccess.
class BucketResourceAccessArgs {
  /// Name of the bucket to grant access to.
  final Input<String> bucketName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Name of the resource to grant bucket access.
  final Input<String> resourceName;

  BucketResourceAccessArgs({
    required this.bucketName,
    this.region,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceName'] = resourceName;
    return map;
  }

  factory BucketResourceAccessArgs.fromMap(Map<String, dynamic> map) {
    return BucketResourceAccessArgs(
      bucketName: Input.asInput<String>(map['bucketName']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceName: Input.asInput<String>(map['resourceName']),
    );
  }
}
