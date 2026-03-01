// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rest_api_endpoint_configuration.dart';

/// {@template pulumi_apigateway_rest_api_rest_api_args_doc}
/// The set of arguments for RestApi.
/// {@endtemplate}
/// {@macro pulumi_apigateway_rest_api_rest_api_args_doc}
class RestApiArgs {
  /// Source of the API key for requests. Valid values are `HEADER` (default) and `AUTHORIZER`. If importing an OpenAPI specification via the `body` argument, this corresponds to the [`x-amazon-apigateway-api-key-source` extension](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions-api-key-source.html). If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  final pulumi.Input<String>? apiKeySource;

  /// List of binary media types supported by the REST API. By default, the REST API supports only UTF-8-encoded text payloads. If importing an OpenAPI specification via the `body` argument, this corresponds to the [`x-amazon-apigateway-binary-media-types` extension](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions-binary-media-types.html). If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  final pulumi.Input<List<String>>? binaryMediaTypes;

  /// OpenAPI specification that defines the set of routes and integrations to create as part of the REST API. This configuration, and any updates to it, will replace all REST API configuration except values overridden in this resource configuration and other resource updates applied after this resource but before any `aws.apigateway.Deployment` creation. More information about REST API OpenAPI support can be found in the [API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api.html).
  final pulumi.Input<String>? body;

  /// Description of the REST API. If importing an OpenAPI specification via the `body` argument, this corresponds to the `info.description` field. If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  final pulumi.Input<String>? description;

  /// Whether clients can invoke your API by using the default execute-api endpoint. By default, clients can invoke your API with the default https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint. Defaults to `false`. If importing an OpenAPI specification via the `body` argument, this corresponds to the [`x-amazon-apigateway-endpoint-configuration` extension `disableExecuteApiEndpoint` property](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions-endpoint-configuration.html). If the argument value is `true` and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  final pulumi.Input<bool>? disableExecuteApiEndpoint;

  /// Configuration block defining API endpoint configuration including endpoint type. Defined below.
  final pulumi.Input<RestApiEndpointConfiguration>? endpointConfiguration;

  /// Whether warnings while API Gateway is creating or updating the resource should return an error or not. Defaults to `false`
  final pulumi.Input<bool>? failOnWarnings;

  /// Minimum response size to compress for the REST API. String containing an integer value between `-1` and `10485760` (10MB). `-1` will disable an existing compression configuration, and all other values will enable compression with the configured size. New resources can simply omit this argument to disable compression, rather than setting the value to `-1`. If importing an OpenAPI specification via the `body` argument, this corresponds to the [`x-amazon-apigateway-minimum-compression-size` extension](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-openapi-minimum-compression-size.html). If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  final pulumi.Input<String>? minimumCompressionSize;

  /// Name of the REST API. If importing an OpenAPI specification via the `body` argument, this corresponds to the `info.title` field. If the argument value is different than the OpenAPI value, the argument value will override the OpenAPI value.
  final pulumi.Input<String>? name;

  /// Map of customizations for importing the specification in the `body` argument. For example, to exclude DocumentationParts from an imported API, set `ignore` equal to `documentation`. Additional documentation, including other parameters such as `basepath`, can be found in the [API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api.html).
  final pulumi.Input<Map<String, String>>? parameters;

  /// JSON formatted policy document that controls access to the API Gateway. For more information about building AWS IAM policy documents with Pulumi, see the AWS IAM Policy Document Guide. The provider will only perform drift detection of its value when present in a configuration. We recommend using the `aws.apigateway.RestApiPolicy` resource instead. If importing an OpenAPI specification via the `body` argument, this corresponds to the [`x-amazon-apigateway-policy` extension](https://docs.aws.amazon.com/apigateway/latest/developerguide/openapi-extensions-policy.html). If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  final pulumi.Input<String>? policy;

