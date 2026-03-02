// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kvstore_get_accounts_get_accounts_args_doc}
/// Arguments for getAccounts.
/// {@endtemplate}
/// {@macro pulumi_kvstore_get_accounts_get_accounts_args_doc}
class GetAccountsArgs {
  /// The name of the account.
  final pulumi.Input<String>? accountName;
  /// The Id of instance in which account belongs.
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of Tair (Redis OSS-Compatible) And Memcache (KVStore) Account. Valid Values: `"Available` `Unavailable`
  final pulumi.Input<String>? status;

  /// Creates a new [GetAccountsArgs].
  /// [accountName] The name of the account.
  /// [instanceId] The Id of instance in which account belongs.
  /// [nameRegex] Optional.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of Tair (Redis OSS-Compatible) And Memcache (KVStore) Account. Valid Values: `"Available` `Unavailable`
  GetAccountsArgs({
    this.accountName,
    required this.instanceId,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetAccountsArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountsArgs(
      accountName: map['accountName'] == null ? null : (map['accountName']! as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

