// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_host_accounts_account.dart';

/// Result data returned by getDedicatedHostAccounts.
class GetDedicatedHostAccountsResult {
  final List<GetDedicatedHostAccountsAccount> accounts;
  final String? dedicatedHostId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;

  /// Creates a new [GetDedicatedHostAccountsResult].
  /// [accounts] Required.
  /// [dedicatedHostId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetDedicatedHostAccountsResult({
    required this.accounts,
    this.dedicatedHostId,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accounts': pulumi.Input.encodeList<GetDedicatedHostAccountsAccount, Map<String, dynamic>>(accounts, (value) => value.toMap()),
      'dedicatedHostId': ?dedicatedHostId,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetDedicatedHostAccountsResult.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostAccountsResult(
      accounts: pulumi.Input.decodeList<GetDedicatedHostAccountsAccount>(map['accounts'], (value) => GetDedicatedHostAccountsAccount.fromMap((value as Map).cast<String, dynamic>())),
      dedicatedHostId: map['dedicatedHostId'] == null ? null : map['dedicatedHostId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
    );
  }
}

