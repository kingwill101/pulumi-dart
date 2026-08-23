import 'package:pulumi/pulumi.dart' as pulumi;
import 'rest_api_args.dart';
import 'rest_api_endpoint_configuration.dart';
import 'rest_api_state.dart';

/// Manages an API Gateway REST API. The REST API can be configured via [importing an OpenAPI specification](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api.html) in the `body` argument (with other arguments serving as overrides) or via other provider resources to manage the resources (`aws.apigateway.Resource` resource), methods (`aws.apigateway.Method` resource), integrations (`aws.apigateway.Integration` resource), etc. of the REST API. Once the REST API is configured, the `aws.apigateway.Deployment` resource can be used along with the `aws.apigateway.Stage` resource to publish the REST API.
///
/// &gt; **Note:** Amazon API Gateway Version 1 resources are used for creating and deploying REST APIs. To create and deploy WebSocket and HTTP APIs, use Amazon API Gateway Version 2 resources.
///
/// &gt; **WARN:** When importing Open API Specifications with the `body` argument, by default the API Gateway REST API will be replaced with the Open API Specification thus removing any existing methods, resources, integrations, or endpoints. Endpoint mutations are asynchronous operations, and race conditions with DNS are possible. To overcome this limitation, use the `putRestApiMode` attribute and set it to `merge`.
///
/// ## Example Usage
///
/// ### Security Policy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigateway.RestApi("example", {
///     name: "example",
///     securityPolicy: "SecurityPolicy_TLS13_1_2_PFS_PQ_2025_09",
///     endpointAccessMode: "BASIC",
///     endpointConfiguration: {
///         types: "REGIONAL",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigateway.RestApi("example",
///     name="example",
///     security_policy="SecurityPolicy_TLS13_1_2_PFS_PQ_2025_09",
///     endpoint_access_mode="BASIC",
///     endpoint_configuration={
///         "types": "REGIONAL",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ApiGateway.RestApi("example", new()
///     {
///         Name = "example",
///         SecurityPolicy = "SecurityPolicy_TLS13_1_2_PFS_PQ_2025_09",
///         EndpointAccessMode = "BASIC",
///         EndpointConfiguration = new Aws.ApiGateway.Inputs.RestApiEndpointConfigurationArgs
///         {
///             Types = "REGIONAL",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigateway.NewRestApi(ctx, "example", &apigateway.RestApiArgs{
/// 			Name:               pulumi.String("example"),
/// 			SecurityPolicy:     pulumi.String("SecurityPolicy_TLS13_1_2_PFS_PQ_2025_09"),
/// 			EndpointAccessMode: pulumi.String("BASIC"),
/// 			EndpointConfiguration: &apigateway.RestApiEndpointConfigurationArgs{
/// 				Types: pulumi.String("REGIONAL"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_apigateway_restapi" "example" {
///   name                 = "example"
///   security_policy      = "SecurityPolicy_TLS13_1_2_PFS_PQ_2025_09"
///   endpoint_access_mode = "BASIC"
///   endpoint_configuration = {
///     types = "REGIONAL"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigateway.RestApi;
/// import com.pulumi.aws.apigateway.RestApiArgs;
/// import com.pulumi.aws.apigateway.inputs.RestApiEndpointConfigurationArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new RestApi("example", RestApiArgs.builder()
///             .name("example")
///             .securityPolicy("SecurityPolicy_TLS13_1_2_PFS_PQ_2025_09")
///             .endpointAccessMode("BASIC")
///             .endpointConfiguration(RestApiEndpointConfigurationArgs.builder()
///                 .types("REGIONAL")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apigateway:RestApi
///     properties:
///       name: example
///       securityPolicy: SecurityPolicy_TLS13_1_2_PFS_PQ_2025_09
///       endpointAccessMode: BASIC
///       endpointConfiguration:
///         types: REGIONAL
/// ```
///
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import `aws.apigateway.RestApi` using the REST API ID. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/restApi:RestApi example 12345abcde
/// ```
///
/// &gt; **NOTE:** Resource import does not currently support the `body` attribute.
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
  /// Endpoint access mode for the REST API. Valid values are `BASIC` and `STRICT`. Only available for REST APIs that use a `securityPolicy` value beginning with `SecurityPolicy_` and is required when one of those values is configured.
  late final pulumi.Output<String?> endpointAccessMode;
  /// Configuration block defining API endpoint configuration including endpoint type. Defined below.
  late final pulumi.Output<RestApiEndpointConfiguration> endpointConfiguration;
  /// Execution ARN part to be used in `lambdaPermission`'s `sourceArn` when allowing API Gateway to invoke a Lambda function, e.g., `arn:aws:execute-api:eu-west-2:123456789012:z4675bid1j`, which can be concatenated with allowed stage, method and resource path.
  late final pulumi.Output<String> executionArn;
  /// Whether to return an error for warnings while API Gateway is creating or updating the resource. Defaults to `false`.
  late final pulumi.Output<bool?> failOnWarnings;
  /// Minimum response size to compress for the REST API. String containing an integer value between `-1` and `10485760` (10MB). `-1` will disable an existing compression configuration, and all other values will enable compression with the configured size. New resources can simply omit this argument to disable compression, rather than setting the value to `-1`. If importing an OpenAPI specification via the `body` argument, this corresponds to the [`x-amazon-apigateway-minimum-compression-size` extension](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-openapi-minimum-compression-size.html). If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  late final pulumi.Output<String> minimumCompressionSize;
  /// Name of the REST API. If importing an OpenAPI specification via the `body` argument, this corresponds to the `info.title` field. If the argument value is different than the OpenAPI value, the argument value will override the OpenAPI value.
  late final pulumi.Output<String> name;
  /// Map of customizations for importing the specification in the `body` argument. For example, to exclude DocumentationParts from an imported API, set `ignore` equal to `documentation`. Additional documentation, including other parameters such as `basepath`, can be found in the [API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api.html).
  late final pulumi.Output<Map<String, String>?> parameters;
  /// JSON formatted policy document that controls access to the API Gateway. For more information about building AWS IAM policy documents with Pulumi, see the AWS IAM Policy Document Guide. The provider will only perform drift detection of its value when present in a configuration. We recommend using the `aws.apigateway.RestApiPolicy` resource instead. If importing an OpenAPI specification via the `body` argument, this corresponds to the [`x-amazon-apigateway-policy` extension](https://docs.aws.amazon.com/apigateway/latest/openapi-extensions-policy.html). If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  late final pulumi.Output<String> policy;
  /// Mode of the PutRestApi operation when importing an OpenAPI specification via the `body` argument (create or update operation). Valid values are `merge` and `overwrite`. If not configured, defaults to `overwrite` (for backwards compatibility). This corresponds to the [`x-amazon-apigateway-put-integration-method` extension](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions-put-integration-method.html). If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  late final pulumi.Output<String?> putRestApiMode;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Resource ID of the REST API's root
  late final pulumi.Output<String> rootResourceId;
  /// TLS version + cipher suite for the REST API's default execute-api endpoint. Must be configured for drift detection. When set to a value beginning with `SecurityPolicy_`, `endpointAccessMode` must also be configured. For a list of valid security policies, see [CreateRestApi](https://docs.aws.amazon.com/apigateway/latest/api/API_CreateRestApi.html) in the Amazon API Gateway API Reference.
  late final pulumi.Output<String> securityPolicy;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
    apiKeySource = registerOutput<String>('apiKeySource');
    arn = registerOutput<String>('arn');
    binaryMediaTypes = registerOutput<List<String>>('binaryMediaTypes');
    body = registerOutput<String?>('body');
    createdDate = registerOutput<String>('createdDate');
    description = registerOutput<String>('description');
    disableExecuteApiEndpoint = registerOutput<bool>('disableExecuteApiEndpoint');
    endpointAccessMode = registerOutput<String?>('endpointAccessMode');
    endpointConfiguration = registerOutput<RestApiEndpointConfiguration>('endpointConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RestApiEndpointConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    executionArn = registerOutput<String>('executionArn');
    failOnWarnings = registerOutput<bool?>('failOnWarnings');
    minimumCompressionSize = registerOutput<String>('minimumCompressionSize');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
    policy = registerOutput<String>('policy');
    putRestApiMode = registerOutput<String?>('putRestApiMode');
    region = registerOutput<String>('region');
    rootResourceId = registerOutput<String>('rootResourceId');
    securityPolicy = registerOutput<String>('securityPolicy');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [RestApi] resource's state with the given [name] and [id].
  static RestApi get(
    String name,
    pulumi.Input<String> id, {
    RestApiState? state,
  }) {
    return RestApi._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RestApi._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/restApi:RestApi',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiKeySource = registerOutput<String>('apiKeySource');
    arn = registerOutput<String>('arn');
    binaryMediaTypes = registerOutput<List<String>>('binaryMediaTypes');
    body = registerOutput<String?>('body');
    createdDate = registerOutput<String>('createdDate');
    description = registerOutput<String>('description');
    disableExecuteApiEndpoint = registerOutput<bool>('disableExecuteApiEndpoint');
    endpointAccessMode = registerOutput<String?>('endpointAccessMode');
    endpointConfiguration = registerOutput<RestApiEndpointConfiguration>('endpointConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RestApiEndpointConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    executionArn = registerOutput<String>('executionArn');
    failOnWarnings = registerOutput<bool?>('failOnWarnings');
    minimumCompressionSize = registerOutput<String>('minimumCompressionSize');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
    policy = registerOutput<String>('policy');
    putRestApiMode = registerOutput<String?>('putRestApiMode');
    region = registerOutput<String>('region');
    rootResourceId = registerOutput<String>('rootResourceId');
    securityPolicy = registerOutput<String>('securityPolicy');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
