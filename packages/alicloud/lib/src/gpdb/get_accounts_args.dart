// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gpdb_get_accounts_get_accounts_args_doc}
/// Arguments for getAccounts.
/// {@endtemplate}
/// {@macro pulumi_gpdb_get_accounts_get_accounts_args_doc}
class GetAccountsArgs {
  /// The ID of the instance.
  final pulumi.Input<String> dbInstanceId;
  /// A list of Account IDs. Its element value is same as Account Name.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Account name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the account. Valid values: `Active`, `Creating` and `Deleting`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetAccountsArgs].
  /// [dbInstanceId] The ID of the instance.
  /// [ids] A list of Account IDs. Its element value is same as Account Name.
  /// [nameRegex] A regex string to filter results by Account name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the account. Valid values: `Active`, `Creating` and `Deleting`.
  GetAccountsArgs({
    required String dbInstanceId,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    String? status,
  }) :
      dbInstanceId = pulumi.Input.asInput<String>(dbInstanceId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': dbInstanceId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetAccountsArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountsArgs(
      dbInstanceId: map['dbInstanceId'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

