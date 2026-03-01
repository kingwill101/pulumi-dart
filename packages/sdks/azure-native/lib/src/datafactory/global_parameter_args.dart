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
  GlobalParameterArgs({
    required pulumi.Output<String> factoryName,
    pulumi.Output<String>? globalParameterName,
    required pulumi.Output<Map<String, GlobalParameterSpecification>> properties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      factoryName = pulumi.Input.asInput<String>(factoryName),
      globalParameterName = pulumi.Input.asOptionalInput<String>(globalParameterName),
      properties = pulumi.Input.asInput<Map<String, GlobalParameterSpecification>>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      factoryName: pulumi.Output.create<String>(map['factoryName'] as String),
      globalParameterName: map['globalParameterName'] == null ? null : pulumi.Output.create<String>(map['globalParameterName'] as String),
      properties: pulumi.Output.create<Map<String, GlobalParameterSpecification>>(pulumi.Input.decodeMapValues<GlobalParameterSpecification>(map['properties'], (value) => GlobalParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

