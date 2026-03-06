// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_s3_bucket_args_doc}
/// Arguments for getS3Bucket.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_s3_bucket_args_doc}
class GetS3BucketArgs {
  /// Name of S3Bucket
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetS3BucketArgs].
  /// [name] Name of S3Bucket
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetS3BucketArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetS3BucketArgs.fromMap(Map<String, dynamic> map) {
    return GetS3BucketArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

