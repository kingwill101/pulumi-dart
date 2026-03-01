// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_get_global_parameter_args_doc}
/// Arguments for getGlobalParameter.
/// {@endtemplate}
/// {@macro pulumi_datafactory_get_global_parameter_args_doc}
class GetGlobalParameterArgs {
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// The global parameter name.
  final pulumi.Input<String> globalParameterName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetGlobalParameterArgs].
  /// [factoryName] The factory name.
  /// [globalParameterName] The global parameter name.
  /// [resourceGroupName] The resource group name.
  GetGlobalParameterArgs({
    required pulumi.Output<String> factoryName,
    required pulumi.Output<String> globalParameterName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      factoryName = pulumi.Input.asInput<String>(factoryName),
      globalParameterName = pulumi.Input.asInput<String>(globalParameterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'factoryName': factoryName,
      'globalParameterName': globalParameterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGlobalParameterArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalParameterArgs(
      factoryName: pulumi.Output.create<String>(map['factoryName'] as String),
      globalParameterName: pulumi.Output.create<String>(map['globalParameterName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

