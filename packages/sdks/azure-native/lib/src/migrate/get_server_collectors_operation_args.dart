// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_server_collectors_operation_args_doc}
/// Arguments for getServerCollectorsOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_server_collectors_operation_args_doc}
class GetServerCollectorsOperationArgs {
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Physical server collector ARM name
  final pulumi.Input<String> serverCollectorName;

  /// Creates a new [GetServerCollectorsOperationArgs].
  /// [projectName] Assessment Project Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverCollectorName] Physical server collector ARM name
  GetServerCollectorsOperationArgs({
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

  factory GetServerCollectorsOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetServerCollectorsOperationArgs(
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverCollectorName: pulumi.Input.fromValue(map['serverCollectorName'] as String),
    );
  }
}

