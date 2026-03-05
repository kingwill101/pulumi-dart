// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_import_sql_collector_operation_args_doc}
/// Arguments for getImportSqlCollectorOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_import_sql_collector_operation_args_doc}
class GetImportSqlCollectorOperationArgs {
  /// Import SQL Collector arm name.
  final pulumi.Input<String> importSqlCollectorsName;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetImportSqlCollectorOperationArgs].
  /// [importSqlCollectorsName] Import SQL Collector arm name.
  /// [projectName] Assessment Project Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetImportSqlCollectorOperationArgs({
    required this.importSqlCollectorsName,
    required this.projectName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'importSqlCollectorsName': importSqlCollectorsName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetImportSqlCollectorOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetImportSqlCollectorOperationArgs(
      importSqlCollectorsName: pulumi.Input.fromValue(map['importSqlCollectorsName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

