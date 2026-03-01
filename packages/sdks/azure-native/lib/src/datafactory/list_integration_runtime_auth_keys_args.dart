// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_list_integration_runtime_auth_keys_args_doc}
/// Arguments for listIntegrationRuntimeAuthKeys.
/// {@endtemplate}
/// {@macro pulumi_datafactory_list_integration_runtime_auth_keys_args_doc}
class ListIntegrationRuntimeAuthKeysArgs {
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// The integration runtime name.
  final pulumi.Input<String> integrationRuntimeName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListIntegrationRuntimeAuthKeysArgs].
  /// [factoryName] The factory name.
  /// [integrationRuntimeName] The integration runtime name.
  /// [resourceGroupName] The resource group name.
  ListIntegrationRuntimeAuthKeysArgs({
    required pulumi.Output<String> factoryName,
    required pulumi.Output<String> integrationRuntimeName,
    required pulumi.Output<String> resourceGroupName,
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

  factory ListIntegrationRuntimeAuthKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListIntegrationRuntimeAuthKeysArgs(
      factoryName: pulumi.Output.create<String>(map['factoryName'] as String),
      integrationRuntimeName: pulumi.Output.create<String>(map['integrationRuntimeName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

