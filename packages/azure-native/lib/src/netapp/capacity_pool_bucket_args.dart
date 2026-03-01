// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_server_properties.dart';
import 'file_system_user.dart';

/// {@template pulumi_netapp_capacity_pool_bucket_args_doc}
/// The set of arguments for CapacityPoolBucket.
/// {@endtemplate}
/// {@macro pulumi_netapp_capacity_pool_bucket_args_doc}
class CapacityPoolBucketArgs {
  /// The name of the NetApp account
  final pulumi.Input<String> accountName;
  /// The name of the bucket
  final pulumi.Input<String>? bucketName;
  /// File System user having access to volume data. For Unix, this is the user's uid and gid. For Windows, this is the user's username. Note that the Unix and Windows user details are mutually exclusive, meaning one or other must be supplied, but not both.
  final pulumi.Input<FileSystemUser>? fileSystemUser;
  /// The volume path mounted inside the bucket. The default is the root path '/' if no value is provided when the bucket is created.
  final pulumi.Input<String>? path;
  /// The name of the capacity pool
  final pulumi.Input<String> poolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Properties of the server managing the lifecycle of volume buckets
  final pulumi.Input<BucketServerProperties>? server;
  /// The name of the volume
  final pulumi.Input<String> volumeName;

  /// Creates a new [CapacityPoolBucketArgs].
  /// [accountName] The name of the NetApp account
  /// [bucketName] The name of the bucket
  /// [fileSystemUser] File System user having access to volume data. For Unix, this is the user's uid and gid. For Windows, this is the user's username. Note that the Unix and Windows user details are mutually exclusive, meaning one or other must be supplied, but not both.
  /// [path] The volume path mounted inside the bucket. The default is the root path '/' if no value is provided when the bucket is created.
  /// [poolName] The name of the capacity pool
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [server] Properties of the server managing the lifecycle of volume buckets
  /// [volumeName] The name of the volume
  CapacityPoolBucketArgs({
    required String accountName,
    String? bucketName,
    FileSystemUser? fileSystemUser,
    String? path,
    required String poolName,
    required String resourceGroupName,
    BucketServerProperties? server,
    required String volumeName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      bucketName = pulumi.Input.asOptionalInput<String>(bucketName),
      fileSystemUser = pulumi.Input.asOptionalInput<FileSystemUser>(fileSystemUser),
      path = pulumi.Input.asOptionalInput<String>(path),
      poolName = pulumi.Input.asInput<String>(poolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      server = pulumi.Input.asOptionalInput<BucketServerProperties>(server),
      volumeName = pulumi.Input.asInput<String>(volumeName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'bucketName': ?bucketName,
      'fileSystemUser': ?pulumi.Input.mapOptionalInputValue<FileSystemUser, Map<String, dynamic>>(fileSystemUser, (value) => value.toMap()),
      'path': ?path,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
      'server': ?pulumi.Input.mapOptionalInputValue<BucketServerProperties, Map<String, dynamic>>(server, (value) => value.toMap()),
      'volumeName': volumeName,
    };
  }

  factory CapacityPoolBucketArgs.fromMap(Map<String, dynamic> map) {
    return CapacityPoolBucketArgs(
      accountName: map['accountName'] as String,
      bucketName: map['bucketName'] == null ? null : map['bucketName'] as String,
      fileSystemUser: map['fileSystemUser'] == null ? null : FileSystemUser.fromMap((map['fileSystemUser'] as Map).cast<String, dynamic>()),
      path: map['path'] == null ? null : map['path'] as String,
      poolName: map['poolName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      server: map['server'] == null ? null : BucketServerProperties.fromMap((map['server'] as Map).cast<String, dynamic>()),
      volumeName: map['volumeName'] as String,
    );
  }
}

