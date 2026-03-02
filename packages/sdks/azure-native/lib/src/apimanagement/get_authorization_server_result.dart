// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'token_body_parameter_contract_response.dart';

/// Result data returned by getAuthorizationServer.
class GetAuthorizationServerResult {
  /// OAuth authorization endpoint. See http://tools.ietf.org/html/rfc6749#section-3.2.
  final String authorizationEndpoint;
  /// HTTP verbs supported by the authorization endpoint. GET must be always present. POST is optional.
  final List<String>? authorizationMethods;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Specifies the mechanism by which access token is passed to the API.
  final List<String>? bearerTokenSendingMethods;
  /// Method of authentication supported by the token endpoint of this authorization server. Possible values are Basic and/or Body. When Body is specified, client credentials and other parameters are passed within the request body in the application/x-www-form-urlencoded format.
  final List<String>? clientAuthenticationMethod;
  /// Client or app id registered with this authorization server.
  final String clientId;
  /// Optional reference to a page where client or app registration for this authorization server is performed. Contains absolute URL to entity being referenced.
  final String clientRegistrationEndpoint;
  /// Client or app secret registered with this authorization server. This property will not be filled on 'GET' operations! Use '/listSecrets' POST request to get the value.
  final String? clientSecret;
  /// Access token scope that is going to be requested by default. Can be overridden at the API level. Should be provided in the form of a string containing space-delimited values.
  final String? defaultScope;
  /// Description of the authorization server. Can contain HTML formatting tags.
  final String? description;
  /// User-friendly authorization server name.
  final String displayName;
  /// Form of an authorization grant, which the client uses to request the access token.
  final List<String> grantTypes;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// Can be optionally specified when resource owner password grant type is supported by this authorization server. Default resource owner password.
  final String? resourceOwnerPassword;
  /// Can be optionally specified when resource owner password grant type is supported by this authorization server. Default resource owner username.
  final String? resourceOwnerUsername;
  /// If true, authorization server will include state parameter from the authorization request to its response. Client may use state parameter to raise protocol security.
  final bool? supportState;
  /// Additional parameters required by the token endpoint of this authorization server represented as an array of JSON objects with name and value string properties, i.e. {"name" : "name value", "value": "a value"}.
  final List<TokenBodyParameterContractResponse>? tokenBodyParameters;
  /// OAuth token endpoint. Contains absolute URI to entity being referenced.
  final String? tokenEndpoint;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// If true, the authorization server will be used in the API documentation in the developer portal. False by default if no value is provided.
  final bool? useInApiDocumentation;
  /// If true, the authorization server may be used in the developer portal test console. True by default if no value is provided.
  final bool? useInTestConsole;

