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
      factoryName: (map['factoryName'] as String).input(),
      globalParameterName: (map['globalParameterName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

