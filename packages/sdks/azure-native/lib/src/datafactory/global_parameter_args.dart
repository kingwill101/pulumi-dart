// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_parameter_specification.dart';

/// {@template pulumi_datafactory_global_parameter_args_doc}
/// The set of arguments for GlobalParameter.
/// {@endtemplate}
/// {@macro pulumi_datafactory_global_parameter_args_doc}
class GlobalParameterArgs {
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// The global parameter name.
  final pulumi.Input<String>? globalParameterName;
  /// Properties of the global parameter.
  final pulumi.Input<Map<String, GlobalParameterSpecification>> properties;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GlobalParameterArgs].
  /// [factoryName] The factory name.
  /// [globalParameterName] The global parameter name.
  /// [properties] Properties of the global parameter.
  /// [resourceGroupName] The resource group name.
  const GlobalParameterArgs({
    required this.factoryName,
    this.globalParameterName,
    required this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'factoryName': factoryName,
      'globalParameterName': ?globalParameterName,
      'properties': pulumi.Input.mapInputValue<Map<String, GlobalParameterSpecification>, Map<String, Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeMapValues<GlobalParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GlobalParameterArgs.fromMap(Map<String, dynamic> map) {
    return GlobalParameterArgs(
      factoryName: pulumi.Input.fromValue(map['factoryName'] as String),
      globalParameterName: (() { final guardedValue = map['globalParameterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GlobalParameterSpecification>(map['properties']!, (value) => GlobalParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

