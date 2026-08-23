// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitor_get_authentication_setting_args_doc}
/// Arguments for getAuthenticationSetting.
/// {@endtemplate}
/// {@macro pulumi_monitor_get_authentication_setting_args_doc}
class GetAuthenticationSettingArgs {
  /// Name of the authentication setting. Must be unique within a health model.
  final pulumi.Input<String> authenticationSettingName;
  /// The name of the Azure Monitor Workspace. The name is case insensitive
  final pulumi.Input<String> azureMonitorWorkspaceName;
  /// Name of health model resource
  final pulumi.Input<String> healthModelName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAuthenticationSettingArgs].
  /// [authenticationSettingName] Name of the authentication setting. Must be unique within a health model.
  /// [azureMonitorWorkspaceName] The name of the Azure Monitor Workspace. The name is case insensitive
  /// [healthModelName] Name of health model resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetAuthenticationSettingArgs({
    required this.authenticationSettingName,
    required this.azureMonitorWorkspaceName,
    required this.healthModelName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationSettingName': authenticationSettingName,
      'azureMonitorWorkspaceName': azureMonitorWorkspaceName,
      'healthModelName': healthModelName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAuthenticationSettingArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthenticationSettingArgs(
      authenticationSettingName: pulumi.Input.fromValue(map['authenticationSettingName'] as String),
      azureMonitorWorkspaceName: pulumi.Input.fromValue(map['azureMonitorWorkspaceName'] as String),
      healthModelName: pulumi.Input.fromValue(map['healthModelName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
