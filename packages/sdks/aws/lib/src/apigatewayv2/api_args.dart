// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_cors_configuration.dart';

/// {@template pulumi_apigatewayv2_api_api_args_doc}
/// The set of arguments for Api.
/// {@endtemplate}
/// {@macro pulumi_apigatewayv2_api_api_args_doc}
class ApiArgs {
  /// An [API key selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions).
  /// Valid values: `$context.authorizer.usageIdentifierKey`, `$request.header.x-api-key`. Defaults to `$request.header.x-api-key`.
  /// Applicable for WebSocket APIs.
  final pulumi.Input<String>? apiKeySelectionExpression;
  /// An OpenAPI specification that defines the set of routes and integrations to create as part of the HTTP APIs. Supported only for HTTP APIs.
  final pulumi.Input<String>? body;
  /// Cross-origin resource sharing (CORS) [configuration](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html). Applicable for HTTP APIs.
  final pulumi.Input<ApiCorsConfiguration>? corsConfiguration;
  /// Part of _quick create_. Specifies any credentials required for the integration. Applicable for HTTP APIs.
  final pulumi.Input<String>? credentialsArn;
  /// Description of the API. Must be less than or equal to 1024 characters in length.
  final pulumi.Input<String>? description;
  /// Whether clients can invoke the API by using the default `execute-api` endpoint.
  /// By default, clients can invoke the API with the default `{api_id}.execute-api.{region}.amazonaws.com endpoint`.
  /// To require that clients use a custom domain name to invoke the API, disable the default endpoint.
  final pulumi.Input<bool>? disableExecuteApiEndpoint;
  /// Whether warnings should return an error while API Gateway is creating or updating the resource using an OpenAPI specification. Defaults to `false`. Applicable for HTTP APIs.
  final pulumi.Input<bool>? failOnWarnings;
  /// The IP address types that can invoke the API. Valid values: `ipv4`, `dualstack`. Use `ipv4` to allow only IPv4 addresses to invoke your API, or use `dualstack` to allow both IPv4 and IPv6 addresses to invoke your API. Defaults to `ipv4`.
  final pulumi.Input<String>? ipAddressType;
  /// Name of the API. Must be less than or equal to 128 characters in length.
  final pulumi.Input<String>? name;
  /// API protocol. Valid values: `HTTP`, `WEBSOCKET`.
  final pulumi.Input<String> protocolType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Part of _quick create_. Specifies any [route key](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-routes.html). Applicable for HTTP APIs.
  final pulumi.Input<String>? routeKey;
  /// The [route selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-route-selection-expressions) for the API.
  /// Defaults to `$request.method $request.path`.
  final pulumi.Input<String>? routeSelectionExpression;
  /// Map of tags to assign to the API. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Part of _quick create_. Quick create produces an API with an integration, a default catch-all route, and a default stage which is configured to automatically deploy changes.
  /// For HTTP integrations, specify a fully qualified URL. For Lambda integrations, specify a function ARN.
  /// The type of the integration will be `HTTP_PROXY` or `AWS_PROXY`, respectively. Applicable for HTTP APIs.
  final pulumi.Input<String>? target;
  /// Version identifier for the API. Must be between 1 and 64 characters in length.
  final pulumi.Input<String>? version;

  /// Creates a new [ApiArgs].
  /// [apiKeySelectionExpression] An [API key selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions).
  /// [body] An OpenAPI specification that defines the set of routes and integrations to create as part of the HTTP APIs. Supported only for HTTP APIs.
  /// [corsConfiguration] Cross-origin resource sharing (CORS) [configuration](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html). Applicable for HTTP APIs.
  /// [credentialsArn] Part of _quick create_. Specifies any credentials required for the integration. Applicable for HTTP APIs.
  /// [description] Description of the API. Must be less than or equal to 1024 characters in length.
  /// [disableExecuteApiEndpoint] Whether clients can invoke the API by using the default `execute-api` endpoint.
  /// [failOnWarnings] Whether warnings should return an error while API Gateway is creating or updating the resource using an OpenAPI specification. Defaults to `false`. Applicable for HTTP APIs.
  /// [ipAddressType] The IP address types that can invoke the API. Valid values: `ipv4`, `dualstack`. Use `ipv4` to allow only IPv4 addresses to invoke your API, or use `dualstack` to allow both IPv4 and IPv6 addresses to invoke your API. Defaults to `ipv4`.
  /// [name] Name of the API. Must be less than or equal to 128 characters in length.
  /// [protocolType] API protocol. Valid values: `HTTP`, `WEBSOCKET`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeKey] Part of _quick create_. Specifies any [route key](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-routes.html). Applicable for HTTP APIs.
  /// [routeSelectionExpression] The [route selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-route-selection-expressions) for the API.
  /// [tags] Map of tags to assign to the API. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [target] Part of _quick create_. Quick create produces an API with an integration, a default catch-all route, and a default stage which is configured to automatically deploy changes.
  /// [version] Version identifier for the API. Must be between 1 and 64 characters in length.
  ApiArgs({
    this.apiKeySelectionExpression,
    this.body,
    this.corsConfiguration,
    this.credentialsArn,
    this.description,
    this.disableExecuteApiEndpoint,
    this.failOnWarnings,
    this.ipAddressType,
    this.name,
    required this.protocolType,
    this.region,
    this.routeKey,
    this.routeSelectionExpression,
    this.tags,
    this.target,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeySelectionExpression': ?apiKeySelectionExpression,
      'body': ?body,
      'corsConfiguration': ?pulumi.Input.mapOptionalInputValue<ApiCorsConfiguration, Map<String, dynamic>>(corsConfiguration, (value) => value.toMap()),
      'credentialsArn': ?credentialsArn,
      'description': ?description,
      'disableExecuteApiEndpoint': ?disableExecuteApiEndpoint,
      'failOnWarnings': ?failOnWarnings,
      'ipAddressType': ?ipAddressType,
      'name': ?name,
      'protocolType': protocolType,
      'region': ?region,
      'routeKey': ?routeKey,
      'routeSelectionExpression': ?routeSelectionExpression,
      'tags': ?tags,
      'target': ?target,
      'version': ?version,
    };
  }

  factory ApiArgs.fromMap(Map<String, dynamic> map) {
    return ApiArgs(
      apiKeySelectionExpression: map['apiKeySelectionExpression'] == null ? null : (map['apiKeySelectionExpression'] as String).input(),
      body: map['body'] == null ? null : (map['body'] as String).input(),
      corsConfiguration: map['corsConfiguration'] == null ? null : (ApiCorsConfiguration.fromMap((map['corsConfiguration'] as Map).cast<String, dynamic>())).input(),
      credentialsArn: map['credentialsArn'] == null ? null : (map['credentialsArn'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      disableExecuteApiEndpoint: map['disableExecuteApiEndpoint'] == null ? null : (map['disableExecuteApiEndpoint'] as bool).input(),
      failOnWarnings: map['failOnWarnings'] == null ? null : (map['failOnWarnings'] as bool).input(),
      ipAddressType: map['ipAddressType'] == null ? null : (map['ipAddressType'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      protocolType: (map['protocolType'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      routeKey: map['routeKey'] == null ? null : (map['routeKey'] as String).input(),
      routeSelectionExpression: map['routeSelectionExpression'] == null ? null : (map['routeSelectionExpression'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      target: map['target'] == null ? null : (map['target'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

