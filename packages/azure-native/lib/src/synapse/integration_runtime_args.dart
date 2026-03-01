// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_integration_runtime.dart';

/// {@template pulumi_synapse_integration_runtime_args_doc}
/// The set of arguments for IntegrationRuntime.
/// {@endtemplate}
/// {@macro pulumi_synapse_integration_runtime_args_doc}
class IntegrationRuntimeArgs {
  /// Integration runtime name
  final pulumi.Input<String>? integrationRuntimeName;
  /// Integration runtime properties.
  final pulumi.Input<ManagedIntegrationRuntime> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [IntegrationRuntimeArgs].
  /// [integrationRuntimeName] Integration runtime name
  /// [properties] Integration runtime properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  IntegrationRuntimeArgs({
    String? integrationRuntimeName,
    required ManagedIntegrationRuntime properties,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      integrationRuntimeName = pulumi.Input.asOptionalInput<String>(integrationRuntimeName),
      properties = pulumi.Input.asInput<ManagedIntegrationRuntime>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationRuntimeName': ?integrationRuntimeName,
      'properties': pulumi.Input.mapInputValue<ManagedIntegrationRuntime, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory IntegrationRuntimeArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeArgs(
      integrationRuntimeName: map['integrationRuntimeName'] == null ? null : map['integrationRuntimeName'] as String,
      properties: ManagedIntegrationRuntime.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

