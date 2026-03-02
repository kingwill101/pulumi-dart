// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_account_alias_account_alias_args_doc}
/// The set of arguments for AccountAlias.
/// {@endtemplate}
/// {@macro pulumi_iam_account_alias_account_alias_args_doc}
class AccountAliasArgs {
  /// The account alias
  final pulumi.Input<String> accountAlias;

  /// Creates a new [AccountAliasArgs].
  /// [accountAlias] The account alias
  AccountAliasArgs({
    required this.accountAlias,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountAlias': accountAlias,
    };
  }

  factory AccountAliasArgs.fromMap(Map<String, dynamic> map) {
    return AccountAliasArgs(
      accountAlias: (map['accountAlias'] as String).input(),
    );
  }
}

