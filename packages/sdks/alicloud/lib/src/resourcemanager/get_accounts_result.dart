// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_accounts_account.dart';

/// Result data returned by getAccounts.
class GetAccountsResult {
  /// A list of accounts. Each element contains the following attributes:
  final List<GetAccountsAccount> accounts;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  /// The status of the member.
  final String? status;
  /// (Available since v1.259.0) The tags that are added to the member.
  final Map<String, String>? tags;

  /// Creates a new [GetAccountsResult].
  /// [accounts] A list of accounts. Each element contains the following attributes:
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [status] The status of the member.
  /// [tags] (Available since v1.259.0) The tags that are added to the member.
  const GetAccountsResult({
    required this.accounts,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.outputFile,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accounts': pulumi.Input.encodeList<GetAccountsAccount, Map<String, dynamic>>(accounts, (value) => value.toMap()),
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetAccountsResult.fromMap(Map<String, dynamic> map) {
    return GetAccountsResult(
      accounts: pulumi.Input.decodeList<GetAccountsAccount>(map['accounts']!, (value) => GetAccountsAccount.fromMap((value as Map).cast<String, dynamic>())),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}

