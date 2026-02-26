import 'package:pulumi/pulumi.dart';
import 'api_mapping_args.dart';

/// Manages an Amazon API Gateway Version 2 API mapping.
/// More information can be found in the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html).
///
/// ## Example Usage
///
/// ### Basic
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigatewayv2.ApiMapping("example", {
/// apiId: exampleAwsApigatewayv2Api.id,
/// domainName: exampleAwsApigatewayv2DomainName.id,
/// stage: exampleAwsApigatewayv2Stage.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.ApiMapping("example",
/// api_id=example_aws_apigatewayv2_api["id"],
/// domain_name=example_aws_apigatewayv2_domain_name["id"],
/// stage=example_aws_apigatewayv2_stage["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.ApiGatewayV2.ApiMapping("example", new()
/// {
/// ApiId = exampleAwsApigatewayv2Api.Id,
/// DomainName = exampleAwsApigatewayv2DomainName.Id,
/// Stage = exampleAwsApigatewayv2Stage.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigatewayv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apigatewayv2.NewApiMapping(ctx, "example", &apigatewayv2.ApiMappingArgs{
/// ApiId:      pulumi.Any(exampleAwsApigatewayv2Api.Id),
/// DomainName: pulumi.Any(exampleAwsApigatewayv2DomainName.Id),
/// Stage:      pulumi.Any(exampleAwsApigatewayv2Stage.Id),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new ApiMapping("example", ApiMappingArgs.builder()
/// .apiId(exampleAwsApigatewayv2Api.id())
/// .domainName(exampleAwsApigatewayv2DomainName.id())
/// .stage(exampleAwsApigatewayv2Stage.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:apigatewayv2:ApiMapping
/// properties:
/// apiId: ${exampleAwsApigatewayv2Api.id}
/// domainName: ${exampleAwsApigatewayv2DomainName.id}
/// stage: ${exampleAwsApigatewayv2Stage.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.apigatewayv2.ApiMapping`" pulumi-lang-dotnet="`aws.apigatewayv2.ApiMapping`" pulumi-lang-go="`apigatewayv2.ApiMapping`" pulumi-lang-python="`apigatewayv2.ApiMapping`" pulumi-lang-yaml="`aws.apigatewayv2.ApiMapping`" pulumi-lang-java="`aws.apigatewayv2.ApiMapping`">`aws.apigatewayv2.ApiMapping`</span> using the API mapping identifier and domain name. For example:
///
/// ```sh
/// $ pulumi import aws:apigatewayv2/apiMapping:ApiMapping example 1122334/ws-api.example.com
/// ```
class ApiMapping extends CustomResource {
  /// API identifier.
  late final Output<String> apiId;

  /// The API mapping key. Refer to [REST API](https://docs.aws.amazon.com/apigateway/latest/developerguide/rest-api-mappings.html), [HTTP API](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-mappings.html) or [WebSocket API](https://docs.aws.amazon.com/apigateway/latest/developerguide/websocket-api-mappings.html).
  late final Output<String?> apiMappingKey;

  /// Domain name. Use the <span pulumi-lang-nodejs="`aws.apigatewayv2.DomainName`" pulumi-lang-dotnet="`aws.apigatewayv2.DomainName`" pulumi-lang-go="`apigatewayv2.DomainName`" pulumi-lang-python="`apigatewayv2.DomainName`" pulumi-lang-yaml="`aws.apigatewayv2.DomainName`" pulumi-lang-java="`aws.apigatewayv2.DomainName`">`aws.apigatewayv2.DomainName`</span> resource to configure a domain name.
  late final Output<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// API stage. Use the <span pulumi-lang-nodejs="`aws.apigatewayv2.Stage`" pulumi-lang-dotnet="`aws.apigatewayv2.Stage`" pulumi-lang-go="`apigatewayv2.Stage`" pulumi-lang-python="`apigatewayv2.Stage`" pulumi-lang-yaml="`aws.apigatewayv2.Stage`" pulumi-lang-java="`aws.apigatewayv2.Stage`">`aws.apigatewayv2.Stage`</span> resource to configure an API stage.
  late final Output<String> stage;

  ApiMapping(
    String name, {
    ApiMappingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/apiMapping:ApiMapping',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiId = Output.createUnknown<String>();
    this.apiMappingKey = Output.createUnknown<String?>();
    this.domainName = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.stage = Output.createUnknown<String>();
  }
}
