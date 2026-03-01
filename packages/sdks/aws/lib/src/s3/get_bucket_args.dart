// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_get_bucket_get_bucket_args_doc}
/// Arguments for getBucket.
/// {@endtemplate}
/// {@macro pulumi_s3_get_bucket_get_bucket_args_doc}
class GetBucketArgs {
  /// Name of the bucket
  final pulumi.Input<String> bucket;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetBucketArgs].
  /// [bucket] Name of the bucket
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetBucketArgs({
    required pulumi.Output<String> bucket,
    pulumi.Output<String>? region,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'region': ?region,
    };
  }

  factory GetBucketArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketArgs(
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

