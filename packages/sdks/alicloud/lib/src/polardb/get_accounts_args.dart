// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_polardb_get_accounts_get_accounts_args_doc}
/// Arguments for getAccounts.
/// {@endtemplate}
/// {@macro pulumi_polardb_get_accounts_get_accounts_args_doc}
class GetAccountsArgs {
  /// The polarDB cluster ID.
  final pulumi.Input<String> dbClusterId;
  /// A regex string to filter results by account name.
  final pulumi.Input<String>? nameRegex;

  /// Creates a new [GetAccountsArgs].
  /// [dbClusterId] The polarDB cluster ID.
  /// [nameRegex] A regex string to filter results by account name.
  GetAccountsArgs({
    required pulumi.Output<String> dbClusterId,
    pulumi.Output<String>? nameRegex,
  }) :
      dbClusterId = pulumi.Input.asInput<String>(dbClusterId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbClusterId': dbClusterId,
      'nameRegex': ?nameRegex,
    };
  }

  factory GetAccountsArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountsArgs(
      dbClusterId: pulumi.Output.create<String>(map['dbClusterId'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
    );
  }
}

