// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_cors_configuration.dart';

/// Input properties used for looking up and filtering Api resources.
class ApiState {
  /// URI of the API, of the form `https://{api-id}.execute-api.{region}.amazonaws.com` for HTTP APIs and `wss://{api-id}.execute-api.{region}.amazonaws.com` for WebSocket APIs.
  final pulumi.Input<String>? apiEndpoint;
  /// An [API key selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions).
  /// Valid values: `$context.authorizer.usageIdentifierKey`, `$request.header.x-api-key`. Defaults to `$request.header.x-api-key`.
  /// Applicable for WebSocket APIs.
  final pulumi.Input<String>? apiKeySelectionExpression;
  /// ARN of the API.
  final pulumi.Input<String>? arn;
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
  /// ARN prefix to be used in an `aws.lambda.Permission`'s `source_arn` attribute
  /// or in an `aws.iam.Policy` to authorize access to the [`@connections` API](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-how-to-call-websocket-api-connections.html).
  /// See the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-control-access-iam.html) for details.
  final pulumi.Input<String>? executionArn;
  /// Whether warnings should return an error while API Gateway is creating or updating the resource using an OpenAPI specification. Defaults to `false`. Applicable for HTTP APIs.
  final pulumi.Input<bool>? failOnWarnings;
  /// The IP address types that can invoke the API. Valid values: `ipv4`, `dualstack`. Use `ipv4` to allow only IPv4 addresses to invoke your API, or use `dualstack` to allow both IPv4 and IPv6 addresses to invoke your API. Defaults to `ipv4`.
  final pulumi.Input<String>? ipAddressType;
  /// Name of the API. Must be less than or equal to 128 characters in length.
  final pulumi.Input<String>? name;
  /// API protocol. Valid values: `HTTP`, `WEBSOCKET`.
  final pulumi.Input<String>? protocolType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Part of _quick create_. Specifies any [route key](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-routes.html). Applicable for HTTP APIs.
  final pulumi.Input<String>? routeKey;
  /// The [route selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-route-selection-expressions) for the API.
  /// Defaults to `$request.method $request.path`.
  final pulumi.Input<String>? routeSelectionExpression;
  /// Map of tags to assign to the API. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Part of _quick create_. Quick create produces an API with an integration, a default catch-all route, and a default stage which is configured to automatically deploy changes.
  /// For HTTP integrations, specify a fully qualified URL. For Lambda integrations, specify a function ARN.
  /// The type of the integration will be `HTTP_PROXY` or `AWS_PROXY`, respectively. Applicable for HTTP APIs.
  final pulumi.Input<String>? target;
  /// Version identifier for the API. Must be between 1 and 64 characters in length.
  final pulumi.Input<String>? version;

