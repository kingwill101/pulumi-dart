// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDataSource.
class GetDataSourceArgs {
  /// The ID of the Backup Vault in which the Data Source belongs.
  final Input<String> backupVaultId;

  /// The ID of the Data Source.
  final Input<String> dataSourceId;

  /// The location in which the Data Source belongs.
  final Input<String> location;

  /// The Google Cloud Project in which the Data Source belongs.
  final Input<String> project;

  GetDataSourceArgs({
    required this.backupVaultId,
    required this.dataSourceId,
    required this.location,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupVaultId'] = backupVaultId;
    map['dataSourceId'] = dataSourceId;
    map['location'] = location;
    map['project'] = project;
    return map;
  }

  factory GetDataSourceArgs.fromMap(Map<String, dynamic> map) {
    return GetDataSourceArgs(
      backupVaultId: Input.asInput<String>(map['backupVaultId']),
      dataSourceId: Input.asInput<String>(map['dataSourceId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asInput<String>(map['project']),
    );
  }
}
