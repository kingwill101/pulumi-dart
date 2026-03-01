// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_definition_properties.dart';

/// {@template pulumi_dashboard_dashboard_definition_args_doc}
/// The set of arguments for DashboardDefinition.
/// {@endtemplate}
/// {@macro pulumi_dashboard_dashboard_definition_args_doc}
class DashboardDefinitionArgs {
  /// The name of the Azure Managed Dashboard.
  final pulumi.Input<String> dashboardName;
  /// The name of the Dashboard Definition.
  final pulumi.Input<String>? definitionName;
  /// Properties specific to the dashboard definition resource.
  final pulumi.Input<DashboardDefinitionProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DashboardDefinitionArgs].
  /// [dashboardName] The name of the Azure Managed Dashboard.
  /// [definitionName] The name of the Dashboard Definition.
  /// [properties] Properties specific to the dashboard definition resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  DashboardDefinitionArgs({
    required String dashboardName,
    String? definitionName,
    DashboardDefinitionProperties? properties,
    required String resourceGroupName,
  }) :
      dashboardName = pulumi.Input.asInput<String>(dashboardName),
      definitionName = pulumi.Input.asOptionalInput<String>(definitionName),
      properties = pulumi.Input.asOptionalInput<DashboardDefinitionProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dashboardName': dashboardName,
      'definitionName': ?definitionName,
      'properties': ?pulumi.Input.mapOptionalInputValue<DashboardDefinitionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DashboardDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return DashboardDefinitionArgs(
      dashboardName: map['dashboardName'] as String,
      definitionName: map['definitionName'] == null ? null : map['definitionName'] as String,
      properties: map['properties'] == null ? null : DashboardDefinitionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

