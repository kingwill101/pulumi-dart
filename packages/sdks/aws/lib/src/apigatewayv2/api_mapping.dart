import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_mapping_args.dart';
import 'api_mapping_state.dart';

/// Manages an Amazon API Gateway Version 2 API mapping.
/// More information can be found in the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html).
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigatewayv2.ApiMapping("example", {
///     apiId: exampleAwsApigatewayv2Api.id,
///     domainName: exampleAwsApigatewayv2DomainName.id,
///     stage: exampleAwsApigatewayv2Stage.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.ApiMapping("example",
///     api_id=example_aws_apigatewayv2_api["id"],
///     domain_name=example_aws_apigatewayv2_domain_name["id"],
///     stage=example_aws_apigatewayv2_stage["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ApiGatewayV2.ApiMapping("example", new()
///     {
///         ApiId = exampleAwsApigatewayv2Api.Id,
///         DomainName = exampleAwsApigatewayv2DomainName.Id,
///         Stage = exampleAwsApigatewayv2Stage.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigatewayv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigatewayv2.NewApiMapping(ctx, "example", &apigatewayv2.ApiMappingArgs{
/// 			ApiId:      pulumi.Any(exampleAwsApigatewayv2Api.Id),
/// 			DomainName: pulumi.Any(exampleAwsApigatewayv2DomainName.Id),
/// 			Stage:      pulumi.Any(exampleAwsApigatewayv2Stage.Id),
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
/// resource "aws_apigatewayv2_apimapping" "example" {
///   api_id      = exampleAwsApigatewayv2Api.id
///   domain_name = exampleAwsApigatewayv2DomainName.id
///   stage       = exampleAwsApigatewayv2Stage.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigatewayv2.ApiMapping;
/// import com.pulumi.aws.apigatewayv2.ApiMappingArgs;
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
///         var example = new ApiMapping("example", ApiMappingArgs.builder()
///             .apiId(exampleAwsApigatewayv2Api.id())
///             .domainName(exampleAwsApigatewayv2DomainName.id())
///             .stage(exampleAwsApigatewayv2Stage.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apigatewayv2:ApiMapping
///     properties:
///       apiId: ${exampleAwsApigatewayv2Api.id}
///       domainName: ${exampleAwsApigatewayv2DomainName.id}
///       stage: ${exampleAwsApigatewayv2Stage.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigatewayv2.ApiMapping` using the API mapping identifier and domain name. For example:
///
/// ```sh
/// $ pulumi import aws:apigatewayv2/apiMapping:ApiMapping example 1122334/ws-api.example.com
/// ```
class ApiMapping extends pulumi.CustomResource {
  /// API identifier.
  late final pulumi.Output<String> apiId;
  /// API mapping key. Refer to [REST API](https://docs.aws.amazon.com/apigateway/latest/developerguide/rest-api-mappings.html), [HTTP API](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-mappings.html) or [WebSocket API](https://docs.aws.amazon.com/apigateway/latest/developerguide/websocket-api-mappings.html).
  late final pulumi.Output<String?> apiMappingKey;
  /// Domain name. Use the `aws.apigatewayv2.DomainName` resource to configure a domain name.
  late final pulumi.Output<String> domainName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// API stage. Use the `aws.apigatewayv2.Stage` resource to configure an API stage.
  late final pulumi.Output<String> stage;

  /// Creates a new [ApiMapping].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiMapping]. {@macro pulumi_apigatewayv2_api_mapping_api_mapping_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiMapping(
    String name, {
    ApiMappingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/apiMapping:ApiMapping',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    apiId = registerOutput<String>('apiId');
    apiMappingKey = registerOutput<String?>('apiMappingKey');
    domainName = registerOutput<String>('domainName');
    region = registerOutput<String>('region');
    stage = registerOutput<String>('stage');
  }

  /// Gets an existing [ApiMapping] resource's state with the given [name] and [id].
  static ApiMapping get(
    String name,
    pulumi.Input<String> id, {
    ApiMappingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ApiMapping._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ApiMapping._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/apiMapping:ApiMapping',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiId = registerOutput<String>('apiId');
    apiMappingKey = registerOutput<String?>('apiMappingKey');
    domainName = registerOutput<String>('domainName');
    region = registerOutput<String>('region');
    stage = registerOutput<String>('stage');
  }

  /// Creates a typed reference to an existing [ApiMapping] resource.
  ApiMapping.reference(String urn)
    : super(
        'aws:apigatewayv2/apiMapping:ApiMapping',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiId = registerOutput<String>('apiId');
    apiMappingKey = registerOutput<String?>('apiMappingKey');
    domainName = registerOutput<String>('domainName');
    region = registerOutput<String>('region');
    stage = registerOutput<String>('stage');
  }
}
