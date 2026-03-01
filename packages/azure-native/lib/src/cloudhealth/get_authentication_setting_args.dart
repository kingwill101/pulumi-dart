// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudhealth_get_authentication_setting_args_doc}
/// Arguments for getAuthenticationSetting.
/// {@endtemplate}
/// {@macro pulumi_cloudhealth_get_authentication_setting_args_doc}
class GetAuthenticationSettingArgs {
  /// Name of the authentication setting. Must be unique within a health model.
  final pulumi.Input<String> authenticationSettingName;
  /// Name of health model resource
  final pulumi.Input<String> healthModelName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAuthenticationSettingArgs].
  /// [authenticationSettingName] Name of the authentication setting. Must be unique within a health model.
  /// [healthModelName] Name of health model resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAuthenticationSettingArgs({
    required String authenticationSettingName,
    required String healthModelName,
    required String resourceGroupName,
  }) :
      authenticationSettingName = pulumi.Input.asInput<String>(authenticationSettingName),
      healthModelName = pulumi.Input.asInput<String>(healthModelName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationSettingName': authenticationSettingName,
      'healthModelName': healthModelName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAuthenticationSettingArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthenticationSettingArgs(
      authenticationSettingName: map['authenticationSettingName'] as String,
      healthModelName: map['healthModelName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

