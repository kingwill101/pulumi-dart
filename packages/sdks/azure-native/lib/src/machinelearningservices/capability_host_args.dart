// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capability_host_properties.dart';

/// {@template pulumi_machinelearningservices_capability_host_args_doc}
/// The set of arguments for CapabilityHost.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_capability_host_args_doc}
class CapabilityHostArgs {
  /// CapabilityHost name.
  final pulumi.Input<String?>? name;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<CapabilityHostProperties> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Azure Machine Learning Workspace Name
  final pulumi.Input<String> workspaceName;

  /// Creates a new [CapabilityHostArgs].
  /// [name] CapabilityHost name.
  /// [properties] [Required] Additional attributes of the entity.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Azure Machine Learning Workspace Name
  const CapabilityHostArgs({
    this.name,
    required this.properties,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': pulumi.Input.mapInputValue<CapabilityHostProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory CapabilityHostArgs.fromMap(Map<String, dynamic> map) {
    return CapabilityHostArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(CapabilityHostProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
