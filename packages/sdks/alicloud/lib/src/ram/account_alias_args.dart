// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ram_account_alias_account_alias_args_doc}
/// The set of arguments for AccountAlias.
/// {@endtemplate}
/// {@macro pulumi_ram_account_alias_account_alias_args_doc}
class AccountAliasArgs {
  /// The alias of the account.
  /// It can be 3 to 32 characters in length and can contain lowercase letters, digits, and dashes (-).
  final pulumi.Input<String> accountAlias;

  /// Creates a new [AccountAliasArgs].
  /// [accountAlias] The alias of the account.
  AccountAliasArgs({required this.accountAlias});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'accountAlias': accountAlias};
  }

  factory AccountAliasArgs.fromMap(Map<String, dynamic> map) {
    return AccountAliasArgs(
      accountAlias: pulumi.Input.fromValue(map['accountAlias'] as String),
    );
  }
}
