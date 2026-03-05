// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dra_model_properties.dart';

/// {@template pulumi_datareplication_dra_args_doc}
/// The set of arguments for Dra.
/// {@endtemplate}
/// {@macro pulumi_datareplication_dra_args_doc}
class DraArgs {
  /// The fabric agent (Dra) name.
  final pulumi.Input<String>? fabricAgentName;
  /// The fabric name.
  final pulumi.Input<String> fabricName;
  /// Dra model properties.
  final pulumi.Input<DraModelProperties> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DraArgs].
  /// [fabricAgentName] The fabric agent (Dra) name.
  /// [fabricName] The fabric name.
  /// [properties] Dra model properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  DraArgs({
    this.fabricAgentName,
    required this.fabricName,
    required this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricAgentName': ?fabricAgentName,
      'fabricName': fabricName,
      'properties': pulumi.Input.mapInputValue<DraModelProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DraArgs.fromMap(Map<String, dynamic> map) {
    return DraArgs(
      fabricAgentName: (() { final guardedValue = map['fabricAgentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fabricName: pulumi.Input.fromValue(map['fabricName'] as String),
      properties: pulumi.Input.fromValue(DraModelProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

