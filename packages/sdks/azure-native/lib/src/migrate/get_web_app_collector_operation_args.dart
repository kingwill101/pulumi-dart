// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_web_app_collector_operation_args_doc}
/// Arguments for getWebAppCollectorOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_web_app_collector_operation_args_doc}
class GetWebAppCollectorOperationArgs {
  /// Web app collector ARM name.
  final pulumi.Input<String> collectorName;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWebAppCollectorOperationArgs].
  /// [collectorName] Web app collector ARM name.
  /// [projectName] Assessment Project Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetWebAppCollectorOperationArgs({
    required this.collectorName,
    required this.projectName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectorName': collectorName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWebAppCollectorOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppCollectorOperationArgs(
      collectorName: pulumi.Input.fromValue(map['collectorName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
