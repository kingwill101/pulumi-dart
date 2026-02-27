// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../api_cors_configuration/api_cors_configuration.dart';

/// The set of arguments for Api.
class ApiArgs {
  /// An [API key selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions).
  /// Valid values: `$context.authorizer.usageIdentifierKey`, `$request.header.x-api-key`. Defaults to `$request.header.x-api-key`.
  /// Applicable for WebSocket APIs.
  final Input<String>? apiKeySelectionExpression;

  /// An OpenAPI specification that defines the set of routes and integrations to create as part of the HTTP APIs. Supported only for HTTP APIs.
  final Input<String>? body;

  /// Cross-origin resource sharing (CORS) [configuration](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html). Applicable for HTTP APIs.
  final Input<ApiCorsConfiguration>? corsConfiguration;

  /// Part of _quick create_. Specifies any credentials required for the integration. Applicable for HTTP APIs.
  final Input<String>? credentialsArn;

  /// Description of the API. Must be less than or equal to 1024 characters in length.
  final Input<String>? description;

  /// Whether clients can invoke the API by using the default `execute-api` endpoint.
  /// By default, clients can invoke the API with the default `{api_id}.execute-api.{region}.amazonaws.com endpoint`.
  /// To require that clients use a custom domain name to invoke the API, disable the default endpoint.
  final Input<bool>? disableExecuteApiEndpoint;

  /// Whether warnings should return an error while API Gateway is creating or updating the resource using an OpenAPI specification. Defaults to `false`. Applicable for HTTP APIs.
  final Input<bool>? failOnWarnings;

  /// The IP address types that can invoke the API. Valid values: `ipv4`, `dualstack`. Use `ipv4` to allow only IPv4 addresses to invoke your API, or use `dualstack` to allow both IPv4 and IPv6 addresses to invoke your API. Defaults to `ipv4`.
  final Input<String>? ipAddressType;

  /// Name of the API. Must be less than or equal to 128 characters in length.
  final Input<String>? name;

  /// API protocol. Valid values: `HTTP`, `WEBSOCKET`.
  final Input<String> protocolType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Part of _quick create_. Specifies any [route key](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-routes.html). Applicable for HTTP APIs.
  final Input<String>? routeKey;

  /// The [route selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-route-selection-expressions) for the API.
  /// Defaults to `$request.method $request.path`.
  final Input<String>? routeSelectionExpression;

  /// Map of tags to assign to the API. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Part of _quick create_. Quick create produces an API with an integration, a default catch-all route, and a default stage which is configured to automatically deploy changes.
  /// For HTTP integrations, specify a fully qualified URL. For Lambda integrations, specify a function ARN.
  /// The type of the integration will be `HTTP_PROXY` or `AWS_PROXY`, respectively. Applicable for HTTP APIs.
  final Input<String>? target;

  /// Version identifier for the API. Must be between 1 and 64 characters in length.
  final Input<String>? version;

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
    final map = <String, dynamic>{};
    final apiKeySelectionExpressionValue = apiKeySelectionExpression;
    if (apiKeySelectionExpressionValue != null) {
      map['apiKeySelectionExpression'] = apiKeySelectionExpressionValue;
    }
    final bodyValue = body;
    if (bodyValue != null) {
      map['body'] = bodyValue;
    }
    final corsConfigurationValue = corsConfiguration;
    if (corsConfigurationValue != null) {
      map['corsConfiguration'] = Input.mapOptionalInputValue<
              ApiCorsConfiguration, Map<String, dynamic>>(
          corsConfigurationValue, (value) => value.toMap());
    }
    final credentialsArnValue = credentialsArn;
    if (credentialsArnValue != null) {
      map['credentialsArn'] = credentialsArnValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disableExecuteApiEndpointValue = disableExecuteApiEndpoint;
    if (disableExecuteApiEndpointValue != null) {
      map['disableExecuteApiEndpoint'] = disableExecuteApiEndpointValue;
    }
    final failOnWarningsValue = failOnWarnings;
    if (failOnWarningsValue != null) {
      map['failOnWarnings'] = failOnWarningsValue;
    }
    final ipAddressTypeValue = ipAddressType;
    if (ipAddressTypeValue != null) {
      map['ipAddressType'] = ipAddressTypeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['protocolType'] = protocolType;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final routeKeyValue = routeKey;
    if (routeKeyValue != null) {
      map['routeKey'] = routeKeyValue;
    }
    final routeSelectionExpressionValue = routeSelectionExpression;
    if (routeSelectionExpressionValue != null) {
      map['routeSelectionExpression'] = routeSelectionExpressionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final targetValue = target;
    if (targetValue != null) {
      map['target'] = targetValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory ApiArgs.fromMap(Map<String, dynamic> map) {
    return ApiArgs(
      apiKeySelectionExpression:
          Input.asOptionalInput<String>(map['apiKeySelectionExpression']),
      body: Input.asOptionalInput<String>(map['body']),
      corsConfiguration:
          Input.asOptionalInput<ApiCorsConfiguration>(map['corsConfiguration']),
      credentialsArn: Input.asOptionalInput<String>(map['credentialsArn']),
      description: Input.asOptionalInput<String>(map['description']),
      disableExecuteApiEndpoint:
          Input.asOptionalInput<bool>(map['disableExecuteApiEndpoint']),
      failOnWarnings: Input.asOptionalInput<bool>(map['failOnWarnings']),
      ipAddressType: Input.asOptionalInput<String>(map['ipAddressType']),
      name: Input.asOptionalInput<String>(map['name']),
      protocolType: Input.asInput<String>(map['protocolType']),
      region: Input.asOptionalInput<String>(map['region']),
      routeKey: Input.asOptionalInput<String>(map['routeKey']),
      routeSelectionExpression:
          Input.asOptionalInput<String>(map['routeSelectionExpression']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      target: Input.asOptionalInput<String>(map['target']),
      version: Input.asOptionalInput<String>(map['version']),
    );
  }
}
