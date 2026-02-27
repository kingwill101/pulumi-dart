// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AccountAlias.
class AccountAliasArgs {
  /// The account alias
  final pulumi.Input<String> accountAlias;

  AccountAliasArgs({
    required this.accountAlias,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountAlias'] = accountAlias;
    return map;
  }

  factory AccountAliasArgs.fromMap(Map<String, dynamic> map) {
    return AccountAliasArgs(
      accountAlias: pulumi.Input.asInput<String>(map['accountAlias']),
    );
  }
}
