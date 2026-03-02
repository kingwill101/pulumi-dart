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
      fabricAgentName: map['fabricAgentName'] == null ? null : (map['fabricAgentName']! as String).input(),
      fabricName: (map['fabricName'] as String).input(),
      properties: map['properties'] == null ? null : (FabricAgentModelProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

