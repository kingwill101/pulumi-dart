// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_get_container_apps_auth_config_args_doc}
/// Arguments for getContainerAppsAuthConfig.
/// {@endtemplate}
/// {@macro pulumi_app_get_container_apps_auth_config_args_doc}
class GetContainerAppsAuthConfigArgs {
  /// Name of the Container App AuthConfig.
  final pulumi.Input<String> authConfigName;
  /// Name of the Container App.
  final pulumi.Input<String> containerAppName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetContainerAppsAuthConfigArgs].
  /// [authConfigName] Name of the Container App AuthConfig.
  /// [containerAppName] Name of the Container App.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetContainerAppsAuthConfigArgs({
    required pulumi.Output<String> authConfigName,
    required pulumi.Output<String> containerAppName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      authConfigName = pulumi.Input.asInput<String>(authConfigName),
      containerAppName = pulumi.Input.asInput<String>(containerAppName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authConfigName': authConfigName,
      'containerAppName': containerAppName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetContainerAppsAuthConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetContainerAppsAuthConfigArgs(
      authConfigName: pulumi.Output.create<String>(map['authConfigName'] as String),
      containerAppName: pulumi.Output.create<String>(map['containerAppName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

