// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_host_accounts_account.dart';

/// Result data returned by getHostAccounts.
class GetHostAccountsResult {
  final List<GetHostAccountsAccount> accounts;
  final String? hostAccountName;
  final String hostId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String instanceId;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? protocolName;

  /// Creates a new [GetHostAccountsResult].
  /// [accounts] Required.
  /// [hostAccountName] Optional.
  /// [hostId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [protocolName] Optional.
  GetHostAccountsResult({
    required this.accounts,
    this.hostAccountName,
    required this.hostId,
    required this.id,
    required this.ids,
    required this.instanceId,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.protocolName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accounts': pulumi.Input.encodeList<GetHostAccountsAccount, Map<String, dynamic>>(accounts, (value) => value.toMap()),
      'hostAccountName': ?hostAccountName,
      'hostId': hostId,
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'protocolName': ?protocolName,
    };
  }

  factory GetHostAccountsResult.fromMap(Map<String, dynamic> map) {
    return GetHostAccountsResult(
      accounts: pulumi.Input.decodeList<GetHostAccountsAccount>(map['accounts'], (value) => GetHostAccountsAccount.fromMap((value as Map).cast<String, dynamic>())),
      hostAccountName: map['hostAccountName'] == null ? null : map['hostAccountName']! as String,
      hostId: map['hostId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      protocolName: map['protocolName'] == null ? null : map['protocolName']! as String,
    );
  }
}

