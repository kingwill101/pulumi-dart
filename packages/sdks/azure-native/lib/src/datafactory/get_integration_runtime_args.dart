// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_get_integration_runtime_args_doc}
/// Arguments for getIntegrationRuntime.
/// {@endtemplate}
/// {@macro pulumi_datafactory_get_integration_runtime_args_doc}
class GetIntegrationRuntimeArgs {
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// The integration runtime name.
  final pulumi.Input<String> integrationRuntimeName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIntegrationRuntimeArgs].
  /// [factoryName] The factory name.
  /// [integrationRuntimeName] The integration runtime name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetIntegrationRuntimeArgs({
    required this.factoryName,
    required this.integrationRuntimeName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'factoryName': factoryName,
      'integrationRuntimeName': integrationRuntimeName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIntegrationRuntimeArgs.fromMap(Map<String, dynamic> map) {
    return GetIntegrationRuntimeArgs(
      factoryName: pulumi.Input.fromValue(map['factoryName'] as String),
      integrationRuntimeName: pulumi.Input.fromValue(map['integrationRuntimeName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
