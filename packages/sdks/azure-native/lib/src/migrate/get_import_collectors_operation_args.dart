// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_import_collectors_operation_args_doc}
/// Arguments for getImportCollectorsOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_import_collectors_operation_args_doc}
class GetImportCollectorsOperationArgs {
  /// Import collector ARM name
  final pulumi.Input<String> importCollectorName;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetImportCollectorsOperationArgs].
  /// [importCollectorName] Import collector ARM name
  /// [projectName] Assessment Project Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetImportCollectorsOperationArgs({
    required this.importCollectorName,
    required this.projectName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'importCollectorName': importCollectorName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetImportCollectorsOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetImportCollectorsOperationArgs(
      importCollectorName: pulumi.Input.fromValue(map['importCollectorName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

