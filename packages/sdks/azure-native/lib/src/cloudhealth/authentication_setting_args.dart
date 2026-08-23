// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_identity_authentication_setting_properties.dart';

/// {@template pulumi_cloudhealth_authentication_setting_args_doc}
/// The set of arguments for AuthenticationSetting.
/// {@endtemplate}
/// {@macro pulumi_cloudhealth_authentication_setting_args_doc}
class AuthenticationSettingArgs {
  /// Name of the authentication setting. Must be unique within a health model.
  final pulumi.Input<String>? authenticationSettingName;
  /// Name of health model resource
  final pulumi.Input<String> healthModelName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<ManagedIdentityAuthenticationSettingProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [AuthenticationSettingArgs].
  /// [authenticationSettingName] Name of the authentication setting. Must be unique within a health model.
  /// [healthModelName] Name of health model resource
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const AuthenticationSettingArgs({
    this.authenticationSettingName,
    required this.healthModelName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationSettingName': ?authenticationSettingName,
      'healthModelName': healthModelName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ManagedIdentityAuthenticationSettingProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory AuthenticationSettingArgs.fromMap(Map<String, dynamic> map) {
    return AuthenticationSettingArgs(
      authenticationSettingName: (() { final guardedValue = map['authenticationSettingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthModelName: pulumi.Input.fromValue(map['healthModelName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedIdentityAuthenticationSettingProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
