// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_sql_collector_properties.dart';

/// {@template pulumi_migrate_import_sql_collector_operation_args_doc}
/// The set of arguments for ImportSqlCollectorOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_import_sql_collector_operation_args_doc}
class ImportSqlCollectorOperationArgs {
  /// Import SQL Collector arm name.
  final pulumi.Input<String>? importSqlCollectorsName;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<ImportSqlCollectorProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ImportSqlCollectorOperationArgs].
  /// [importSqlCollectorsName] Import SQL Collector arm name.
  /// [projectName] Assessment Project Name
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const ImportSqlCollectorOperationArgs({
    this.importSqlCollectorsName,
    required this.projectName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'importSqlCollectorsName': ?importSqlCollectorsName,
      'projectName': projectName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ImportSqlCollectorProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ImportSqlCollectorOperationArgs.fromMap(Map<String, dynamic> map) {
    return ImportSqlCollectorOperationArgs(
      importSqlCollectorsName: (() { final guardedValue = map['importSqlCollectorsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImportSqlCollectorProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
