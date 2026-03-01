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
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIntegrationRuntimeArgs].
  /// [factoryName] The factory name.
  /// [integrationRuntimeName] The integration runtime name.
  /// [resourceGroupName] The resource group name.
  GetIntegrationRuntimeArgs({
    required String factoryName,
    required String integrationRuntimeName,
    required String resourceGroupName,
  }) :
      factoryName = pulumi.Input.asInput<String>(factoryName),
      integrationRuntimeName = pulumi.Input.asInput<String>(integrationRuntimeName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'factoryName': factoryName,
      'integrationRuntimeName': integrationRuntimeName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIntegrationRuntimeArgs.fromMap(Map<String, dynamic> map) {
    return GetIntegrationRuntimeArgs(
      factoryName: map['factoryName'] as String,
      integrationRuntimeName: map['integrationRuntimeName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