  /// Creates a new [ApiState].
  /// [apiEndpoint] URI of the API, of the form `https://{api-id}.execute-api.{region}.amazonaws.com` for HTTP APIs and `wss://{api-id}.execute-api.{region}.amazonaws.com` for WebSocket APIs.
  /// [apiKeySelectionExpression] An [API key selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions).
  /// [arn] ARN of the API.
  /// [body] An OpenAPI specification that defines the set of routes and integrations to create as part of the HTTP APIs. Supported only for HTTP APIs.
  /// [corsConfiguration] Cross-origin resource sharing (CORS) [configuration](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html). Applicable for HTTP APIs.
  /// [credentialsArn] Part of _quick create_. Specifies any credentials required for the integration. Applicable for HTTP APIs.
  /// [description] Description of the API. Must be less than or equal to 1024 characters in length.
  /// [disableExecuteApiEndpoint] Whether clients can invoke the API by using the default `execute-api` endpoint.
  /// [executionArn] ARN prefix to be used in an `aws.lambda.Permission`'s `source_arn` attribute
  /// [failOnWarnings] Whether warnings should return an error while API Gateway is creating or updating the resource using an OpenAPI specification. Defaults to `false`. Applicable for HTTP APIs.
  /// [ipAddressType] The IP address types that can invoke the API. Valid values: `ipv4`, `dualstack`. Use `ipv4` to allow only IPv4 addresses to invoke your API, or use `dualstack` to allow both IPv4 and IPv6 addresses to invoke your API. Defaults to `ipv4`.
  /// [name] Name of the API. Must be less than or equal to 128 characters in length.
  /// [protocolType] API protocol. Valid values: `HTTP`, `WEBSOCKET`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeKey] Part of _quick create_. Specifies any [route key](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-routes.html). Applicable for HTTP APIs.
  /// [routeSelectionExpression] The [route selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-route-selection-expressions) for the API.
  /// [tags] Map of tags to assign to the API. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [target] Part of _quick create_. Quick create produces an API with an integration, a default catch-all route, and a default stage which is configured to automatically deploy changes.
  /// [version] Version identifier for the API. Must be between 1 and 64 characters in length.
  ApiState({
    this.apiEndpoint,
    this.apiKeySelectionExpression,
    this.arn,
    this.body,
    this.corsConfiguration,
    this.credentialsArn,
    this.description,
    this.disableExecuteApiEndpoint,
    this.executionArn,
    this.failOnWarnings,
    this.ipAddressType,
    this.name,
    this.protocolType,
    this.region,
    this.routeKey,
    this.routeSelectionExpression,
    this.tags,
    this.tagsAll,
    this.target,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiEndpoint': ?apiEndpoint,
      'apiKeySelectionExpression': ?apiKeySelectionExpression,
      'arn': ?arn,
      'body': ?body,
      'corsConfiguration': ?pulumi.Input.mapOptionalInputValue<ApiCorsConfiguration, Map<String, dynamic>>(corsConfiguration, (value) => value.toMap()),
      'credentialsArn': ?credentialsArn,
      'description': ?description,
      'disableExecuteApiEndpoint': ?disableExecuteApiEndpoint,
      'executionArn': ?executionArn,
      'failOnWarnings': ?failOnWarnings,
      'ipAddressType': ?ipAddressType,
      'name': ?name,
      'protocolType': ?protocolType,
      'region': ?region,
      'routeKey': ?routeKey,
      'routeSelectionExpression': ?routeSelectionExpression,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'target': ?target,
      'version': ?version,
    };
  }

  factory ApiState.fromMap(Map<String, dynamic> map) {
    return ApiState(
      apiEndpoint: map['apiEndpoint'] == null ? null : ((map['apiEndpoint'] as String).input()).input(),
      apiKeySelectionExpression: map['apiKeySelectionExpression'] == null ? null : ((map['apiKeySelectionExpression'] as String).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      body: map['body'] == null ? null : ((map['body'] as String).input()).input(),
      corsConfiguration: map['corsConfiguration'] == null ? null : ((ApiCorsConfiguration.fromMap((map['corsConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      credentialsArn: map['credentialsArn'] == null ? null : ((map['credentialsArn'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      disableExecuteApiEndpoint: map['disableExecuteApiEndpoint'] == null ? null : ((map['disableExecuteApiEndpoint'] as bool).input()).input(),
      executionArn: map['executionArn'] == null ? null : ((map['executionArn'] as String).input()).input(),
      failOnWarnings: map['failOnWarnings'] == null ? null : ((map['failOnWarnings'] as bool).input()).input(),
      ipAddressType: map['ipAddressType'] == null ? null : ((map['ipAddressType'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      protocolType: map['protocolType'] == null ? null : ((map['protocolType'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      routeKey: map['routeKey'] == null ? null : ((map['routeKey'] as String).input()).input(),
      routeSelectionExpression: map['routeSelectionExpression'] == null ? null : ((map['routeSelectionExpression'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      target: map['target'] == null ? null : ((map['target'] as String).input()).input(),
      version: map['version'] == null ? null : ((map['version'] as String).input()).input(),
    );
  }
}

