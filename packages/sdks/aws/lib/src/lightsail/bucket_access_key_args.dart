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
    required pulumi.Output<String> bucketName,
    pulumi.Output<String>? region,
  }) :
      bucketName = pulumi.Input.asInput<String>(bucketName),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'region': ?region,
    };
  }

  factory BucketAccessKeyArgs.fromMap(Map<String, dynamic> map) {
    return BucketAccessKeyArgs(
      bucketName: pulumi.Output.create<String>(map['bucketName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

