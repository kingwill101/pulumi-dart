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
    String? fabricAgentName,
    required String fabricName,
    required DraModelProperties properties,
    required String resourceGroupName,
  }) :
      fabricAgentName = pulumi.Input.asOptionalInput<String>(fabricAgentName),
      fabricName = pulumi.Input.asInput<String>(fabricName),
      properties = pulumi.Input.asInput<DraModelProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      fabricAgentName: map['fabricAgentName'] == null ? null : map['fabricAgentName'] as String,
      fabricName: map['fabricName'] as String,
      properties: DraModelProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

