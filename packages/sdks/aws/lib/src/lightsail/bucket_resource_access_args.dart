// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lightsail_bucket_resource_access_bucket_resource_access_args_doc}
/// The set of arguments for BucketResourceAccess.
/// {@endtemplate}
/// {@macro pulumi_lightsail_bucket_resource_access_bucket_resource_access_args_doc}
class BucketResourceAccessArgs {
  /// Name of the bucket to grant access to.
  final pulumi.Input<String> bucketName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name of the resource to grant bucket access.
  final pulumi.Input<String> resourceName;

  /// Creates a new [BucketResourceAccessArgs].
  /// [bucketName] Name of the bucket to grant access to.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceName] Name of the resource to grant bucket access.
  BucketResourceAccessArgs({
    required pulumi.Output<String> bucketName,
    pulumi.Output<String>? region,
    required pulumi.Output<String> resourceName,
  }) :
      bucketName = pulumi.Input.asInput<String>(bucketName),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'region': ?region,
      'resourceName': resourceName,
    };
  }

  factory BucketResourceAccessArgs.fromMap(Map<String, dynamic> map) {
    return BucketResourceAccessArgs(
      bucketName: pulumi.Output.create<String>(map['bucketName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

