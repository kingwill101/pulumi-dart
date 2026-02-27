import 'package:pulumi/pulumi.dart' as pulumi;
import '../integration_response_parameter/integration_response_parameter.dart';
import '../integration_tls_config/integration_tls_config_apigatewayv2.dart';
import 'integration_apigatewayv2_args.dart';

/// Manages an Amazon API Gateway Version 2 integration.
/// More information can be found in the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api.html).
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### Lambda Integration
///
///
///
/// ### AWS Service Integration
///
///
///
/// ### Private Integration
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigatewayv2.Integration` using the API identifier and integration identifier. For example:
///
/// ```sh
/// $ pulumi import aws:apigatewayv2/integration:Integration example aabbccddee/1122334
/// ```
///
/// > **Note:** The API Gateway managed integration created as part of [_quick_create_](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-basic-concept.html#apigateway-definition-quick-create) cannot be imported.
class IntegrationApigatewayv2 extends pulumi.CustomResource {
  /// API identifier.
  late final pulumi.Output<String> apiId;

  /// ID of the VPC link for a private integration. Supported only for HTTP APIs. Must be between 1 and 1024 characters in length.
  late final pulumi.Output<String?> connectionId;

  /// Type of the network connection to the integration endpoint. Valid values: `INTERNET`, `VPC_LINK`. Default is `INTERNET`.
  late final pulumi.Output<String?> connectionType;

  /// How to handle response payload content type conversions. Valid values: `CONVERT_TO_BINARY`, `CONVERT_TO_TEXT`. Supported only for WebSocket APIs.
  late final pulumi.Output<String?> contentHandlingStrategy;

  /// Credentials required for the integration, if any.
  late final pulumi.Output<String?> credentialsArn;

  /// Description of the integration.
  late final pulumi.Output<String?> description;

  /// Integration's HTTP method. Must be specified if `integration_type` is not `MOCK`.
  late final pulumi.Output<String?> integrationMethod;

  /// The [integration response selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-integration-response-selection-expressions) for the integration.
  late final pulumi.Output<String> integrationResponseSelectionExpression;

  /// AWS service action to invoke. Supported only for HTTP APIs when `integration_type` is `AWS_PROXY`. See the [AWS service integration reference](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html) documentation for supported values. Must be between 1 and 128 characters in length.
  late final pulumi.Output<String?> integrationSubtype;

  /// Integration type of an integration.
  /// Valid values: `AWS` (supported only for WebSocket APIs), `AWS_PROXY`, `HTTP` (supported only for WebSocket APIs), `HTTP_PROXY`, `MOCK` (supported only for WebSocket APIs). For an HTTP API private integration, use `HTTP_PROXY`.
  late final pulumi.Output<String> integrationType;

  /// URI of the Lambda function for a Lambda proxy integration, when `integration_type` is `AWS_PROXY`.
  /// For an `HTTP` integration, specify a fully-qualified URL. For an HTTP API private integration, specify the ARN of an Application Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map service.
  late final pulumi.Output<String?> integrationUri;

  /// Pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the `request_templates` attribute.
  /// Valid values: `WHEN_NO_MATCH`, `WHEN_NO_TEMPLATES`, `NEVER`. Default is `WHEN_NO_MATCH`. Supported only for WebSocket APIs.
  late final pulumi.Output<String?> passthroughBehavior;

  /// The [format of the payload](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-lambda.html#http-api-develop-integrations-lambda.proxy-format) sent to an integration. Valid values: `1.0`, `2.0`. Default is `1.0`.
  late final pulumi.Output<String?> payloadFormatVersion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend.
  /// For HTTP APIs with a specified `integration_subtype`, a key-value map specifying parameters that are passed to `AWS_PROXY` integrations.
  /// For HTTP APIs without a specified `integration_subtype`, a key-value map specifying how to transform HTTP requests before sending them to the backend.
  /// See the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html) for details.
  late final pulumi.Output<Map<String, String>?> requestParameters;

  /// Map of [Velocity](https://velocity.apache.org/) templates that are applied on the request payload based on the value of the Content-Type header sent by the client. Supported only for WebSocket APIs.
  late final pulumi.Output<Map<String, String>?> requestTemplates;

  /// Mappings to transform the HTTP response from a backend integration before returning the response to clients. Supported only for HTTP APIs.
  late final pulumi.Output<List<IntegrationResponseParameter>?>
      responseParameters;

  /// The [template selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-template-selection-expressions) for the integration.
  late final pulumi.Output<String?> templateSelectionExpression;

  /// Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for HTTP APIs.
  /// The default timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.
  /// this provider will only perform drift detection of its value when present in a configuration.
  late final pulumi.Output<int> timeoutMilliseconds;

  /// TLS configuration for a private integration. Supported only for HTTP APIs.
  late final pulumi.Output<IntegrationTlsConfigApigatewayv2?> tlsConfig;

  IntegrationApigatewayv2(
    String name, {
    IntegrationApigatewayv2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/integration:Integration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiId = registerOutput<String>('apiId');
    this.connectionId = registerOutput<String?>('connectionId');
    this.connectionType = registerOutput<String?>('connectionType');
    this.contentHandlingStrategy =
        registerOutput<String?>('contentHandlingStrategy');
    this.credentialsArn = registerOutput<String?>('credentialsArn');
    this.description = registerOutput<String?>('description');
    this.integrationMethod = registerOutput<String?>('integrationMethod');
    this.integrationResponseSelectionExpression =
        registerOutput<String>('integrationResponseSelectionExpression');
    this.integrationSubtype = registerOutput<String?>('integrationSubtype');
    this.integrationType = registerOutput<String>('integrationType');
    this.integrationUri = registerOutput<String?>('integrationUri');
    this.passthroughBehavior = registerOutput<String?>('passthroughBehavior');
    this.payloadFormatVersion = registerOutput<String?>('payloadFormatVersion');
    this.region = registerOutput<String>('region');
    this.requestParameters =
        registerOutput<Map<String, String>?>('requestParameters');
    this.requestTemplates =
        registerOutput<Map<String, String>?>('requestTemplates');
    this.responseParameters =
        registerOutput<List<IntegrationResponseParameter>?>(
            'responseParameters');
    this.templateSelectionExpression =
        registerOutput<String?>('templateSelectionExpression');
    this.timeoutMilliseconds = registerOutput<int>('timeoutMilliseconds');
    this.tlsConfig =
        registerOutput<IntegrationTlsConfigApigatewayv2?>('tlsConfig');
  }
}
