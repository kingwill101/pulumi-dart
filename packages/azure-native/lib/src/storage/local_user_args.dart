// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'permission_scope.dart';
import 'ssh_public_key.dart';

/// {@template pulumi_storage_local_user_args_doc}
/// The set of arguments for LocalUser.
/// {@endtemplate}
/// {@macro pulumi_storage_local_user_args_doc}
class LocalUserArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;
  /// Indicates whether ACL authorization is allowed for this user. Set it to false to disallow using ACL authorization.
  final pulumi.Input<bool>? allowAclAuthorization;
  /// Supplementary group membership. Only applicable for local users enabled for NFSv3 access.
  final pulumi.Input<List<int>>? extendedGroups;
  /// An identifier for associating a group of users.
  final pulumi.Input<int>? groupId;
  /// Indicates whether shared key exists. Set it to false to remove existing shared key.
  final pulumi.Input<bool>? hasSharedKey;
  /// Indicates whether ssh key exists. Set it to false to remove existing SSH key.
  final pulumi.Input<bool>? hasSshKey;
  /// Indicates whether ssh password exists. Set it to false to remove existing SSH password.
  final pulumi.Input<bool>? hasSshPassword;
  /// Optional, local user home directory.
  final pulumi.Input<String>? homeDirectory;
  /// Indicates if the local user is enabled for access with NFSv3 protocol.
  final pulumi.Input<bool>? isNFSv3Enabled;
  /// The permission scopes of the local user.
  final pulumi.Input<List<PermissionScope>>? permissionScopes;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Optional, local user ssh authorized keys for SFTP.
  final pulumi.Input<List<SshPublicKey>>? sshAuthorizedKeys;
  /// The name of local user. The username must contain lowercase letters and numbers only. It must be unique only within the storage account.
  final pulumi.Input<String>? username;

  /// Creates a new [LocalUserArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [allowAclAuthorization] Indicates whether ACL authorization is allowed for this user. Set it to false to disallow using ACL authorization.
  /// [extendedGroups] Supplementary group membership. Only applicable for local users enabled for NFSv3 access.
  /// [groupId] An identifier for associating a group of users.
  /// [hasSharedKey] Indicates whether shared key exists. Set it to false to remove existing shared key.
  /// [hasSshKey] Indicates whether ssh key exists. Set it to false to remove existing SSH key.
  /// [hasSshPassword] Indicates whether ssh password exists. Set it to false to remove existing SSH password.
  /// [homeDirectory] Optional, local user home directory.
  /// [isNFSv3Enabled] Indicates if the local user is enabled for access with NFSv3 protocol.
  /// [permissionScopes] The permission scopes of the local user.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [sshAuthorizedKeys] Optional, local user ssh authorized keys for SFTP.
  /// [username] The name of local user. The username must contain lowercase letters and numbers only. It must be unique only within the storage account.
  LocalUserArgs({
    required String accountName,
    bool? allowAclAuthorization,
    List<int>? extendedGroups,
    int? groupId,
    bool? hasSharedKey,
    bool? hasSshKey,
    bool? hasSshPassword,
    String? homeDirectory,
    bool? isNFSv3Enabled,
    List<PermissionScope>? permissionScopes,
    required String resourceGroupName,
    List<SshPublicKey>? sshAuthorizedKeys,
    String? username,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      allowAclAuthorization = pulumi.Input.asOptionalInput<bool>(allowAclAuthorization),
      extendedGroups = pulumi.Input.asOptionalInput<List<int>>(extendedGroups),
      groupId = pulumi.Input.asOptionalInput<int>(groupId),
      hasSharedKey = pulumi.Input.asOptionalInput<bool>(hasSharedKey),
      hasSshKey = pulumi.Input.asOptionalInput<bool>(hasSshKey),
      hasSshPassword = pulumi.Input.asOptionalInput<bool>(hasSshPassword),
      homeDirectory = pulumi.Input.asOptionalInput<String>(homeDirectory),
      isNFSv3Enabled = pulumi.Input.asOptionalInput<bool>(isNFSv3Enabled),
      permissionScopes = pulumi.Input.asOptionalInput<List<PermissionScope>>(permissionScopes),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sshAuthorizedKeys = pulumi.Input.asOptionalInput<List<SshPublicKey>>(sshAuthorizedKeys),
      username = pulumi.Input.asOptionalInput<String>(username);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'allowAclAuthorization': ?allowAclAuthorization,
      'extendedGroups': ?extendedGroups,
      'groupId': ?groupId,
      'hasSharedKey': ?hasSharedKey,
      'hasSshKey': ?hasSshKey,
      'hasSshPassword': ?hasSshPassword,
      'homeDirectory': ?homeDirectory,
      'isNFSv3Enabled': ?isNFSv3Enabled,
      'permissionScopes': ?pulumi.Input.mapOptionalInputValue<List<PermissionScope>, List<Map<String, dynamic>>>(permissionScopes, (value) => pulumi.Input.encodeList<PermissionScope, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'sshAuthorizedKeys': ?pulumi.Input.mapOptionalInputValue<List<SshPublicKey>, List<Map<String, dynamic>>>(sshAuthorizedKeys, (value) => pulumi.Input.encodeList<SshPublicKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'username': ?username,
    };
  }

  factory LocalUserArgs.fromMap(Map<String, dynamic> map) {
    return LocalUserArgs(
      accountName: map['accountName'] as String,
      allowAclAuthorization: map['allowAclAuthorization'] == null ? null : map['allowAclAuthorization'] as bool,
      extendedGroups: map['extendedGroups'] == null ? null : (map['extendedGroups'] as List).cast<int>(),
      groupId: map['groupId'] == null ? null : map['groupId'] as int,
      hasSharedKey: map['hasSharedKey'] == null ? null : map['hasSharedKey'] as bool,
      hasSshKey: map['hasSshKey'] == null ? null : map['hasSshKey'] as bool,
      hasSshPassword: map['hasSshPassword'] == null ? null : map['hasSshPassword'] as bool,
      homeDirectory: map['homeDirectory'] == null ? null : map['homeDirectory'] as String,
      isNFSv3Enabled: map['isNFSv3Enabled'] == null ? null : map['isNFSv3Enabled'] as bool,
      permissionScopes: map['permissionScopes'] == null ? null : pulumi.Input.decodeList<PermissionScope>(map['permissionScopes'], (value) => PermissionScope.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      sshAuthorizedKeys: map['sshAuthorizedKeys'] == null ? null : pulumi.Input.decodeList<SshPublicKey>(map['sshAuthorizedKeys'], (value) => SshPublicKey.fromMap((value as Map).cast<String, dynamic>())),
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

