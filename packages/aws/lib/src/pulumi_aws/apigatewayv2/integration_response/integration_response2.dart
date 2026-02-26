import 'package:pulumi/pulumi.dart';
import 'integration_response_args2.dart';

/// Manages an Amazon API Gateway Version 2 integration response.
/// More information can be found in the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api.html).
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
/// const example = new aws.apigatewayv2.IntegrationResponse("example", {
/// apiId: exampleAwsApigatewayv2Api.id,
/// integrationId: exampleAwsApigatewayv2Integration.id,
/// integrationResponseKey: "/200/",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.IntegrationResponse("example",
/// api_id=example_aws_apigatewayv2_api["id"],
/// integration_id=example_aws_apigatewayv2_integration["id"],
/// integration_response_key="/200/")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.ApiGatewayV2.IntegrationResponse("example", new()
/// {
/// ApiId = exampleAwsApigatewayv2Api.Id,
/// IntegrationId = exampleAwsApigatewayv2Integration.Id,
/// IntegrationResponseKey = "/200/",
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
/// _, err := apigatewayv2.NewIntegrationResponse(ctx, "example", &apigatewayv2.IntegrationResponseArgs{
/// ApiId:                  pulumi.Any(exampleAwsApigatewayv2Api.Id),
/// IntegrationId:          pulumi.Any(exampleAwsApigatewayv2Integration.Id),
/// IntegrationResponseKey: pulumi.String("/200/"),
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
/// import com.pulumi.aws.apigatewayv2.IntegrationResponse;
/// import com.pulumi.aws.apigatewayv2.IntegrationResponseArgs;
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
/// var example = new IntegrationResponse("example", IntegrationResponseArgs.builder()
/// .apiId(exampleAwsApigatewayv2Api.id())
/// .integrationId(exampleAwsApigatewayv2Integration.id())
/// .integrationResponseKey("/200/")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:apigatewayv2:IntegrationResponse
/// properties:
/// apiId: ${exampleAwsApigatewayv2Api.id}
/// integrationId: ${exampleAwsApigatewayv2Integration.id}
/// integrationResponseKey: /200/
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.apigatewayv2.IntegrationResponse`" pulumi-lang-dotnet="`aws.apigatewayv2.IntegrationResponse`" pulumi-lang-go="`apigatewayv2.IntegrationResponse`" pulumi-lang-python="`apigatewayv2.IntegrationResponse`" pulumi-lang-yaml="`aws.apigatewayv2.IntegrationResponse`" pulumi-lang-java="`aws.apigatewayv2.IntegrationResponse`">`aws.apigatewayv2.IntegrationResponse`</span> using the API identifier, integration identifier and integration response identifier. For example:
///
/// ```sh
/// $ pulumi import aws:apigatewayv2/integrationResponse:IntegrationResponse example aabbccddee/1122334/998877
/// ```
class IntegrationResponse2 extends CustomResource {
  /// API identifier.
  late final Output<String> apiId;

  /// How to handle response payload content type conversions. Valid values: `CONVERT_TO_BINARY`, `CONVERT_TO_TEXT`.
  late final Output<String?> contentHandlingStrategy;

  /// Identifier of the <span pulumi-lang-nodejs="`aws.apigatewayv2.Integration`" pulumi-lang-dotnet="`aws.apigatewayv2.Integration`" pulumi-lang-go="`apigatewayv2.Integration`" pulumi-lang-python="`apigatewayv2.Integration`" pulumi-lang-yaml="`aws.apigatewayv2.Integration`" pulumi-lang-java="`aws.apigatewayv2.Integration`">`aws.apigatewayv2.Integration`</span>.
  late final Output<String> integrationId;

  /// Integration response key.
  late final Output<String> integrationResponseKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client.
  late final Output<Map<String, String>?> responseTemplates;

  /// The [template selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-template-selection-expressions) for the integration response.
  late final Output<String?> templateSelectionExpression;

  IntegrationResponse2(
    String name, {
    IntegrationResponseArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/integrationResponse:IntegrationResponse',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiId = registerOutput<String>('apiId');
    this.contentHandlingStrategy =
        registerOutput<String?>('contentHandlingStrategy');
    this.integrationId = registerOutput<String>('integrationId');
    this.integrationResponseKey =
        registerOutput<String>('integrationResponseKey');
    this.region = registerOutput<String>('region');
    this.responseTemplates =
        registerOutput<Map<String, String>?>('responseTemplates');
    this.templateSelectionExpression =
        registerOutput<String?>('templateSelectionExpression');
  }
}
