// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_capacity_pool_bucket_args_doc}
/// Arguments for getCapacityPoolBucket.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_capacity_pool_bucket_args_doc}
class GetCapacityPoolBucketArgs {
  /// The name of the NetApp account
  final pulumi.Input<String> accountName;
  /// The name of the bucket
  final pulumi.Input<String> bucketName;
  /// The name of the capacity pool
  final pulumi.Input<String> poolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the volume
  final pulumi.Input<String> volumeName;

  /// Creates a new [GetCapacityPoolBucketArgs].
  /// [accountName] The name of the NetApp account
  /// [bucketName] The name of the bucket
  /// [poolName] The name of the capacity pool
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [volumeName] The name of the volume
  GetCapacityPoolBucketArgs({
    required String accountName,
    required String bucketName,
    required String poolName,
    required String resourceGroupName,
    required String volumeName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      bucketName = pulumi.Input.asInput<String>(bucketName),
      poolName = pulumi.Input.asInput<String>(poolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      volumeName = pulumi.Input.asInput<String>(volumeName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'bucketName': bucketName,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
      'volumeName': volumeName,
    };
  }

  factory GetCapacityPoolBucketArgs.fromMap(Map<String, dynamic> map) {
    return GetCapacityPoolBucketArgs(
      accountName: map['accountName'] as String,
      bucketName: map['bucketName'] as String,
      poolName: map['poolName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      volumeName: map['volumeName'] as String,
    );
  }
}