  /// Mode of the PutRestApi operation when importing an OpenAPI specification via the `body` argument (create or update operation). Valid values are `merge` and `overwrite`. If unspecificed, defaults to `overwrite` (for backwards compatibility). This corresponds to the [`x-amazon-apigateway-put-integration-method` extension](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions-put-integration-method.html). If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  final pulumi.Input<String>? putRestApiMode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RestApiArgs].
  /// [apiKeySource] Source of the API key for requests. Valid values are `HEADER` (default) and `AUTHORIZER`. If importing an OpenAPI specification via the `body` argument, this corresponds to the [`x-amazon-apigateway-api-key-source` extension](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions-api-key-source.html). If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  /// [binaryMediaTypes] List of binary media types supported by the REST API. By default, the REST API supports only UTF-8-encoded text payloads. If importing an OpenAPI specification via the `body` argument, this corresponds to the [`x-amazon-apigateway-binary-media-types` extension](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions-binary-media-types.html). If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  /// [body] OpenAPI specification that defines the set of routes and integrations to create as part of the REST API. This configuration, and any updates to it, will replace all REST API configuration except values overridden in this resource configuration and other resource updates applied after this resource but before any `aws.apigateway.Deployment` creation. More information about REST API OpenAPI support can be found in the [API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api.html).
  /// [description] Description of the REST API. If importing an OpenAPI specification via the `body` argument, this corresponds to the `info.description` field. If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  /// [disableExecuteApiEndpoint] Whether clients can invoke your API by using the default execute-api endpoint. By default, clients can invoke your API with the default https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint. Defaults to `false`. If importing an OpenAPI specification via the `body` argument, this corresponds to the [`x-amazon-apigateway-endpoint-configuration` extension `disableExecuteApiEndpoint` property](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions-endpoint-configuration.html). If the argument value is `true` and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  /// [endpointConfiguration] Configuration block defining API endpoint configuration including endpoint type. Defined below.
  /// [failOnWarnings] Whether warnings while API Gateway is creating or updating the resource should return an error or not. Defaults to `false`
  /// [minimumCompressionSize] Minimum response size to compress for the REST API. String containing an integer value between `-1` and `10485760` (10MB). `-1` will disable an existing compression configuration, and all other values will enable compression with the configured size. New resources can simply omit this argument to disable compression, rather than setting the value to `-1`. If importing an OpenAPI specification via the `body` argument, this corresponds to the [`x-amazon-apigateway-minimum-compression-size` extension](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-openapi-minimum-compression-size.html). If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  /// [name] Name of the REST API. If importing an OpenAPI specification via the `body` argument, this corresponds to the `info.title` field. If the argument value is different than the OpenAPI value, the argument value will override the OpenAPI value.
  /// [parameters] Map of customizations for importing the specification in the `body` argument. For example, to exclude DocumentationParts from an imported API, set `ignore` equal to `documentation`. Additional documentation, including other parameters such as `basepath`, can be found in the [API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api.html).
  /// [policy] JSON formatted policy document that controls access to the API Gateway. For more information about building AWS IAM policy documents with Pulumi, see the AWS IAM Policy Document Guide. The provider will only perform drift detection of its value when present in a configuration. We recommend using the `aws.apigateway.RestApiPolicy` resource instead. If importing an OpenAPI specification via the `body` argument, this corresponds to the [`x-amazon-apigateway-policy` extension](https://docs.aws.amazon.com/apigateway/latest/developerguide/openapi-extensions-policy.html). If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  /// [putRestApiMode] Mode of the PutRestApi operation when importing an OpenAPI specification via the `body` argument (create or update operation). Valid values are `merge` and `overwrite`. If unspecificed, defaults to `overwrite` (for backwards compatibility). This corresponds to the [`x-amazon-apigateway-put-integration-method` extension](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions-put-integration-method.html). If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  RestApiArgs({
    String? apiKeySource,
    List<String>? binaryMediaTypes,
    String? body,
    String? description,
    bool? disableExecuteApiEndpoint,
    RestApiEndpointConfiguration? endpointConfiguration,
    bool? failOnWarnings,
    String? minimumCompressionSize,
    String? name,
    Map<String, String>? parameters,
    String? policy,
    String? putRestApiMode,
    String? region,
    Map<String, String>? tags,
  }) : apiKeySource = pulumi.Input.asOptionalInput<String>(apiKeySource),
       binaryMediaTypes = pulumi.Input.asOptionalInput<List<String>>(
         binaryMediaTypes,
       ),
       body = pulumi.Input.asOptionalInput<String>(body),
       description = pulumi.Input.asOptionalInput<String>(description),
       disableExecuteApiEndpoint = pulumi.Input.asOptionalInput<bool>(
         disableExecuteApiEndpoint,
       ),
       endpointConfiguration =
           pulumi.Input.asOptionalInput<RestApiEndpointConfiguration>(
             endpointConfiguration,
           ),
       failOnWarnings = pulumi.Input.asOptionalInput<bool>(failOnWarnings),
       minimumCompressionSize = pulumi.Input.asOptionalInput<String>(
         minimumCompressionSize,
       ),
       name = pulumi.Input.asOptionalInput<String>(name),
       parameters = pulumi.Input.asOptionalInput<Map<String, String>>(
         parameters,
       ),
       policy = pulumi.Input.asOptionalInput<String>(policy),
       putRestApiMode = pulumi.Input.asOptionalInput<String>(putRestApiMode),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeySource': ?apiKeySource,
      'binaryMediaTypes': ?binaryMediaTypes,
      'body': ?body,
      'description': ?description,
      'disableExecuteApiEndpoint': ?disableExecuteApiEndpoint,
      'endpointConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            RestApiEndpointConfiguration,
            Map<String, dynamic>
          >(endpointConfiguration, (value) => value.toMap()),
      'failOnWarnings': ?failOnWarnings,
      'minimumCompressionSize': ?minimumCompressionSize,
      'name': ?name,
      'parameters': ?parameters,
      'policy': ?policy,
      'putRestApiMode': ?putRestApiMode,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory RestApiArgs.fromMap(Map<String, dynamic> map) {
    return RestApiArgs(
      apiKeySource: map['apiKeySource'] == null
          ? null
          : map['apiKeySource'] as String,
      binaryMediaTypes: map['binaryMediaTypes'] == null
          ? null
          : (map['binaryMediaTypes'] as List).cast<String>(),
      body: map['body'] == null ? null : map['body'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      disableExecuteApiEndpoint: map['disableExecuteApiEndpoint'] == null
          ? null
          : map['disableExecuteApiEndpoint'] as bool,
      endpointConfiguration: map['endpointConfiguration'] == null
          ? null
          : RestApiEndpointConfiguration.fromMap(
              (map['endpointConfiguration'] as Map).cast<String, dynamic>(),
            ),
      failOnWarnings: map['failOnWarnings'] == null
          ? null
          : map['failOnWarnings'] as bool,
      minimumCompressionSize: map['minimumCompressionSize'] == null
          ? null
          : map['minimumCompressionSize'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      parameters: map['parameters'] == null
          ? null
          : (map['parameters'] as Map).cast<String, String>(),
      policy: map['policy'] == null ? null : map['policy'] as String,
      putRestApiMode: map['putRestApiMode'] == null
          ? null
          : map['putRestApiMode'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
