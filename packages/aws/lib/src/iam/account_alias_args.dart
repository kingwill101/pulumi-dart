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
    required String accountAlias,
  }) : accountAlias = pulumi.Input.asInput<String>(accountAlias);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountAlias'] = accountAlias;
    return map;
  }

  factory AccountAliasArgs.fromMap(Map<String, dynamic> map) {
    return AccountAliasArgs(
      accountAlias: map['accountAlias'] as String,
    );
  }
}
