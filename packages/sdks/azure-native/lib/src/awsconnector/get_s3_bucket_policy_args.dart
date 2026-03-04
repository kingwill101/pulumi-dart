// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_s3_bucket_policy_args_doc}
/// Arguments for getS3BucketPolicy.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_s3_bucket_policy_args_doc}
class GetS3BucketPolicyArgs {
  /// Name of S3BucketPolicy
  final pulumi.Input<String> name;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetS3BucketPolicyArgs].
  /// [name] Name of S3BucketPolicy
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetS3BucketPolicyArgs({required this.name, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetS3BucketPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetS3BucketPolicyArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
