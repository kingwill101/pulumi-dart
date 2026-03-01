// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_manager_common_types_extended_location.dart';

/// {@template pulumi_edge_workflow_args_doc}
/// The set of arguments for Workflow.
/// {@endtemplate}
/// {@macro pulumi_edge_workflow_args_doc}
class WorkflowArgs {
  /// The name of the Context.
  final pulumi.Input<String> contextName;
  /// The complex type of the extended location.
  final pulumi.Input<AzureResourceManagerCommonTypesExtendedLocation>? extendedLocation;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the workflow
  final pulumi.Input<String>? workflowName;

  /// Creates a new [WorkflowArgs].
  /// [contextName] The name of the Context.
  /// [extendedLocation] The complex type of the extended location.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workflowName] Name of the workflow
  WorkflowArgs({
    required pulumi.Output<String> contextName,
    pulumi.Output<AzureResourceManagerCommonTypesExtendedLocation>? extendedLocation,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? workflowName,
  }) :
      contextName = pulumi.Input.asInput<String>(contextName),
      extendedLocation = pulumi.Input.asOptionalInput<AzureResourceManagerCommonTypesExtendedLocation>(extendedLocation),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workflowName = pulumi.Input.asOptionalInput<String>(workflowName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextName': contextName,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<AzureResourceManagerCommonTypesExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'workflowName': ?workflowName,
    };
  }

  factory WorkflowArgs.fromMap(Map<String, dynamic> map) {
    return WorkflowArgs(
      contextName: pulumi.Output.create<String>(map['contextName'] as String),
      extendedLocation: map['extendedLocation'] == null ? null : pulumi.Output.create<AzureResourceManagerCommonTypesExtendedLocation>(AzureResourceManagerCommonTypesExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workflowName: map['workflowName'] == null ? null : pulumi.Output.create<String>(map['workflowName'] as String),
    );
  }
}

