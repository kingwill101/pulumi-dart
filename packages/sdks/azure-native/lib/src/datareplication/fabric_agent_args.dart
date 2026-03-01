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
  FabricAgentArgs({
    pulumi.Output<String>? fabricAgentName,
    required pulumi.Output<String> fabricName,
    pulumi.Output<FabricAgentModelProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      fabricAgentName = pulumi.Input.asOptionalInput<String>(fabricAgentName),
      fabricName = pulumi.Input.asInput<String>(fabricName),
      properties = pulumi.Input.asOptionalInput<FabricAgentModelProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      fabricAgentName: map['fabricAgentName'] == null ? null : pulumi.Output.create<String>(map['fabricAgentName'] as String),
      fabricName: pulumi.Output.create<String>(map['fabricName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<FabricAgentModelProperties>(FabricAgentModelProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

