// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dashboard_get_dashboard_definition_args_doc}
/// Arguments for getDashboardDefinition.
/// {@endtemplate}
/// {@macro pulumi_dashboard_get_dashboard_definition_args_doc}
class GetDashboardDefinitionArgs {
  /// The name of the Azure Managed Dashboard.
  final pulumi.Input<String> dashboardName;

  /// The name of the Dashboard Definition.
  final pulumi.Input<String> definitionName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDashboardDefinitionArgs].
  /// [dashboardName] The name of the Azure Managed Dashboard.
  /// [definitionName] The name of the Dashboard Definition.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDashboardDefinitionArgs({
    required this.dashboardName,
    required this.definitionName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dashboardName': dashboardName,
      'definitionName': definitionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDashboardDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetDashboardDefinitionArgs(
      dashboardName: pulumi.Input.fromValue(map['dashboardName'] as String),
      definitionName: pulumi.Input.fromValue(map['definitionName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
