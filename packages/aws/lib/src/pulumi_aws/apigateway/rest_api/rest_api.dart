import 'package:pulumi/pulumi.dart';
import '../rest_api_endpoint_configuration/rest_api_endpoint_configuration.dart';
import 'rest_api_args.dart';

/// Manages an API Gateway REST API. The REST API can be configured via [importing an OpenAPI specification](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api.html) in the <span pulumi-lang-nodejs="`body`" pulumi-lang-dotnet="`Body`" pulumi-lang-go="`body`" pulumi-lang-python="`body`" pulumi-lang-yaml="`body`" pulumi-lang-java="`body`">`body`</span> argument (with other arguments serving as overrides) or via other provider resources to manage the resources (<span pulumi-lang-nodejs="`aws.apigateway.Resource`" pulumi-lang-dotnet="`aws.apigateway.Resource`" pulumi-lang-go="`apigateway.Resource`" pulumi-lang-python="`apigateway.Resource`" pulumi-lang-yaml="`aws.apigateway.Resource`" pulumi-lang-java="`aws.apigateway.Resource`">`aws.apigateway.Resource`</span> resource), methods (<span pulumi-lang-nodejs="`aws.apigateway.Method`" pulumi-lang-dotnet="`aws.apigateway.Method`" pulumi-lang-go="`apigateway.Method`" pulumi-lang-python="`apigateway.Method`" pulumi-lang-yaml="`aws.apigateway.Method`" pulumi-lang-java="`aws.apigateway.Method`">`aws.apigateway.Method`</span> resource), integrations (<span pulumi-lang-nodejs="`aws.apigateway.Integration`" pulumi-lang-dotnet="`aws.apigateway.Integration`" pulumi-lang-go="`apigateway.Integration`" pulumi-lang-python="`apigateway.Integration`" pulumi-lang-yaml="`aws.apigateway.Integration`" pulumi-lang-java="`aws.apigateway.Integration`">`aws.apigateway.Integration`</span> resource), etc. of the REST API. Once the REST API is configured, the <span pulumi-lang-nodejs="`aws.apigateway.Deployment`" pulumi-lang-dotnet="`aws.apigateway.Deployment`" pulumi-lang-go="`apigateway.Deployment`" pulumi-lang-python="`apigateway.Deployment`" pulumi-lang-yaml="`aws.apigateway.Deployment`" pulumi-lang-java="`aws.apigateway.Deployment`">`aws.apigateway.Deployment`</span> resource can be used along with the <span pulumi-lang-nodejs="`aws.apigateway.Stage`" pulumi-lang-dotnet="`aws.apigateway.Stage`" pulumi-lang-go="`apigateway.Stage`" pulumi-lang-python="`apigateway.Stage`" pulumi-lang-yaml="`aws.apigateway.Stage`" pulumi-lang-java="`aws.apigateway.Stage`">`aws.apigateway.Stage`</span> resource to publish the REST API.
///
/// > **Note:** Amazon API Gateway Version 1 resources are used for creating and deploying REST APIs. To create and deploy WebSocket and HTTP APIs, use Amazon API Gateway Version 2 resources.
///
/// !> **WARN:** When importing Open API Specifications with the <span pulumi-lang-nodejs="`body`" pulumi-lang-dotnet="`Body`" pulumi-lang-go="`body`" pulumi-lang-python="`body`" pulumi-lang-yaml="`body`" pulumi-lang-java="`body`">`body`</span> argument, by default the API Gateway REST API will be replaced with the Open API Specification thus removing any existing methods, resources, integrations, or endpoints. Endpoint mutations are asynchronous operations, and race conditions with DNS are possible. To overcome this limitation, use the <span pulumi-lang-nodejs="`putRestApiMode`" pulumi-lang-dotnet="`PutRestApiMode`" pulumi-lang-go="`putRestApiMode`" pulumi-lang-python="`put_rest_api_mode`" pulumi-lang-yaml="`putRestApiMode`" pulumi-lang-java="`putRestApiMode`">`put_rest_api_mode`</span> attribute and set it to <span pulumi-lang-nodejs="`merge`" pulumi-lang-dotnet="`Merge`" pulumi-lang-go="`merge`" pulumi-lang-python="`merge`" pulumi-lang-yaml="`merge`" pulumi-lang-java="`merge`">`merge`</span>.
///
/// ## Example Usage
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.apigateway.RestApi`" pulumi-lang-dotnet="`aws.apigateway.RestApi`" pulumi-lang-go="`apigateway.RestApi`" pulumi-lang-python="`apigateway.RestApi`" pulumi-lang-yaml="`aws.apigateway.RestApi`" pulumi-lang-java="`aws.apigateway.RestApi`">`aws.apigateway.RestApi`</span> using the REST API ID. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/restApi:RestApi example 12345abcde
/// ```
///
/// > **NOTE:** Resource import does not currently support the <span pulumi-lang-nodejs="`body`" pulumi-lang-dotnet="`Body`" pulumi-lang-go="`body`" pulumi-lang-python="`body`" pulumi-lang-yaml="`body`" pulumi-lang-java="`body`">`body`</span> attribute.
class RestApi extends CustomResource {
  /// Source of the API key for requests. Valid values are `HEADER` (default) and `AUTHORIZER`. If importing an OpenAPI specification via the <span pulumi-lang-nodejs="`body`" pulumi-lang-dotnet="`Body`" pulumi-lang-go="`body`" pulumi-lang-python="`body`" pulumi-lang-yaml="`body`" pulumi-lang-java="`body`">`body`</span> argument, this corresponds to the [`x-amazon-apigateway-api-key-source` extension](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions-api-key-source.html). If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  late final Output<String> apiKeySource;

