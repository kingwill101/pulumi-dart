// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../rest_api_endpoint_configuration/rest_api_endpoint_configuration.dart';

/// The set of arguments for RestApi.
class RestApiArgs {
  /// Source of the API key for requests. Valid values are `HEADER` (default) and `AUTHORIZER`. If importing an OpenAPI specification via the <span pulumi-lang-nodejs="`body`" pulumi-lang-dotnet="`Body`" pulumi-lang-go="`body`" pulumi-lang-python="`body`" pulumi-lang-yaml="`body`" pulumi-lang-java="`body`">`body`</span> argument, this corresponds to the [`x-amazon-apigateway-api-key-source` extension](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions-api-key-source.html). If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  final Input<String>? apiKeySource;

  /// List of binary media types supported by the REST API. By default, the REST API supports only UTF-8-encoded text payloads. If importing an OpenAPI specification via the <span pulumi-lang-nodejs="`body`" pulumi-lang-dotnet="`Body`" pulumi-lang-go="`body`" pulumi-lang-python="`body`" pulumi-lang-yaml="`body`" pulumi-lang-java="`body`">`body`</span> argument, this corresponds to the [`x-amazon-apigateway-binary-media-types` extension](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions-binary-media-types.html). If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  final Input<List<String>>? binaryMediaTypes;

  /// OpenAPI specification that defines the set of routes and integrations to create as part of the REST API. This configuration, and any updates to it, will replace all REST API configuration except values overridden in this resource configuration and other resource updates applied after this resource but before any <span pulumi-lang-nodejs="`aws.apigateway.Deployment`" pulumi-lang-dotnet="`aws.apigateway.Deployment`" pulumi-lang-go="`apigateway.Deployment`" pulumi-lang-python="`apigateway.Deployment`" pulumi-lang-yaml="`aws.apigateway.Deployment`" pulumi-lang-java="`aws.apigateway.Deployment`">`aws.apigateway.Deployment`</span> creation. More information about REST API OpenAPI support can be found in the [API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api.html).
  final Input<String>? body;

  /// Description of the REST API. If importing an OpenAPI specification via the <span pulumi-lang-nodejs="`body`" pulumi-lang-dotnet="`Body`" pulumi-lang-go="`body`" pulumi-lang-python="`body`" pulumi-lang-yaml="`body`" pulumi-lang-java="`body`">`body`</span> argument, this corresponds to the `info.description` field. If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  final Input<String>? description;

  /// Whether clients can invoke your API by using the default execute-api endpoint. By default, clients can invoke your API with the default https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. If importing an OpenAPI specification via the <span pulumi-lang-nodejs="`body`" pulumi-lang-dotnet="`Body`" pulumi-lang-go="`body`" pulumi-lang-python="`body`" pulumi-lang-yaml="`body`" pulumi-lang-java="`body`">`body`</span> argument, this corresponds to the [`x-amazon-apigateway-endpoint-configuration` extension `disableExecuteApiEndpoint` property](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions-endpoint-configuration.html). If the argument value is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  final Input<bool>? disableExecuteApiEndpoint;

  /// Configuration block defining API endpoint configuration including endpoint type. Defined below.
  final Input<RestApiEndpointConfiguration>? endpointConfiguration;

  /// Whether warnings while API Gateway is creating or updating the resource should return an error or not. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>
  final Input<bool>? failOnWarnings;

  /// Minimum response size to compress for the REST API. String containing an integer value between `-1` and <span pulumi-lang-nodejs="`10485760`" pulumi-lang-dotnet="`10485760`" pulumi-lang-go="`10485760`" pulumi-lang-python="`10485760`" pulumi-lang-yaml="`10485760`" pulumi-lang-java="`10485760`">`10485760`</span> (10MB). `-1` will disable an existing compression configuration, and all other values will enable compression with the configured size. New resources can simply omit this argument to disable compression, rather than setting the value to `-1`. If importing an OpenAPI specification via the <span pulumi-lang-nodejs="`body`" pulumi-lang-dotnet="`Body`" pulumi-lang-go="`body`" pulumi-lang-python="`body`" pulumi-lang-yaml="`body`" pulumi-lang-java="`body`">`body`</span> argument, this corresponds to the [`x-amazon-apigateway-minimum-compression-size` extension](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-openapi-minimum-compression-size.html). If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  final Input<String>? minimumCompressionSize;

