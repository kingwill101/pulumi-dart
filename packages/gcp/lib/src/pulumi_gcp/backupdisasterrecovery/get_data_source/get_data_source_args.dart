// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDataSource.
class GetDataSourceArgs {
  /// The ID of the Backup Vault in which the Data Source belongs.
  final pulumi.Input<String> backupVaultId;

  /// The ID of the Data Source.
  final pulumi.Input<String> dataSourceId;

  /// The location in which the Data Source belongs.
  final pulumi.Input<String> location;

  /// The Google Cloud Project in which the Data Source belongs.
  final pulumi.Input<String> project;

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
      backupVaultId: pulumi.Input.asInput<String>(map['backupVaultId']),
      dataSourceId: pulumi.Input.asInput<String>(map['dataSourceId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asInput<String>(map['project']),
    );
  }
}
