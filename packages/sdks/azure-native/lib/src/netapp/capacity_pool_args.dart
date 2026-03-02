// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_capacity_pool_args_doc}
/// The set of arguments for CapacityPool.
/// {@endtemplate}
/// {@macro pulumi_netapp_capacity_pool_args_doc}
class CapacityPoolArgs {
  /// The name of the NetApp account
  final pulumi.Input<String> accountName;
  /// If enabled (true) the pool can contain cool Access enabled volumes.
  final pulumi.Input<bool>? coolAccess;
  /// Encryption type of the capacity pool, set encryption type for data at rest for this pool and all volumes in it. This value can only be set when creating new pool.
  final pulumi.Input<String>? encryptionType;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the capacity pool
  final pulumi.Input<String>? poolName;
  /// The qos type of the pool
  final pulumi.Input<String>? qosType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The service level of the file system
  final pulumi.Input<String> serviceLevel;
  /// Provisioned size of the pool (in bytes). Allowed values are in 1TiB chunks (value must be multiple of 1099511627776).
  final pulumi.Input<double> size;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CapacityPoolArgs].
  /// [accountName] The name of the NetApp account
  /// [coolAccess] If enabled (true) the pool can contain cool Access enabled volumes.
  /// [encryptionType] Encryption type of the capacity pool, set encryption type for data at rest for this pool and all volumes in it. This value can only be set when creating new pool.
  /// [location] The geo-location where the resource lives
  /// [poolName] The name of the capacity pool
  /// [qosType] The qos type of the pool
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceLevel] The service level of the file system
  /// [size] Provisioned size of the pool (in bytes). Allowed values are in 1TiB chunks (value must be multiple of 1099511627776).
  /// [tags] Resource tags.
  CapacityPoolArgs({
    required this.accountName,
    this.coolAccess,
    this.encryptionType,
    this.location,
    this.poolName,
    this.qosType,
    required this.resourceGroupName,
    required this.serviceLevel,
    required this.size,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'coolAccess': ?coolAccess,
      'encryptionType': ?encryptionType,
      'location': ?location,
      'poolName': ?poolName,
      'qosType': ?qosType,
      'resourceGroupName': resourceGroupName,
      'serviceLevel': serviceLevel,
      'size': size,
      'tags': ?tags,
    };
  }

  factory CapacityPoolArgs.fromMap(Map<String, dynamic> map) {
    return CapacityPoolArgs(
      accountName: (map['accountName'] as String).input(),
      coolAccess: map['coolAccess'] == null ? null : (map['coolAccess']! as bool).input(),
      encryptionType: map['encryptionType'] == null ? null : (map['encryptionType']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      poolName: map['poolName'] == null ? null : (map['poolName']! as String).input(),
      qosType: map['qosType'] == null ? null : (map['qosType']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceLevel: (map['serviceLevel'] as String).input(),
      size: (map['size'] as double).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

