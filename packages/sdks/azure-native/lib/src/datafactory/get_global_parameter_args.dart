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
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetGlobalParameterArgs].
  /// [factoryName] The factory name.
  /// [globalParameterName] The global parameter name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetGlobalParameterArgs({
    required this.factoryName,
    required this.globalParameterName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'factoryName': factoryName,
      'globalParameterName': globalParameterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGlobalParameterArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalParameterArgs(
      factoryName: pulumi.Input.fromValue(map['factoryName'] as String),
      globalParameterName: pulumi.Input.fromValue(map['globalParameterName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
