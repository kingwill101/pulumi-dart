// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_static_accounts_account.dart';

/// Result data returned by getStaticAccounts.
class GetStaticAccountsResult {
  /// A list of Static Account Entries. Each element contains the following attributes:
  final List<GetStaticAccountsAccount> accounts;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// Amqp instance ID.
  final String? instanceId;
  final String? outputFile;

  /// Creates a new [GetStaticAccountsResult].
  /// [accounts] A list of Static Account Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] Amqp instance ID.
  /// [outputFile] Optional.
  GetStaticAccountsResult({
    required this.accounts,
    required this.id,
    required this.ids,
    this.instanceId,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accounts': pulumi.Input.encodeList<GetStaticAccountsAccount, Map<String, dynamic>>(accounts, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'instanceId': ?instanceId,
      'outputFile': ?outputFile,
    };
  }

  factory GetStaticAccountsResult.fromMap(Map<String, dynamic> map) {
    return GetStaticAccountsResult(
      accounts: pulumi.Input.decodeList<GetStaticAccountsAccount>(map['accounts']!, (value) => GetStaticAccountsAccount.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

