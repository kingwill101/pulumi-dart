// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_provider_oauth2_settings_response.dart';

/// Result data returned by getAuthorizationProvider.
class GetAuthorizationProviderResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Authorization Provider name. Must be 1 to 300 characters long.
  final String? displayName;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Identity provider name. Must be 1 to 300 characters long.
  final String? identityProvider;
  /// The name of the resource
  final String name;
  /// OAuth2 settings
  final AuthorizationProviderOAuth2SettingsResponse? oauth2;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetAuthorizationProviderResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [displayName] Authorization Provider name. Must be 1 to 300 characters long.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identityProvider] Identity provider name. Must be 1 to 300 characters long.
  /// [name] The name of the resource
  /// [oauth2] OAuth2 settings
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetAuthorizationProviderResult({
    required this.azureApiVersion,
    this.displayName,
    required this.id,
    this.identityProvider,
    required this.name,
    this.oauth2,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'displayName': ?displayName,
      'id': id,
      'identityProvider': ?identityProvider,
      'name': name,
      'oauth2': ?oauth2?.toMap(),
      'type': type,
    };
  }

  factory GetAuthorizationProviderResult.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationProviderResult(
      azureApiVersion: map['azureApiVersion'] as String,
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      identityProvider: (() { final guardedValue = map['identityProvider']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      oauth2: (() { final guardedValue = map['oauth2']; if (guardedValue == null) return null; return AuthorizationProviderOAuth2SettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: map['type'] as String,
    );
  }
}
