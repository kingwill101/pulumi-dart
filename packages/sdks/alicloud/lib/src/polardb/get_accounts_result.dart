// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_accounts_account.dart';

/// Result data returned by getAccounts.
class GetAccountsResult {
  /// A list of PolarDB cluster accounts. Each element contains the following attributes:
  final List<GetAccountsAccount> accounts;
  final String dbClusterId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? nameRegex;
  /// Account name of the cluster.
  final List<String> names;

  /// Creates a new [GetAccountsResult].
  /// [accounts] A list of PolarDB cluster accounts. Each element contains the following attributes:
  /// [dbClusterId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [nameRegex] Optional.
  /// [names] Account name of the cluster.
  GetAccountsResult({
    required this.accounts,
    required this.dbClusterId,
    required this.id,
    this.nameRegex,
    required this.names,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accounts': pulumi.Input.encodeList<GetAccountsAccount, Map<String, dynamic>>(accounts, (value) => value.toMap()),
      'dbClusterId': dbClusterId,
      'id': id,
      'nameRegex': ?nameRegex,
      'names': names,
    };
  }

  factory GetAccountsResult.fromMap(Map<String, dynamic> map) {
    return GetAccountsResult(
      accounts: pulumi.Input.decodeList<GetAccountsAccount>(map['accounts'], (value) => GetAccountsAccount.fromMap((value as Map).cast<String, dynamic>())),
      dbClusterId: map['dbClusterId'] as String,
      id: map['id'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
    );
  }
}

