// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_import_collector_args_doc}
/// Arguments for getImportCollector.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_import_collector_args_doc}
class GetImportCollectorArgs {
  /// Unique name of a Import collector within a project.
  final pulumi.Input<String> importCollectorName;
  /// Name of the Azure Migrate project.
  final pulumi.Input<String> projectName;
  /// Name of the Azure Resource Group that project is part of.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetImportCollectorArgs].
  /// [importCollectorName] Unique name of a Import collector within a project.
  /// [projectName] Name of the Azure Migrate project.
  /// [resourceGroupName] Name of the Azure Resource Group that project is part of.
  GetImportCollectorArgs({
    required pulumi.Output<String> importCollectorName,
    required pulumi.Output<String> projectName,
    required pulumi.Output<String> resourceGroupName,
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

  factory GetImportCollectorArgs.fromMap(Map<String, dynamic> map) {
    return GetImportCollectorArgs(
      importCollectorName: pulumi.Output.create<String>(map['importCollectorName'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

