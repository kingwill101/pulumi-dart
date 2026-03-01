// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_integration_runtime.dart';

/// {@template pulumi_datafactory_integration_runtime_args_doc}
/// The set of arguments for IntegrationRuntime.
/// {@endtemplate}
/// {@macro pulumi_datafactory_integration_runtime_args_doc}
class IntegrationRuntimeArgs {
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// The integration runtime name.
  final pulumi.Input<String>? integrationRuntimeName;
  /// Integration runtime properties.
  final pulumi.Input<ManagedIntegrationRuntime> properties;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [IntegrationRuntimeArgs].
  /// [factoryName] The factory name.
  /// [integrationRuntimeName] The integration runtime name.
  /// [properties] Integration runtime properties.
  /// [resourceGroupName] The resource group name.
  IntegrationRuntimeArgs({
    required String factoryName,
    String? integrationRuntimeName,
    required ManagedIntegrationRuntime properties,
    required String resourceGroupName,
  }) :
      factoryName = pulumi.Input.asInput<String>(factoryName),
      integrationRuntimeName = pulumi.Input.asOptionalInput<String>(integrationRuntimeName),
      properties = pulumi.Input.asInput<ManagedIntegrationRuntime>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'factoryName': factoryName,
      'integrationRuntimeName': ?integrationRuntimeName,
      'properties': pulumi.Input.mapInputValue<ManagedIntegrationRuntime, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory IntegrationRuntimeArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeArgs(
      factoryName: map['factoryName'] as String,
      integrationRuntimeName: map['integrationRuntimeName'] == null ? null : map['integrationRuntimeName'] as String,
      properties: ManagedIntegrationRuntime.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

