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
    required this.bucketName,
    this.region,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'region': ?region,
      'resourceName': resourceName,
    };
  }

  factory BucketResourceAccessArgs.fromMap(Map<String, dynamic> map) {
    return BucketResourceAccessArgs(
      bucketName: (map['bucketName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      resourceName: (map['resourceName'] as String).input(),
    );
  }
}

