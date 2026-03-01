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
    pulumi.Output<String>? accountDescription,
    pulumi.Output<String>? accountName,
    pulumi.Output<String>? accountPassword,
    pulumi.Output<List<LakeAccountAccountPrivilege>>? accountPrivileges,
    pulumi.Output<String>? accountType,
    pulumi.Output<String>? dbClusterId,
    pulumi.Output<String>? status,
  }) :
      accountDescription = pulumi.Input.asOptionalInput<String>(accountDescription),
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      accountPassword = pulumi.Input.asOptionalInput<String>(accountPassword),
      accountPrivileges = pulumi.Input.asOptionalInput<List<LakeAccountAccountPrivilege>>(accountPrivileges),
      accountType = pulumi.Input.asOptionalInput<String>(accountType),
      dbClusterId = pulumi.Input.asOptionalInput<String>(dbClusterId),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      accountDescription: map['accountDescription'] == null ? null : pulumi.Output.create<String>(map['accountDescription'] as String),
      accountName: map['accountName'] == null ? null : pulumi.Output.create<String>(map['accountName'] as String),
      accountPassword: map['accountPassword'] == null ? null : pulumi.Output.create<String>(map['accountPassword'] as String),
      accountPrivileges: map['accountPrivileges'] == null ? null : pulumi.Output.create<List<LakeAccountAccountPrivilege>>(pulumi.Input.decodeList<LakeAccountAccountPrivilege>(map['accountPrivileges'], (value) => LakeAccountAccountPrivilege.fromMap((value as Map).cast<String, dynamic>()))),
      accountType: map['accountType'] == null ? null : pulumi.Output.create<String>(map['accountType'] as String),
      dbClusterId: map['dbClusterId'] == null ? null : pulumi.Output.create<String>(map['dbClusterId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

