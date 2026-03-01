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
  ImportSqlCollectorOperationArgs({
    String? importSqlCollectorsName,
    required String projectName,
    ImportSqlCollectorProperties? properties,
    required String resourceGroupName,
  }) :
      importSqlCollectorsName = pulumi.Input.asOptionalInput<String>(importSqlCollectorsName),
      projectName = pulumi.Input.asInput<String>(projectName),
      properties = pulumi.Input.asOptionalInput<ImportSqlCollectorProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      importSqlCollectorsName: map['importSqlCollectorsName'] == null ? null : map['importSqlCollectorsName'] as String,
      projectName: map['projectName'] as String,
      properties: map['properties'] == null ? null : ImportSqlCollectorProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

