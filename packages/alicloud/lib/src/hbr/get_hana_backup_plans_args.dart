// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hbr_get_hana_backup_plans_get_hana_backup_plans_args_doc}
/// Arguments for getHanaBackupPlans.
/// {@endtemplate}
/// {@macro pulumi_hbr_get_hana_backup_plans_get_hana_backup_plans_args_doc}
class GetHanaBackupPlansArgs {
  final pulumi.Input<String> clusterId;
  /// The name of the database.
  final pulumi.Input<String>? databaseName;
  /// A list of Hana Backup Plan IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Hana Backup Plan name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The id of the vault.
  final pulumi.Input<String>? vaultId;

  /// Creates a new [GetHanaBackupPlansArgs].
  /// [clusterId] Required.
  /// [databaseName] The name of the database.
  /// [ids] A list of Hana Backup Plan IDs.
  /// [nameRegex] A regex string to filter results by Hana Backup Plan name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [vaultId] The id of the vault.
  GetHanaBackupPlansArgs({
    required String clusterId,
    String? databaseName,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    int? pageNumber,
    int? pageSize,
    String? vaultId,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      vaultId = pulumi.Input.asOptionalInput<String>(vaultId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'databaseName': ?databaseName,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'vaultId': ?vaultId,
    };
  }

  factory GetHanaBackupPlansArgs.fromMap(Map<String, dynamic> map) {
    return GetHanaBackupPlansArgs(
      clusterId: map['clusterId'] as String,
      databaseName: map['databaseName'] == null ? null : map['databaseName'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      vaultId: map['vaultId'] == null ? null : map['vaultId'] as String,
    );
  }
}

