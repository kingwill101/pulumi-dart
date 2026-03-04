// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_accounts_account.dart';

/// Result data returned by getAccounts.
class GetAccountsResult {
  final List<GetAccountsAccount> accounts;
  final String dbInstanceId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? status;

  /// Creates a new [GetAccountsResult].
  /// [accounts] Required.
  /// [dbInstanceId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [status] Optional.
  GetAccountsResult({
    required this.accounts,
    required this.dbInstanceId,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accounts':
          pulumi.Input.encodeList<GetAccountsAccount, Map<String, dynamic>>(
            accounts,
            (value) => value.toMap(),
          ),
      'dbInstanceId': dbInstanceId,
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
      accounts: pulumi.Input.decodeList<GetAccountsAccount>(
        map['accounts']!,
        (value) =>
            GetAccountsAccount.fromMap((value as Map).cast<String, dynamic>()),
      ),
      dbInstanceId: map['dbInstanceId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
