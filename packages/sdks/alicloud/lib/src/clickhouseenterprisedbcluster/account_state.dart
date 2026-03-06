// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_dml_auth_setting.dart';

/// Input properties used for looking up and filtering Account resources.
class AccountState {
  /// The name of the database account.
  final pulumi.Input<String>? account;
  /// The type of the database account. Valid values:
  /// - `NormalAccount`: Normal account number.
  /// - `SuperAccount`: The privileged account.
  final pulumi.Input<String>? accountType;
  /// The cluster ID.
  final pulumi.Input<String>? dbInstanceId;
  /// Note information.
  final pulumi.Input<String>? description;
  /// Authorization information. See `dml_auth_setting` below.
  final pulumi.Input<AccountDmlAuthSetting>? dmlAuthSetting;
  /// Database account password. Set the following rules.
  /// - Consists of at least three of uppercase letters, lowercase letters, numbers, and special characters.
  /// - Oh-! @#$%^& *()_+-= is a special character.
  /// - Length is 8~32 characters.
  final pulumi.Input<String>? password;

  /// Creates a new [AccountState].
  /// [account] The name of the database account.
  /// [accountType] The type of the database account. Valid values:
  /// [dbInstanceId] The cluster ID.
  /// [description] Note information.
  /// [dmlAuthSetting] Authorization information. See `dml_auth_setting` below.
  /// [password] Database account password. Set the following rules.
  const AccountState({
    this.account,
    this.accountType,
    this.dbInstanceId,
    this.description,
    this.dmlAuthSetting,
    this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'account': ?account,
      'accountType': ?accountType,
      'dbInstanceId': ?dbInstanceId,
      'description': ?description,
      'dmlAuthSetting': ?pulumi.Input.mapOptionalInputValue<AccountDmlAuthSetting, Map<String, dynamic>>(dmlAuthSetting, (value) => value.toMap()),
      'password': ?password,
    };
  }

  factory AccountState.fromMap(Map<String, dynamic> map) {
    return AccountState(
      account: (() { final guardedValue = map['account']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountType: (() { final guardedValue = map['accountType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceId: (() { final guardedValue = map['dbInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dmlAuthSetting: (() { final guardedValue = map['dmlAuthSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountDmlAuthSetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

