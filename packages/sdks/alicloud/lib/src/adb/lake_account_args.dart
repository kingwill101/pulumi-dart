// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lake_account_account_privilege.dart';

/// {@template pulumi_adb_lake_account_lake_account_args_doc}
/// The set of arguments for LakeAccount.
/// {@endtemplate}
/// {@macro pulumi_adb_lake_account_lake_account_args_doc}
class LakeAccountArgs {
  /// The description of the account.
  final pulumi.Input<String>? accountDescription;
  /// The name of the account.
  final pulumi.Input<String> accountName;
  /// AccountPassword.
  final pulumi.Input<String> accountPassword;
  /// List of permissions granted. See `account_privileges` below.
  final pulumi.Input<List<LakeAccountAccountPrivilege>>? accountPrivileges;
  /// The type of the account.
  final pulumi.Input<String>? accountType;
  /// The DBCluster ID.
  final pulumi.Input<String> dbClusterId;

  /// Creates a new [LakeAccountArgs].
  /// [accountDescription] The description of the account.
  /// [accountName] The name of the account.
  /// [accountPassword] AccountPassword.
  /// [accountPrivileges] List of permissions granted. See `account_privileges` below.
  /// [accountType] The type of the account.
  /// [dbClusterId] The DBCluster ID.
  LakeAccountArgs({
    pulumi.Output<String>? accountDescription,
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> accountPassword,
    pulumi.Output<List<LakeAccountAccountPrivilege>>? accountPrivileges,
    pulumi.Output<String>? accountType,
    required pulumi.Output<String> dbClusterId,
  }) :
      accountDescription = pulumi.Input.asOptionalInput<String>(accountDescription),
      accountName = pulumi.Input.asInput<String>(accountName),
      accountPassword = pulumi.Input.asInput<String>(accountPassword),
      accountPrivileges = pulumi.Input.asOptionalInput<List<LakeAccountAccountPrivilege>>(accountPrivileges),
      accountType = pulumi.Input.asOptionalInput<String>(accountType),
      dbClusterId = pulumi.Input.asInput<String>(dbClusterId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountDescription': ?accountDescription,
      'accountName': accountName,
      'accountPassword': accountPassword,
      'accountPrivileges': ?pulumi.Input.mapOptionalInputValue<List<LakeAccountAccountPrivilege>, List<Map<String, dynamic>>>(accountPrivileges, (value) => pulumi.Input.encodeList<LakeAccountAccountPrivilege, Map<String, dynamic>>(value, (value) => value.toMap())),
      'accountType': ?accountType,
      'dbClusterId': dbClusterId,
    };
  }

  factory LakeAccountArgs.fromMap(Map<String, dynamic> map) {
    return LakeAccountArgs(
      accountDescription: map['accountDescription'] == null ? null : pulumi.Output.create<String>(map['accountDescription'] as String),
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      accountPassword: pulumi.Output.create<String>(map['accountPassword'] as String),
      accountPrivileges: map['accountPrivileges'] == null ? null : pulumi.Output.create<List<LakeAccountAccountPrivilege>>(pulumi.Input.decodeList<LakeAccountAccountPrivilege>(map['accountPrivileges'], (value) => LakeAccountAccountPrivilege.fromMap((value as Map).cast<String, dynamic>()))),
      accountType: map['accountType'] == null ? null : pulumi.Output.create<String>(map['accountType'] as String),
      dbClusterId: pulumi.Output.create<String>(map['dbClusterId'] as String),
    );
  }
}

