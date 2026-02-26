import 'package:pulumi/pulumi.dart';
import '../integration_response_parameter/integration_response_parameter.dart';
import '../integration_tls_config/integration_tls_config2.dart';
import 'integration_args2.dart';

/// Manages an Amazon API Gateway Version 2 integration.
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
/// const example = new aws.apigatewayv2.Integration("example", {
/// apiId: exampleAwsApigatewayv2Api.id,
/// integrationType: "MOCK",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.Integration("example",
/// api_id=example_aws_apigatewayv2_api["id"],
/// integration_type="MOCK")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.ApiGatewayV2.Integration("example", new()
/// {
/// ApiId = exampleAwsApigatewayv2Api.Id,
/// IntegrationType = "MOCK",
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
/// _, err := apigatewayv2.NewIntegration(ctx, "example", &apigatewayv2.IntegrationArgs{
/// ApiId:           pulumi.Any(exampleAwsApigatewayv2Api.Id),
/// IntegrationType: pulumi.String("MOCK"),
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
/// import com.pulumi.aws.apigatewayv2.Integration;
/// import com.pulumi.aws.apigatewayv2.IntegrationArgs;
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
/// var example = new Integration("example", IntegrationArgs.builder()
/// .apiId(exampleAwsApigatewayv2Api.id())
/// .integrationType("MOCK")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:apigatewayv2:Integration
/// properties:
/// apiId: ${exampleAwsApigatewayv2Api.id}
/// integrationType: MOCK
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Lambda Integration
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.Function("example", {
/// code: new pulumi.asset.FileArchive("example.zip"),
/// name: "Example",
/// role: exampleAwsIamRole.arn,
/// handler: "index.handler",
/// runtime: aws.lambda.Runtime.NodeJS20dX,
/// });
/// const exampleIntegration = new aws.apigatewayv2.Integration("example", {
/// apiId: exampleAwsApigatewayv2Api.id,
/// integrationType: "AWS_PROXY",
/// connectionType: "INTERNET",
/// contentHandlingStrategy: "CONVERT_TO_TEXT",
/// description: "Lambda example",
/// integrationMethod: "POST",
/// integrationUri: example.invokeArn,
/// passthroughBehavior: "WHEN_NO_MATCH",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.Function("example",
/// code=pulumi.FileArchive("example.zip"),
/// name="Example",
/// role=example_aws_iam_role["arn"],
/// handler="index.handler",
/// runtime=aws.lambda_.Runtime.NODE_JS20D_X)
/// example_integration = aws.apigatewayv2.Integration("example",
/// api_id=example_aws_apigatewayv2_api["id"],
/// integration_type="AWS_PROXY",
/// connection_type="INTERNET",
/// content_handling_strategy="CONVERT_TO_TEXT",
/// description="Lambda example",
/// integration_method="POST",
/// integration_uri=example.invoke_arn,
/// passthrough_behavior="WHEN_NO_MATCH")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Lambda.Function("example", new()
/// {
/// Code = new FileArchive("example.zip"),
/// Name = "Example",
/// Role = exampleAwsIamRole.Arn,
/// Handler = "index.handler",
/// Runtime = Aws.Lambda.Runtime.NodeJS20dX,
/// });
///
/// var exampleIntegration = new Aws.ApiGatewayV2.Integration("example", new()
/// {
/// ApiId = exampleAwsApigatewayv2Api.Id,
/// IntegrationType = "AWS_PROXY",
/// ConnectionType = "INTERNET",
/// ContentHandlingStrategy = "CONVERT_TO_TEXT",
/// Description = "Lambda example",
/// IntegrationMethod = "POST",
/// IntegrationUri = example.InvokeArn,
/// PassthroughBehavior = "WHEN_NO_MATCH",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigatewayv2"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := lambda.NewFunction(ctx, "example", &lambda.FunctionArgs{
/// Code:    pulumi.NewFileArchive("example.zip"),
/// Name:    pulumi.String("Example"),
/// Role:    pulumi.Any(exampleAwsIamRole.Arn),
/// Handler: pulumi.String("index.handler"),
/// Runtime: pulumi.String(lambda.RuntimeNodeJS20dX),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = apigatewayv2.NewIntegration(ctx, "example", &apigatewayv2.IntegrationArgs{
/// ApiId:                   pulumi.Any(exampleAwsApigatewayv2Api.Id),
/// IntegrationType:         pulumi.String("AWS_PROXY"),
/// ConnectionType:          pulumi.String("INTERNET"),
/// ContentHandlingStrategy: pulumi.String("CONVERT_TO_TEXT"),
/// Description:             pulumi.String("Lambda example"),
/// IntegrationMethod:       pulumi.String("POST"),
/// IntegrationUri:          example.InvokeArn,
/// PassthroughBehavior:     pulumi.String("WHEN_NO_MATCH"),
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
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.aws.apigatewayv2.Integration;
/// import com.pulumi.aws.apigatewayv2.IntegrationArgs;
/// import com.pulumi.asset.FileArchive;
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
/// var example = new Function("example", FunctionArgs.builder()
/// .code(new FileArchive("example.zip"))
/// .name("Example")
/// .role(exampleAwsIamRole.arn())
/// .handler("index.handler")
/// .runtime("nodejs20.x")
/// .build());
///
/// var exampleIntegration = new Integration("exampleIntegration", IntegrationArgs.builder()
/// .apiId(exampleAwsApigatewayv2Api.id())
/// .integrationType("AWS_PROXY")
/// .connectionType("INTERNET")
/// .contentHandlingStrategy("CONVERT_TO_TEXT")
/// .description("Lambda example")
/// .integrationMethod("POST")
/// .integrationUri(example.invokeArn())
/// .passthroughBehavior("WHEN_NO_MATCH")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lambda:Function
/// properties:
/// code:
/// fn::FileArchive: example.zip
/// name: Example
/// role: ${exampleAwsIamRole.arn}
/// handler: index.handler
/// runtime: nodejs20.x
/// exampleIntegration:
/// type: aws:apigatewayv2:Integration
/// name: example
/// properties:
/// apiId: ${exampleAwsApigatewayv2Api.id}
/// integrationType: AWS_PROXY
/// connectionType: INTERNET
/// contentHandlingStrategy: CONVERT_TO_TEXT
/// description: Lambda example
/// integrationMethod: POST
/// integrationUri: ${example.invokeArn}
/// passthroughBehavior: WHEN_NO_MATCH
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### AWS Service Integration
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigatewayv2.Integration("example", {
/// apiId: exampleAwsApigatewayv2Api.id,
/// credentialsArn: exampleAwsIamRole.arn,
/// description: "SQS example",
/// integrationType: "AWS_PROXY",
/// integrationSubtype: "SQS-SendMessage",
/// requestParameters: {
/// QueueUrl: "$request.header.queueUrl",
/// MessageBody: "$request.body.message",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.Integration("example",
/// api_id=example_aws_apigatewayv2_api["id"],
/// credentials_arn=example_aws_iam_role["arn"],
/// description="SQS example",
/// integration_type="AWS_PROXY",
/// integration_subtype="SQS-SendMessage",
/// request_parameters={
/// "QueueUrl": "$request.header.queueUrl",
/// "MessageBody": "$request.body.message",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.ApiGatewayV2.Integration("example", new()
/// {
/// ApiId = exampleAwsApigatewayv2Api.Id,
/// CredentialsArn = exampleAwsIamRole.Arn,
/// Description = "SQS example",
/// IntegrationType = "AWS_PROXY",
/// IntegrationSubtype = "SQS-SendMessage",
/// RequestParameters =
/// {
/// { "QueueUrl", "$request.header.queueUrl" },
/// { "MessageBody", "$request.body.message" },
/// },
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
/// _, err := apigatewayv2.NewIntegration(ctx, "example", &apigatewayv2.IntegrationArgs{
/// ApiId:              pulumi.Any(exampleAwsApigatewayv2Api.Id),
/// CredentialsArn:     pulumi.Any(exampleAwsIamRole.Arn),
/// Description:        pulumi.String("SQS example"),
/// IntegrationType:    pulumi.String("AWS_PROXY"),
/// IntegrationSubtype: pulumi.String("SQS-SendMessage"),
/// RequestParameters: pulumi.StringMap{
/// "QueueUrl":    pulumi.String("$request.header.queueUrl"),
/// "MessageBody": pulumi.String("$request.body.message"),
/// },
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
/// import com.pulumi.aws.apigatewayv2.Integration;
/// import com.pulumi.aws.apigatewayv2.IntegrationArgs;
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
/// var example = new Integration("example", IntegrationArgs.builder()
/// .apiId(exampleAwsApigatewayv2Api.id())
/// .credentialsArn(exampleAwsIamRole.arn())
/// .description("SQS example")
/// .integrationType("AWS_PROXY")
/// .integrationSubtype("SQS-SendMessage")
/// .requestParameters(Map.ofEntries(
/// Map.entry("QueueUrl", "$request.header.queueUrl"),
/// Map.entry("MessageBody", "$request.body.message")
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:apigatewayv2:Integration
/// properties:
/// apiId: ${exampleAwsApigatewayv2Api.id}
/// credentialsArn: ${exampleAwsIamRole.arn}
/// description: SQS example
/// integrationType: AWS_PROXY
/// integrationSubtype: SQS-SendMessage
/// requestParameters:
/// QueueUrl: $request.header.queueUrl
/// MessageBody: $request.body.message
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Private Integration
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigatewayv2.Integration("example", {
/// apiId: exampleAwsApigatewayv2Api.id,
/// credentialsArn: exampleAwsIamRole.arn,
/// description: "Example with a load balancer",
/// integrationType: "HTTP_PROXY",
/// integrationUri: exampleAwsLbListener.arn,
/// integrationMethod: "ANY",
/// connectionType: "VPC_LINK",
/// connectionId: exampleAwsApigatewayv2VpcLink.id,
/// tlsConfig: {
/// serverNameToVerify: "example.com",
/// },
/// requestParameters: {
/// "append:header.authforintegration": "$context.authorizer.authorizerResponse",
/// "overwrite:path": "staticValueForIntegration",
/// },
/// responseParameters: [
/// {
/// statusCode: "403",
/// mappings: {
/// "append:header.auth": "$context.authorizer.authorizerResponse",
/// },
/// },
/// {
/// statusCode: "200",
/// mappings: {
/// "overwrite:statuscode": "204",
/// },
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.Integration("example",
/// api_id=example_aws_apigatewayv2_api["id"],
/// credentials_arn=example_aws_iam_role["arn"],
/// description="Example with a load balancer",
/// integration_type="HTTP_PROXY",
/// integration_uri=example_aws_lb_listener["arn"],
/// integration_method="ANY",
/// connection_type="VPC_LINK",
/// connection_id=example_aws_apigatewayv2_vpc_link["id"],
/// tls_config={
/// "server_name_to_verify": "example.com",
/// },
/// request_parameters={
/// "append:header.authforintegration": "$context.authorizer.authorizerResponse",
/// "overwrite:path": "staticValueForIntegration",
/// },
/// response_parameters=[
/// {
/// "status_code": "403",
/// "mappings": {
/// "append:header.auth": "$context.authorizer.authorizerResponse",
/// },
/// },
/// {
/// "status_code": "200",
/// "mappings": {
/// "overwrite:statuscode": "204",
/// },
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.ApiGatewayV2.Integration("example", new()
/// {
/// ApiId = exampleAwsApigatewayv2Api.Id,
/// CredentialsArn = exampleAwsIamRole.Arn,
/// Description = "Example with a load balancer",
/// IntegrationType = "HTTP_PROXY",
/// IntegrationUri = exampleAwsLbListener.Arn,
/// IntegrationMethod = "ANY",
/// ConnectionType = "VPC_LINK",
/// ConnectionId = exampleAwsApigatewayv2VpcLink.Id,
/// TlsConfig = new Aws.ApiGatewayV2.Inputs.IntegrationTlsConfigArgs
/// {
/// ServerNameToVerify = "example.com",
/// },
/// RequestParameters =
/// {
/// { "append:header.authforintegration", "$context.authorizer.authorizerResponse" },
/// { "overwrite:path", "staticValueForIntegration" },
/// },
/// ResponseParameters = new[]
/// {
/// new Aws.ApiGatewayV2.Inputs.IntegrationResponseParameterArgs
/// {
/// StatusCode = "403",
/// Mappings =
/// {
/// { "append:header.auth", "$context.authorizer.authorizerResponse" },
/// },
/// },
/// new Aws.ApiGatewayV2.Inputs.IntegrationResponseParameterArgs
/// {
/// StatusCode = "200",
/// Mappings =
/// {
/// { "overwrite:statuscode", "204" },
/// },
/// },
/// },
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
/// _, err := apigatewayv2.NewIntegration(ctx, "example", &apigatewayv2.IntegrationArgs{
/// ApiId:             pulumi.Any(exampleAwsApigatewayv2Api.Id),
/// CredentialsArn:    pulumi.Any(exampleAwsIamRole.Arn),
/// Description:       pulumi.String("Example with a load balancer"),
/// IntegrationType:   pulumi.String("HTTP_PROXY"),
/// IntegrationUri:    pulumi.Any(exampleAwsLbListener.Arn),
/// IntegrationMethod: pulumi.String("ANY"),
/// ConnectionType:    pulumi.String("VPC_LINK"),
/// ConnectionId:      pulumi.Any(exampleAwsApigatewayv2VpcLink.Id),
/// TlsConfig: &apigatewayv2.IntegrationTlsConfigArgs{
/// ServerNameToVerify: pulumi.String("example.com"),
/// },
/// RequestParameters: pulumi.StringMap{
/// "append:header.authforintegration": pulumi.String("$context.authorizer.authorizerResponse"),
/// "overwrite:path":                   pulumi.String("staticValueForIntegration"),
/// },
/// ResponseParameters: apigatewayv2.IntegrationResponseParameterArray{
/// &apigatewayv2.IntegrationResponseParameterArgs{
/// StatusCode: pulumi.String("403"),
/// Mappings: pulumi.StringMap{
/// "append:header.auth": pulumi.String("$context.authorizer.authorizerResponse"),
/// },
/// },
/// &apigatewayv2.IntegrationResponseParameterArgs{
/// StatusCode: pulumi.String("200"),
/// Mappings: pulumi.StringMap{
/// "overwrite:statuscode": pulumi.String("204"),
/// },
/// },
/// },
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
/// import com.pulumi.aws.apigatewayv2.Integration;
/// import com.pulumi.aws.apigatewayv2.IntegrationArgs;
/// import com.pulumi.aws.apigatewayv2.inputs.IntegrationTlsConfigArgs;
/// import com.pulumi.aws.apigatewayv2.inputs.IntegrationResponseParameterArgs;
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
/// var example = new Integration("example", IntegrationArgs.builder()
/// .apiId(exampleAwsApigatewayv2Api.id())
/// .credentialsArn(exampleAwsIamRole.arn())
/// .description("Example with a load balancer")
/// .integrationType("HTTP_PROXY")
/// .integrationUri(exampleAwsLbListener.arn())
/// .integrationMethod("ANY")
/// .connectionType("VPC_LINK")
/// .connectionId(exampleAwsApigatewayv2VpcLink.id())
/// .tlsConfig(IntegrationTlsConfigArgs.builder()
/// .serverNameToVerify("example.com")
/// .build())
/// .requestParameters(Map.ofEntries(
/// Map.entry("append:header.authforintegration", "$context.authorizer.authorizerResponse"),
/// Map.entry("overwrite:path", "staticValueForIntegration")
/// ))
/// .responseParameters(
/// IntegrationResponseParameterArgs.builder()
/// .statusCode("403")
/// .mappings(Map.of("append:header.auth", "$context.authorizer.authorizerResponse"))
/// .build(),
/// IntegrationResponseParameterArgs.builder()
/// .statusCode("200")
/// .mappings(Map.of("overwrite:statuscode", "204"))
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:apigatewayv2:Integration
/// properties:
/// apiId: ${exampleAwsApigatewayv2Api.id}
/// credentialsArn: ${exampleAwsIamRole.arn}
/// description: Example with a load balancer
/// integrationType: HTTP_PROXY
/// integrationUri: ${exampleAwsLbListener.arn}
/// integrationMethod: ANY
/// connectionType: VPC_LINK
/// connectionId: ${exampleAwsApigatewayv2VpcLink.id}
/// tlsConfig:
/// serverNameToVerify: example.com
/// requestParameters:
/// append:header.authforintegration: $context.authorizer.authorizerResponse
/// overwrite:path: staticValueForIntegration
/// responseParameters:
/// - statusCode: 403
/// mappings:
/// append:header.auth: $context.authorizer.authorizerResponse
/// - statusCode: 200
/// mappings:
/// overwrite:statuscode: '204'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.apigatewayv2.Integration`" pulumi-lang-dotnet="`aws.apigatewayv2.Integration`" pulumi-lang-go="`apigatewayv2.Integration`" pulumi-lang-python="`apigatewayv2.Integration`" pulumi-lang-yaml="`aws.apigatewayv2.Integration`" pulumi-lang-java="`aws.apigatewayv2.Integration`">`aws.apigatewayv2.Integration`</span> using the API identifier and integration identifier. For example:
///
/// ```sh
/// $ pulumi import aws:apigatewayv2/integration:Integration example aabbccddee/1122334
/// ```
///
/// > **Note:** The API Gateway managed integration created as part of [_quick_create_](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-basic-concept.html#apigateway-definition-quick-create) cannot be imported.
class Integration2 extends CustomResource {
  /// API identifier.
  late final Output<String> apiId;

  /// ID of the VPC link for a private integration. Supported only for HTTP APIs. Must be between 1 and 1024 characters in length.
  late final Output<String?> connectionId;

  /// Type of the network connection to the integration endpoint. Valid values: `INTERNET`, `VPC_LINK`. Default is `INTERNET`.
  late final Output<String?> connectionType;

  /// How to handle response payload content type conversions. Valid values: `CONVERT_TO_BINARY`, `CONVERT_TO_TEXT`. Supported only for WebSocket APIs.
  late final Output<String?> contentHandlingStrategy;

  /// Credentials required for the integration, if any.
  late final Output<String?> credentialsArn;

  /// Description of the integration.
  late final Output<String?> description;

  /// Integration's HTTP method. Must be specified if <span pulumi-lang-nodejs="`integrationType`" pulumi-lang-dotnet="`IntegrationType`" pulumi-lang-go="`integrationType`" pulumi-lang-python="`integration_type`" pulumi-lang-yaml="`integrationType`" pulumi-lang-java="`integrationType`">`integration_type`</span> is not `MOCK`.
  late final Output<String?> integrationMethod;

  /// The [integration response selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-integration-response-selection-expressions) for the integration.
  late final Output<String> integrationResponseSelectionExpression;

  /// AWS service action to invoke. Supported only for HTTP APIs when <span pulumi-lang-nodejs="`integrationType`" pulumi-lang-dotnet="`IntegrationType`" pulumi-lang-go="`integrationType`" pulumi-lang-python="`integration_type`" pulumi-lang-yaml="`integrationType`" pulumi-lang-java="`integrationType`">`integration_type`</span> is `AWS_PROXY`. See the [AWS service integration reference](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html) documentation for supported values. Must be between 1 and 128 characters in length.
  late final Output<String?> integrationSubtype;

  /// Integration type of an integration.
  /// Valid values: `AWS` (supported only for WebSocket APIs), `AWS_PROXY`, `HTTP` (supported only for WebSocket APIs), `HTTP_PROXY`, `MOCK` (supported only for WebSocket APIs). For an HTTP API private integration, use `HTTP_PROXY`.
  late final Output<String> integrationType;

  /// URI of the Lambda function for a Lambda proxy integration, when <span pulumi-lang-nodejs="`integrationType`" pulumi-lang-dotnet="`IntegrationType`" pulumi-lang-go="`integrationType`" pulumi-lang-python="`integration_type`" pulumi-lang-yaml="`integrationType`" pulumi-lang-java="`integrationType`">`integration_type`</span> is `AWS_PROXY`.
  /// For an `HTTP` integration, specify a fully-qualified URL. For an HTTP API private integration, specify the ARN of an Application Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map service.
  late final Output<String?> integrationUri;

  /// Pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the <span pulumi-lang-nodejs="`requestTemplates`" pulumi-lang-dotnet="`RequestTemplates`" pulumi-lang-go="`requestTemplates`" pulumi-lang-python="`request_templates`" pulumi-lang-yaml="`requestTemplates`" pulumi-lang-java="`requestTemplates`">`request_templates`</span> attribute.
  /// Valid values: `WHEN_NO_MATCH`, `WHEN_NO_TEMPLATES`, `NEVER`. Default is `WHEN_NO_MATCH`. Supported only for WebSocket APIs.
  late final Output<String?> passthroughBehavior;

  /// The [format of the payload](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-lambda.html#http-api-develop-integrations-lambda.proxy-format) sent to an integration. Valid values: `1.0`, `2.0`. Default is `1.0`.
  late final Output<String?> payloadFormatVersion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend.
  /// For HTTP APIs with a specified <span pulumi-lang-nodejs="`integrationSubtype`" pulumi-lang-dotnet="`IntegrationSubtype`" pulumi-lang-go="`integrationSubtype`" pulumi-lang-python="`integration_subtype`" pulumi-lang-yaml="`integrationSubtype`" pulumi-lang-java="`integrationSubtype`">`integration_subtype`</span>, a key-value map specifying parameters that are passed to `AWS_PROXY` integrations.
  /// For HTTP APIs without a specified <span pulumi-lang-nodejs="`integrationSubtype`" pulumi-lang-dotnet="`IntegrationSubtype`" pulumi-lang-go="`integrationSubtype`" pulumi-lang-python="`integration_subtype`" pulumi-lang-yaml="`integrationSubtype`" pulumi-lang-java="`integrationSubtype`">`integration_subtype`</span>, a key-value map specifying how to transform HTTP requests before sending them to the backend.
  /// See the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html) for details.
  late final Output<Map<String, String>?> requestParameters;

  /// Map of [Velocity](https://velocity.apache.org/) templates that are applied on the request payload based on the value of the Content-Type header sent by the client. Supported only for WebSocket APIs.
  late final Output<Map<String, String>?> requestTemplates;

  /// Mappings to transform the HTTP response from a backend integration before returning the response to clients. Supported only for HTTP APIs.
  late final Output<List<IntegrationResponseParameter>?> responseParameters;

  /// The [template selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-template-selection-expressions) for the integration.
  late final Output<String?> templateSelectionExpression;

  /// Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for HTTP APIs.
  /// The default timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.
  /// this provider will only perform drift detection of its value when present in a configuration.
  late final Output<int> timeoutMilliseconds;

  /// TLS configuration for a private integration. Supported only for HTTP APIs.
  late final Output<IntegrationTlsConfig2?> tlsConfig;

  Integration2(
    String name, {
    IntegrationArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/integration:Integration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiId = Output.createUnknown<String>();
    this.connectionId = Output.createUnknown<String?>();
    this.connectionType = Output.createUnknown<String?>();
    this.contentHandlingStrategy = Output.createUnknown<String?>();
    this.credentialsArn = Output.createUnknown<String?>();
    this.description = Output.createUnknown<String?>();
    this.integrationMethod = Output.createUnknown<String?>();
    this.integrationResponseSelectionExpression =
        Output.createUnknown<String>();
    this.integrationSubtype = Output.createUnknown<String?>();
    this.integrationType = Output.createUnknown<String>();
    this.integrationUri = Output.createUnknown<String?>();
    this.passthroughBehavior = Output.createUnknown<String?>();
    this.payloadFormatVersion = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
    this.requestParameters = Output.createUnknown<Map<String, String>?>();
    this.requestTemplates = Output.createUnknown<Map<String, String>?>();
    this.responseParameters =
        Output.createUnknown<List<IntegrationResponseParameter>?>();
    this.templateSelectionExpression = Output.createUnknown<String?>();
    this.timeoutMilliseconds = Output.createUnknown<int>();
    this.tlsConfig = Output.createUnknown<IntegrationTlsConfig2?>();
  }
}
