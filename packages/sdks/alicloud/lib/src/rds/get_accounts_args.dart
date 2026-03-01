// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_get_accounts_get_accounts_args_doc}
/// Arguments for getAccounts.
/// {@endtemplate}
/// {@macro pulumi_rds_get_accounts_get_accounts_args_doc}
class GetAccountsArgs {
  /// The db instance id.
  final pulumi.Input<String> dbInstanceId;
  /// A list of Account IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Account name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the resource. Valid values: `Available`, `Unavailable`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetAccountsArgs].
  /// [dbInstanceId] The db instance id.
  /// [ids] A list of Account IDs.
  /// [nameRegex] A regex string to filter results by Account name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the resource. Valid values: `Available`, `Unavailable`.
  GetAccountsArgs({
    required pulumi.Output<String> dbInstanceId,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
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
      dbInstanceId: pulumi.Output.create<String>(map['dbInstanceId'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

