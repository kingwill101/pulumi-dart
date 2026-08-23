// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_method.dart';
import 'token_body_parameter_contract.dart';

/// {@template pulumi_apimanagement_authorization_server_args_doc}
/// The set of arguments for AuthorizationServer.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_authorization_server_args_doc}
class AuthorizationServerArgs {
  /// OAuth authorization endpoint. See http://tools.ietf.org/html/rfc6749#section-3.2.
  final pulumi.Input<String> authorizationEndpoint;
  /// HTTP verbs supported by the authorization endpoint. GET must be always present. POST is optional.
  final pulumi.Input<List<AuthorizationMethod>>? authorizationMethods;
  /// Identifier of the authorization server.
  final pulumi.Input<String>? authsid;
  /// Specifies the mechanism by which access token is passed to the API.
  final pulumi.Input<List<String>>? bearerTokenSendingMethods;
  /// Method of authentication supported by the token endpoint of this authorization server. Possible values are Basic and/or Body. When Body is specified, client credentials and other parameters are passed within the request body in the application/x-www-form-urlencoded format.
  final pulumi.Input<List<String>>? clientAuthenticationMethod;
  /// Client or app id registered with this authorization server.
  final pulumi.Input<String> clientId;
  /// Optional reference to a page where client or app registration for this authorization server is performed. Contains absolute URL to entity being referenced.
  final pulumi.Input<String> clientRegistrationEndpoint;
  /// Client or app secret registered with this authorization server. This property will not be filled on 'GET' operations! Use '/listSecrets' POST request to get the value.
  final pulumi.Input<String>? clientSecret;
  /// Access token scope that is going to be requested by default. Can be overridden at the API level. Should be provided in the form of a string containing space-delimited values.
  final pulumi.Input<String>? defaultScope;
  /// Description of the authorization server. Can contain HTML formatting tags.
  final pulumi.Input<String>? description;
  /// User-friendly authorization server name.
  final pulumi.Input<String> displayName;
  /// Form of an authorization grant, which the client uses to request the access token.
  final pulumi.Input<List<String>> grantTypes;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Can be optionally specified when resource owner password grant type is supported by this authorization server. Default resource owner password.
  final pulumi.Input<String>? resourceOwnerPassword;
  /// Can be optionally specified when resource owner password grant type is supported by this authorization server. Default resource owner username.
  final pulumi.Input<String>? resourceOwnerUsername;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// If true, authorization server will include state parameter from the authorization request to its response. Client may use state parameter to raise protocol security.
  final pulumi.Input<bool>? supportState;
  /// Additional parameters required by the token endpoint of this authorization server represented as an array of JSON objects with name and value string properties, i.e. {"name" : "name value", "value": "a value"}.
  final pulumi.Input<List<TokenBodyParameterContract>>? tokenBodyParameters;
  /// OAuth token endpoint. Contains absolute URI to entity being referenced.
  final pulumi.Input<String>? tokenEndpoint;
  /// If true, the authorization server will be used in the API documentation in the developer portal. False by default if no value is provided.
  final pulumi.Input<bool>? useInApiDocumentation;
  /// If true, the authorization server may be used in the developer portal test console. True by default if no value is provided.
  final pulumi.Input<bool>? useInTestConsole;

