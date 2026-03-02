// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_clickhouse_get_accounts_get_accounts_args_doc}
/// Arguments for getAccounts.
/// {@endtemplate}
/// {@macro pulumi_clickhouse_get_accounts_get_accounts_args_doc}
class GetAccountsArgs {
  /// The DBCluster id.
  final pulumi.Input<String> dbClusterId;
  /// A list of Account IDs. Its element value is same as Account Name.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Account name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the resource. Valid Status: `Creating`,`Available`,`Deleting`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetAccountsArgs].
  /// [dbClusterId] The DBCluster id.
  /// [ids] A list of Account IDs. Its element value is same as Account Name.
  /// [nameRegex] A regex string to filter results by Account name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the resource. Valid Status: `Creating`,`Available`,`Deleting`.
  GetAccountsArgs({
    required this.dbClusterId,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbClusterId': dbClusterId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetAccountsArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountsArgs(
      dbClusterId: (map['dbClusterId'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

