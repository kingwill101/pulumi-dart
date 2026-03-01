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
    required pulumi.Output<String> projectName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverCollectorName,
  }) :
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverCollectorName = pulumi.Input.asInput<String>(serverCollectorName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
      'serverCollectorName': serverCollectorName,
    };
  }

  factory GetServerCollectorsOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetServerCollectorsOperationArgs(
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverCollectorName: pulumi.Output.create<String>(map['serverCollectorName'] as String),
    );
  }
}

