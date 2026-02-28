// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lightsail_bucket_access_key_bucket_access_key_args_doc}
/// The set of arguments for BucketAccessKey.
/// {@endtemplate}
/// {@macro pulumi_lightsail_bucket_access_key_bucket_access_key_args_doc}
class BucketAccessKeyArgs {
  /// Name of the bucket that the access key will belong to and grant access to.
  final pulumi.Input<String> bucketName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [BucketAccessKeyArgs].
  /// [bucketName] Name of the bucket that the access key will belong to and grant access to.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  BucketAccessKeyArgs({
    required String bucketName,
    String? region,
  })  : bucketName = pulumi.Input.asInput<String>(bucketName),
        region = pulumi.Input.asOptionalInput<String>(region);

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
      bucketName: map['bucketName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
