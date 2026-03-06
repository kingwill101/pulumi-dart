// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_accounts_account.dart';

/// Result data returned by getAccounts.
class GetAccountsResult {
  /// A list of Click House Accounts. Each element contains the following attributes:
  final List<GetAccountsAccount> accounts;
  /// The DBCluster id.
  final String dbClusterId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Account names.
  final List<String> names;
  final String? outputFile;
  /// The status of the resource.
  final String? status;

  /// Creates a new [GetAccountsResult].
  /// [accounts] A list of Click House Accounts. Each element contains the following attributes:
  /// [dbClusterId] The DBCluster id.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Account names.
  /// [outputFile] Optional.
  /// [status] The status of the resource.
  const GetAccountsResult({
    required this.accounts,
    required this.dbClusterId,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accounts': pulumi.Input.encodeList<GetAccountsAccount, Map<String, dynamic>>(accounts, (value) => value.toMap()),
      'dbClusterId': dbClusterId,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetAccountsResult.fromMap(Map<String, dynamic> map) {
    return GetAccountsResult(
      accounts: pulumi.Input.decodeList<GetAccountsAccount>(map['accounts']!, (value) => GetAccountsAccount.fromMap((value as Map).cast<String, dynamic>())),
      dbClusterId: map['dbClusterId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