  /// Creates a new [AuthorizationServerArgs].
  /// [authorizationEndpoint] OAuth authorization endpoint. See http://tools.ietf.org/html/rfc6749#section-3.2.
  /// [authorizationMethods] HTTP verbs supported by the authorization endpoint. GET must be always present. POST is optional.
  /// [authsid] Identifier of the authorization server.
  /// [bearerTokenSendingMethods] Specifies the mechanism by which access token is passed to the API.
  /// [clientAuthenticationMethod] Method of authentication supported by the token endpoint of this authorization server. Possible values are Basic and/or Body. When Body is specified, client credentials and other parameters are passed within the request body in the application/x-www-form-urlencoded format.
  /// [clientId] Client or app id registered with this authorization server.
  /// [clientRegistrationEndpoint] Optional reference to a page where client or app registration for this authorization server is performed. Contains absolute URL to entity being referenced.
  /// [clientSecret] Client or app secret registered with this authorization server. This property will not be filled on 'GET' operations! Use '/listSecrets' POST request to get the value.
  /// [defaultScope] Access token scope that is going to be requested by default. Can be overridden at the API level. Should be provided in the form of a string containing space-delimited values.
  /// [description] Description of the authorization server. Can contain HTML formatting tags.
  /// [displayName] User-friendly authorization server name.
  /// [grantTypes] Form of an authorization grant, which the client uses to request the access token.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceOwnerPassword] Can be optionally specified when resource owner password grant type is supported by this authorization server. Default resource owner password.
  /// [resourceOwnerUsername] Can be optionally specified when resource owner password grant type is supported by this authorization server. Default resource owner username.
  /// [serviceName] The name of the API Management service.
  /// [supportState] If true, authorization server will include state parameter from the authorization request to its response. Client may use state parameter to raise protocol security.
  /// [tokenBodyParameters] Additional parameters required by the token endpoint of this authorization server represented as an array of JSON objects with name and value string properties, i.e. {"name" : "name value", "value": "a value"}.
  /// [tokenEndpoint] OAuth token endpoint. Contains absolute URI to entity being referenced.
  /// [useInApiDocumentation] If true, the authorization server will be used in the API documentation in the developer portal. False by default if no value is provided.
  /// [useInTestConsole] If true, the authorization server may be used in the developer portal test console. True by default if no value is provided.
  const AuthorizationServerArgs({
    required this.authorizationEndpoint,
    this.authorizationMethods,
    this.authsid,
    this.bearerTokenSendingMethods,
    this.clientAuthenticationMethod,
    required this.clientId,
    required this.clientRegistrationEndpoint,
    this.clientSecret,
    this.defaultScope,
    this.description,
    required this.displayName,
    required this.grantTypes,
    required this.resourceGroupName,
    this.resourceOwnerPassword,
    this.resourceOwnerUsername,
    required this.serviceName,
    this.supportState,
    this.tokenBodyParameters,
    this.tokenEndpoint,
    this.useInApiDocumentation,
    this.useInTestConsole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationEndpoint': authorizationEndpoint,
      'authorizationMethods': ?pulumi.Input.mapOptionalInputValue<List<AuthorizationMethod>, List<String>>(authorizationMethods, (value) => pulumi.Input.encodeList<AuthorizationMethod, String>(value, (value) => value.wireValue)),
      'authsid': ?authsid,
      'bearerTokenSendingMethods': ?bearerTokenSendingMethods,
      'clientAuthenticationMethod': ?clientAuthenticationMethod,
      'clientId': clientId,
      'clientRegistrationEndpoint': clientRegistrationEndpoint,
      'clientSecret': ?clientSecret,
      'defaultScope': ?defaultScope,
      'description': ?description,
      'displayName': displayName,
      'grantTypes': grantTypes,
      'resourceGroupName': resourceGroupName,
      'resourceOwnerPassword': ?resourceOwnerPassword,
      'resourceOwnerUsername': ?resourceOwnerUsername,
      'serviceName': serviceName,
      'supportState': ?supportState,
      'tokenBodyParameters': ?pulumi.Input.mapOptionalInputValue<List<TokenBodyParameterContract>, List<Map<String, dynamic>>>(tokenBodyParameters, (value) => pulumi.Input.encodeList<TokenBodyParameterContract, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tokenEndpoint': ?tokenEndpoint,
      'useInApiDocumentation': ?useInApiDocumentation,
      'useInTestConsole': ?useInTestConsole,
    };
  }

  factory AuthorizationServerArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizationServerArgs(
      authorizationEndpoint: pulumi.Input.fromValue(map['authorizationEndpoint'] as String),
      authorizationMethods: (() { final guardedValue = map['authorizationMethods']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthorizationMethod>(guardedValue, (value) => AuthorizationMethod.fromValue(value as String))); })(),
      authsid: (() { final guardedValue = map['authsid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bearerTokenSendingMethods: (() { final guardedValue = map['bearerTokenSendingMethods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      clientAuthenticationMethod: (() { final guardedValue = map['clientAuthenticationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientRegistrationEndpoint: pulumi.Input.fromValue(map['clientRegistrationEndpoint'] as String),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultScope: (() { final guardedValue = map['defaultScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      grantTypes: pulumi.Input.fromValue((map['grantTypes'] as List).cast<String>()),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceOwnerPassword: (() { final guardedValue = map['resourceOwnerPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceOwnerUsername: (() { final guardedValue = map['resourceOwnerUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      supportState: (() { final guardedValue = map['supportState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tokenBodyParameters: (() { final guardedValue = map['tokenBodyParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TokenBodyParameterContract>(guardedValue, (value) => TokenBodyParameterContract.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tokenEndpoint: (() { final guardedValue = map['tokenEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useInApiDocumentation: (() { final guardedValue = map['useInApiDocumentation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      useInTestConsole: (() { final guardedValue = map['useInTestConsole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
