// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_integration_runtime_args_doc}
/// The set of arguments for IntegrationRuntime.
/// {@endtemplate}
/// {@macro pulumi_datafactory_integration_runtime_args_doc}
class IntegrationRuntimeArgs {
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// The integration runtime name.
  final pulumi.Input<String?>? integrationRuntimeName;
  /// Integration runtime properties.
  final pulumi.Input<dynamic> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [IntegrationRuntimeArgs].
  /// [factoryName] The factory name.
  /// [integrationRuntimeName] The integration runtime name.
  /// [properties] Integration runtime properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const IntegrationRuntimeArgs({
    required this.factoryName,
    this.integrationRuntimeName,
    required this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'factoryName': factoryName,
      'integrationRuntimeName': ?integrationRuntimeName,
      'properties': properties,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory IntegrationRuntimeArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeArgs(
      factoryName: pulumi.Input.fromValue(map['factoryName'] as String),
      integrationRuntimeName: (() { final guardedValue = map['integrationRuntimeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(map['properties']),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
