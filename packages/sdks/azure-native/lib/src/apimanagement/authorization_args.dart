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
    pulumi.Output<String>? authorizationId,
    required pulumi.Output<String> authorizationProviderId,
    pulumi.Output<String>? authorizationType,
    pulumi.Output<AuthorizationError>? error,
    pulumi.Output<String>? oAuth2GrantType,
    pulumi.Output<Map<String, String>>? parameters,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
    pulumi.Output<String>? status,
  }) :
      authorizationId = pulumi.Input.asOptionalInput<String>(authorizationId),
      authorizationProviderId = pulumi.Input.asInput<String>(authorizationProviderId),
      authorizationType = pulumi.Input.asOptionalInput<String>(authorizationType),
      error = pulumi.Input.asOptionalInput<AuthorizationError>(error),
      oAuth2GrantType = pulumi.Input.asOptionalInput<String>(oAuth2GrantType),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      authorizationId: map['authorizationId'] == null ? null : pulumi.Output.create<String>(map['authorizationId'] as String),
      authorizationProviderId: pulumi.Output.create<String>(map['authorizationProviderId'] as String),
      authorizationType: map['authorizationType'] == null ? null : pulumi.Output.create<String>(map['authorizationType'] as String),
      error: map['error'] == null ? null : pulumi.Output.create<AuthorizationError>(AuthorizationError.fromMap((map['error'] as Map).cast<String, dynamic>())),
      oAuth2GrantType: map['oAuth2GrantType'] == null ? null : pulumi.Output.create<String>(map['oAuth2GrantType'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

