// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_accounts_account.dart';

/// Result data returned by getAccounts.
class GetAccountsResult {
  final String? accountName;
  final List<GetAccountsAccount> accounts;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceId;
  final String? outputFile;

  /// Creates a new [GetAccountsResult].
  /// [accountName] Optional.
  /// [accounts] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Required.
  /// [outputFile] Optional.
  const GetAccountsResult({
    this.accountName,
    required this.accounts,
    required this.id,
    required this.instanceId,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'accounts': pulumi.Input.encodeList<GetAccountsAccount, Map<String, dynamic>>(accounts, (value) => value.toMap()),
      'id': id,
      'instanceId': instanceId,
      'outputFile': ?outputFile,
    };
  }

  factory GetAccountsResult.fromMap(Map<String, dynamic> map) {
    return GetAccountsResult(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      accounts: pulumi.Input.decodeList<GetAccountsAccount>(map['accounts']!, (value) => GetAccountsAccount.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

