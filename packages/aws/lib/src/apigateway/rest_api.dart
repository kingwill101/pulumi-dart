import 'package:pulumi/pulumi.dart' as pulumi;
import 'rest_api_args.dart';
import 'rest_api_endpoint_configuration.dart';

/// Manages an API Gateway REST API. The REST API can be configured via [importing an OpenAPI specification](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api.html) in the `body` argument (with other arguments serving as overrides) or via other provider resources to manage the resources (`aws.apigateway.Resource` resource), methods (`aws.apigateway.Method` resource), integrations (`aws.apigateway.Integration` resource), etc. of the REST API. Once the REST API is configured, the `aws.apigateway.Deployment` resource can be used along with the `aws.apigateway.Stage` resource to publish the REST API.
///
/// > **Note:** Amazon API Gateway Version 1 resources are used for creating and deploying REST APIs. To create and deploy WebSocket and HTTP APIs, use Amazon API Gateway Version 2 resources.
///
/// !> **WARN:** When importing Open API Specifications with the `body` argument, by default the API Gateway REST API will be replaced with the Open API Specification thus removing any existing methods, resources, integrations, or endpoints. Endpoint mutations are asynchronous operations, and race conditions with DNS are possible. To overcome this limitation, use the `put_rest_api_mode` attribute and set it to `merge`.
///
/// ## Example Usage
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigateway.RestApi` using the REST API ID. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/restApi:RestApi example 12345abcde
/// ```
///
/// > **NOTE:** Resource import does not currently support the `body` attribute.
class RestApi extends pulumi.CustomResource {
  /// Source of the API key for requests. Valid values are `HEADER` (default) and `AUTHORIZER`. If importing an OpenAPI specification via the `body` argument, this corresponds to the [`x-amazon-apigateway-api-key-source` extension](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions-api-key-source.html). If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  late final pulumi.Output<String> apiKeySource;

  /// ARN
  late final pulumi.Output<String> arn;

  /// List of binary media types supported by the REST API. By default, the REST API supports only UTF-8-encoded text payloads. If importing an OpenAPI specification via the `body` argument, this corresponds to the [`x-amazon-apigateway-binary-media-types` extension](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions-binary-media-types.html). If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  late final pulumi.Output<List<String>> binaryMediaTypes;

  /// OpenAPI specification that defines the set of routes and integrations to create as part of the REST API. This configuration, and any updates to it, will replace all REST API configuration except values overridden in this resource configuration and other resource updates applied after this resource but before any `aws.apigateway.Deployment` creation. More information about REST API OpenAPI support can be found in the [API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api.html).
  late final pulumi.Output<String?> body;

  /// Creation date of the REST API
  late final pulumi.Output<String> createdDate;

  /// Description of the REST API. If importing an OpenAPI specification via the `body` argument, this corresponds to the `info.description` field. If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  late final pulumi.Output<String> description;

  /// Whether clients can invoke your API by using the default execute-api endpoint. By default, clients can invoke your API with the default https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint. Defaults to `false`. If importing an OpenAPI specification via the `body` argument, this corresponds to the [`x-amazon-apigateway-endpoint-configuration` extension `disableExecuteApiEndpoint` property](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions-endpoint-configuration.html). If the argument value is `true` and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  late final pulumi.Output<bool> disableExecuteApiEndpoint;

  /// Configuration block defining API endpoint configuration including endpoint type. Defined below.
  late final pulumi.Output<RestApiEndpointConfiguration> endpointConfiguration;

  /// Execution ARN part to be used in `lambda_permission`'s `source_arn`
  /// when allowing API Gateway to invoke a Lambda function,
  /// e.g., `arn:aws:execute-api:eu-west-2:123456789012:z4675bid1j`, which can be concatenated with allowed stage, method and resource path.
  late final pulumi.Output<String> executionArn;

  /// Whether warnings while API Gateway is creating or updating the resource should return an error or not. Defaults to `false`
  late final pulumi.Output<bool?> failOnWarnings;

  /// Minimum response size to compress for the REST API. String containing an integer value between `-1` and `10485760` (10MB). `-1` will disable an existing compression configuration, and all other values will enable compression with the configured size. New resources can simply omit this argument to disable compression, rather than setting the value to `-1`. If importing an OpenAPI specification via the `body` argument, this corresponds to the [`x-amazon-apigateway-minimum-compression-size` extension](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-openapi-minimum-compression-size.html). If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  late final pulumi.Output<String> minimumCompressionSize;

  /// Name of the REST API. If importing an OpenAPI specification via the `body` argument, this corresponds to the `info.title` field. If the argument value is different than the OpenAPI value, the argument value will override the OpenAPI value.
  late final pulumi.Output<String> name;

  /// Map of customizations for importing the specification in the `body` argument. For example, to exclude DocumentationParts from an imported API, set `ignore` equal to `documentation`. Additional documentation, including other parameters such as `basepath`, can be found in the [API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api.html).
  late final pulumi.Output<Map<String, String>?> parameters;

  /// JSON formatted policy document that controls access to the API Gateway. For more information about building AWS IAM policy documents with Pulumi, see the AWS IAM Policy Document Guide. The provider will only perform drift detection of its value when present in a configuration. We recommend using the `aws.apigateway.RestApiPolicy` resource instead. If importing an OpenAPI specification via the `body` argument, this corresponds to the [`x-amazon-apigateway-policy` extension](https://docs.aws.amazon.com/apigateway/latest/developerguide/openapi-extensions-policy.html). If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  late final pulumi.Output<String> policy;

  /// Mode of the PutRestApi operation when importing an OpenAPI specification via the `body` argument (create or update operation). Valid values are `merge` and `overwrite`. If unspecificed, defaults to `overwrite` (for backwards compatibility). This corresponds to the [`x-amazon-apigateway-put-integration-method` extension](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions-put-integration-method.html). If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  late final pulumi.Output<String?> putRestApiMode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Resource ID of the REST API's root
  late final pulumi.Output<String> rootResourceId;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [RestApi].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RestApi]. {@macro pulumi_apigateway_rest_api_rest_api_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RestApi(
    String name, {
    RestApiArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/restApi:RestApi',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiKeySource = registerOutput<String>('apiKeySource');
    this.arn = registerOutput<String>('arn');
    this.binaryMediaTypes = registerOutput<List<String>>('binaryMediaTypes');
    this.body = registerOutput<String?>('body');
    this.createdDate = registerOutput<String>('createdDate');
    this.description = registerOutput<String>('description');
    this.disableExecuteApiEndpoint =
        registerOutput<bool>('disableExecuteApiEndpoint');
    this.endpointConfiguration =
        registerOutput<RestApiEndpointConfiguration>('endpointConfiguration');
    this.executionArn = registerOutput<String>('executionArn');
    this.failOnWarnings = registerOutput<bool?>('failOnWarnings');
    this.minimumCompressionSize =
        registerOutput<String>('minimumCompressionSize');
    this.name = registerOutput<String>('name');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.policy = registerOutput<String>('policy');
    this.putRestApiMode = registerOutput<String?>('putRestApiMode');
    this.region = registerOutput<String>('region');
    this.rootResourceId = registerOutput<String>('rootResourceId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
