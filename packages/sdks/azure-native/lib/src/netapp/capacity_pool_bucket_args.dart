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
    required this.accountName,
    this.bucketName,
    this.fileSystemUser,
    this.path,
    required this.poolName,
    required this.resourceGroupName,
    this.server,
    required this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'bucketName': ?bucketName,
      'fileSystemUser':
          ?pulumi.Input.mapOptionalInputValue<
            FileSystemUser,
            Map<String, dynamic>
          >(fileSystemUser, (value) => value.toMap()),
      'path': ?path,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
      'server':
          ?pulumi.Input.mapOptionalInputValue<
            BucketServerProperties,
            Map<String, dynamic>
          >(server, (value) => value.toMap()),
      'volumeName': volumeName,
    };
  }

  factory CapacityPoolBucketArgs.fromMap(Map<String, dynamic> map) {
    return CapacityPoolBucketArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      bucketName: (() {
        final guardedValue = map['bucketName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fileSystemUser: (() {
        final guardedValue = map['fileSystemUser'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FileSystemUser.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      path: (() {
        final guardedValue = map['path'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      poolName: pulumi.Input.fromValue(map['poolName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      server: (() {
        final guardedValue = map['server'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BucketServerProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      volumeName: pulumi.Input.fromValue(map['volumeName'] as String),
    );
  }
}
