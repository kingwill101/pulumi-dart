import 'package:pulumi/pulumi.dart';
import '../api_cors_configuration/api_cors_configuration.dart';
import 'api_args.dart';

/// Manages an Amazon API Gateway Version 2 API.
///
/// > **Note:** Amazon API Gateway Version 2 resources are used for creating and deploying WebSocket and HTTP APIs. To create and deploy REST APIs, use Amazon API Gateway Version 1 resources.
///
/// ## Example Usage
///
/// ### Basic WebSocket API
///
///
///
/// ### Basic HTTP API
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigatewayv2.Api` using the API identifier. For example:
///
/// ```sh
/// $ pulumi import aws:apigatewayv2/api:Api example aabbccddee
/// ```
class Api extends CustomResource {
  /// URI of the API, of the form `https://{api-id}.execute-api.{region}.amazonaws.com` for HTTP APIs and `wss://{api-id}.execute-api.{region}.amazonaws.com` for WebSocket APIs.
  late final Output<String> apiEndpoint;

  /// An [API key selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions).
  /// Valid values: `$context.authorizer.usageIdentifierKey`, `$request.header.x-api-key`. Defaults to `$request.header.x-api-key`.
  /// Applicable for WebSocket APIs.
  late final Output<String?> apiKeySelectionExpression;

  /// ARN of the API.
  late final Output<String> arn;

  /// An OpenAPI specification that defines the set of routes and integrations to create as part of the HTTP APIs. Supported only for HTTP APIs.
  late final Output<String?> body;

  /// Cross-origin resource sharing (CORS) [configuration](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html). Applicable for HTTP APIs.
  late final Output<ApiCorsConfiguration?> corsConfiguration;

  /// Part of _quick create_. Specifies any credentials required for the integration. Applicable for HTTP APIs.
  late final Output<String?> credentialsArn;

  /// Description of the API. Must be less than or equal to 1024 characters in length.
  late final Output<String?> description;

  /// Whether clients can invoke the API by using the default `execute-api` endpoint.
  /// By default, clients can invoke the API with the default `{api_id}.execute-api.{region}.amazonaws.com endpoint`.
  /// To require that clients use a custom domain name to invoke the API, disable the default endpoint.
  late final Output<bool?> disableExecuteApiEndpoint;

  /// ARN prefix to be used in an `aws.lambda.Permission`'s `source_arn` attribute
  /// or in an `aws.iam.Policy` to authorize access to the [`@connections` API](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-how-to-call-websocket-api-connections.html).
  /// See the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-control-access-iam.html) for details.
  late final Output<String> executionArn;

  /// Whether warnings should return an error while API Gateway is creating or updating the resource using an OpenAPI specification. Defaults to `false`. Applicable for HTTP APIs.
  late final Output<bool?> failOnWarnings;

  /// The IP address types that can invoke the API. Valid values: `ipv4`, `dualstack`. Use `ipv4` to allow only IPv4 addresses to invoke your API, or use `dualstack` to allow both IPv4 and IPv6 addresses to invoke your API. Defaults to `ipv4`.
  late final Output<String> ipAddressType;

  /// Name of the API. Must be less than or equal to 128 characters in length.
  late final Output<String> name;

  /// API protocol. Valid values: `HTTP`, `WEBSOCKET`.
  late final Output<String> protocolType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Part of _quick create_. Specifies any [route key](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-routes.html). Applicable for HTTP APIs.
  late final Output<String?> routeKey;

  /// The [route selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-route-selection-expressions) for the API.
  /// Defaults to `$request.method $request.path`.
  late final Output<String?> routeSelectionExpression;

  /// Map of tags to assign to the API. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Part of _quick create_. Quick create produces an API with an integration, a default catch-all route, and a default stage which is configured to automatically deploy changes.
  /// For HTTP integrations, specify a fully qualified URL. For Lambda integrations, specify a function ARN.
  /// The type of the integration will be `HTTP_PROXY` or `AWS_PROXY`, respectively. Applicable for HTTP APIs.
  late final Output<String?> target;

  /// Version identifier for the API. Must be between 1 and 64 characters in length.
  late final Output<String?> version;

  Api(
    String name, {
    ApiArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/api:Api',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiEndpoint = registerOutput<String>('apiEndpoint');
    this.apiKeySelectionExpression =
        registerOutput<String?>('apiKeySelectionExpression');
    this.arn = registerOutput<String>('arn');
    this.body = registerOutput<String?>('body');
    this.corsConfiguration =
        registerOutput<ApiCorsConfiguration?>('corsConfiguration');
    this.credentialsArn = registerOutput<String?>('credentialsArn');
    this.description = registerOutput<String?>('description');
    this.disableExecuteApiEndpoint =
        registerOutput<bool?>('disableExecuteApiEndpoint');
    this.executionArn = registerOutput<String>('executionArn');
    this.failOnWarnings = registerOutput<bool?>('failOnWarnings');
    this.ipAddressType = registerOutput<String>('ipAddressType');
    this.name = registerOutput<String>('name');
    this.protocolType = registerOutput<String>('protocolType');
    this.region = registerOutput<String>('region');
    this.routeKey = registerOutput<String?>('routeKey');
    this.routeSelectionExpression =
        registerOutput<String?>('routeSelectionExpression');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.target = registerOutput<String?>('target');
    this.version = registerOutput<String?>('version');
  }
}