  /// ARN
  late final Output<String> arn;

  /// List of binary media types supported by the REST API. By default, the REST API supports only UTF-8-encoded text payloads. If importing an OpenAPI specification via the <span pulumi-lang-nodejs="`body`" pulumi-lang-dotnet="`Body`" pulumi-lang-go="`body`" pulumi-lang-python="`body`" pulumi-lang-yaml="`body`" pulumi-lang-java="`body`">`body`</span> argument, this corresponds to the [`x-amazon-apigateway-binary-media-types` extension](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions-binary-media-types.html). If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  late final Output<List<String>> binaryMediaTypes;

  /// OpenAPI specification that defines the set of routes and integrations to create as part of the REST API. This configuration, and any updates to it, will replace all REST API configuration except values overridden in this resource configuration and other resource updates applied after this resource but before any <span pulumi-lang-nodejs="`aws.apigateway.Deployment`" pulumi-lang-dotnet="`aws.apigateway.Deployment`" pulumi-lang-go="`apigateway.Deployment`" pulumi-lang-python="`apigateway.Deployment`" pulumi-lang-yaml="`aws.apigateway.Deployment`" pulumi-lang-java="`aws.apigateway.Deployment`">`aws.apigateway.Deployment`</span> creation. More information about REST API OpenAPI support can be found in the [API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api.html).
  late final Output<String?> body;

  /// Creation date of the REST API
  late final Output<String> createdDate;

  /// Description of the REST API. If importing an OpenAPI specification via the <span pulumi-lang-nodejs="`body`" pulumi-lang-dotnet="`Body`" pulumi-lang-go="`body`" pulumi-lang-python="`body`" pulumi-lang-yaml="`body`" pulumi-lang-java="`body`">`body`</span> argument, this corresponds to the `info.description` field. If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  late final Output<String> description;

  /// Whether clients can invoke your API by using the default execute-api endpoint. By default, clients can invoke your API with the default https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. If importing an OpenAPI specification via the <span pulumi-lang-nodejs="`body`" pulumi-lang-dotnet="`Body`" pulumi-lang-go="`body`" pulumi-lang-python="`body`" pulumi-lang-yaml="`body`" pulumi-lang-java="`body`">`body`</span> argument, this corresponds to the [`x-amazon-apigateway-endpoint-configuration` extension `disableExecuteApiEndpoint` property](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions-endpoint-configuration.html). If the argument value is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  late final Output<bool> disableExecuteApiEndpoint;

  /// Configuration block defining API endpoint configuration including endpoint type. Defined below.
  late final Output<RestApiEndpointConfiguration> endpointConfiguration;

  /// Execution ARN part to be used in <span pulumi-lang-nodejs="`lambdaPermission`" pulumi-lang-dotnet="`LambdaPermission`" pulumi-lang-go="`lambdaPermission`" pulumi-lang-python="`lambda_permission`" pulumi-lang-yaml="`lambdaPermission`" pulumi-lang-java="`lambdaPermission`">`lambda_permission`</span>'s <span pulumi-lang-nodejs="`sourceArn`" pulumi-lang-dotnet="`SourceArn`" pulumi-lang-go="`sourceArn`" pulumi-lang-python="`source_arn`" pulumi-lang-yaml="`sourceArn`" pulumi-lang-java="`sourceArn`">`source_arn`</span>
  /// when allowing API Gateway to invoke a Lambda function,
  /// e.g., `arn:aws:execute-api:eu-west-2:123456789012:z4675bid1j`, which can be concatenated with allowed stage, method and resource path.
  late final Output<String> executionArn;

  /// Whether warnings while API Gateway is creating or updating the resource should return an error or not. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>
  late final Output<bool?> failOnWarnings;

  /// Minimum response size to compress for the REST API. String containing an integer value between `-1` and <span pulumi-lang-nodejs="`10485760`" pulumi-lang-dotnet="`10485760`" pulumi-lang-go="`10485760`" pulumi-lang-python="`10485760`" pulumi-lang-yaml="`10485760`" pulumi-lang-java="`10485760`">`10485760`</span> (10MB). `-1` will disable an existing compression configuration, and all other values will enable compression with the configured size. New resources can simply omit this argument to disable compression, rather than setting the value to `-1`. If importing an OpenAPI specification via the <span pulumi-lang-nodejs="`body`" pulumi-lang-dotnet="`Body`" pulumi-lang-go="`body`" pulumi-lang-python="`body`" pulumi-lang-yaml="`body`" pulumi-lang-java="`body`">`body`</span> argument, this corresponds to the [`x-amazon-apigateway-minimum-compression-size` extension](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-openapi-minimum-compression-size.html). If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  late final Output<String> minimumCompressionSize;