  /// Name of the REST API. If importing an OpenAPI specification via the <span pulumi-lang-nodejs="`body`" pulumi-lang-dotnet="`Body`" pulumi-lang-go="`body`" pulumi-lang-python="`body`" pulumi-lang-yaml="`body`" pulumi-lang-java="`body`">`body`</span> argument, this corresponds to the `info.title` field. If the argument value is different than the OpenAPI value, the argument value will override the OpenAPI value.
  final Input<String>? name;

  /// Map of customizations for importing the specification in the <span pulumi-lang-nodejs="`body`" pulumi-lang-dotnet="`Body`" pulumi-lang-go="`body`" pulumi-lang-python="`body`" pulumi-lang-yaml="`body`" pulumi-lang-java="`body`">`body`</span> argument. For example, to exclude DocumentationParts from an imported API, set <span pulumi-lang-nodejs="`ignore`" pulumi-lang-dotnet="`Ignore`" pulumi-lang-go="`ignore`" pulumi-lang-python="`ignore`" pulumi-lang-yaml="`ignore`" pulumi-lang-java="`ignore`">`ignore`</span> equal to <span pulumi-lang-nodejs="`documentation`" pulumi-lang-dotnet="`Documentation`" pulumi-lang-go="`documentation`" pulumi-lang-python="`documentation`" pulumi-lang-yaml="`documentation`" pulumi-lang-java="`documentation`">`documentation`</span>. Additional documentation, including other parameters such as <span pulumi-lang-nodejs="`basepath`" pulumi-lang-dotnet="`Basepath`" pulumi-lang-go="`basepath`" pulumi-lang-python="`basepath`" pulumi-lang-yaml="`basepath`" pulumi-lang-java="`basepath`">`basepath`</span>, can be found in the [API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api.html).
  final Input<Map<String, String>>? parameters;

  /// JSON formatted policy document that controls access to the API Gateway. For more information about building AWS IAM policy documents with Pulumi, see the AWS IAM Policy Document Guide. The provider will only perform drift detection of its value when present in a configuration. We recommend using the <span pulumi-lang-nodejs="`aws.apigateway.RestApiPolicy`" pulumi-lang-dotnet="`aws.apigateway.RestApiPolicy`" pulumi-lang-go="`apigateway.RestApiPolicy`" pulumi-lang-python="`apigateway.RestApiPolicy`" pulumi-lang-yaml="`aws.apigateway.RestApiPolicy`" pulumi-lang-java="`aws.apigateway.RestApiPolicy`">`aws.apigateway.RestApiPolicy`</span> resource instead. If importing an OpenAPI specification via the <span pulumi-lang-nodejs="`body`" pulumi-lang-dotnet="`Body`" pulumi-lang-go="`body`" pulumi-lang-python="`body`" pulumi-lang-yaml="`body`" pulumi-lang-java="`body`">`body`</span> argument, this corresponds to the [`x-amazon-apigateway-policy` extension](https://docs.aws.amazon.com/apigateway/latest/developerguide/openapi-extensions-policy.html). If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  final Input<String>? policy;

