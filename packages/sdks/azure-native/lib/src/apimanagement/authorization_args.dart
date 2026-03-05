// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_error.dart';

/// {@template pulumi_apimanagement_authorization_args_doc}
/// The set of arguments for Authorization.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_authorization_args_doc}
class AuthorizationArgs {
  /// Identifier of the authorization.
  final pulumi.Input<String>? authorizationId;
  /// Identifier of the authorization provider.
  final pulumi.Input<String> authorizationProviderId;
  /// Authorization type options
  final pulumi.Input<String>? authorizationType;
  /// Authorization error details.
  final pulumi.Input<AuthorizationError>? error;
  /// OAuth2 grant type options
  final pulumi.Input<String>? oAuth2GrantType;
  /// Authorization parameters
  final pulumi.Input<Map<String, String>>? parameters;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Status of the Authorization
  final pulumi.Input<String>? status;

  /// Creates a new [AuthorizationArgs].
  /// [authorizationId] Identifier of the authorization.
  /// [authorizationProviderId] Identifier of the authorization provider.
  /// [authorizationType] Authorization type options
  /// [error] Authorization error details.
  /// [oAuth2GrantType] OAuth2 grant type options
  /// [parameters] Authorization parameters
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [status] Status of the Authorization
  AuthorizationArgs({
    this.authorizationId,
    required this.authorizationProviderId,
    this.authorizationType,
    this.error,
    this.oAuth2GrantType,
    this.parameters,
    required this.resourceGroupName,
    required this.serviceName,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationId': ?authorizationId,
      'authorizationProviderId': authorizationProviderId,
      'authorizationType': ?authorizationType,
      'error': ?pulumi.Input.mapOptionalInputValue<AuthorizationError, Map<String, dynamic>>(error, (value) => value.toMap()),
      'oAuth2GrantType': ?oAuth2GrantType,
      'parameters': ?parameters,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'status': ?status,
    };
  }

  factory AuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizationArgs(
      authorizationId: (() { final guardedValue = map['authorizationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizationProviderId: pulumi.Input.fromValue(map['authorizationProviderId'] as String),
      authorizationType: (() { final guardedValue = map['authorizationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthorizationError.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oAuth2GrantType: (() { final guardedValue = map['oAuth2GrantType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