  /// Name of the REST API. If importing an OpenAPI specification via the <span pulumi-lang-nodejs="`body`" pulumi-lang-dotnet="`Body`" pulumi-lang-go="`body`" pulumi-lang-python="`body`" pulumi-lang-yaml="`body`" pulumi-lang-java="`body`">`body`</span> argument, this corresponds to the `info.title` field. If the argument value is different than the OpenAPI value, the argument value will override the OpenAPI value.
  late final Output<String> name;

  /// Map of customizations for importing the specification in the <span pulumi-lang-nodejs="`body`" pulumi-lang-dotnet="`Body`" pulumi-lang-go="`body`" pulumi-lang-python="`body`" pulumi-lang-yaml="`body`" pulumi-lang-java="`body`">`body`</span> argument. For example, to exclude DocumentationParts from an imported API, set <span pulumi-lang-nodejs="`ignore`" pulumi-lang-dotnet="`Ignore`" pulumi-lang-go="`ignore`" pulumi-lang-python="`ignore`" pulumi-lang-yaml="`ignore`" pulumi-lang-java="`ignore`">`ignore`</span> equal to <span pulumi-lang-nodejs="`documentation`" pulumi-lang-dotnet="`Documentation`" pulumi-lang-go="`documentation`" pulumi-lang-python="`documentation`" pulumi-lang-yaml="`documentation`" pulumi-lang-java="`documentation`">`documentation`</span>. Additional documentation, including other parameters such as <span pulumi-lang-nodejs="`basepath`" pulumi-lang-dotnet="`Basepath`" pulumi-lang-go="`basepath`" pulumi-lang-python="`basepath`" pulumi-lang-yaml="`basepath`" pulumi-lang-java="`basepath`">`basepath`</span>, can be found in the [API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api.html).
  late final Output<Map<String, String>?> parameters;

  /// JSON formatted policy document that controls access to the API Gateway. For more information about building AWS IAM policy documents with Pulumi, see the AWS IAM Policy Document Guide. The provider will only perform drift detection of its value when present in a configuration. We recommend using the <span pulumi-lang-nodejs="`aws.apigateway.RestApiPolicy`" pulumi-lang-dotnet="`aws.apigateway.RestApiPolicy`" pulumi-lang-go="`apigateway.RestApiPolicy`" pulumi-lang-python="`apigateway.RestApiPolicy`" pulumi-lang-yaml="`aws.apigateway.RestApiPolicy`" pulumi-lang-java="`aws.apigateway.RestApiPolicy`">`aws.apigateway.RestApiPolicy`</span> resource instead. If importing an OpenAPI specification via the <span pulumi-lang-nodejs="`body`" pulumi-lang-dotnet="`Body`" pulumi-lang-go="`body`" pulumi-lang-python="`body`" pulumi-lang-yaml="`body`" pulumi-lang-java="`body`">`body`</span> argument, this corresponds to the [`x-amazon-apigateway-policy` extension](https://docs.aws.amazon.com/apigateway/latest/developerguide/openapi-extensions-policy.html). If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  late final Output<String> policy;

  /// Mode of the PutRestApi operation when importing an OpenAPI specification via the <span pulumi-lang-nodejs="`body`" pulumi-lang-dotnet="`Body`" pulumi-lang-go="`body`" pulumi-lang-python="`body`" pulumi-lang-yaml="`body`" pulumi-lang-java="`body`">`body`</span> argument (create or update operation). Valid values are <span pulumi-lang-nodejs="`merge`" pulumi-lang-dotnet="`Merge`" pulumi-lang-go="`merge`" pulumi-lang-python="`merge`" pulumi-lang-yaml="`merge`" pulumi-lang-java="`merge`">`merge`</span> and <span pulumi-lang-nodejs="`overwrite`" pulumi-lang-dotnet="`Overwrite`" pulumi-lang-go="`overwrite`" pulumi-lang-python="`overwrite`" pulumi-lang-yaml="`overwrite`" pulumi-lang-java="`overwrite`">`overwrite`</span>. If unspecificed, defaults to <span pulumi-lang-nodejs="`overwrite`" pulumi-lang-dotnet="`Overwrite`" pulumi-lang-go="`overwrite`" pulumi-lang-python="`overwrite`" pulumi-lang-yaml="`overwrite`" pulumi-lang-java="`overwrite`">`overwrite`</span> (for backwards compatibility). This corresponds to the [`x-amazon-apigateway-put-integration-method` extension](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions-put-integration-method.html). If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  late final Output<String?> putRestApiMode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Resource ID of the REST API's root
  late final Output<String> rootResourceId;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  RestApi(
    String name, {
    RestApiArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/restApi:RestApi',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
