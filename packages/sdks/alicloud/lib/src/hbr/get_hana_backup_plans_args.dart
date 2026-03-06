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
  const GetHanaBackupPlansArgs({
    required this.clusterId,
    this.databaseName,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.vaultId,
  });

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
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vaultId: (() { final guardedValue = map['vaultId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

