// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_manager_common_types_extended_location.dart';
import 'execution_v2_properties.dart';

/// {@template pulumi_edge_execution_v2_args_doc}
/// The set of arguments for ExecutionV2.
/// {@endtemplate}
/// {@macro pulumi_edge_execution_v2_args_doc}
class ExecutionV2Args {
  /// The name of the ExecutionV2.
  final pulumi.Input<String>? executionName;
  /// The complex type of the extended location.
  final pulumi.Input<AzureResourceManagerCommonTypesExtendedLocation>? extendedLocation;
  /// The resource-specific properties for this resource.
  final pulumi.Input<ExecutionV2Properties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the WorkflowVersionV2.
  final pulumi.Input<String> versionName;
  /// Name of the workflow
  final pulumi.Input<String> workflowName;

  /// Creates a new [ExecutionV2Args].
  /// [executionName] The name of the ExecutionV2.
  /// [extendedLocation] The complex type of the extended location.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [versionName] The name of the WorkflowVersionV2.
  /// [workflowName] Name of the workflow
  const ExecutionV2Args({
    this.executionName,
    this.extendedLocation,
    this.properties,
    required this.resourceGroupName,
    required this.versionName,
    required this.workflowName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionName': ?executionName,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<AzureResourceManagerCommonTypesExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'properties': ?pulumi.Input.mapOptionalInputValue<ExecutionV2Properties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'versionName': versionName,
      'workflowName': workflowName,
    };
  }

  factory ExecutionV2Args.fromMap(Map<String, dynamic> map) {
    return ExecutionV2Args(
      executionName: (() { final guardedValue = map['executionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureResourceManagerCommonTypesExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExecutionV2Properties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      versionName: pulumi.Input.fromValue(map['versionName'] as String),
      workflowName: pulumi.Input.fromValue(map['workflowName'] as String),
    );
  }
}
