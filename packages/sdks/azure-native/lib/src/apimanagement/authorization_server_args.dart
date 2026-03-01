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
  AuthorizationServerArgs({
    required pulumi.Output<String> authorizationEndpoint,
    pulumi.Output<List<AuthorizationMethod>>? authorizationMethods,
    pulumi.Output<String>? authsid,
    pulumi.Output<List<String>>? bearerTokenSendingMethods,
    pulumi.Output<List<String>>? clientAuthenticationMethod,
    required pulumi.Output<String> clientId,
    required pulumi.Output<String> clientRegistrationEndpoint,
    pulumi.Output<String>? clientSecret,
    pulumi.Output<String>? defaultScope,
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    required pulumi.Output<List<String>> grantTypes,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? resourceOwnerPassword,
    pulumi.Output<String>? resourceOwnerUsername,
    required pulumi.Output<String> serviceName,
    pulumi.Output<bool>? supportState,
    pulumi.Output<List<TokenBodyParameterContract>>? tokenBodyParameters,
    pulumi.Output<String>? tokenEndpoint,
    pulumi.Output<bool>? useInApiDocumentation,
    pulumi.Output<bool>? useInTestConsole,
  }) :
      authorizationEndpoint = pulumi.Input.asInput<String>(authorizationEndpoint),
      authorizationMethods = pulumi.Input.asOptionalInput<List<AuthorizationMethod>>(authorizationMethods),
      authsid = pulumi.Input.asOptionalInput<String>(authsid),
      bearerTokenSendingMethods = pulumi.Input.asOptionalInput<List<String>>(bearerTokenSendingMethods),
      clientAuthenticationMethod = pulumi.Input.asOptionalInput<List<String>>(clientAuthenticationMethod),
      clientId = pulumi.Input.asInput<String>(clientId),
      clientRegistrationEndpoint = pulumi.Input.asInput<String>(clientRegistrationEndpoint),
      clientSecret = pulumi.Input.asOptionalInput<String>(clientSecret),
      defaultScope = pulumi.Input.asOptionalInput<String>(defaultScope),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      grantTypes = pulumi.Input.asInput<List<String>>(grantTypes),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceOwnerPassword = pulumi.Input.asOptionalInput<String>(resourceOwnerPassword),
      resourceOwnerUsername = pulumi.Input.asOptionalInput<String>(resourceOwnerUsername),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      supportState = pulumi.Input.asOptionalInput<bool>(supportState),
      tokenBodyParameters = pulumi.Input.asOptionalInput<List<TokenBodyParameterContract>>(tokenBodyParameters),
      tokenEndpoint = pulumi.Input.asOptionalInput<String>(tokenEndpoint),
      useInApiDocumentation = pulumi.Input.asOptionalInput<bool>(useInApiDocumentation),
      useInTestConsole = pulumi.Input.asOptionalInput<bool>(useInTestConsole);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationEndpoint': authorizationEndpoint,
      'authorizationMethods': ?pulumi.Input.mapOptionalInputValue<List<AuthorizationMethod>, List<String>>(authorizationMethods, (value) => pulumi.Input.encodeList<AuthorizationMethod, String>(value, (value) => value.value)),
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
      authorizationEndpoint: pulumi.Output.create<String>(map['authorizationEndpoint'] as String),
      authorizationMethods: map['authorizationMethods'] == null ? null : pulumi.Output.create<List<AuthorizationMethod>>(pulumi.Input.decodeList<AuthorizationMethod>(map['authorizationMethods'], (value) => AuthorizationMethod.fromValue(value as String))),
      authsid: map['authsid'] == null ? null : pulumi.Output.create<String>(map['authsid'] as String),
      bearerTokenSendingMethods: map['bearerTokenSendingMethods'] == null ? null : pulumi.Output.create<List<String>>((map['bearerTokenSendingMethods'] as List).cast<String>()),
      clientAuthenticationMethod: map['clientAuthenticationMethod'] == null ? null : pulumi.Output.create<List<String>>((map['clientAuthenticationMethod'] as List).cast<String>()),
      clientId: pulumi.Output.create<String>(map['clientId'] as String),
      clientRegistrationEndpoint: pulumi.Output.create<String>(map['clientRegistrationEndpoint'] as String),
      clientSecret: map['clientSecret'] == null ? null : pulumi.Output.create<String>(map['clientSecret'] as String),
      defaultScope: map['defaultScope'] == null ? null : pulumi.Output.create<String>(map['defaultScope'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      grantTypes: pulumi.Output.create<List<String>>((map['grantTypes'] as List).cast<String>()),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceOwnerPassword: map['resourceOwnerPassword'] == null ? null : pulumi.Output.create<String>(map['resourceOwnerPassword'] as String),
      resourceOwnerUsername: map['resourceOwnerUsername'] == null ? null : pulumi.Output.create<String>(map['resourceOwnerUsername'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      supportState: map['supportState'] == null ? null : pulumi.Output.create<bool>(map['supportState'] as bool),
      tokenBodyParameters: map['tokenBodyParameters'] == null ? null : pulumi.Output.create<List<TokenBodyParameterContract>>(pulumi.Input.decodeList<TokenBodyParameterContract>(map['tokenBodyParameters'], (value) => TokenBodyParameterContract.fromMap((value as Map).cast<String, dynamic>()))),
      tokenEndpoint: map['tokenEndpoint'] == null ? null : pulumi.Output.create<String>(map['tokenEndpoint'] as String),
      useInApiDocumentation: map['useInApiDocumentation'] == null ? null : pulumi.Output.create<bool>(map['useInApiDocumentation'] as bool),
      useInTestConsole: map['useInTestConsole'] == null ? null : pulumi.Output.create<bool>(map['useInTestConsole'] as bool),
    );
  }
}

