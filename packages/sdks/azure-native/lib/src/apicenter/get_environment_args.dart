// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apicenter_get_environment_args_doc}
/// Arguments for getEnvironment.
/// {@endtemplate}
/// {@macro pulumi_apicenter_get_environment_args_doc}
class GetEnvironmentArgs {
  /// The name of the environment.
  final pulumi.Input<String> environmentName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of Azure API Center service.
  final pulumi.Input<String> serviceName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetEnvironmentArgs].
  /// [environmentName] The name of the environment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of Azure API Center service.
  /// [workspaceName] The name of the workspace.
  GetEnvironmentArgs({
    required pulumi.Output<String> environmentName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
    required pulumi.Output<String> workspaceName,
  }) :
      environmentName = pulumi.Input.asInput<String>(environmentName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentName': environmentName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'workspaceName': workspaceName,
    };
  }

  factory GetEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentArgs(
      environmentName: pulumi.Output.create<String>(map['environmentName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

