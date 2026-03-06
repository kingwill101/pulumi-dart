// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fabric_agent_model_properties.dart';

/// {@template pulumi_datareplication_fabric_agent_args_doc}
/// The set of arguments for FabricAgent.
/// {@endtemplate}
/// {@macro pulumi_datareplication_fabric_agent_args_doc}
class FabricAgentArgs {
  /// The fabric agent name.
  final pulumi.Input<String>? fabricAgentName;
  /// The fabric name.
  final pulumi.Input<String> fabricName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<FabricAgentModelProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [FabricAgentArgs].
  /// [fabricAgentName] The fabric agent name.
  /// [fabricName] The fabric name.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const FabricAgentArgs({
    this.fabricAgentName,
    required this.fabricName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricAgentName': ?fabricAgentName,
      'fabricName': fabricName,
      'properties': ?pulumi.Input.mapOptionalInputValue<FabricAgentModelProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory FabricAgentArgs.fromMap(Map<String, dynamic> map) {
    return FabricAgentArgs(
      fabricAgentName: (() { final guardedValue = map['fabricAgentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fabricName: pulumi.Input.fromValue(map['fabricName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FabricAgentModelProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

