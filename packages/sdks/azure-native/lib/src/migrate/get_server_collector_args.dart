// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_server_collector_args_doc}
/// Arguments for getServerCollector.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_server_collector_args_doc}
class GetServerCollectorArgs {
  /// Name of the Azure Migrate project.
  final pulumi.Input<String> projectName;
  /// Name of the Azure Resource Group that project is part of.
  final pulumi.Input<String> resourceGroupName;
  /// Unique name of a Server collector within a project.
  final pulumi.Input<String> serverCollectorName;

  /// Creates a new [GetServerCollectorArgs].
  /// [projectName] Name of the Azure Migrate project.
  /// [resourceGroupName] Name of the Azure Resource Group that project is part of.
  /// [serverCollectorName] Unique name of a Server collector within a project.
  GetServerCollectorArgs({
    required this.projectName,
    required this.resourceGroupName,
    required this.serverCollectorName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
      'serverCollectorName': serverCollectorName,
    };
  }

  factory GetServerCollectorArgs.fromMap(Map<String, dynamic> map) {
    return GetServerCollectorArgs(
      projectName: (map['projectName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serverCollectorName: (map['serverCollectorName'] as String).input(),
    );
  }
}

