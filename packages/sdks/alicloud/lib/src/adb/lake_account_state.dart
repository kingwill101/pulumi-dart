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
  const LakeAccountState({
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
      accountDescription: (() { final guardedValue = map['accountDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountPassword: (() { final guardedValue = map['accountPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountPrivileges: (() { final guardedValue = map['accountPrivileges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LakeAccountAccountPrivilege>(guardedValue, (value) => LakeAccountAccountPrivilege.fromMap((value as Map).cast<String, dynamic>()))); })(),
      accountType: (() { final guardedValue = map['accountType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbClusterId: (() { final guardedValue = map['dbClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