  /// Mode of the PutRestApi operation when importing an OpenAPI specification via the <span pulumi-lang-nodejs="`body`" pulumi-lang-dotnet="`Body`" pulumi-lang-go="`body`" pulumi-lang-python="`body`" pulumi-lang-yaml="`body`" pulumi-lang-java="`body`">`body`</span> argument (create or update operation). Valid values are <span pulumi-lang-nodejs="`merge`" pulumi-lang-dotnet="`Merge`" pulumi-lang-go="`merge`" pulumi-lang-python="`merge`" pulumi-lang-yaml="`merge`" pulumi-lang-java="`merge`">`merge`</span> and <span pulumi-lang-nodejs="`overwrite`" pulumi-lang-dotnet="`Overwrite`" pulumi-lang-go="`overwrite`" pulumi-lang-python="`overwrite`" pulumi-lang-yaml="`overwrite`" pulumi-lang-java="`overwrite`">`overwrite`</span>. If unspecificed, defaults to <span pulumi-lang-nodejs="`overwrite`" pulumi-lang-dotnet="`Overwrite`" pulumi-lang-go="`overwrite`" pulumi-lang-python="`overwrite`" pulumi-lang-yaml="`overwrite`" pulumi-lang-java="`overwrite`">`overwrite`</span> (for backwards compatibility). This corresponds to the [`x-amazon-apigateway-put-integration-method` extension](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions-put-integration-method.html). If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  final Input<String>? putRestApiMode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  RestApiArgs({
    this.apiKeySource,
    this.binaryMediaTypes,
    this.body,
    this.description,
    this.disableExecuteApiEndpoint,
    this.endpointConfiguration,
    this.failOnWarnings,
    this.minimumCompressionSize,
    this.name,
    this.parameters,
    this.policy,
    this.putRestApiMode,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiKeySourceValue = apiKeySource;
    if (apiKeySourceValue != null) {
      map['apiKeySource'] = apiKeySourceValue;
    }
    final binaryMediaTypesValue = binaryMediaTypes;
    if (binaryMediaTypesValue != null) {
      map['binaryMediaTypes'] = binaryMediaTypesValue;
    }
    final bodyValue = body;
    if (bodyValue != null) {
      map['body'] = bodyValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disableExecuteApiEndpointValue = disableExecuteApiEndpoint;
    if (disableExecuteApiEndpointValue != null) {
      map['disableExecuteApiEndpoint'] = disableExecuteApiEndpointValue;
    }
    final endpointConfigurationValue = endpointConfiguration;
    if (endpointConfigurationValue != null) {
      map['endpointConfiguration'] = Input.mapOptionalInputValue<
              RestApiEndpointConfiguration, Map<String, dynamic>>(
          endpointConfigurationValue, (value) => value.toMap());
    }
    final failOnWarningsValue = failOnWarnings;
    if (failOnWarningsValue != null) {
      map['failOnWarnings'] = failOnWarningsValue;
    }
    final minimumCompressionSizeValue = minimumCompressionSize;
    if (minimumCompressionSizeValue != null) {
      map['minimumCompressionSize'] = minimumCompressionSizeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    final policyValue = policy;
    if (policyValue != null) {
      map['policy'] = policyValue;
    }
    final putRestApiModeValue = putRestApiMode;
    if (putRestApiModeValue != null) {
      map['putRestApiMode'] = putRestApiModeValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory RestApiArgs.fromMap(Map<String, dynamic> map) {
    return RestApiArgs(
      apiKeySource: Input.asOptionalInput<String>(map['apiKeySource']),
      binaryMediaTypes:
          Input.asOptionalInput<List<String>>(map['binaryMediaTypes']),
      body: Input.asOptionalInput<String>(map['body']),
      description: Input.asOptionalInput<String>(map['description']),
      disableExecuteApiEndpoint:
          Input.asOptionalInput<bool>(map['disableExecuteApiEndpoint']),
      endpointConfiguration:
          Input.asOptionalInput<RestApiEndpointConfiguration>(
              map['endpointConfiguration']),
      failOnWarnings: Input.asOptionalInput<bool>(map['failOnWarnings']),
      minimumCompressionSize:
          Input.asOptionalInput<String>(map['minimumCompressionSize']),
      name: Input.asOptionalInput<String>(map['name']),
      parameters: Input.asOptionalInput<Map<String, String>>(map['parameters']),
      policy: Input.asOptionalInput<String>(map['policy']),
      putRestApiMode: Input.asOptionalInput<String>(map['putRestApiMode']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
