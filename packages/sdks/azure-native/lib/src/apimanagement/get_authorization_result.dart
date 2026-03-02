// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_error_response.dart';

/// Result data returned by getAuthorization.
class GetAuthorizationResult {
  /// Authorization type options
  final String? authorizationType;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Authorization error details.
  final AuthorizationErrorResponse? error;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// OAuth2 grant type options
  final String? oAuth2GrantType;
  /// Authorization parameters
  final Map<String, String>? parameters;
  /// Status of the Authorization
  final String? status;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
  GetAuthorizationResult({
    this.authorizationType,
    required this.azureApiVersion,
    this.error,
    required this.id,
    required this.name,
    this.oAuth2GrantType,
    this.parameters,
    this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationType': ?authorizationType,
      'azureApiVersion': azureApiVersion,
      'error': ?error == null ? null : error!.toMap(),
      'id': id,
      'name': name,
      'oAuth2GrantType': ?oAuth2GrantType,
      'parameters': ?parameters,
      'status': ?status,
      'type': type,
    };
  }

  factory GetAuthorizationResult.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationResult(
      authorizationType: map['authorizationType'] == null ? null : map['authorizationType']! as String,
      azureApiVersion: map['azureApiVersion'] as String,
      error: map['error'] == null ? null : AuthorizationErrorResponse.fromMap((map['error']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      name: map['name'] as String,
      oAuth2GrantType: map['oAuth2GrantType'] == null ? null : map['oAuth2GrantType']! as String,
      parameters: map['parameters'] == null ? null : (map['parameters']! as Map).cast<String, String>(),
      status: map['status'] == null ? null : map['status']! as String,
      type: map['type'] as String,
    );
  }
}

