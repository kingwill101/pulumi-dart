// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_user_permission_scope.dart';
import 'local_user_ssh_authorized_key.dart';

/// {@template pulumi_storage_local_user_local_user_args_doc}
/// The set of arguments for LocalUser.
/// {@endtemplate}
/// {@macro pulumi_storage_local_user_local_user_args_doc}
class LocalUserArgs {
  /// The home directory of the Storage Account Local User.
  final pulumi.Input<String>? homeDirectory;
  /// The name which should be used for this Storage Account Local User. Changing this forces a new Storage Account Local User to be created.
  final pulumi.Input<String>? name;
  /// One or more `permission_scope` blocks as defined below.
  final pulumi.Input<List<LocalUserPermissionScope>>? permissionScopes;
  /// One or more `ssh_authorized_key` blocks as defined below.
  final pulumi.Input<List<LocalUserSshAuthorizedKey>>? sshAuthorizedKeys;
  /// Specifies whether SSH Key Authentication is enabled. Defaults to `false`.
  final pulumi.Input<bool>? sshKeyEnabled;
  /// Specifies whether SSH Password Authentication is enabled. Defaults to `false`.
  final pulumi.Input<bool>? sshPasswordEnabled;
  /// The ID of the Storage Account that this Storage Account Local User resides in. Changing this forces a new Storage Account Local User to be created.
  final pulumi.Input<String> storageAccountId;

  /// Creates a new [LocalUserArgs].
  /// [homeDirectory] The home directory of the Storage Account Local User.
  /// [name] The name which should be used for this Storage Account Local User. Changing this forces a new Storage Account Local User to be created.
  /// [permissionScopes] One or more `permission_scope` blocks as defined below.
  /// [sshAuthorizedKeys] One or more `ssh_authorized_key` blocks as defined below.
  /// [sshKeyEnabled] Specifies whether SSH Key Authentication is enabled. Defaults to `false`.
  /// [sshPasswordEnabled] Specifies whether SSH Password Authentication is enabled. Defaults to `false`.
  /// [storageAccountId] The ID of the Storage Account that this Storage Account Local User resides in. Changing this forces a new Storage Account Local User to be created.
  LocalUserArgs({
    String? homeDirectory,
    String? name,
    List<LocalUserPermissionScope>? permissionScopes,
    List<LocalUserSshAuthorizedKey>? sshAuthorizedKeys,
    bool? sshKeyEnabled,
    bool? sshPasswordEnabled,
    required String storageAccountId,
  }) :
      homeDirectory = pulumi.Input.asOptionalInput<String>(homeDirectory),
      name = pulumi.Input.asOptionalInput<String>(name),
      permissionScopes = pulumi.Input.asOptionalInput<List<LocalUserPermissionScope>>(permissionScopes),
      sshAuthorizedKeys = pulumi.Input.asOptionalInput<List<LocalUserSshAuthorizedKey>>(sshAuthorizedKeys),
      sshKeyEnabled = pulumi.Input.asOptionalInput<bool>(sshKeyEnabled),
      sshPasswordEnabled = pulumi.Input.asOptionalInput<bool>(sshPasswordEnabled),
      storageAccountId = pulumi.Input.asInput<String>(storageAccountId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'homeDirectory': ?homeDirectory,
      'name': ?name,
      'permissionScopes': ?pulumi.Input.mapOptionalInputValue<List<LocalUserPermissionScope>, List<Map<String, dynamic>>>(permissionScopes, (value) => pulumi.Input.encodeList<LocalUserPermissionScope, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sshAuthorizedKeys': ?pulumi.Input.mapOptionalInputValue<List<LocalUserSshAuthorizedKey>, List<Map<String, dynamic>>>(sshAuthorizedKeys, (value) => pulumi.Input.encodeList<LocalUserSshAuthorizedKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sshKeyEnabled': ?sshKeyEnabled,
      'sshPasswordEnabled': ?sshPasswordEnabled,
      'storageAccountId': storageAccountId,
    };
  }

  factory LocalUserArgs.fromMap(Map<String, dynamic> map) {
    return LocalUserArgs(
      homeDirectory: map['homeDirectory'] == null ? null : map['homeDirectory'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      permissionScopes: map['permissionScopes'] == null ? null : pulumi.Input.decodeList<LocalUserPermissionScope>(map['permissionScopes'], (value) => LocalUserPermissionScope.fromMap((value as Map).cast<String, dynamic>())),
      sshAuthorizedKeys: map['sshAuthorizedKeys'] == null ? null : pulumi.Input.decodeList<LocalUserSshAuthorizedKey>(map['sshAuthorizedKeys'], (value) => LocalUserSshAuthorizedKey.fromMap((value as Map).cast<String, dynamic>())),
      sshKeyEnabled: map['sshKeyEnabled'] == null ? null : map['sshKeyEnabled'] as bool,
      sshPasswordEnabled: map['sshPasswordEnabled'] == null ? null : map['sshPasswordEnabled'] as bool,
      storageAccountId: map['storageAccountId'] as String,
    );
  }
}