  /// Creates a new [GetAuthorizationServerResult].
  /// [authorizationEndpoint] OAuth authorization endpoint. See http://tools.ietf.org/html/rfc6749#section-3.2.
  /// [authorizationMethods] HTTP verbs supported by the authorization endpoint. GET must be always present. POST is optional.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [bearerTokenSendingMethods] Specifies the mechanism by which access token is passed to the API.
  /// [clientAuthenticationMethod] Method of authentication supported by the token endpoint of this authorization server. Possible values are Basic and/or Body. When Body is specified, client credentials and other parameters are passed within the request body in the application/x-www-form-urlencoded format.
  /// [clientId] Client or app id registered with this authorization server.
  /// [clientRegistrationEndpoint] Optional reference to a page where client or app registration for this authorization server is performed. Contains absolute URL to entity being referenced.
  /// [clientSecret] Client or app secret registered with this authorization server. This property will not be filled on 'GET' operations! Use '/listSecrets' POST request to get the value.
  /// [defaultScope] Access token scope that is going to be requested by default. Can be overridden at the API level. Should be provided in the form of a string containing space-delimited values.
  /// [description] Description of the authorization server. Can contain HTML formatting tags.
  /// [displayName] User-friendly authorization server name.
  /// [grantTypes] Form of an authorization grant, which the client uses to request the access token.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [resourceOwnerPassword] Can be optionally specified when resource owner password grant type is supported by this authorization server. Default resource owner password.
  /// [resourceOwnerUsername] Can be optionally specified when resource owner password grant type is supported by this authorization server. Default resource owner username.
  /// [supportState] If true, authorization server will include state parameter from the authorization request to its response. Client may use state parameter to raise protocol security.
  /// [tokenBodyParameters] Additional parameters required by the token endpoint of this authorization server represented as an array of JSON objects with name and value string properties, i.e. {"name" : "name value", "value": "a value"}.
  /// [tokenEndpoint] OAuth token endpoint. Contains absolute URI to entity being referenced.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [useInApiDocumentation] If true, the authorization server will be used in the API documentation in the developer portal. False by default if no value is provided.
  /// [useInTestConsole] If true, the authorization server may be used in the developer portal test console. True by default if no value is provided.
  GetAuthorizationServerResult({
    required this.authorizationEndpoint,
    this.authorizationMethods,
    required this.azureApiVersion,
    this.bearerTokenSendingMethods,
    this.clientAuthenticationMethod,
    required this.clientId,
    required this.clientRegistrationEndpoint,
    this.clientSecret,
    this.defaultScope,
    this.description,
    required this.displayName,
    required this.grantTypes,
    required this.id,
    required this.name,
    this.resourceOwnerPassword,
    this.resourceOwnerUsername,
    this.supportState,
    this.tokenBodyParameters,
    this.tokenEndpoint,
    required this.type,
    this.useInApiDocumentation,
    this.useInTestConsole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationEndpoint': authorizationEndpoint,
      'authorizationMethods': ?authorizationMethods,
      'azureApiVersion': azureApiVersion,
      'bearerTokenSendingMethods': ?bearerTokenSendingMethods,
      'clientAuthenticationMethod': ?clientAuthenticationMethod,
      'clientId': clientId,
      'clientRegistrationEndpoint': clientRegistrationEndpoint,
      'clientSecret': ?clientSecret,
      'defaultScope': ?defaultScope,
      'description': ?description,
      'displayName': displayName,
      'grantTypes': grantTypes,
      'id': id,
      'name': name,
      'resourceOwnerPassword': ?resourceOwnerPassword,
      'resourceOwnerUsername': ?resourceOwnerUsername,
      'supportState': ?supportState,
      'tokenBodyParameters': ?tokenBodyParameters == null ? null : pulumi.Input.encodeList<TokenBodyParameterContractResponse, Map<String, dynamic>>(tokenBodyParameters!, (value) => value.toMap()),
      'tokenEndpoint': ?tokenEndpoint,
      'type': type,
      'useInApiDocumentation': ?useInApiDocumentation,
      'useInTestConsole': ?useInTestConsole,
    };
  }

  factory GetAuthorizationServerResult.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationServerResult(
      authorizationEndpoint: map['authorizationEndpoint'] as String,
      authorizationMethods: map['authorizationMethods'] == null ? null : (map['authorizationMethods']! as List).cast<String>(),
      azureApiVersion: map['azureApiVersion'] as String,
      bearerTokenSendingMethods: map['bearerTokenSendingMethods'] == null ? null : (map['bearerTokenSendingMethods']! as List).cast<String>(),
      clientAuthenticationMethod: map['clientAuthenticationMethod'] == null ? null : (map['clientAuthenticationMethod']! as List).cast<String>(),
      clientId: map['clientId'] as String,
      clientRegistrationEndpoint: map['clientRegistrationEndpoint'] as String,
      clientSecret: map['clientSecret'] == null ? null : map['clientSecret']! as String,
      defaultScope: map['defaultScope'] == null ? null : map['defaultScope']! as String,
      description: map['description'] == null ? null : map['description']! as String,
      displayName: map['displayName'] as String,
      grantTypes: (map['grantTypes'] as List).cast<String>(),
      id: map['id'] as String,
      name: map['name'] as String,
      resourceOwnerPassword: map['resourceOwnerPassword'] == null ? null : map['resourceOwnerPassword']! as String,
      resourceOwnerUsername: map['resourceOwnerUsername'] == null ? null : map['resourceOwnerUsername']! as String,
      supportState: map['supportState'] == null ? null : map['supportState']! as bool,
      tokenBodyParameters: map['tokenBodyParameters'] == null ? null : pulumi.Input.decodeList<TokenBodyParameterContractResponse>(map['tokenBodyParameters']!, (value) => TokenBodyParameterContractResponse.fromMap((value as Map).cast<String, dynamic>())),
      tokenEndpoint: map['tokenEndpoint'] == null ? null : map['tokenEndpoint']! as String,
      type: map['type'] as String,
      useInApiDocumentation: map['useInApiDocumentation'] == null ? null : map['useInApiDocumentation']! as bool,
      useInTestConsole: map['useInTestConsole'] == null ? null : map['useInTestConsole']! as bool,
    );
  }
}

