// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_manager_common_types_extended_location.dart';
import 'workflow_version_properties.dart';

/// {@template pulumi_edge_workflow_version_args_doc}
/// The set of arguments for WorkflowVersion.
/// {@endtemplate}
/// {@macro pulumi_edge_workflow_version_args_doc}
class WorkflowVersionArgs {
  /// The name of the Context.
  final pulumi.Input<String> contextName;
  /// The complex type of the extended location.
  final pulumi.Input<AzureResourceManagerCommonTypesExtendedLocation>? extendedLocation;
  /// The resource-specific properties for this resource.
  final pulumi.Input<WorkflowVersionProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workflowVersion.
  final pulumi.Input<String>? versionName;
  /// Name of the workflow
  final pulumi.Input<String> workflowName;

  /// Creates a new [WorkflowVersionArgs].
  /// [contextName] The name of the Context.
  /// [extendedLocation] The complex type of the extended location.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [versionName] The name of the workflowVersion.
  /// [workflowName] Name of the workflow
  WorkflowVersionArgs({
    required this.contextName,
    this.extendedLocation,
    this.properties,
    required this.resourceGroupName,
    this.versionName,
    required this.workflowName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextName': contextName,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<AzureResourceManagerCommonTypesExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'properties': ?pulumi.Input.mapOptionalInputValue<WorkflowVersionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'versionName': ?versionName,
      'workflowName': workflowName,
    };
  }

  factory WorkflowVersionArgs.fromMap(Map<String, dynamic> map) {
    return WorkflowVersionArgs(
      contextName: (map['contextName'] as String).input(),
      extendedLocation: map['extendedLocation'] == null ? null : (AzureResourceManagerCommonTypesExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      properties: map['properties'] == null ? null : (WorkflowVersionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      versionName: map['versionName'] == null ? null : (map['versionName'] as String).input(),
      workflowName: (map['workflowName'] as String).input(),
    );
  }
}

