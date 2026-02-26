import 'package:pulumi/pulumi.dart';
import 'get_alias_args2.dart';
import 'get_alias_result2.dart';

/// Provides details about an AWS Lambda Alias. Use this data source to retrieve information about an existing Lambda function alias for traffic management, deployment strategies, or API integrations.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.lambda.getAlias({
/// functionName: "my-lambda-function",
/// name: "production",
/// });
/// export const aliasArn = example.then(example => example.arn);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda.get_alias(function_name="my-lambda-function",
/// name="production")
/// pulumi.export("aliasArn", example.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Lambda.GetAlias.Invoke(new()
/// {
/// FunctionName = "my-lambda-function",
/// Name = "production",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["aliasArn"] = example.Apply(getAliasResult => getAliasResult.Arn),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := lambda.LookupAlias(ctx, &lambda.LookupAliasArgs{
/// FunctionName: "my-lambda-function",
/// Name:         "production",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("aliasArn", example.Arn)
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
/// import com.pulumi.aws.lambda.LambdaFunctions;
/// import com.pulumi.aws.lambda.inputs.GetAliasArgs;
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
/// final var example = LambdaFunctions.getAlias(GetAliasArgs.builder()
/// .functionName("my-lambda-function")
/// .name("production")
/// .build());
///
/// ctx.export("aliasArn", example.arn());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:lambda:getAlias
/// arguments:
/// functionName: my-lambda-function
/// name: production
/// outputs:
/// aliasArn: ${example.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### API Gateway Integration
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const apiHandler = aws.lambda.getAlias({
/// functionName: "api-handler",
/// name: "live",
/// });
/// const example = new aws.apigateway.Integration("example", {
/// restApi: exampleAwsApiGatewayRestApi.id,
/// resourceId: exampleAwsApiGatewayResource.id,
/// httpMethod: exampleAwsApiGatewayMethod.httpMethod,
/// integrationHttpMethod: "POST",
/// type: "AWS_PROXY",
/// uri: apiHandler.then(apiHandler => apiHandler.invokeArn),
/// });
/// // Grant API Gateway permission to invoke the alias
/// const apiGateway = new aws.lambda.Permission("api_gateway", {
/// statementId: "AllowExecutionFromAPIGateway",
/// action: "lambda:InvokeFunction",
/// "function": apiHandler.then(apiHandler => apiHandler.functionName),
/// principal: "apigateway.amazonaws.com",
/// qualifier: apiHandler.then(apiHandler => apiHandler.name),
/// sourceArn: `${exampleAwsApiGatewayRestApi.executionArn}/*/*`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// api_handler = aws.lambda.get_alias(function_name="api-handler",
/// name="live")
/// example = aws.apigateway.Integration("example",
/// rest_api=example_aws_api_gateway_rest_api["id"],
/// resource_id=example_aws_api_gateway_resource["id"],
/// http_method=example_aws_api_gateway_method["httpMethod"],
/// integration_http_method="POST",
/// type="AWS_PROXY",
/// uri=api_handler.invoke_arn)
/// # Grant API Gateway permission to invoke the alias
/// api_gateway = aws.lambda_.Permission("api_gateway",
/// statement_id="AllowExecutionFromAPIGateway",
/// action="lambda:InvokeFunction",
/// function=api_handler.function_name,
/// principal="apigateway.amazonaws.com",
/// qualifier=api_handler.name,
/// source_arn=f"{example_aws_api_gateway_rest_api['executionArn']}/*/*")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var apiHandler = Aws.Lambda.GetAlias.Invoke(new()
/// {
/// FunctionName = "api-handler",
/// Name = "live",
/// });
///
/// var example = new Aws.ApiGateway.Integration("example", new()
/// {
/// RestApi = exampleAwsApiGatewayRestApi.Id,
/// ResourceId = exampleAwsApiGatewayResource.Id,
/// HttpMethod = exampleAwsApiGatewayMethod.HttpMethod,
/// IntegrationHttpMethod = "POST",
/// Type = "AWS_PROXY",
/// Uri = apiHandler.Apply(getAliasResult => getAliasResult.InvokeArn),
/// });
///
/// // Grant API Gateway permission to invoke the alias
/// var apiGateway = new Aws.Lambda.Permission("api_gateway", new()
/// {
/// StatementId = "AllowExecutionFromAPIGateway",
/// Action = "lambda:InvokeFunction",
/// Function = apiHandler.Apply(getAliasResult => getAliasResult.FunctionName),
/// Principal = "apigateway.amazonaws.com",
/// Qualifier = apiHandler.Apply(getAliasResult => getAliasResult.Name),
/// SourceArn = $"{exampleAwsApiGatewayRestApi.ExecutionArn}/*/*",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// apiHandler, err := lambda.LookupAlias(ctx, &lambda.LookupAliasArgs{
/// FunctionName: "api-handler",
/// Name:         "live",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = apigateway.NewIntegration(ctx, "example", &apigateway.IntegrationArgs{
/// RestApi:               pulumi.Any(exampleAwsApiGatewayRestApi.Id),
/// ResourceId:            pulumi.Any(exampleAwsApiGatewayResource.Id),
/// HttpMethod:            pulumi.Any(exampleAwsApiGatewayMethod.HttpMethod),
/// IntegrationHttpMethod: pulumi.String("POST"),
/// Type:                  pulumi.String("AWS_PROXY"),
/// Uri:                   pulumi.String(apiHandler.InvokeArn),
/// })
/// if err != nil {
/// return err
/// }
/// // Grant API Gateway permission to invoke the alias
/// _, err = lambda.NewPermission(ctx, "api_gateway", &lambda.PermissionArgs{
/// StatementId: pulumi.String("AllowExecutionFromAPIGateway"),
/// Action:      pulumi.String("lambda:InvokeFunction"),
/// Function:    pulumi.String(apiHandler.FunctionName),
/// Principal:   pulumi.String("apigateway.amazonaws.com"),
/// Qualifier:   pulumi.String(apiHandler.Name),
/// SourceArn:   pulumi.Sprintf("%v/*/*", exampleAwsApiGatewayRestApi.ExecutionArn),
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
/// import com.pulumi.aws.lambda.LambdaFunctions;
/// import com.pulumi.aws.lambda.inputs.GetAliasArgs;
/// import com.pulumi.aws.apigateway.Integration;
/// import com.pulumi.aws.apigateway.IntegrationArgs;
/// import com.pulumi.aws.lambda.Permission;
/// import com.pulumi.aws.lambda.PermissionArgs;
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
/// final var apiHandler = LambdaFunctions.getAlias(GetAliasArgs.builder()
/// .functionName("api-handler")
/// .name("live")
/// .build());
///
/// var example = new Integration("example", IntegrationArgs.builder()
/// .restApi(exampleAwsApiGatewayRestApi.id())
/// .resourceId(exampleAwsApiGatewayResource.id())
/// .httpMethod(exampleAwsApiGatewayMethod.httpMethod())
/// .integrationHttpMethod("POST")
/// .type("AWS_PROXY")
/// .uri(apiHandler.invokeArn())
/// .build());
///
/// // Grant API Gateway permission to invoke the alias
/// var apiGateway = new Permission("apiGateway", PermissionArgs.builder()
/// .statementId("AllowExecutionFromAPIGateway")
/// .action("lambda:InvokeFunction")
/// .function(apiHandler.functionName())
/// .principal("apigateway.amazonaws.com")
/// .qualifier(apiHandler.name())
/// .sourceArn(String.format("%s/*/*", exampleAwsApiGatewayRestApi.executionArn()))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:apigateway:Integration
/// properties:
/// restApi: ${exampleAwsApiGatewayRestApi.id}
/// resourceId: ${exampleAwsApiGatewayResource.id}
/// httpMethod: ${exampleAwsApiGatewayMethod.httpMethod}
/// integrationHttpMethod: POST
/// type: AWS_PROXY
/// uri: ${apiHandler.invokeArn}
/// # Grant API Gateway permission to invoke the alias
/// apiGateway:
/// type: aws:lambda:Permission
/// name: api_gateway
/// properties:
/// statementId: AllowExecutionFromAPIGateway
/// action: lambda:InvokeFunction
/// function: ${apiHandler.functionName}
/// principal: apigateway.amazonaws.com
/// qualifier: ${apiHandler.name}
/// sourceArn: ${exampleAwsApiGatewayRestApi.executionArn}/*/*
/// variables:
/// apiHandler:
/// fn::invoke:
/// function: aws:lambda:getAlias
/// arguments:
/// functionName: api-handler
/// name: live
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Deployment Version Tracking
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Get production alias details
/// const production = aws.lambda.getAlias({
/// functionName: "payment-processor",
/// name: "production",
/// });
/// // Get staging alias details
/// const staging = aws.lambda.getAlias({
/// functionName: "payment-processor",
/// name: "staging",
/// });
/// const versionDrift = Promise.all([production, staging]).then(([production, staging]) => production.functionVersion != staging.functionVersion);
/// export const deploymentStatus = {
/// productionVersion: production.then(production => production.functionVersion),
/// stagingVersion: staging.then(staging => staging.functionVersion),
/// versionDrift: versionDrift,
/// readyForPromotion: !versionDrift,
/// };
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Get production alias details
/// production = aws.lambda.get_alias(function_name="payment-processor",
/// name="production")
/// # Get staging alias details
/// staging = aws.lambda.get_alias(function_name="payment-processor",
/// name="staging")
/// version_drift = production.function_version != staging.function_version
/// pulumi.export("deploymentStatus", {
/// "productionVersion": production.function_version,
/// "stagingVersion": staging.function_version,
/// "versionDrift": version_drift,
/// "readyForPromotion": not version_drift,
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
/// // Get production alias details
/// var production = Aws.Lambda.GetAlias.Invoke(new()
/// {
/// FunctionName = "payment-processor",
/// Name = "production",
/// });
///
/// // Get staging alias details
/// var staging = Aws.Lambda.GetAlias.Invoke(new()
/// {
/// FunctionName = "payment-processor",
/// Name = "staging",
/// });
///
/// var versionDrift = Output.Tuple(production, staging).Apply(values =>
/// {
/// var production = values.Item1;
/// var staging = values.Item2;
/// return production.Apply(getAliasResult => getAliasResult.FunctionVersion) != staging.Apply(getAliasResult => getAliasResult.FunctionVersion);
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["deploymentStatus"] =
/// {
/// { "productionVersion", production.Apply(getAliasResult => getAliasResult.FunctionVersion) },
/// { "stagingVersion", staging.Apply(getAliasResult => getAliasResult.FunctionVersion) },
/// { "versionDrift", versionDrift },
/// { "readyForPromotion", !versionDrift },
/// },
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // Get production alias details
/// production, err := lambda.LookupAlias(ctx, &lambda.LookupAliasArgs{
/// FunctionName: "payment-processor",
/// Name:         "production",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// // Get staging alias details
/// staging, err := lambda.LookupAlias(ctx, &lambda.LookupAliasArgs{
/// FunctionName: "payment-processor",
/// Name:         "staging",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// versionDrift := production.FunctionVersion != staging.FunctionVersion
/// ctx.Export("deploymentStatus", pulumi.Map{
/// "productionVersion": production.FunctionVersion,
/// "stagingVersion":    staging.FunctionVersion,
/// "versionDrift":      versionDrift,
/// "readyForPromotion": pulumi.Bool(!versionDrift),
/// })
/// return nil
/// })
/// }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### EventBridge Rule Target
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const eventProcessor = aws.lambda.getAlias({
/// functionName: "event-processor",
/// name: "stable",
/// });
/// const example = new aws.cloudwatch.EventRule("example", {
/// name: "capture-events",
/// description: "Capture events for processing",
/// eventPattern: JSON.stringify({
/// source: ["myapp.orders"],
/// "detail-type": ["Order Placed"],
/// }),
/// });
/// const lambda = new aws.cloudwatch.EventTarget("lambda", {
/// rule: example.name,
/// targetId: "SendToLambda",
/// arn: eventProcessor.then(eventProcessor => eventProcessor.arn),
/// });
/// const allowEventbridge = new aws.lambda.Permission("allow_eventbridge", {
/// statementId: "AllowExecutionFromEventBridge",
/// action: "lambda:InvokeFunction",
/// "function": eventProcessor.then(eventProcessor => eventProcessor.functionName),
/// principal: "events.amazonaws.com",
/// qualifier: eventProcessor.then(eventProcessor => eventProcessor.name),
/// sourceArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// event_processor = aws.lambda.get_alias(function_name="event-processor",
/// name="stable")
/// example = aws.cloudwatch.EventRule("example",
/// name="capture-events",
/// description="Capture events for processing",
/// event_pattern=json.dumps({
/// "source": ["myapp.orders"],
/// "detail-type": ["Order Placed"],
/// }))
/// lambda_ = aws.cloudwatch.EventTarget("lambda",
/// rule=example.name,
/// target_id="SendToLambda",
/// arn=event_processor.arn)
/// allow_eventbridge = aws.lambda_.Permission("allow_eventbridge",
/// statement_id="AllowExecutionFromEventBridge",
/// action="lambda:InvokeFunction",
/// function=event_processor.function_name,
/// principal="events.amazonaws.com",
/// qualifier=event_processor.name,
/// source_arn=example.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var eventProcessor = Aws.Lambda.GetAlias.Invoke(new()
/// {
/// FunctionName = "event-processor",
/// Name = "stable",
/// });
///
/// var example = new Aws.CloudWatch.EventRule("example", new()
/// {
/// Name = "capture-events",
/// Description = "Capture events for processing",
/// EventPattern = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["source"] = new[]
/// {
/// "myapp.orders",
/// },
/// ["detail-type"] = new[]
/// {
/// "Order Placed",
/// },
/// }),
/// });
///
/// var lambda = new Aws.CloudWatch.EventTarget("lambda", new()
/// {
/// Rule = example.Name,
/// TargetId = "SendToLambda",
/// Arn = eventProcessor.Apply(getAliasResult => getAliasResult.Arn),
/// });
///
/// var allowEventbridge = new Aws.Lambda.Permission("allow_eventbridge", new()
/// {
/// StatementId = "AllowExecutionFromEventBridge",
/// Action = "lambda:InvokeFunction",
/// Function = eventProcessor.Apply(getAliasResult => getAliasResult.FunctionName),
/// Principal = "events.amazonaws.com",
/// Qualifier = eventProcessor.Apply(getAliasResult => getAliasResult.Name),
/// SourceArn = example.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// eventProcessor, err := lambda.LookupAlias(ctx, &lambda.LookupAliasArgs{
/// FunctionName: "event-processor",
/// Name:         "stable",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "source": []string{
/// "myapp.orders",
/// },
/// "detail-type": []string{
/// "Order Placed",
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// example, err := cloudwatch.NewEventRule(ctx, "example", &cloudwatch.EventRuleArgs{
/// Name:         pulumi.String("capture-events"),
/// Description:  pulumi.String("Capture events for processing"),
/// EventPattern: pulumi.String(json0),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cloudwatch.NewEventTarget(ctx, "lambda", &cloudwatch.EventTargetArgs{
/// Rule:     example.Name,
/// TargetId: pulumi.String("SendToLambda"),
/// Arn:      pulumi.String(eventProcessor.Arn),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = lambda.NewPermission(ctx, "allow_eventbridge", &lambda.PermissionArgs{
/// StatementId: pulumi.String("AllowExecutionFromEventBridge"),
/// Action:      pulumi.String("lambda:InvokeFunction"),
/// Function:    pulumi.String(eventProcessor.FunctionName),
/// Principal:   pulumi.String("events.amazonaws.com"),
/// Qualifier:   pulumi.String(eventProcessor.Name),
/// SourceArn:   example.Arn,
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
/// import com.pulumi.aws.lambda.LambdaFunctions;
/// import com.pulumi.aws.lambda.inputs.GetAliasArgs;
/// import com.pulumi.aws.cloudwatch.EventRule;
/// import com.pulumi.aws.cloudwatch.EventRuleArgs;
/// import com.pulumi.aws.cloudwatch.EventTarget;
/// import com.pulumi.aws.cloudwatch.EventTargetArgs;
/// import com.pulumi.aws.lambda.Permission;
/// import com.pulumi.aws.lambda.PermissionArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
/// final var eventProcessor = LambdaFunctions.getAlias(GetAliasArgs.builder()
/// .functionName("event-processor")
/// .name("stable")
/// .build());
///
/// var example = new EventRule("example", EventRuleArgs.builder()
/// .name("capture-events")
/// .description("Capture events for processing")
/// .eventPattern(serializeJson(
/// jsonObject(
/// jsonProperty("source", jsonArray("myapp.orders")),
/// jsonProperty("detail-type", jsonArray("Order Placed"))
/// )))
/// .build());
///
/// var lambda = new EventTarget("lambda", EventTargetArgs.builder()
/// .rule(example.name())
/// .targetId("SendToLambda")
/// .arn(eventProcessor.arn())
/// .build());
///
/// var allowEventbridge = new Permission("allowEventbridge", PermissionArgs.builder()
/// .statementId("AllowExecutionFromEventBridge")
/// .action("lambda:InvokeFunction")
/// .function(eventProcessor.functionName())
/// .principal("events.amazonaws.com")
/// .qualifier(eventProcessor.name())
/// .sourceArn(example.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudwatch:EventRule
/// properties:
/// name: capture-events
/// description: Capture events for processing
/// eventPattern:
/// fn::toJSON:
/// source:
/// - myapp.orders
/// detail-type:
/// - Order Placed
/// lambda:
/// type: aws:cloudwatch:EventTarget
/// properties:
/// rule: ${example.name}
/// targetId: SendToLambda
/// arn: ${eventProcessor.arn}
/// allowEventbridge:
/// type: aws:lambda:Permission
/// name: allow_eventbridge
/// properties:
/// statementId: AllowExecutionFromEventBridge
/// action: lambda:InvokeFunction
/// function: ${eventProcessor.functionName}
/// principal: events.amazonaws.com
/// qualifier: ${eventProcessor.name}
/// sourceArn: ${example.arn}
/// variables:
/// eventProcessor:
/// fn::invoke:
/// function: aws:lambda:getAlias
/// arguments:
/// functionName: event-processor
/// name: stable
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAliasResult2> getAlias2(
  GetAliasArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lambda/getAlias:getAlias',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAliasResult2.fromMap(result);
}
