// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_capacity_pool_volume_group_id_for_ldap_user_args_doc}
/// Arguments for getCapacityPoolVolumeGroupIdForLdapUser.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_capacity_pool_volume_group_id_for_ldap_user_args_doc}
class GetCapacityPoolVolumeGroupIdForLdapUserArgs {
  /// The name of the NetApp account
  final pulumi.Input<String> accountName;
  /// The name of the capacity pool
  final pulumi.Input<String> poolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// username is required to fetch the group to which user is part of
  final pulumi.Input<String> username;
  /// The name of the volume
  final pulumi.Input<String> volumeName;

  /// Creates a new [GetCapacityPoolVolumeGroupIdForLdapUserArgs].
  /// [accountName] The name of the NetApp account
  /// [poolName] The name of the capacity pool
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [username] username is required to fetch the group to which user is part of
  /// [volumeName] The name of the volume
  GetCapacityPoolVolumeGroupIdForLdapUserArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> poolName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> username,
    required pulumi.Output<String> volumeName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      poolName = pulumi.Input.asInput<String>(poolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      username = pulumi.Input.asInput<String>(username),
      volumeName = pulumi.Input.asInput<String>(volumeName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
      'username': username,
      'volumeName': volumeName,
    };
  }

  factory GetCapacityPoolVolumeGroupIdForLdapUserArgs.fromMap(Map<String, dynamic> map) {
    return GetCapacityPoolVolumeGroupIdForLdapUserArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      poolName: pulumi.Output.create<String>(map['poolName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      username: pulumi.Output.create<String>(map['username'] as String),
      volumeName: pulumi.Output.create<String>(map['volumeName'] as String),
    );
  }
}

