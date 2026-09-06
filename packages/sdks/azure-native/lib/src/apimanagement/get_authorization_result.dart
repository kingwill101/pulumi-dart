// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_error_response.dart';

/// Result data returned by getAuthorization.
class GetAuthorizationResult {
  /// Authorization type options
  final String? authorizationType;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Authorization error details.
  final AuthorizationErrorResponse? error;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// OAuth2 grant type options
  final String? oAuth2GrantType;
  /// Authorization parameters
  final Map<String, String>? parameters;
  /// Status of the Authorization
  final String? status;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetAuthorizationResult].
  /// [authorizationType] Authorization type options
  /// [azureApiVersion] The Azure API version of the resource.
  /// [error] Authorization error details.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [oAuth2GrantType] OAuth2 grant type options
  /// [parameters] Authorization parameters
  /// [status] Status of the Authorization
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetAuthorizationResult({
    this.authorizationType,
    this.azureApiVersion,
    this.error,
    this.id,
    this.name,
    this.oAuth2GrantType,
    this.parameters,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationType': ?authorizationType,
      'azureApiVersion': ?azureApiVersion,
      'error': ?error?.toMap(),
      'id': ?id,
      'name': ?name,
      'oAuth2GrantType': ?oAuth2GrantType,
      'parameters': ?parameters,
      'status': ?status,
      'type': ?type,
    };
  }

  factory GetAuthorizationResult.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationResult(
      authorizationType: (() { final guardedValue = map['authorizationType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return AuthorizationErrorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      oAuth2GrantType: (() { final guardedValue = map['oAuth2GrantType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
