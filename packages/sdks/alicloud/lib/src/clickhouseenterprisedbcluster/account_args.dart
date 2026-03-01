// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_dml_auth_setting.dart';

/// {@template pulumi_clickhouseenterprisedbcluster_account_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_clickhouseenterprisedbcluster_account_account_args_doc}
class AccountArgs {
  /// The name of the database account.
  final pulumi.Input<String> account;
  /// The type of the database account. Valid values:
  /// - `NormalAccount`: Normal account number.
  /// - `SuperAccount`: The privileged account.
  final pulumi.Input<String> accountType;
  /// The cluster ID.
  final pulumi.Input<String> dbInstanceId;
  /// Note information.
  final pulumi.Input<String>? description;
  /// Authorization information. See `dml_auth_setting` below.
  final pulumi.Input<AccountDmlAuthSetting>? dmlAuthSetting;
  /// Database account password. Set the following rules.
  /// - Consists of at least three of uppercase letters, lowercase letters, numbers, and special characters.
  /// - Oh-! @#$%^& *()_+-= is a special character.
  /// - Length is 8~32 characters.
  final pulumi.Input<String> password;

  /// Creates a new [AccountArgs].
  /// [account] The name of the database account.
  /// [accountType] The type of the database account. Valid values:
  /// [dbInstanceId] The cluster ID.
  /// [description] Note information.
  /// [dmlAuthSetting] Authorization information. See `dml_auth_setting` below.
  /// [password] Database account password. Set the following rules.
  AccountArgs({
    required pulumi.Output<String> account,
    required pulumi.Output<String> accountType,
    required pulumi.Output<String> dbInstanceId,
    pulumi.Output<String>? description,
    pulumi.Output<AccountDmlAuthSetting>? dmlAuthSetting,
    required pulumi.Output<String> password,
  }) :
      account = pulumi.Input.asInput<String>(account),
      accountType = pulumi.Input.asInput<String>(accountType),
      dbInstanceId = pulumi.Input.asInput<String>(dbInstanceId),
      description = pulumi.Input.asOptionalInput<String>(description),
      dmlAuthSetting = pulumi.Input.asOptionalInput<AccountDmlAuthSetting>(dmlAuthSetting),
      password = pulumi.Input.asInput<String>(password);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'account': account,
      'accountType': accountType,
      'dbInstanceId': dbInstanceId,
      'description': ?description,
      'dmlAuthSetting': ?pulumi.Input.mapOptionalInputValue<AccountDmlAuthSetting, Map<String, dynamic>>(dmlAuthSetting, (value) => value.toMap()),
      'password': password,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      account: pulumi.Output.create<String>(map['account'] as String),
      accountType: pulumi.Output.create<String>(map['accountType'] as String),
      dbInstanceId: pulumi.Output.create<String>(map['dbInstanceId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dmlAuthSetting: map['dmlAuthSetting'] == null ? null : pulumi.Output.create<AccountDmlAuthSetting>(AccountDmlAuthSetting.fromMap((map['dmlAuthSetting'] as Map).cast<String, dynamic>())),
      password: pulumi.Output.create<String>(map['password'] as String),
    );
  }
}

