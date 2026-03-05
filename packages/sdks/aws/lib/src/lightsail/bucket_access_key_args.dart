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
    required this.bucketName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'region': ?region,
    };
  }

  factory BucketAccessKeyArgs.fromMap(Map<String, dynamic> map) {
    return BucketAccessKeyArgs(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

