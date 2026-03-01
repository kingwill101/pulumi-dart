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
  GetImportCollectorsOperationArgs({
    required String importCollectorName,
    required String projectName,
    required String resourceGroupName,
  }) :
      importCollectorName = pulumi.Input.asInput<String>(importCollectorName),
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'importCollectorName': importCollectorName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetImportCollectorsOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetImportCollectorsOperationArgs(
      importCollectorName: map['importCollectorName'] as String,
      projectName: map['projectName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

