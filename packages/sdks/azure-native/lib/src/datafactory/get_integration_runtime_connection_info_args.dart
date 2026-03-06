// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_get_integration_runtime_connection_info_args_doc}
/// Arguments for getIntegrationRuntimeConnectionInfo.
/// {@endtemplate}
/// {@macro pulumi_datafactory_get_integration_runtime_connection_info_args_doc}
class GetIntegrationRuntimeConnectionInfoArgs {
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// The integration runtime name.
  final pulumi.Input<String> integrationRuntimeName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIntegrationRuntimeConnectionInfoArgs].
  /// [factoryName] The factory name.
  /// [integrationRuntimeName] The integration runtime name.
  /// [resourceGroupName] The resource group name.
  const GetIntegrationRuntimeConnectionInfoArgs({
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

  factory GetIntegrationRuntimeConnectionInfoArgs.fromMap(Map<String, dynamic> map) {
    return GetIntegrationRuntimeConnectionInfoArgs(
      factoryName: pulumi.Input.fromValue(map['factoryName'] as String),
      integrationRuntimeName: pulumi.Input.fromValue(map['integrationRuntimeName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

