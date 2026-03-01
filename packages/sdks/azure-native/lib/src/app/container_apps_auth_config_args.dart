// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_platform.dart';
import 'encryption_settings.dart';
import 'global_validation.dart';
import 'http_settings.dart';
import 'identity_providers.dart';
import 'login.dart';

/// {@template pulumi_app_container_apps_auth_config_args_doc}
/// The set of arguments for ContainerAppsAuthConfig.
/// {@endtemplate}
/// {@macro pulumi_app_container_apps_auth_config_args_doc}
class ContainerAppsAuthConfigArgs {
  /// Name of the Container App AuthConfig.
  final pulumi.Input<String>? authConfigName;
  /// Name of the Container App.
  final pulumi.Input<String> containerAppName;
  /// The configuration settings of the secrets references of encryption key and signing key for ContainerApp Service Authentication/Authorization.
  final pulumi.Input<EncryptionSettings>? encryptionSettings;
  /// The configuration settings that determines the validation flow of users using  Service Authentication/Authorization.
  final pulumi.Input<GlobalValidation>? globalValidation;
  /// The configuration settings of the HTTP requests for authentication and authorization requests made against ContainerApp Service Authentication/Authorization.
  final pulumi.Input<HttpSettings>? httpSettings;
  /// The configuration settings of each of the identity providers used to configure ContainerApp Service Authentication/Authorization.
  final pulumi.Input<IdentityProviders>? identityProviders;
  /// The configuration settings of the login flow of users using ContainerApp Service Authentication/Authorization.
  final pulumi.Input<Login>? login;
  /// The configuration settings of the platform of ContainerApp Service Authentication/Authorization.
  final pulumi.Input<AuthPlatform>? platform;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ContainerAppsAuthConfigArgs].
  /// [authConfigName] Name of the Container App AuthConfig.
  /// [containerAppName] Name of the Container App.
  /// [encryptionSettings] The configuration settings of the secrets references of encryption key and signing key for ContainerApp Service Authentication/Authorization.
  /// [globalValidation] The configuration settings that determines the validation flow of users using  Service Authentication/Authorization.
  /// [httpSettings] The configuration settings of the HTTP requests for authentication and authorization requests made against ContainerApp Service Authentication/Authorization.
  /// [identityProviders] The configuration settings of each of the identity providers used to configure ContainerApp Service Authentication/Authorization.
  /// [login] The configuration settings of the login flow of users using ContainerApp Service Authentication/Authorization.
  /// [platform] The configuration settings of the platform of ContainerApp Service Authentication/Authorization.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ContainerAppsAuthConfigArgs({
    pulumi.Output<String>? authConfigName,
    required pulumi.Output<String> containerAppName,
    pulumi.Output<EncryptionSettings>? encryptionSettings,
    pulumi.Output<GlobalValidation>? globalValidation,
    pulumi.Output<HttpSettings>? httpSettings,
    pulumi.Output<IdentityProviders>? identityProviders,
    pulumi.Output<Login>? login,
    pulumi.Output<AuthPlatform>? platform,
    required pulumi.Output<String> resourceGroupName,
  }) :
      authConfigName = pulumi.Input.asOptionalInput<String>(authConfigName),
      containerAppName = pulumi.Input.asInput<String>(containerAppName),
      encryptionSettings = pulumi.Input.asOptionalInput<EncryptionSettings>(encryptionSettings),
      globalValidation = pulumi.Input.asOptionalInput<GlobalValidation>(globalValidation),
      httpSettings = pulumi.Input.asOptionalInput<HttpSettings>(httpSettings),
      identityProviders = pulumi.Input.asOptionalInput<IdentityProviders>(identityProviders),
      login = pulumi.Input.asOptionalInput<Login>(login),
      platform = pulumi.Input.asOptionalInput<AuthPlatform>(platform),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authConfigName': ?authConfigName,
      'containerAppName': containerAppName,
      'encryptionSettings': ?pulumi.Input.mapOptionalInputValue<EncryptionSettings, Map<String, dynamic>>(encryptionSettings, (value) => value.toMap()),
      'globalValidation': ?pulumi.Input.mapOptionalInputValue<GlobalValidation, Map<String, dynamic>>(globalValidation, (value) => value.toMap()),
      'httpSettings': ?pulumi.Input.mapOptionalInputValue<HttpSettings, Map<String, dynamic>>(httpSettings, (value) => value.toMap()),
      'identityProviders': ?pulumi.Input.mapOptionalInputValue<IdentityProviders, Map<String, dynamic>>(identityProviders, (value) => value.toMap()),
      'login': ?pulumi.Input.mapOptionalInputValue<Login, Map<String, dynamic>>(login, (value) => value.toMap()),
      'platform': ?pulumi.Input.mapOptionalInputValue<AuthPlatform, Map<String, dynamic>>(platform, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ContainerAppsAuthConfigArgs.fromMap(Map<String, dynamic> map) {
    return ContainerAppsAuthConfigArgs(
      authConfigName: map['authConfigName'] == null ? null : pulumi.Output.create<String>(map['authConfigName'] as String),
      containerAppName: pulumi.Output.create<String>(map['containerAppName'] as String),
      encryptionSettings: map['encryptionSettings'] == null ? null : pulumi.Output.create<EncryptionSettings>(EncryptionSettings.fromMap((map['encryptionSettings'] as Map).cast<String, dynamic>())),
      globalValidation: map['globalValidation'] == null ? null : pulumi.Output.create<GlobalValidation>(GlobalValidation.fromMap((map['globalValidation'] as Map).cast<String, dynamic>())),
      httpSettings: map['httpSettings'] == null ? null : pulumi.Output.create<HttpSettings>(HttpSettings.fromMap((map['httpSettings'] as Map).cast<String, dynamic>())),
      identityProviders: map['identityProviders'] == null ? null : pulumi.Output.create<IdentityProviders>(IdentityProviders.fromMap((map['identityProviders'] as Map).cast<String, dynamic>())),
      login: map['login'] == null ? null : pulumi.Output.create<Login>(Login.fromMap((map['login'] as Map).cast<String, dynamic>())),
      platform: map['platform'] == null ? null : pulumi.Output.create<AuthPlatform>(AuthPlatform.fromMap((map['platform'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

