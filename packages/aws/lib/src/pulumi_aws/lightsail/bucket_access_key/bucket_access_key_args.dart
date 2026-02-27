// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for BucketAccessKey.
class BucketAccessKeyArgs {
  /// Name of the bucket that the access key will belong to and grant access to.
  final pulumi.Input<String> bucketName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  BucketAccessKeyArgs({
    required this.bucketName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory BucketAccessKeyArgs.fromMap(Map<String, dynamic> map) {
    return BucketAccessKeyArgs(
      bucketName: pulumi.Input.asInput<String>(map['bucketName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
