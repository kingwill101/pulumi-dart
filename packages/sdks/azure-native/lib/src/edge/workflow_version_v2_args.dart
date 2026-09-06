// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_manager_common_types_extended_location.dart';
import 'workflow_version_v2_properties.dart';

/// {@template pulumi_edge_workflow_version_v2_args_doc}
/// The set of arguments for WorkflowVersionV2.
/// {@endtemplate}
/// {@macro pulumi_edge_workflow_version_v2_args_doc}
class WorkflowVersionV2Args {
  /// The complex type of the extended location.
  final pulumi.Input<AzureResourceManagerCommonTypesExtendedLocation?>? extendedLocation;
  /// The resource-specific properties for this resource.
  final pulumi.Input<WorkflowVersionV2Properties?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the WorkflowVersionV2.
  final pulumi.Input<String?>? versionName;
  /// Name of the workflow
  final pulumi.Input<String> workflowName;

  /// Creates a new [WorkflowVersionV2Args].
  /// [extendedLocation] The complex type of the extended location.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [versionName] The name of the WorkflowVersionV2.
  /// [workflowName] Name of the workflow
  const WorkflowVersionV2Args({
    this.extendedLocation,
    this.properties,
    required this.resourceGroupName,
    this.versionName,
    required this.workflowName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<AzureResourceManagerCommonTypesExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'properties': ?pulumi.Input.mapOptionalInputValue<WorkflowVersionV2Properties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'versionName': ?versionName,
      'workflowName': workflowName,
    };
  }

  factory WorkflowVersionV2Args.fromMap(Map<String, dynamic> map) {
    return WorkflowVersionV2Args(
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureResourceManagerCommonTypesExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowVersionV2Properties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      versionName: (() { final guardedValue = map['versionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workflowName: pulumi.Input.fromValue(map['workflowName'] as String),
    );
  }
}
