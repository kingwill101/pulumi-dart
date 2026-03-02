// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_identity_authentication_setting_properties.dart';

/// {@template pulumi_monitor_authentication_setting_args_doc}
/// The set of arguments for AuthenticationSetting.
/// {@endtemplate}
/// {@macro pulumi_monitor_authentication_setting_args_doc}
class AuthenticationSettingArgs {
  /// Name of the authentication setting. Must be unique within a health model.
  final pulumi.Input<String>? authenticationSettingName;
  /// The name of the Azure Monitor Workspace. The name is case insensitive
  final pulumi.Input<String> azureMonitorWorkspaceName;
  /// Name of health model resource
  final pulumi.Input<String> healthModelName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<ManagedIdentityAuthenticationSettingProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [AuthenticationSettingArgs].
  /// [authenticationSettingName] Name of the authentication setting. Must be unique within a health model.
  /// [azureMonitorWorkspaceName] The name of the Azure Monitor Workspace. The name is case insensitive
  /// [healthModelName] Name of health model resource
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  AuthenticationSettingArgs({
    this.authenticationSettingName,
    required this.azureMonitorWorkspaceName,
    required this.healthModelName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationSettingName': ?authenticationSettingName,
      'azureMonitorWorkspaceName': azureMonitorWorkspaceName,
      'healthModelName': healthModelName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ManagedIdentityAuthenticationSettingProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory AuthenticationSettingArgs.fromMap(Map<String, dynamic> map) {
    return AuthenticationSettingArgs(
      authenticationSettingName: map['authenticationSettingName'] == null ? null : (map['authenticationSettingName']! as String).input(),
      azureMonitorWorkspaceName: (map['azureMonitorWorkspaceName'] as String).input(),
      healthModelName: (map['healthModelName'] as String).input(),
      properties: map['properties'] == null ? null : (ManagedIdentityAuthenticationSettingProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

