// ignore_for_file: unused_element, unnecessary_cast

import 'auth_platform_response.dart';
import 'encryption_settings_response.dart';
import 'global_validation_response.dart';
import 'http_settings_response.dart';
import 'identity_providers_response.dart';
import 'login_response.dart';
import 'system_data_response.dart';

/// Result data returned by getContainerAppsAuthConfig.
class GetContainerAppsAuthConfigResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The configuration settings of the secrets references of encryption key and signing key for ContainerApp Service Authentication/Authorization.
  final EncryptionSettingsResponse? encryptionSettings;
  /// The configuration settings that determines the validation flow of users using  Service Authentication/Authorization.
  final GlobalValidationResponse? globalValidation;
  /// The configuration settings of the HTTP requests for authentication and authorization requests made against ContainerApp Service Authentication/Authorization.
  final HttpSettingsResponse? httpSettings;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The configuration settings of each of the identity providers used to configure ContainerApp Service Authentication/Authorization.
  final IdentityProvidersResponse? identityProviders;
  /// The configuration settings of the login flow of users using ContainerApp Service Authentication/Authorization.
  final LoginResponse? login;
  /// The name of the resource
  final String name;
  /// The configuration settings of the platform of ContainerApp Service Authentication/Authorization.
  final AuthPlatformResponse? platform;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetContainerAppsAuthConfigResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [encryptionSettings] The configuration settings of the secrets references of encryption key and signing key for ContainerApp Service Authentication/Authorization.
  /// [globalValidation] The configuration settings that determines the validation flow of users using  Service Authentication/Authorization.
  /// [httpSettings] The configuration settings of the HTTP requests for authentication and authorization requests made against ContainerApp Service Authentication/Authorization.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identityProviders] The configuration settings of each of the identity providers used to configure ContainerApp Service Authentication/Authorization.
  /// [login] The configuration settings of the login flow of users using ContainerApp Service Authentication/Authorization.
  /// [name] The name of the resource
  /// [platform] The configuration settings of the platform of ContainerApp Service Authentication/Authorization.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetContainerAppsAuthConfigResult({
    required this.azureApiVersion,
    this.encryptionSettings,
    this.globalValidation,
    this.httpSettings,
    required this.id,
    this.identityProviders,
    this.login,
    required this.name,
    this.platform,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'encryptionSettings': ?encryptionSettings?.toMap(),
      'globalValidation': ?globalValidation?.toMap(),
      'httpSettings': ?httpSettings?.toMap(),
      'id': id,
      'identityProviders': ?identityProviders?.toMap(),
      'login': ?login?.toMap(),
      'name': name,
      'platform': ?platform?.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetContainerAppsAuthConfigResult.fromMap(Map<String, dynamic> map) {
    return GetContainerAppsAuthConfigResult(
      azureApiVersion: map['azureApiVersion'] as String,
      encryptionSettings: (() { final guardedValue = map['encryptionSettings']; if (guardedValue == null) return null; return EncryptionSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      globalValidation: (() { final guardedValue = map['globalValidation']; if (guardedValue == null) return null; return GlobalValidationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      httpSettings: (() { final guardedValue = map['httpSettings']; if (guardedValue == null) return null; return HttpSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      identityProviders: (() { final guardedValue = map['identityProviders']; if (guardedValue == null) return null; return IdentityProvidersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      login: (() { final guardedValue = map['login']; if (guardedValue == null) return null; return LoginResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: map['name'] as String,
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return AuthPlatformResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
