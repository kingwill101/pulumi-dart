// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lake_account_account_privilege.dart';

/// Input properties used for looking up and filtering LakeAccount resources.
class LakeAccountState {
  /// The description of the account.
  final pulumi.Input<String>? accountDescription;
  /// The name of the account.
  final pulumi.Input<String>? accountName;
  /// AccountPassword.
  final pulumi.Input<String>? accountPassword;
  /// List of permissions granted. See `account_privileges` below.
  final pulumi.Input<List<LakeAccountAccountPrivilege>>? accountPrivileges;
  /// The type of the account.
  final pulumi.Input<String>? accountType;
  /// The DBCluster ID.
  final pulumi.Input<String>? dbClusterId;
  /// The status of the resource.
  final pulumi.Input<String>? status;

  /// Creates a new [LakeAccountState].
  /// [accountDescription] The description of the account.
  /// [accountName] The name of the account.
  /// [accountPassword] AccountPassword.
  /// [accountPrivileges] List of permissions granted. See `account_privileges` below.
  /// [accountType] The type of the account.
  /// [dbClusterId] The DBCluster ID.
  /// [status] The status of the resource.
  LakeAccountState({
    this.accountDescription,
    this.accountName,
    this.accountPassword,
    this.accountPrivileges,
    this.accountType,
    this.dbClusterId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountDescription': ?accountDescription,
      'accountName': ?accountName,
      'accountPassword': ?accountPassword,
      'accountPrivileges': ?pulumi.Input.mapOptionalInputValue<List<LakeAccountAccountPrivilege>, List<Map<String, dynamic>>>(accountPrivileges, (value) => pulumi.Input.encodeList<LakeAccountAccountPrivilege, Map<String, dynamic>>(value, (value) => value.toMap())),
      'accountType': ?accountType,
      'dbClusterId': ?dbClusterId,
      'status': ?status,
    };
  }

  factory LakeAccountState.fromMap(Map<String, dynamic> map) {
    return LakeAccountState(
      accountDescription: map['accountDescription'] == null ? null : (map['accountDescription'] as String).input(),
      accountName: map['accountName'] == null ? null : (map['accountName'] as String).input(),
      accountPassword: map['accountPassword'] == null ? null : (map['accountPassword'] as String).input(),
      accountPrivileges: map['accountPrivileges'] == null ? null : (pulumi.Input.decodeList<LakeAccountAccountPrivilege>(map['accountPrivileges'], (value) => LakeAccountAccountPrivilege.fromMap((value as Map).cast<String, dynamic>()))).input(),
      accountType: map['accountType'] == null ? null : (map['accountType'] as String).input(),
      dbClusterId: map['dbClusterId'] == null ? null : (map['dbClusterId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

