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
    required String importSqlCollectorsName,
    required String projectName,
    required String resourceGroupName,
  }) :
      importSqlCollectorsName = pulumi.Input.asInput<String>(importSqlCollectorsName),
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'importSqlCollectorsName': importSqlCollectorsName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetImportSqlCollectorOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetImportSqlCollectorOperationArgs(
      importSqlCollectorsName: map['importSqlCollectorsName'] as String,
      projectName: map['projectName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

