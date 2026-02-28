import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alias_args.dart';
import 'get_alias_result.dart';
import 'get_code_signing_config_args.dart';
import 'get_code_signing_config_result.dart';
import 'get_function_args.dart';
import 'get_function_result.dart';
import 'get_function_url_args.dart';
import 'get_function_url_result.dart';
import 'get_functions_args.dart';
import 'get_functions_result.dart';
import 'get_invocation_args.dart';
import 'get_invocation_result.dart';
import 'get_layer_version_args.dart';
import 'get_layer_version_result.dart';

/// Provides details about an AWS Lambda Alias. Use this data source to retrieve information about an existing Lambda function alias for traffic management, deployment strategies, or API integrations.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.lambda.getAlias({
///     functionName: "my-lambda-function",
///     name: "production",
/// });
/// export const aliasArn = example.then(example => example.arn);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda.get_alias(function_name="my-lambda-function",
///     name="production")
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
///     var example = Aws.Lambda.GetAlias.Invoke(new()
///     {
///         FunctionName = "my-lambda-function",
///         Name = "production",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["aliasArn"] = example.Apply(getAliasResult => getAliasResult.Arn),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := lambda.LookupAlias(ctx, &lambda.LookupAliasArgs{
/// 			FunctionName: "my-lambda-function",
/// 			Name:         "production",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("aliasArn", example.Arn)
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = LambdaFunctions.getAlias(GetAliasArgs.builder()
///             .functionName("my-lambda-function")
///             .name("production")
///             .build());
///
///         ctx.export("aliasArn", example.arn());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:lambda:getAlias
///       arguments:
///         functionName: my-lambda-function
///         name: production
/// outputs:
///   aliasArn: ${example.arn}
/// ```
///
///
/// ### API Gateway Integration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const apiHandler = aws.lambda.getAlias({
///     functionName: "api-handler",
///     name: "live",
/// });
/// const example = new aws.apigateway.Integration("example", {
///     restApi: exampleAwsApiGatewayRestApi.id,
///     resourceId: exampleAwsApiGatewayResource.id,
///     httpMethod: exampleAwsApiGatewayMethod.httpMethod,
///     integrationHttpMethod: "POST",
///     type: "AWS_PROXY",
///     uri: apiHandler.then(apiHandler => apiHandler.invokeArn),
/// });
/// // Grant API Gateway permission to invoke the alias
/// const apiGateway = new aws.lambda.Permission("api_gateway", {
///     statementId: "AllowExecutionFromAPIGateway",
///     action: "lambda:InvokeFunction",
///     "function": apiHandler.then(apiHandler => apiHandler.functionName),
///     principal: "apigateway.amazonaws.com",
///     qualifier: apiHandler.then(apiHandler => apiHandler.name),
///     sourceArn: `${exampleAwsApiGatewayRestApi.executionArn}/*/*`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// api_handler = aws.lambda.get_alias(function_name="api-handler",
///     name="live")
/// example = aws.apigateway.Integration("example",
///     rest_api=example_aws_api_gateway_rest_api["id"],
///     resource_id=example_aws_api_gateway_resource["id"],
///     http_method=example_aws_api_gateway_method["httpMethod"],
///     integration_http_method="POST",
///     type="AWS_PROXY",
///     uri=api_handler.invoke_arn)
/// # Grant API Gateway permission to invoke the alias
/// api_gateway = aws.lambda_.Permission("api_gateway",
///     statement_id="AllowExecutionFromAPIGateway",
///     action="lambda:InvokeFunction",
///     function=api_handler.function_name,
///     principal="apigateway.amazonaws.com",
///     qualifier=api_handler.name,
///     source_arn=f"{example_aws_api_gateway_rest_api['executionArn']}/*/*")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiHandler = Aws.Lambda.GetAlias.Invoke(new()
///     {
///         FunctionName = "api-handler",
///         Name = "live",
///     });
///
///     var example = new Aws.ApiGateway.Integration("example", new()
///     {
///         RestApi = exampleAwsApiGatewayRestApi.Id,
///         ResourceId = exampleAwsApiGatewayResource.Id,
///         HttpMethod = exampleAwsApiGatewayMethod.HttpMethod,
///         IntegrationHttpMethod = "POST",
///         Type = "AWS_PROXY",
///         Uri = apiHandler.Apply(getAliasResult => getAliasResult.InvokeArn),
///     });
///
///     // Grant API Gateway permission to invoke the alias
///     var apiGateway = new Aws.Lambda.Permission("api_gateway", new()
///     {
///         StatementId = "AllowExecutionFromAPIGateway",
///         Action = "lambda:InvokeFunction",
///         Function = apiHandler.Apply(getAliasResult => getAliasResult.FunctionName),
///         Principal = "apigateway.amazonaws.com",
///         Qualifier = apiHandler.Apply(getAliasResult => getAliasResult.Name),
///         SourceArn = $"{exampleAwsApiGatewayRestApi.ExecutionArn}/*/*",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		apiHandler, err := lambda.LookupAlias(ctx, &lambda.LookupAliasArgs{
/// 			FunctionName: "api-handler",
/// 			Name:         "live",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.NewIntegration(ctx, "example", &apigateway.IntegrationArgs{
/// 			RestApi:               pulumi.Any(exampleAwsApiGatewayRestApi.Id),
/// 			ResourceId:            pulumi.Any(exampleAwsApiGatewayResource.Id),
/// 			HttpMethod:            pulumi.Any(exampleAwsApiGatewayMethod.HttpMethod),
/// 			IntegrationHttpMethod: pulumi.String("POST"),
/// 			Type:                  pulumi.String("AWS_PROXY"),
/// 			Uri:                   pulumi.String(apiHandler.InvokeArn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Grant API Gateway permission to invoke the alias
/// 		_, err = lambda.NewPermission(ctx, "api_gateway", &lambda.PermissionArgs{
/// 			StatementId: pulumi.String("AllowExecutionFromAPIGateway"),
/// 			Action:      pulumi.String("lambda:InvokeFunction"),
/// 			Function:    pulumi.String(apiHandler.FunctionName),
/// 			Principal:   pulumi.String("apigateway.amazonaws.com"),
/// 			Qualifier:   pulumi.String(apiHandler.Name),
/// 			SourceArn:   pulumi.Sprintf("%v/*/*", exampleAwsApiGatewayRestApi.ExecutionArn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var apiHandler = LambdaFunctions.getAlias(GetAliasArgs.builder()
///             .functionName("api-handler")
///             .name("live")
///             .build());
///
///         var example = new Integration("example", IntegrationArgs.builder()
///             .restApi(exampleAwsApiGatewayRestApi.id())
///             .resourceId(exampleAwsApiGatewayResource.id())
///             .httpMethod(exampleAwsApiGatewayMethod.httpMethod())
///             .integrationHttpMethod("POST")
///             .type("AWS_PROXY")
///             .uri(apiHandler.invokeArn())
///             .build());
///
///         // Grant API Gateway permission to invoke the alias
///         var apiGateway = new Permission("apiGateway", PermissionArgs.builder()
///             .statementId("AllowExecutionFromAPIGateway")
///             .action("lambda:InvokeFunction")
///             .function(apiHandler.functionName())
///             .principal("apigateway.amazonaws.com")
///             .qualifier(apiHandler.name())
///             .sourceArn(String.format("%s/*/*", exampleAwsApiGatewayRestApi.executionArn()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apigateway:Integration
///     properties:
///       restApi: ${exampleAwsApiGatewayRestApi.id}
///       resourceId: ${exampleAwsApiGatewayResource.id}
///       httpMethod: ${exampleAwsApiGatewayMethod.httpMethod}
///       integrationHttpMethod: POST
///       type: AWS_PROXY
///       uri: ${apiHandler.invokeArn}
///   # Grant API Gateway permission to invoke the alias
///   apiGateway:
///     type: aws:lambda:Permission
///     name: api_gateway
///     properties:
///       statementId: AllowExecutionFromAPIGateway
///       action: lambda:InvokeFunction
///       function: ${apiHandler.functionName}
///       principal: apigateway.amazonaws.com
///       qualifier: ${apiHandler.name}
///       sourceArn: ${exampleAwsApiGatewayRestApi.executionArn}/*/*
/// variables:
///   apiHandler:
///     fn::invoke:
///       function: aws:lambda:getAlias
///       arguments:
///         functionName: api-handler
///         name: live
/// ```
///
///
/// ### Deployment Version Tracking
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Get production alias details
/// const production = aws.lambda.getAlias({
///     functionName: "payment-processor",
///     name: "production",
/// });
/// // Get staging alias details
/// const staging = aws.lambda.getAlias({
///     functionName: "payment-processor",
///     name: "staging",
/// });
/// const versionDrift = Promise.all([production, staging]).then(([production, staging]) => production.functionVersion != staging.functionVersion);
/// export const deploymentStatus = {
///     productionVersion: production.then(production => production.functionVersion),
///     stagingVersion: staging.then(staging => staging.functionVersion),
///     versionDrift: versionDrift,
///     readyForPromotion: !versionDrift,
/// };
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Get production alias details
/// production = aws.lambda.get_alias(function_name="payment-processor",
///     name="production")
/// # Get staging alias details
/// staging = aws.lambda.get_alias(function_name="payment-processor",
///     name="staging")
/// version_drift = production.function_version != staging.function_version
/// pulumi.export("deploymentStatus", {
///     "productionVersion": production.function_version,
///     "stagingVersion": staging.function_version,
///     "versionDrift": version_drift,
///     "readyForPromotion": not version_drift,
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
///     // Get production alias details
///     var production = Aws.Lambda.GetAlias.Invoke(new()
///     {
///         FunctionName = "payment-processor",
///         Name = "production",
///     });
///
///     // Get staging alias details
///     var staging = Aws.Lambda.GetAlias.Invoke(new()
///     {
///         FunctionName = "payment-processor",
///         Name = "staging",
///     });
///
///     var versionDrift = Output.Tuple(production, staging).Apply(values =>
///     {
///         var production = values.Item1;
///         var staging = values.Item2;
///         return production.Apply(getAliasResult => getAliasResult.FunctionVersion) != staging.Apply(getAliasResult => getAliasResult.FunctionVersion);
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["deploymentStatus"] =
///         {
///             { "productionVersion", production.Apply(getAliasResult => getAliasResult.FunctionVersion) },
///             { "stagingVersion", staging.Apply(getAliasResult => getAliasResult.FunctionVersion) },
///             { "versionDrift", versionDrift },
///             { "readyForPromotion", !versionDrift },
///         },
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Get production alias details
/// 		production, err := lambda.LookupAlias(ctx, &lambda.LookupAliasArgs{
/// 			FunctionName: "payment-processor",
/// 			Name:         "production",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Get staging alias details
/// 		staging, err := lambda.LookupAlias(ctx, &lambda.LookupAliasArgs{
/// 			FunctionName: "payment-processor",
/// 			Name:         "staging",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		versionDrift := production.FunctionVersion != staging.FunctionVersion
/// 		ctx.Export("deploymentStatus", pulumi.Map{
/// 			"productionVersion": production.FunctionVersion,
/// 			"stagingVersion":    staging.FunctionVersion,
/// 			"versionDrift":      versionDrift,
/// 			"readyForPromotion": pulumi.Bool(!versionDrift),
/// 		})
/// 		return nil
/// 	})
/// }
/// ```
///
///
/// ### EventBridge Rule Target
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const eventProcessor = aws.lambda.getAlias({
///     functionName: "event-processor",
///     name: "stable",
/// });
/// const example = new aws.cloudwatch.EventRule("example", {
///     name: "capture-events",
///     description: "Capture events for processing",
///     eventPattern: JSON.stringify({
///         source: ["myapp.orders"],
///         "detail-type": ["Order Placed"],
///     }),
/// });
/// const lambda = new aws.cloudwatch.EventTarget("lambda", {
///     rule: example.name,
///     targetId: "SendToLambda",
///     arn: eventProcessor.then(eventProcessor => eventProcessor.arn),
/// });
/// const allowEventbridge = new aws.lambda.Permission("allow_eventbridge", {
///     statementId: "AllowExecutionFromEventBridge",
///     action: "lambda:InvokeFunction",
///     "function": eventProcessor.then(eventProcessor => eventProcessor.functionName),
///     principal: "events.amazonaws.com",
///     qualifier: eventProcessor.then(eventProcessor => eventProcessor.name),
///     sourceArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// event_processor = aws.lambda.get_alias(function_name="event-processor",
///     name="stable")
/// example = aws.cloudwatch.EventRule("example",
///     name="capture-events",
///     description="Capture events for processing",
///     event_pattern=json.dumps({
///         "source": ["myapp.orders"],
///         "detail-type": ["Order Placed"],
///     }))
/// lambda_ = aws.cloudwatch.EventTarget("lambda",
///     rule=example.name,
///     target_id="SendToLambda",
///     arn=event_processor.arn)
/// allow_eventbridge = aws.lambda_.Permission("allow_eventbridge",
///     statement_id="AllowExecutionFromEventBridge",
///     action="lambda:InvokeFunction",
///     function=event_processor.function_name,
///     principal="events.amazonaws.com",
///     qualifier=event_processor.name,
///     source_arn=example.arn)
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
///     var eventProcessor = Aws.Lambda.GetAlias.Invoke(new()
///     {
///         FunctionName = "event-processor",
///         Name = "stable",
///     });
///
///     var example = new Aws.CloudWatch.EventRule("example", new()
///     {
///         Name = "capture-events",
///         Description = "Capture events for processing",
///         EventPattern = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["source"] = new[]
///             {
///                 "myapp.orders",
///             },
///             ["detail-type"] = new[]
///             {
///                 "Order Placed",
///             },
///         }),
///     });
///
///     var lambda = new Aws.CloudWatch.EventTarget("lambda", new()
///     {
///         Rule = example.Name,
///         TargetId = "SendToLambda",
///         Arn = eventProcessor.Apply(getAliasResult => getAliasResult.Arn),
///     });
///
///     var allowEventbridge = new Aws.Lambda.Permission("allow_eventbridge", new()
///     {
///         StatementId = "AllowExecutionFromEventBridge",
///         Action = "lambda:InvokeFunction",
///         Function = eventProcessor.Apply(getAliasResult => getAliasResult.FunctionName),
///         Principal = "events.amazonaws.com",
///         Qualifier = eventProcessor.Apply(getAliasResult => getAliasResult.Name),
///         SourceArn = example.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		eventProcessor, err := lambda.LookupAlias(ctx, &lambda.LookupAliasArgs{
/// 			FunctionName: "event-processor",
/// 			Name:         "stable",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"source": []string{
/// 				"myapp.orders",
/// 			},
/// 			"detail-type": []string{
/// 				"Order Placed",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		example, err := cloudwatch.NewEventRule(ctx, "example", &cloudwatch.EventRuleArgs{
/// 			Name:         pulumi.String("capture-events"),
/// 			Description:  pulumi.String("Capture events for processing"),
/// 			EventPattern: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudwatch.NewEventTarget(ctx, "lambda", &cloudwatch.EventTargetArgs{
/// 			Rule:     example.Name,
/// 			TargetId: pulumi.String("SendToLambda"),
/// 			Arn:      pulumi.String(eventProcessor.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lambda.NewPermission(ctx, "allow_eventbridge", &lambda.PermissionArgs{
/// 			StatementId: pulumi.String("AllowExecutionFromEventBridge"),
/// 			Action:      pulumi.String("lambda:InvokeFunction"),
/// 			Function:    pulumi.String(eventProcessor.FunctionName),
/// 			Principal:   pulumi.String("events.amazonaws.com"),
/// 			Qualifier:   pulumi.String(eventProcessor.Name),
/// 			SourceArn:   example.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var eventProcessor = LambdaFunctions.getAlias(GetAliasArgs.builder()
///             .functionName("event-processor")
///             .name("stable")
///             .build());
///
///         var example = new EventRule("example", EventRuleArgs.builder()
///             .name("capture-events")
///             .description("Capture events for processing")
///             .eventPattern(serializeJson(
///                 jsonObject(
///                     jsonProperty("source", jsonArray("myapp.orders")),
///                     jsonProperty("detail-type", jsonArray("Order Placed"))
///                 )))
///             .build());
///
///         var lambda = new EventTarget("lambda", EventTargetArgs.builder()
///             .rule(example.name())
///             .targetId("SendToLambda")
///             .arn(eventProcessor.arn())
///             .build());
///
///         var allowEventbridge = new Permission("allowEventbridge", PermissionArgs.builder()
///             .statementId("AllowExecutionFromEventBridge")
///             .action("lambda:InvokeFunction")
///             .function(eventProcessor.functionName())
///             .principal("events.amazonaws.com")
///             .qualifier(eventProcessor.name())
///             .sourceArn(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatch:EventRule
///     properties:
///       name: capture-events
///       description: Capture events for processing
///       eventPattern:
///         fn::toJSON:
///           source:
///             - myapp.orders
///           detail-type:
///             - Order Placed
///   lambda:
///     type: aws:cloudwatch:EventTarget
///     properties:
///       rule: ${example.name}
///       targetId: SendToLambda
///       arn: ${eventProcessor.arn}
///   allowEventbridge:
///     type: aws:lambda:Permission
///     name: allow_eventbridge
///     properties:
///       statementId: AllowExecutionFromEventBridge
///       action: lambda:InvokeFunction
///       function: ${eventProcessor.functionName}
///       principal: events.amazonaws.com
///       qualifier: ${eventProcessor.name}
///       sourceArn: ${example.arn}
/// variables:
///   eventProcessor:
///     fn::invoke:
///       function: aws:lambda:getAlias
///       arguments:
///         functionName: event-processor
///         name: stable
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_lambda_get_alias_get_alias_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAliasResult> getAlias(
  GetAliasArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lambda/getAlias:getAlias',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAliasResult.fromMap(result);
}

/// Provides details about an AWS Lambda Code Signing Config. Use this data source to retrieve information about an existing code signing configuration for Lambda functions to ensure code integrity and authenticity.
///
/// For information about Lambda code signing configurations and how to use them, see [configuring code signing for Lambda functions](https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html).
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.lambda.getCodeSigningConfig({
///     arn: "arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-0f6c334abcdea4d8b",
/// });
/// export const configDetails = {
///     configId: example.then(example => example.configId),
///     description: example.then(example => example.description),
///     policy: example.then(example => example.policies?.[0]?.untrustedArtifactOnDeployment),
/// };
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda.get_code_signing_config(arn="arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-0f6c334abcdea4d8b")
/// pulumi.export("configDetails", {
///     "configId": example.config_id,
///     "description": example.description,
///     "policy": example.policies[0].untrusted_artifact_on_deployment,
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
///     var example = Aws.Lambda.GetCodeSigningConfig.Invoke(new()
///     {
///         Arn = "arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-0f6c334abcdea4d8b",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["configDetails"] =
///         {
///             { "configId", example.Apply(getCodeSigningConfigResult => getCodeSigningConfigResult.ConfigId) },
///             { "description", example.Apply(getCodeSigningConfigResult => getCodeSigningConfigResult.Description) },
///             { "policy", example.Apply(getCodeSigningConfigResult => getCodeSigningConfigResult.Policies[0]?.UntrustedArtifactOnDeployment) },
///         },
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := lambda.LookupCodeSigningConfig(ctx, &lambda.LookupCodeSigningConfigArgs{
/// 			Arn: "arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-0f6c334abcdea4d8b",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("configDetails", pulumi.StringMap{
/// 			"configId":    example.ConfigId,
/// 			"description": example.Description,
/// 			"policy":      example.Policies[0].UntrustedArtifactOnDeployment,
/// 		})
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.LambdaFunctions;
/// import com.pulumi.aws.lambda.inputs.GetCodeSigningConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         final var example = LambdaFunctions.getCodeSigningConfig(GetCodeSigningConfigArgs.builder()
///             .arn("arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-0f6c334abcdea4d8b")
///             .build());
///
///         ctx.export("configDetails", Map.ofEntries(
///             Map.entry("configId", example.configId()),
///             Map.entry("description", example.description()),
///             Map.entry("policy", example.policies()[0].untrustedArtifactOnDeployment())
///         ));
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:lambda:getCodeSigningConfig
///       arguments:
///         arn: arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-0f6c334abcdea4d8b
/// outputs:
///   configDetails:
///     configId: ${example.configId}
///     description: ${example.description}
///     policy: ${example.policies[0].untrustedArtifactOnDeployment}
/// ```
///
///
/// ### Use in Lambda Function
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Get existing code signing configuration
/// const securityConfig = aws.lambda.getCodeSigningConfig({
///     arn: codeSigningConfigArn,
/// });
/// // Create Lambda function with code signing
/// const example = new aws.lambda.Function("example", {
///     code: new pulumi.asset.FileArchive("function.zip"),
///     name: "secure-function",
///     role: lambdaRole.arn,
///     handler: "index.handler",
///     runtime: aws.lambda.Runtime.NodeJS20dX,
///     codeSigningConfigArn: securityConfig.then(securityConfig => securityConfig.arn),
///     tags: {
///         Environment: "production",
///         Security: "code-signed",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Get existing code signing configuration
/// security_config = aws.lambda.get_code_signing_config(arn=code_signing_config_arn)
/// # Create Lambda function with code signing
/// example = aws.lambda_.Function("example",
///     code=pulumi.FileArchive("function.zip"),
///     name="secure-function",
///     role=lambda_role["arn"],
///     handler="index.handler",
///     runtime=aws.lambda_.Runtime.NODE_JS20D_X,
///     code_signing_config_arn=security_config.arn,
///     tags={
///         "Environment": "production",
///         "Security": "code-signed",
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
///     // Get existing code signing configuration
///     var securityConfig = Aws.Lambda.GetCodeSigningConfig.Invoke(new()
///     {
///         Arn = codeSigningConfigArn,
///     });
///
///     // Create Lambda function with code signing
///     var example = new Aws.Lambda.Function("example", new()
///     {
///         Code = new FileArchive("function.zip"),
///         Name = "secure-function",
///         Role = lambdaRole.Arn,
///         Handler = "index.handler",
///         Runtime = Aws.Lambda.Runtime.NodeJS20dX,
///         CodeSigningConfigArn = securityConfig.Apply(getCodeSigningConfigResult => getCodeSigningConfigResult.Arn),
///         Tags =
///         {
///             { "Environment", "production" },
///             { "Security", "code-signed" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Get existing code signing configuration
/// 		securityConfig, err := lambda.LookupCodeSigningConfig(ctx, &lambda.LookupCodeSigningConfigArgs{
/// 			Arn: codeSigningConfigArn,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create Lambda function with code signing
/// 		_, err = lambda.NewFunction(ctx, "example", &lambda.FunctionArgs{
/// 			Code:                 pulumi.NewFileArchive("function.zip"),
/// 			Name:                 pulumi.String("secure-function"),
/// 			Role:                 pulumi.Any(lambdaRole.Arn),
/// 			Handler:              pulumi.String("index.handler"),
/// 			Runtime:              pulumi.String(lambda.RuntimeNodeJS20dX),
/// 			CodeSigningConfigArn: pulumi.String(securityConfig.Arn),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
/// 				"Security":    pulumi.String("code-signed"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.LambdaFunctions;
/// import com.pulumi.aws.lambda.inputs.GetCodeSigningConfigArgs;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.asset.FileArchive;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         // Get existing code signing configuration
///         final var securityConfig = LambdaFunctions.getCodeSigningConfig(GetCodeSigningConfigArgs.builder()
///             .arn(codeSigningConfigArn)
///             .build());
///
///         // Create Lambda function with code signing
///         var example = new Function("example", FunctionArgs.builder()
///             .code(new FileArchive("function.zip"))
///             .name("secure-function")
///             .role(lambdaRole.arn())
///             .handler("index.handler")
///             .runtime("nodejs20.x")
///             .codeSigningConfigArn(securityConfig.arn())
///             .tags(Map.ofEntries(
///                 Map.entry("Environment", "production"),
///                 Map.entry("Security", "code-signed")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create Lambda function with code signing
///   example:
///     type: aws:lambda:Function
///     properties:
///       code:
///         fn::FileArchive: function.zip
///       name: secure-function
///       role: ${lambdaRole.arn}
///       handler: index.handler
///       runtime: nodejs20.x
///       codeSigningConfigArn: ${securityConfig.arn}
///       tags:
///         Environment: production
///         Security: code-signed
/// variables:
///   # Get existing code signing configuration
///   securityConfig:
///     fn::invoke:
///       function: aws:lambda:getCodeSigningConfig
///       arguments:
///         arn: ${codeSigningConfigArn}
/// ```
///
///
/// ### Validate Signing Profiles
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// export = async () => {
///     const example = await aws.lambda.getCodeSigningConfig({
///         arn: codeSigningConfigArn,
///     });
///     const allowedProfiles = example.allowedPublishers?.[0]?.signingProfileVersionArns;
///     const requiredProfile = "arn:aws:signer:us-west-2:123456789012:/signing-profiles/MyProfile";
///     const profileAllowed = (await std.contains({
///         input: allowedProfiles,
///         element: requiredProfile,
///     })).result;
///     // Conditional resource creation based on signing profile validation
///     const conditional: aws.lambda.Function[] = [];
///     for (const range = {value: 0}; range.value < (profileAllowed ? 1 : 0); range.value++) {
///         conditional.push(new aws.lambda.Function(`conditional-${range.value}`, {
///             code: new pulumi.asset.FileArchive("function.zip"),
///             name: "conditional-function",
///             role: lambdaRole.arn,
///             handler: "index.handler",
///             runtime: aws.lambda.Runtime.Python3d12,
///             codeSigningConfigArn: example.arn,
///         }));
///     }
///     return {
///         deploymentStatus: {
///             profileAllowed: profileAllowed,
///             functionCreated: profileAllowed,
///             message: profileAllowed ? "Function deployed with valid signing profile" : "Deployment blocked - signing profile not allowed",
///         },
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.lambda.get_code_signing_config(arn=code_signing_config_arn)
/// allowed_profiles = example.allowed_publishers[0].signing_profile_version_arns
/// required_profile = "arn:aws:signer:us-west-2:123456789012:/signing-profiles/MyProfile"
/// profile_allowed = std.contains(input=allowed_profiles,
///     element=required_profile).result
/// # Conditional resource creation based on signing profile validation
/// conditional = []
/// for range in [{"value": i} for i in range(0, 1 if profile_allowed else 0)]:
///     conditional.append(aws.lambda_.Function(f"conditional-{range['value']}",
///         code=pulumi.FileArchive("function.zip"),
///         name="conditional-function",
///         role=lambda_role["arn"],
///         handler="index.handler",
///         runtime=aws.lambda_.Runtime.PYTHON3D12,
///         code_signing_config_arn=example.arn))
/// pulumi.export("deploymentStatus", {
///     "profileAllowed": profile_allowed,
///     "functionCreated": profile_allowed,
///     "message": "Function deployed with valid signing profile" if profile_allowed else "Deployment blocked - signing profile not allowed",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Threading.Tasks;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(async() =>
/// {
///     var example = await Aws.Lambda.GetCodeSigningConfig.InvokeAsync(new()
///     {
///         Arn = codeSigningConfigArn,
///     });
///
///     var allowedProfiles = example.AllowedPublishers[0]?.SigningProfileVersionArns;
///
///     var requiredProfile = "arn:aws:signer:us-west-2:123456789012:/signing-profiles/MyProfile";
///
///     var profileAllowed = (await Std.Contains.InvokeAsync(new()
///     {
///         Input = allowedProfiles,
///         Element = requiredProfile,
///     })).Result;
///
///     // Conditional resource creation based on signing profile validation
///     var conditional = new List<Aws.Lambda.Function>();
///     for (var rangeIndex = 0; rangeIndex < profileAllowed ? 1 : 0; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         conditional.Add(new Aws.Lambda.Function($"conditional-{range.Value}", new()
///         {
///             Code = new FileArchive("function.zip"),
///             Name = "conditional-function",
///             Role = lambdaRole.Arn,
///             Handler = "index.handler",
///             Runtime = Aws.Lambda.Runtime.Python3d12,
///             CodeSigningConfigArn = example.Arn,
///         }));
///     }
///     return new Dictionary<string, object?>
///     {
///         ["deploymentStatus"] =
///         {
///             { "profileAllowed", profileAllowed },
///             { "functionCreated", profileAllowed },
///             { "message", profileAllowed ? "Function deployed with valid signing profile" : "Deployment blocked - signing profile not allowed" },
///         },
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := lambda.LookupCodeSigningConfig(ctx, &lambda.LookupCodeSigningConfigArgs{
/// 			Arn: codeSigningConfigArn,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		allowedProfiles := example.AllowedPublishers[0].SigningProfileVersionArns
/// 		requiredProfile := "arn:aws:signer:us-west-2:123456789012:/signing-profiles/MyProfile"
/// 		profileAllowed := std.Contains(ctx, &std.ContainsArgs{
/// 			Input:   allowedProfiles,
/// 			Element: requiredProfile,
/// 		}, nil).Result
/// 		// Conditional resource creation based on signing profile validation
/// 		var tmp0 float64
/// 		if profileAllowed {
/// 			tmp0 = 1
/// 		} else {
/// 			tmp0 = 0
/// 		}
/// 		var conditional []*lambda.Function
/// 		for index := 0; index < tmp0; index++ {
/// 			key0 := index
/// 			_ := index
/// 			__res, err := lambda.NewFunction(ctx, fmt.Sprintf("conditional-%v", key0), &lambda.FunctionArgs{
/// 				Code:                 pulumi.NewFileArchive("function.zip"),
/// 				Name:                 pulumi.String("conditional-function"),
/// 				Role:                 pulumi.Any(lambdaRole.Arn),
/// 				Handler:              pulumi.String("index.handler"),
/// 				Runtime:              pulumi.String(lambda.RuntimePython3d12),
/// 				CodeSigningConfigArn: pulumi.String(example.Arn),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			conditional = append(conditional, __res)
/// 		}
/// 		var tmp1 string
/// 		if profileAllowed {
/// 			tmp1 = "Function deployed with valid signing profile"
/// 		} else {
/// 			tmp1 = "Deployment blocked - signing profile not allowed"
/// 		}
/// 		ctx.Export("deploymentStatus", pulumi.Map{
/// 			"profileAllowed":  profileAllowed,
/// 			"functionCreated": profileAllowed,
/// 			"message":         tmp1,
/// 		})
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.LambdaFunctions;
/// import com.pulumi.aws.lambda.inputs.GetCodeSigningConfigArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.ContainsArgs;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.asset.FileArchive;
/// import com.pulumi.codegen.internal.KeyedValue;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         final var example = LambdaFunctions.getCodeSigningConfig(GetCodeSigningConfigArgs.builder()
///             .arn(codeSigningConfigArn)
///             .build());
///
///         final var allowedProfiles = example.allowedPublishers()[0].signingProfileVersionArns();
///
///         final var requiredProfile = "arn:aws:signer:us-west-2:123456789012:/signing-profiles/MyProfile";
///
///         final var profileAllowed = StdFunctions.contains(ContainsArgs.builder()
///             .input(allowedProfiles)
///             .element(requiredProfile)
///             .build()).result();
///
///         // Conditional resource creation based on signing profile validation
///         for (var i = 0; i < profileAllowed ? 1 : 0; i++) {
///             new Function("conditional-" + i, FunctionArgs.builder()
///                 .code(new FileArchive("function.zip"))
///                 .name("conditional-function")
///                 .role(lambdaRole.arn())
///                 .handler("index.handler")
///                 .runtime("python3.12")
///                 .codeSigningConfigArn(example.arn())
///                 .build());
///
///
/// }
///         ctx.export("deploymentStatus", Map.ofEntries(
///             Map.entry("profileAllowed", profileAllowed),
///             Map.entry("functionCreated", profileAllowed),
///             Map.entry("message", profileAllowed ? "Function deployed with valid signing profile" : "Deployment blocked - signing profile not allowed")
///         ));
///     }
/// }
/// ```
///
///
/// ### Multi-Environment Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Production code signing config
/// const prod = aws.lambda.getCodeSigningConfig({
///     arn: "arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-prod-123",
/// });
/// // Development code signing config
/// const dev = aws.lambda.getCodeSigningConfig({
///     arn: "arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-dev-456",
/// });
/// const prodPolicy = prod.then(prod => prod.policies?.[0]?.untrustedArtifactOnDeployment);
/// const devPolicy = dev.then(dev => dev.policies?.[0]?.untrustedArtifactOnDeployment);
/// const configComparison = {
///     prodEnforcement: prodPolicy,
///     devEnforcement: devPolicy,
///     policiesMatch: Promise.all([prodPolicy, devPolicy]).then(([prodPolicy, devPolicy]) => prodPolicy == devPolicy),
/// };
/// export const environmentComparison = configComparison;
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Production code signing config
/// prod = aws.lambda.get_code_signing_config(arn="arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-prod-123")
/// # Development code signing config
/// dev = aws.lambda.get_code_signing_config(arn="arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-dev-456")
/// prod_policy = prod.policies[0].untrusted_artifact_on_deployment
/// dev_policy = dev.policies[0].untrusted_artifact_on_deployment
/// config_comparison = {
///     "prodEnforcement": prod_policy,
///     "devEnforcement": dev_policy,
///     "policiesMatch": prod_policy == dev_policy,
/// }
/// pulumi.export("environmentComparison", config_comparison)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Production code signing config
///     var prod = Aws.Lambda.GetCodeSigningConfig.Invoke(new()
///     {
///         Arn = "arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-prod-123",
///     });
///
///     // Development code signing config
///     var dev = Aws.Lambda.GetCodeSigningConfig.Invoke(new()
///     {
///         Arn = "arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-dev-456",
///     });
///
///     var prodPolicy = prod.Apply(getCodeSigningConfigResult => getCodeSigningConfigResult.Policies[0]?.UntrustedArtifactOnDeployment);
///
///     var devPolicy = dev.Apply(getCodeSigningConfigResult => getCodeSigningConfigResult.Policies[0]?.UntrustedArtifactOnDeployment);
///
///     var configComparison =
///     {
///         { "prodEnforcement", prodPolicy },
///         { "devEnforcement", devPolicy },
///         { "policiesMatch", Output.Tuple(prodPolicy, devPolicy).Apply(values =>
///         {
///             var prodPolicy = values.Item1;
///             var devPolicy = values.Item2;
///             return prodPolicy == devPolicy;
///         }) },
///     };
///
///     return new Dictionary<string, object?>
///     {
///         ["environmentComparison"] = configComparison,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Production code signing config
/// 		prod, err := lambda.LookupCodeSigningConfig(ctx, &lambda.LookupCodeSigningConfigArgs{
/// 			Arn: "arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-prod-123",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Development code signing config
/// 		dev, err := lambda.LookupCodeSigningConfig(ctx, &lambda.LookupCodeSigningConfigArgs{
/// 			Arn: "arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-dev-456",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		prodPolicy := prod.Policies[0].UntrustedArtifactOnDeployment
/// 		devPolicy := dev.Policies[0].UntrustedArtifactOnDeployment
/// 		configComparison := map[string]interface{}{
/// 			"prodEnforcement": prodPolicy,
/// 			"devEnforcement":  devPolicy,
/// 			"policiesMatch":   prodPolicy == devPolicy,
/// 		}
/// 		ctx.Export("environmentComparison", configComparison)
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.LambdaFunctions;
/// import com.pulumi.aws.lambda.inputs.GetCodeSigningConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         // Production code signing config
///         final var prod = LambdaFunctions.getCodeSigningConfig(GetCodeSigningConfigArgs.builder()
///             .arn("arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-prod-123")
///             .build());
///
///         // Development code signing config
///         final var dev = LambdaFunctions.getCodeSigningConfig(GetCodeSigningConfigArgs.builder()
///             .arn("arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-dev-456")
///             .build());
///
///         final var prodPolicy = prod.policies()[0].untrustedArtifactOnDeployment();
///
///         final var devPolicy = dev.policies()[0].untrustedArtifactOnDeployment();
///
///         final var configComparison = Map.ofEntries(
///             Map.entry("prodEnforcement", prodPolicy),
///             Map.entry("devEnforcement", devPolicy),
///             Map.entry("policiesMatch", prodPolicy == devPolicy)
///         );
///
///         ctx.export("environmentComparison", configComparison);
///     }
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_lambda_get_code_signing_config_get_code_signing_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCodeSigningConfigResult> getCodeSigningConfig(
  GetCodeSigningConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lambda/getCodeSigningConfig:getCodeSigningConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCodeSigningConfigResult.fromMap(result);
}

/// Provides details about an AWS Lambda Function. Use this data source to obtain information about an existing Lambda function for use in other resources or as a reference for function configurations.
///
/// > **Note:** This data source returns information about the latest version or alias specified by the `qualifier`. If no `qualifier` is provided, it returns information about the most recent published version, or `$LATEST` if no published version exists.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.lambda.getFunction({
///     functionName: "my-lambda-function",
/// });
/// export const functionArn = example.then(example => example.arn);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda.get_function(function_name="my-lambda-function")
/// pulumi.export("functionArn", example.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Lambda.GetFunction.Invoke(new()
///     {
///         FunctionName = "my-lambda-function",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["functionArn"] = example.Apply(getFunctionResult => getFunctionResult.Arn),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := lambda.LookupFunction(ctx, &lambda.LookupFunctionArgs{
/// 			FunctionName: "my-lambda-function",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("functionArn", example.Arn)
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.LambdaFunctions;
/// import com.pulumi.aws.lambda.inputs.GetFunctionArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         final var example = LambdaFunctions.getFunction(GetFunctionArgs.builder()
///             .functionName("my-lambda-function")
///             .build());
///
///         ctx.export("functionArn", example.arn());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:lambda:getFunction
///       arguments:
///         functionName: my-lambda-function
/// outputs:
///   functionArn: ${example.arn}
/// ```
///
///
/// ### Using Function Alias
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.lambda.getFunction({
///     functionName: "api-handler",
///     qualifier: "production",
/// });
/// // Use in API Gateway integration
/// const exampleIntegration = new aws.apigateway.Integration("example", {
///     restApi: exampleAwsApiGatewayRestApi.id,
///     resourceId: exampleAwsApiGatewayResource.id,
///     httpMethod: exampleAwsApiGatewayMethod.httpMethod,
///     integrationHttpMethod: "POST",
///     type: "AWS_PROXY",
///     uri: example.then(example => example.invokeArn),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda.get_function(function_name="api-handler",
///     qualifier="production")
/// # Use in API Gateway integration
/// example_integration = aws.apigateway.Integration("example",
///     rest_api=example_aws_api_gateway_rest_api["id"],
///     resource_id=example_aws_api_gateway_resource["id"],
///     http_method=example_aws_api_gateway_method["httpMethod"],
///     integration_http_method="POST",
///     type="AWS_PROXY",
///     uri=example.invoke_arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Lambda.GetFunction.Invoke(new()
///     {
///         FunctionName = "api-handler",
///         Qualifier = "production",
///     });
///
///     // Use in API Gateway integration
///     var exampleIntegration = new Aws.ApiGateway.Integration("example", new()
///     {
///         RestApi = exampleAwsApiGatewayRestApi.Id,
///         ResourceId = exampleAwsApiGatewayResource.Id,
///         HttpMethod = exampleAwsApiGatewayMethod.HttpMethod,
///         IntegrationHttpMethod = "POST",
///         Type = "AWS_PROXY",
///         Uri = example.Apply(getFunctionResult => getFunctionResult.InvokeArn),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := lambda.LookupFunction(ctx, &lambda.LookupFunctionArgs{
/// 			FunctionName: "api-handler",
/// 			Qualifier:    pulumi.StringRef("production"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Use in API Gateway integration
/// 		_, err = apigateway.NewIntegration(ctx, "example", &apigateway.IntegrationArgs{
/// 			RestApi:               pulumi.Any(exampleAwsApiGatewayRestApi.Id),
/// 			ResourceId:            pulumi.Any(exampleAwsApiGatewayResource.Id),
/// 			HttpMethod:            pulumi.Any(exampleAwsApiGatewayMethod.HttpMethod),
/// 			IntegrationHttpMethod: pulumi.String("POST"),
/// 			Type:                  pulumi.String("AWS_PROXY"),
/// 			Uri:                   pulumi.String(example.InvokeArn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.LambdaFunctions;
/// import com.pulumi.aws.lambda.inputs.GetFunctionArgs;
/// import com.pulumi.aws.apigateway.Integration;
/// import com.pulumi.aws.apigateway.IntegrationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         final var example = LambdaFunctions.getFunction(GetFunctionArgs.builder()
///             .functionName("api-handler")
///             .qualifier("production")
///             .build());
///
///         // Use in API Gateway integration
///         var exampleIntegration = new Integration("exampleIntegration", IntegrationArgs.builder()
///             .restApi(exampleAwsApiGatewayRestApi.id())
///             .resourceId(exampleAwsApiGatewayResource.id())
///             .httpMethod(exampleAwsApiGatewayMethod.httpMethod())
///             .integrationHttpMethod("POST")
///             .type("AWS_PROXY")
///             .uri(example.invokeArn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Use in API Gateway integration
///   exampleIntegration:
///     type: aws:apigateway:Integration
///     name: example
///     properties:
///       restApi: ${exampleAwsApiGatewayRestApi.id}
///       resourceId: ${exampleAwsApiGatewayResource.id}
///       httpMethod: ${exampleAwsApiGatewayMethod.httpMethod}
///       integrationHttpMethod: POST
///       type: AWS_PROXY
///       uri: ${example.invokeArn}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:lambda:getFunction
///       arguments:
///         functionName: api-handler
///         qualifier: production
/// ```
///
///
/// ### Function Configuration Reference
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// function singleOrNone<T>(elements: pulumi.Input<T>[]): pulumi.Input<T> {
///     if (elements.length != 1) {
///         throw new Error("singleOrNone expected input list to have a single element");
///     }
///     return elements[0];
/// }
///
/// // Get existing function details
/// const reference = aws.lambda.getFunction({
///     functionName: "existing-function",
/// });
/// // Create new function with similar configuration
/// const example = new aws.lambda.Function("example", {
///     durableConfig: singleOrNone(.map(entry => ({
///         executionTimeout: entry.value.executionTimeout,
///         retentionPeriod: entry.value.retentionPeriod,
///     }))),
///     code: new pulumi.asset.FileArchive("new-function.zip"),
///     name: "new-function",
///     role: reference.then(reference => reference.role),
///     handler: reference.then(reference => reference.handler),
///     runtime: reference.then(reference => reference.runtime).apply((x) => aws.lambda.Runtime[x]),
///     memorySize: reference.then(reference => reference.memorySize),
///     timeout: reference.then(reference => reference.timeout),
///     architectures: reference.then(reference => reference.architectures),
///     vpcConfig: {
///         subnetIds: reference.then(reference => reference.vpcConfig?.subnetIds),
///         securityGroupIds: reference.then(reference => reference.vpcConfig?.securityGroupIds),
///     },
///     environment: {
///         variables: reference.then(reference => reference.environment?.variables),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// def single_or_none(elements):
///     if len(elements) != 1:
///         raise Exception("single_or_none expected input list to have a single element")
///     return elements[0]
///
///
/// # Get existing function details
/// reference = aws.lambda.get_function(function_name="existing-function")
/// # Create new function with similar configuration
/// example = aws.lambda_.Function("example",
///     durable_config=single_or_none([{"key": k, "value": v} for k, v in reference.durable_configs].apply(lambda entries: [{
///         "executionTimeout": entry["value"].execution_timeout,
///         "retentionPeriod": entry["value"].retention_period,
///     } for entry in entries])),
///     code=pulumi.FileArchive("new-function.zip"),
///     name="new-function",
///     role=reference.role,
///     handler=reference.handler,
///     runtime=reference.runtime.apply(lambda x: aws.lambda_.Runtime(x)),
///     memory_size=reference.memory_size,
///     timeout=reference.timeout,
///     architectures=reference.architectures,
///     vpc_config={
///         "subnet_ids": reference.vpc_config.subnet_ids,
///         "security_group_ids": reference.vpc_config.security_group_ids,
///     },
///     environment={
///         "variables": reference.environment.variables,
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
///     // Get existing function details
///     var reference = Aws.Lambda.GetFunction.Invoke(new()
///     {
///         FunctionName = "existing-function",
///     });
///
///     // Create new function with similar configuration
///     var example = new Aws.Lambda.Function("example", new()
///     {
///         DurableConfig = Enumerable.Single(),
///         Code = new FileArchive("new-function.zip"),
///         Name = "new-function",
///         Role = reference.Apply(getFunctionResult => getFunctionResult.Role),
///         Handler = reference.Apply(getFunctionResult => getFunctionResult.Handler),
///         Runtime = reference.Apply(getFunctionResult => getFunctionResult.Runtime).Apply(System.Enum.Parse<Aws.Lambda.Runtime>),
///         MemorySize = reference.Apply(getFunctionResult => getFunctionResult.MemorySize),
///         Timeout = reference.Apply(getFunctionResult => getFunctionResult.Timeout),
///         Architectures = reference.Apply(getFunctionResult => getFunctionResult.Architectures),
///         VpcConfig = new Aws.Lambda.Inputs.FunctionVpcConfigArgs
///         {
///             SubnetIds = reference.Apply(getFunctionResult => getFunctionResult.VpcConfig?.SubnetIds),
///             SecurityGroupIds = reference.Apply(getFunctionResult => getFunctionResult.VpcConfig?.SecurityGroupIds),
///         },
///         Environment = new Aws.Lambda.Inputs.FunctionEnvironmentArgs
///         {
///             Variables = reference.Apply(getFunctionResult => getFunctionResult.Environment?.Variables),
///         },
///     });
///
/// });
/// ```
///
///
/// ### Function Version Management
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Get details about specific version
/// const version = aws.lambda.getFunction({
///     functionName: "my-function",
///     qualifier: "3",
/// });
/// // Get details about latest version
/// const latest = aws.lambda.getFunction({
///     functionName: "my-function",
///     qualifier: "$LATEST",
/// });
/// export const versionComparison = {
///     specificVersion: version.then(version => version.version),
///     latestVersion: latest.then(latest => latest.version),
///     codeDifference: Promise.all([version, latest]).then(([version, latest]) => version.codeSha256 != latest.codeSha256),
/// };
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Get details about specific version
/// version = aws.lambda.get_function(function_name="my-function",
///     qualifier="3")
/// # Get details about latest version
/// latest = aws.lambda.get_function(function_name="my-function",
///     qualifier="$LATEST")
/// pulumi.export("versionComparison", {
///     "specificVersion": version.version,
///     "latestVersion": latest.version,
///     "codeDifference": version.code_sha256 != latest.code_sha256,
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
///     // Get details about specific version
///     var version = Aws.Lambda.GetFunction.Invoke(new()
///     {
///         FunctionName = "my-function",
///         Qualifier = "3",
///     });
///
///     // Get details about latest version
///     var latest = Aws.Lambda.GetFunction.Invoke(new()
///     {
///         FunctionName = "my-function",
///         Qualifier = "$LATEST",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["versionComparison"] =
///         {
///             { "specificVersion", version.Apply(getFunctionResult => getFunctionResult.Version) },
///             { "latestVersion", latest.Apply(getFunctionResult => getFunctionResult.Version) },
///             { "codeDifference", Output.Tuple(version, latest).Apply(values =>
///             {
///                 var version = values.Item1;
///                 var latest = values.Item2;
///                 return version.Apply(getFunctionResult => getFunctionResult.CodeSha256) != latest.Apply(getFunctionResult => getFunctionResult.CodeSha256);
///             }) },
///         },
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Get details about specific version
/// 		version, err := lambda.LookupFunction(ctx, &lambda.LookupFunctionArgs{
/// 			FunctionName: "my-function",
/// 			Qualifier:    pulumi.StringRef("3"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Get details about latest version
/// 		latest, err := lambda.LookupFunction(ctx, &lambda.LookupFunctionArgs{
/// 			FunctionName: "my-function",
/// 			Qualifier:    pulumi.StringRef("$LATEST"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("versionComparison", pulumi.Map{
/// 			"specificVersion": version.Version,
/// 			"latestVersion":   latest.Version,
/// 			"codeDifference":  pulumi.Bool(version.CodeSha256 != latest.CodeSha256),
/// 		})
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.LambdaFunctions;
/// import com.pulumi.aws.lambda.inputs.GetFunctionArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         // Get details about specific version
///         final var version = LambdaFunctions.getFunction(GetFunctionArgs.builder()
///             .functionName("my-function")
///             .qualifier("3")
///             .build());
///
///         // Get details about latest version
///         final var latest = LambdaFunctions.getFunction(GetFunctionArgs.builder()
///             .functionName("my-function")
///             .qualifier("$LATEST")
///             .build());
///
///         ctx.export("versionComparison", Map.ofEntries(
///             Map.entry("specificVersion", version.version()),
///             Map.entry("latestVersion", latest.version()),
///             Map.entry("codeDifference", version.codeSha256() != latest.codeSha256())
///         ));
///     }
/// }
/// ```
///
///
/// ### Accessing Durable Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const durableFunction = aws.lambda.getFunction({
///     functionName: "my-durable-function",
/// });
/// export const durableSettings = {
///     hasDurableConfig: durableFunction.then(durableFunction => durableFunction.durableConfigs).length.apply(length => length > 0),
///     executionTimeout: pulumi.all([durableFunction.then(durableFunction => durableFunction.durableConfigs).length, durableFunction]).apply(([length, durableFunction]) => length > 0 ? durableFunction.durableConfigs?.[0]?.executionTimeout : null),
///     retentionPeriod: pulumi.all([durableFunction.then(durableFunction => durableFunction.durableConfigs).length, durableFunction]).apply(([length, durableFunction]) => length > 0 ? durableFunction.durableConfigs?.[0]?.retentionPeriod : null),
/// };
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// durable_function = aws.lambda.get_function(function_name="my-durable-function")
/// pulumi.export("durableSettings", {
///     "hasDurableConfig": len(durable_function.durable_configs).apply(lambda length: length > 0),
///     "executionTimeout": len(durable_function.durable_configs).apply(lambda length: durable_function.durable_configs[0].execution_timeout if length > 0 else None),
///     "retentionPeriod": len(durable_function.durable_configs).apply(lambda length: durable_function.durable_configs[0].retention_period if length > 0 else None),
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
///     var durableFunction = Aws.Lambda.GetFunction.Invoke(new()
///     {
///         FunctionName = "my-durable-function",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["durableSettings"] =
///         {
///             { "hasDurableConfig", durableFunction.Apply(getFunctionResult => getFunctionResult.DurableConfigs).Length.Apply(length => length > 0) },
///             { "executionTimeout", Output.Tuple(durableFunction.Apply(getFunctionResult => getFunctionResult.DurableConfigs).Length, durableFunction).Apply(values =>
///             {
///                 var length = values.Item1;
///                 var durableFunction = values.Item2;
///                 return length > 0 ? durableFunction.Apply(getFunctionResult => getFunctionResult.DurableConfigs[0]?.ExecutionTimeout) : null;
///             }) },
///             { "retentionPeriod", Output.Tuple(durableFunction.Apply(getFunctionResult => getFunctionResult.DurableConfigs).Length, durableFunction).Apply(values =>
///             {
///                 var length = values.Item1;
///                 var durableFunction = values.Item2;
///                 return length > 0 ? durableFunction.Apply(getFunctionResult => getFunctionResult.DurableConfigs[0]?.RetentionPeriod) : null;
///             }) },
///         },
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		durableFunction, err := lambda.LookupFunction(ctx, &lambda.LookupFunctionArgs{
/// 			FunctionName: "my-durable-function",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var tmp0 *int
/// 		if length > 0 {
/// 			tmp0 = durableFunction.DurableConfigs[0].ExecutionTimeout
/// 		} else {
/// 			tmp0 = nil
/// 		}
/// 		var tmp1 *int
/// 		if length > 0 {
/// 			tmp1 = durableFunction.DurableConfigs[0].RetentionPeriod
/// 		} else {
/// 			tmp1 = nil
/// 		}
/// 		ctx.Export("durableSettings", pulumi.Map{
/// 			"hasDurableConfig": len(durableFunction.DurableConfigs).ApplyT(func(length int) (bool, error) {
/// 				return bool(length.ApplyT(func(__convert float64) (bool, error) {
/// 					return __convert > 0, nil
/// 				}).(pulumi.BoolOutput)), nil
/// 			}).(pulumi.BoolOutput),
/// 			"executionTimeout": len(durableFunction.DurableConfigs).ApplyT(func(length int) (*int, error) {
/// 				return &tmp0, nil
/// 			}).(pulumi.IntPtrOutput),
/// 			"retentionPeriod": len(durableFunction.DurableConfigs).ApplyT(func(length int) (*int, error) {
/// 				return &tmp1, nil
/// 			}).(pulumi.IntPtrOutput),
/// 		})
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.LambdaFunctions;
/// import com.pulumi.aws.lambda.inputs.GetFunctionArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         final var durableFunction = LambdaFunctions.getFunction(GetFunctionArgs.builder()
///             .functionName("my-durable-function")
///             .build());
///
///         ctx.export("durableSettings", Map.ofEntries(
///             Map.entry("hasDurableConfig", durableFunction.durableConfigs().length().applyValue(_length -> _length > 0)),
///             Map.entry("executionTimeout", durableFunction.durableConfigs().length().applyValue(_length -> _length > 0 ? durableFunction.durableConfigs()[0].executionTimeout() : null)),
///             Map.entry("retentionPeriod", durableFunction.durableConfigs().length().applyValue(_length -> _length > 0 ? durableFunction.durableConfigs()[0].retentionPeriod() : null))
///         ));
///     }
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_lambda_get_function_get_function_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFunctionResult> getFunction(
  GetFunctionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lambda/getFunction:getFunction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionResult.fromMap(result);
}

/// Provides details about an AWS Lambda Function URL. Use this data source to retrieve information about an existing function URL configuration.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.lambda.getFunctionUrl({
///     functionName: "my_lambda_function",
/// });
/// export const functionUrl = example.then(example => example.functionUrl);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda.get_function_url(function_name="my_lambda_function")
/// pulumi.export("functionUrl", example.function_url)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Lambda.GetFunctionUrl.Invoke(new()
///     {
///         FunctionName = "my_lambda_function",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["functionUrl"] = example.Apply(getFunctionUrlResult => getFunctionUrlResult.FunctionUrl),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := lambda.LookupFunctionUrl(ctx, &lambda.LookupFunctionUrlArgs{
/// 			FunctionName: "my_lambda_function",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("functionUrl", example.FunctionUrl)
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.LambdaFunctions;
/// import com.pulumi.aws.lambda.inputs.GetFunctionUrlArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         final var example = LambdaFunctions.getFunctionUrl(GetFunctionUrlArgs.builder()
///             .functionName("my_lambda_function")
///             .build());
///
///         ctx.export("functionUrl", example.functionUrl());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:lambda:getFunctionUrl
///       arguments:
///         functionName: my_lambda_function
/// outputs:
///   functionUrl: ${example.functionUrl}
/// ```
///
///
/// ### With Qualifier
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = aws.lambda.getFunctionUrl({
///     functionName: exampleAwsLambdaFunction.functionName,
///     qualifier: "production",
/// });
/// // Use the URL in other resources
/// const lambdaAlias = new aws.route53.Record("lambda_alias", {
///     zoneId: exampleAwsRoute53Zone.zoneId,
///     name: "api.example.com",
///     type: aws.route53.RecordType.CNAME,
///     ttl: 300,
///     records: [example.then(example => std.replace({
///         text: example.functionUrl,
///         search: "https://",
///         replace: "",
///     })).then(invoke => invoke.result)],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.lambda.get_function_url(function_name=example_aws_lambda_function["functionName"],
///     qualifier="production")
/// # Use the URL in other resources
/// lambda_alias = aws.route53.Record("lambda_alias",
///     zone_id=example_aws_route53_zone["zoneId"],
///     name="api.example.com",
///     type=aws.route53.RecordType.CNAME,
///     ttl=300,
///     records=[std.replace(text=example.function_url,
///         search="https://",
///         replace="").result])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Lambda.GetFunctionUrl.Invoke(new()
///     {
///         FunctionName = exampleAwsLambdaFunction.FunctionName,
///         Qualifier = "production",
///     });
///
///     // Use the URL in other resources
///     var lambdaAlias = new Aws.Route53.Record("lambda_alias", new()
///     {
///         ZoneId = exampleAwsRoute53Zone.ZoneId,
///         Name = "api.example.com",
///         Type = Aws.Route53.RecordType.CNAME,
///         Ttl = 300,
///         Records = new[]
///         {
///             Std.Replace.Invoke(new()
///             {
///                 Text = example.Apply(getFunctionUrlResult => getFunctionUrlResult.FunctionUrl),
///                 Search = "https://",
///                 Replace = "",
///             }).Apply(invoke => invoke.Result),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := lambda.LookupFunctionUrl(ctx, &lambda.LookupFunctionUrlArgs{
/// 			FunctionName: exampleAwsLambdaFunction.FunctionName,
/// 			Qualifier:    pulumi.StringRef("production"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeReplace, err := std.Replace(ctx, &std.ReplaceArgs{
/// 			Text:    example.FunctionUrl,
/// 			Search:  "https://",
/// 			Replace: "",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Use the URL in other resources
/// 		_, err = route53.NewRecord(ctx, "lambda_alias", &route53.RecordArgs{
/// 			ZoneId: pulumi.Any(exampleAwsRoute53Zone.ZoneId),
/// 			Name:   pulumi.String("api.example.com"),
/// 			Type:   pulumi.String(route53.RecordTypeCNAME),
/// 			Ttl:    pulumi.Int(300),
/// 			Records: pulumi.StringArray{
/// 				pulumi.String(invokeReplace.Result),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.LambdaFunctions;
/// import com.pulumi.aws.lambda.inputs.GetFunctionUrlArgs;
/// import com.pulumi.aws.route53.Record;
/// import com.pulumi.aws.route53.RecordArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.ReplaceArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         final var example = LambdaFunctions.getFunctionUrl(GetFunctionUrlArgs.builder()
///             .functionName(exampleAwsLambdaFunction.functionName())
///             .qualifier("production")
///             .build());
///
///         // Use the URL in other resources
///         var lambdaAlias = new Record("lambdaAlias", RecordArgs.builder()
///             .zoneId(exampleAwsRoute53Zone.zoneId())
///             .name("api.example.com")
///             .type("CNAME")
///             .ttl(300)
///             .records(StdFunctions.replace(ReplaceArgs.builder()
///                 .text(example.functionUrl())
///                 .search("https://")
///                 .replace("")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Use the URL in other resources
///   lambdaAlias:
///     type: aws:route53:Record
///     name: lambda_alias
///     properties:
///       zoneId: ${exampleAwsRoute53Zone.zoneId}
///       name: api.example.com
///       type: CNAME
///       ttl: 300
///       records:
///         - fn::invoke:
///             function: std:replace
///             arguments:
///               text: ${example.functionUrl}
///               search: https://
///               replace: ""
///             return: result
/// variables:
///   example:
///     fn::invoke:
///       function: aws:lambda:getFunctionUrl
///       arguments:
///         functionName: ${exampleAwsLambdaFunction.functionName}
///         qualifier: production
/// ```
///
///
/// ### Retrieve CORS Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.lambda.getFunctionUrl({
///     functionName: "api_function",
/// });
/// const corsConfig = pulumi.all([example.then(example => example.cors).length, example]).apply(([length, example]) => length > 0 ? example.cors?.[0] : null);
/// const allowedOrigins = corsConfig != null ? corsConfig?.allowOrigins : [];
/// export const corsAllowedOrigins = allowedOrigins;
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda.get_function_url(function_name="api_function")
/// cors_config = len(example.cors).apply(lambda length: example.cors[0] if length > 0 else None)
/// allowed_origins = cors_config["allowOrigins"] if cors_config != None else []
/// pulumi.export("corsAllowedOrigins", allowed_origins)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Lambda.GetFunctionUrl.Invoke(new()
///     {
///         FunctionName = "api_function",
///     });
///
///     var corsConfig = Output.Tuple(example.Apply(getFunctionUrlResult => getFunctionUrlResult.Cors).Length, example).Apply(values =>
///     {
///         var length = values.Item1;
///         var example = values.Item2;
///         return length > 0 ? example.Apply(getFunctionUrlResult => getFunctionUrlResult.Cors[0]) : null;
///     });
///
///     var allowedOrigins = corsConfig != null ? corsConfig?.AllowOrigins : new[] {};
///
///     return new Dictionary<string, object?>
///     {
///         ["corsAllowedOrigins"] = allowedOrigins,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := lambda.LookupFunctionUrl(ctx, &lambda.LookupFunctionUrlArgs{
/// FunctionName: "api_function",
/// }, nil);
/// if err != nil {
/// return err
/// }
/// var tmp0
/// if length > 0 {
/// tmp0 = example.Cors[0]
/// } else {
/// tmp0 = nil
/// }
/// corsConfig := len(example.Cors).ApplyT(func(length int) (lambda.GetFunctionUrlCor, error) {
/// return tmp0, nil
/// }).(lambda.GetFunctionUrlCorOutput)
/// var tmp1 interface{}
/// if corsConfig != nil {
/// tmp1 = corsConfig.AllowOrigins
/// } else {
/// tmp1 = []interface{}{
/// }
/// }
/// allowedOrigins := tmp1;
/// ctx.Export("corsAllowedOrigins", allowedOrigins)
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
/// import com.pulumi.aws.lambda.inputs.GetFunctionUrlArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         final var example = LambdaFunctions.getFunctionUrl(GetFunctionUrlArgs.builder()
///             .functionName("api_function")
///             .build());
///
///         final var corsConfig = example.cors().length().applyValue(_length -> _length > 0 ? example.cors()[0] : null);
///
///         final var allowedOrigins = corsConfig != null ? corsConfig.allowOrigins() : List.of();
///
///         ctx.export("corsAllowedOrigins", allowedOrigins);
///     }
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_lambda_get_function_url_get_function_url_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFunctionUrlResult> getFunctionUrl(
  GetFunctionUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lambda/getFunctionUrl:getFunctionUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionUrlResult.fromMap(result);
}

/// Provides a list of AWS Lambda Functions in the current region. Use this data source to discover existing Lambda functions for inventory, monitoring, or bulk operations.
///
/// ## Example Usage
///
/// ### List All Functions
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const all = aws.lambda.getFunctions({});
/// export const functionCount = all.then(all => all.functionNames).length;
/// export const allFunctionNames = all.then(all => all.functionNames);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// all = aws.lambda.get_functions()
/// pulumi.export("functionCount", len(all.function_names))
/// pulumi.export("allFunctionNames", all.function_names)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = Aws.Lambda.GetFunctions.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["functionCount"] = all.Apply(getFunctionsResult => getFunctionsResult.FunctionNames).Length,
///         ["allFunctionNames"] = all.Apply(getFunctionsResult => getFunctionsResult.FunctionNames),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		all, err := lambda.GetFunctions(ctx, &lambda.GetFunctionsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("functionCount", len(all.FunctionNames))
/// 		ctx.Export("allFunctionNames", all.FunctionNames)
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.LambdaFunctions;
/// import com.pulumi.aws.lambda.inputs.GetFunctionsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         final var all = LambdaFunctions.getFunctions(GetFunctionsArgs.builder()
///             .build());
///
///         ctx.export("functionCount", all.functionNames().length());
///         ctx.export("allFunctionNames", all.functionNames());
///     }
/// }
/// ```
///
///
/// ### Use Function List for Bulk Operations
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Get all Lambda functions
/// const all = aws.lambda.getFunctions({});
/// // Create CloudWatch alarms for all functions
/// const lambdaErrors: aws.cloudwatch.MetricAlarm[] = [];
/// all.then(all => all.functionNames).length.apply(rangeBody => {
///     for (const range = {value: 0}; range.value < rangeBody; range.value++) {
///         lambdaErrors.push(new aws.cloudwatch.MetricAlarm(`lambda_errors-${range.value}`, {
///             name: all.then(all => `${all.functionNames[range.value]}-errors`),
///             comparisonOperator: "GreaterThanThreshold",
///             evaluationPeriods: 2,
///             metricName: "Errors",
///             namespace: "AWS/Lambda",
///             period: 300,
///             statistic: "Sum",
///             threshold: 5,
///             alarmDescription: "This metric monitors lambda errors",
///             dimensions: {
///                 FunctionName: all.then(all => all.functionNames[range.value]),
///             },
///             tags: {
///                 Environment: "monitoring",
///                 Purpose: "lambda-error-tracking",
///             },
///         }));
///     }
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Get all Lambda functions
/// all = aws.lambda.get_functions()
/// # Create CloudWatch alarms for all functions
/// lambda_errors = []
/// def create_lambda_errors(range_body):
///     for range in [{"value": i} for i in range(0, range_body)]:
///         lambda_errors.append(aws.cloudwatch.MetricAlarm(f"lambda_errors-{range['value']}",
///             name=f"{all.function_names[range['value']]}-errors",
///             comparison_operator="GreaterThanThreshold",
///             evaluation_periods=2,
///             metric_name="Errors",
///             namespace="AWS/Lambda",
///             period=300,
///             statistic="Sum",
///             threshold=5,
///             alarm_description="This metric monitors lambda errors",
///             dimensions={
///                 "FunctionName": all.function_names[range["value"]],
///             },
///             tags={
///                 "Environment": "monitoring",
///                 "Purpose": "lambda-error-tracking",
///             }))
///
/// (len(all.function_names)).apply(create_lambda_errors)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Get all Lambda functions
///     var all = Aws.Lambda.GetFunctions.Invoke();
///
///     // Create CloudWatch alarms for all functions
///     var lambdaErrors = new List<Aws.CloudWatch.MetricAlarm>();
///     for (var rangeIndex = 0; rangeIndex < all.Apply(getFunctionsResult => getFunctionsResult.FunctionNames).Length; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         lambdaErrors.Add(new Aws.CloudWatch.MetricAlarm($"lambda_errors-{range.Value}", new()
///         {
///             Name = $"{all.Apply(getFunctionsResult => getFunctionsResult.FunctionNames)[range.Value]}-errors",
///             ComparisonOperator = "GreaterThanThreshold",
///             EvaluationPeriods = 2,
///             MetricName = "Errors",
///             Namespace = "AWS/Lambda",
///             Period = 300,
///             Statistic = "Sum",
///             Threshold = 5,
///             AlarmDescription = "This metric monitors lambda errors",
///             Dimensions =
///             {
///                 { "FunctionName", all.Apply(getFunctionsResult => getFunctionsResult.FunctionNames)[range.Value] },
///             },
///             Tags =
///             {
///                 { "Environment", "monitoring" },
///                 { "Purpose", "lambda-error-tracking" },
///             },
///         }));
///     }
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Get all Lambda functions
/// 		all, err := lambda.GetFunctions(ctx, &lambda.GetFunctionsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create CloudWatch alarms for all functions
/// 		var lambdaErrors []*cloudwatch.MetricAlarm
/// 		for index := 0; index < int(len(all.FunctionNames)); index++ {
/// 			key0 := index
/// 			val0 := index
/// 			__res, err := cloudwatch.NewMetricAlarm(ctx, fmt.Sprintf("lambda_errors-%v", key0), &cloudwatch.MetricAlarmArgs{
/// 				Name:               pulumi.Sprintf("%v-errors", all.FunctionNames[val0]),
/// 				ComparisonOperator: pulumi.String("GreaterThanThreshold"),
/// 				EvaluationPeriods:  pulumi.Int(2),
/// 				MetricName:         pulumi.String("Errors"),
/// 				Namespace:          pulumi.String("AWS/Lambda"),
/// 				Period:             pulumi.Int(300),
/// 				Statistic:          pulumi.String("Sum"),
/// 				Threshold:          pulumi.Float64(5),
/// 				AlarmDescription:   pulumi.String("This metric monitors lambda errors"),
/// 				Dimensions: pulumi.StringMap{
/// 					"FunctionName": pulumi.String(all.FunctionNames[val0]),
/// 				},
/// 				Tags: pulumi.StringMap{
/// 					"Environment": pulumi.String("monitoring"),
/// 					"Purpose":     pulumi.String("lambda-error-tracking"),
/// 				},
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			lambdaErrors = append(lambdaErrors, __res)
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.LambdaFunctions;
/// import com.pulumi.aws.lambda.inputs.GetFunctionsArgs;
/// import com.pulumi.aws.cloudwatch.MetricAlarm;
/// import com.pulumi.aws.cloudwatch.MetricAlarmArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         // Get all Lambda functions
///         final var all = LambdaFunctions.getFunctions(GetFunctionsArgs.builder()
///             .build());
///
///         // Create CloudWatch alarms for all functions
///         for (var i = 0; i < all.functionNames().length(); i++) {
///             new MetricAlarm("lambdaErrors-" + i, MetricAlarmArgs.builder()
///                 .name(String.format("%s-errors", all.functionNames()[range.value()]))
///                 .comparisonOperator("GreaterThanThreshold")
///                 .evaluationPeriods(2)
///                 .metricName("Errors")
///                 .namespace("AWS/Lambda")
///                 .period(300)
///                 .statistic("Sum")
///                 .threshold(5.0)
///                 .alarmDescription("This metric monitors lambda errors")
///                 .dimensions(Map.of("FunctionName", all.functionNames()[range.value()]))
///                 .tags(Map.ofEntries(
///                     Map.entry("Environment", "monitoring"),
///                     Map.entry("Purpose", "lambda-error-tracking")
///                 ))
///                 .build());
///
///
/// }
///     }
/// }
/// ```
///
///
/// ### Create Function Inventory
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// export = async () => {
///     const all = await aws.lambda.getFunctions({});
///     // Get detailed information for each function
///     const details = .map(__index => (await aws.lambda.getFunction({
///         functionName: all.functionNames[__index],
///     })));
///     const functionInventory = .map(([i, name]) => ({
///         name: name,
///         arn: all.functionArns[i],
///         runtime: details.apply(details => details[i].runtime),
///         memorySize: details.apply(details => details[i].memorySize),
///         timeout: details.apply(details => details[i].timeout),
///         handler: details.apply(details => details[i].handler),
///     }));
///     return {
///         functionInventory: functionInventory,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// all = aws.lambda.get_functions()
/// # Get detailed information for each function
/// details = [aws.lambda.get_function(function_name=all.function_names[__index]) for __index in len(all.function_names).apply(lambda length: range(length))]
/// function_inventory = [{
///     "name": name,
///     "arn": all.function_arns[i],
///     "runtime": details.apply(lambda details: details[i].runtime),
///     "memorySize": details.apply(lambda details: details[i].memory_size),
///     "timeout": details.apply(lambda details: details[i].timeout),
///     "handler": details.apply(lambda details: details[i].handler),
/// } for i, name in all.function_names]
/// pulumi.export("functionInventory", function_inventory)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = Aws.Lambda.GetFunctions.Invoke();
///
///     // Get detailed information for each function
///     var details = ;
///
///     var functionInventory = Output.Tuple(all, all, details, details, details, details).Apply(values =>
///     {
///         var all = values.Item1;
///         var all1 = values.Item2;
///         var details = values.Item3;
///         var details1 = values.Item4;
///         var details2 = values.Item5;
///         var details3 = values.Item6;
///         return .Select(name =>
///         {
///             return
///             {
///                 { "name", name },
///                 { "arn", all1.FunctionArns[i] },
///                 { "runtime", details[i].Runtime },
///                 { "memorySize", details1[i].MemorySize },
///                 { "timeout", details2[i].Timeout },
///                 { "handler", details3[i].Handler },
///             };
///         }).ToList();
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["functionInventory"] = functionInventory,
///     };
/// });
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_lambda_get_functions_get_functions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFunctionsResult> getFunctions(
  GetFunctionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lambda/getFunctions:getFunctions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionsResult.fromMap(result);
}

/// Invokes an AWS Lambda Function and returns its results. Use this data source to execute Lambda functions during Pulumi operations and use their results in other resources or outputs.
///
/// The Lambda function is invoked with [RequestResponse](https://docs.aws.amazon.com/lambda/latest/dg/API_Invoke.html#API_Invoke_RequestSyntax) invocation type.
///
/// > **Note:** The `aws.lambda.Invocation` data source invokes the function during the first `apply` and every subsequent `plan` when the function is known.
///
/// > **Note:** If you get a `KMSAccessDeniedException: Lambda was unable to decrypt the environment variables because KMS access was denied` error when invoking a Lambda function with environment variables, the IAM role associated with the function may have been deleted and recreated after the function was created. You can fix the problem two ways: 1) updating the function's role to another role and then updating it back again to the recreated role. (When you create a function, Lambda grants permissions on the KMS key to the function's IAM role. If the IAM role is recreated, the grant is no longer valid. Changing the function's role or recreating the function causes Lambda to update the grant.)
///
/// ## Example Usage
///
/// ### Basic Invocation
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = aws.lambda.getInvocation({
///     functionName: exampleAwsLambdaFunction.functionName,
///     input: JSON.stringify({
///         operation: "getStatus",
///         id: "123456",
///     }),
/// });
/// export const result = example.then(example => std.jsondecode({
///     input: example.result,
/// })).then(invoke => invoke.result);
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.lambda.get_invocation(function_name=example_aws_lambda_function["functionName"],
///     input=json.dumps({
///         "operation": "getStatus",
///         "id": "123456",
///     }))
/// pulumi.export("result", std.jsondecode(input=example.result).result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Lambda.GetInvocation.Invoke(new()
///     {
///         FunctionName = exampleAwsLambdaFunction.FunctionName,
///         Input = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["operation"] = "getStatus",
///             ["id"] = "123456",
///         }),
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["result"] = Std.Jsondecode.Invoke(new()
///         {
///             Input = example.Apply(getInvocationResult => getInvocationResult.Result),
///         }).Apply(invoke => invoke.Result),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"operation": "getStatus",
/// 			"id":        "123456",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		example, err := lambda.LookupInvocation(ctx, &lambda.LookupInvocationArgs{
/// 			FunctionName: exampleAwsLambdaFunction.FunctionName,
/// 			Input:        json0,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("result", pulumi.Any(std.Jsondecode(ctx, &std.JsondecodeArgs{
/// 			Input: example.Result,
/// 		}, nil).Result))
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.LambdaFunctions;
/// import com.pulumi.aws.lambda.inputs.GetInvocationArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JsondecodeArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         final var example = LambdaFunctions.getInvocation(GetInvocationArgs.builder()
///             .functionName(exampleAwsLambdaFunction.functionName())
///             .input(serializeJson(
///                 jsonObject(
///                     jsonProperty("operation", "getStatus"),
///                     jsonProperty("id", "123456")
///                 )))
///             .build());
///
///         ctx.export("result", StdFunctions.jsondecode(JsondecodeArgs.builder()
///             .input(example.result())
///             .build()).result());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:lambda:getInvocation
///       arguments:
///         functionName: ${exampleAwsLambdaFunction.functionName}
///         input:
///           fn::toJSON:
///             operation: getStatus
///             id: '123456'
/// outputs:
///   result:
///     fn::invoke:
///       function: std:jsondecode
///       arguments:
///         input: ${example.result}
///       return: result
/// ```
///
///
/// ### Dynamic Resource Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// // Get resource configuration from Lambda
/// const resourceConfig = aws.lambda.getInvocation({
///     functionName: "resource-config-generator",
///     qualifier: "production",
///     input: JSON.stringify({
///         environment: environment,
///         region: current.region,
///         service: "api",
///     }),
/// });
/// const config = resourceConfig.then(resourceConfig => std.jsondecode({
///     input: resourceConfig.result,
/// })).then(invoke => invoke.result);
/// // Use dynamic configuration
/// const example = new aws.elasticache.Cluster("example", {
///     clusterId: config?.cache?.clusterId,
///     engine: config?.cache?.engine,
///     nodeType: config?.cache?.nodeType,
///     numCacheNodes: config?.cache?.nodes,
///     parameterGroupName: config?.cache?.parameterGroup,
///     tags: config?.tags,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// # Get resource configuration from Lambda
/// resource_config = aws.lambda.get_invocation(function_name="resource-config-generator",
///     qualifier="production",
///     input=json.dumps({
///         "environment": environment,
///         "region": current["region"],
///         "service": "api",
///     }))
/// config = std.jsondecode(input=resource_config.result).result
/// # Use dynamic configuration
/// example = aws.elasticache.Cluster("example",
///     cluster_id=config["cache"]["clusterId"],
///     engine=config["cache"]["engine"],
///     node_type=config["cache"]["nodeType"],
///     num_cache_nodes=config["cache"]["nodes"],
///     parameter_group_name=config["cache"]["parameterGroup"],
///     tags=config["tags"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Get resource configuration from Lambda
///     var resourceConfig = Aws.Lambda.GetInvocation.Invoke(new()
///     {
///         FunctionName = "resource-config-generator",
///         Qualifier = "production",
///         Input = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["environment"] = environment,
///             ["region"] = current.Region,
///             ["service"] = "api",
///         }),
///     });
///
///     var config = Std.Jsondecode.Invoke(new()
///     {
///         Input = resourceConfig.Apply(getInvocationResult => getInvocationResult.Result),
///     }).Apply(invoke => invoke.Result);
///
///     // Use dynamic configuration
///     var example = new Aws.ElastiCache.Cluster("example", new()
///     {
///         ClusterId = config?.Cache?.ClusterId,
///         Engine = config?.Cache?.Engine,
///         NodeType = config?.Cache?.NodeType,
///         NumCacheNodes = config?.Cache?.Nodes,
///         ParameterGroupName = config?.Cache?.ParameterGroup,
///         Tags = config?.Tags,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticache"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"environment": environment,
/// 			"region":      current.Region,
/// 			"service":     "api",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		// Get resource configuration from Lambda
/// 		resourceConfig, err := lambda.LookupInvocation(ctx, &lambda.LookupInvocationArgs{
/// 			FunctionName: "resource-config-generator",
/// 			Qualifier:    pulumi.StringRef("production"),
/// 			Input:        json0,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		config := std.Jsondecode(ctx, &std.JsondecodeArgs{
/// 			Input: resourceConfig.Result,
/// 		}, nil).Result
/// 		// Use dynamic configuration
/// 		_, err = elasticache.NewCluster(ctx, "example", &elasticache.ClusterArgs{
/// 			ClusterId:          pulumi.Any(config.Cache.ClusterId),
/// 			Engine:             pulumi.Any(config.Cache.Engine),
/// 			NodeType:           pulumi.Any(config.Cache.NodeType),
/// 			NumCacheNodes:      pulumi.Any(config.Cache.Nodes),
/// 			ParameterGroupName: pulumi.Any(config.Cache.ParameterGroup),
/// 			Tags:               pulumi.Any(config.Tags),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.LambdaFunctions;
/// import com.pulumi.aws.lambda.inputs.GetInvocationArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JsondecodeArgs;
/// import com.pulumi.aws.elasticache.Cluster;
/// import com.pulumi.aws.elasticache.ClusterArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         // Get resource configuration from Lambda
///         final var resourceConfig = LambdaFunctions.getInvocation(GetInvocationArgs.builder()
///             .functionName("resource-config-generator")
///             .qualifier("production")
///             .input(serializeJson(
///                 jsonObject(
///                     jsonProperty("environment", environment),
///                     jsonProperty("region", current.region()),
///                     jsonProperty("service", "api")
///                 )))
///             .build());
///
///         final var config = StdFunctions.jsondecode(JsondecodeArgs.builder()
///             .input(resourceConfig.result())
///             .build()).result();
///
///         // Use dynamic configuration
///         var example = new Cluster("example", ClusterArgs.builder()
///             .clusterId(config.cache().clusterId())
///             .engine(config.cache().engine())
///             .nodeType(config.cache().nodeType())
///             .numCacheNodes(config.cache().nodes())
///             .parameterGroupName(config.cache().parameterGroup())
///             .tags(config.tags())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Use dynamic configuration
///   example:
///     type: aws:elasticache:Cluster
///     properties:
///       clusterId: ${config.cache.clusterId}
///       engine: ${config.cache.engine}
///       nodeType: ${config.cache.nodeType}
///       numCacheNodes: ${config.cache.nodes}
///       parameterGroupName: ${config.cache.parameterGroup}
///       tags: ${config.tags}
/// variables:
///   # Get resource configuration from Lambda
///   resourceConfig:
///     fn::invoke:
///       function: aws:lambda:getInvocation
///       arguments:
///         functionName: resource-config-generator
///         qualifier: production
///         input:
///           fn::toJSON:
///             environment: ${environment}
///             region: ${current.region}
///             service: api
///   config:
///     fn::invoke:
///       function: std:jsondecode
///       arguments:
///         input: ${resourceConfig.result}
///       return: result
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_lambda_get_invocation_get_invocation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInvocationResult> getInvocation(
  GetInvocationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lambda/getInvocation:getInvocation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInvocationResult.fromMap(result);
}

/// Provides details about an AWS Lambda Layer Version. Use this data source to retrieve information about a specific layer version or find the latest version compatible with your runtime and architecture requirements.
///
/// ## Example Usage
///
/// ### Get Latest Layer Version
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.lambda.getLayerVersion({
///     layerName: "my-shared-utilities",
/// });
/// // Use the layer in a Lambda function
/// const exampleFunction = new aws.lambda.Function("example", {
///     code: new pulumi.asset.FileArchive("function.zip"),
///     name: "example_function",
///     role: lambdaRole.arn,
///     handler: "index.handler",
///     runtime: aws.lambda.Runtime.NodeJS20dX,
///     layers: [example.then(example => example.arn)],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda.get_layer_version(layer_name="my-shared-utilities")
/// # Use the layer in a Lambda function
/// example_function = aws.lambda_.Function("example",
///     code=pulumi.FileArchive("function.zip"),
///     name="example_function",
///     role=lambda_role["arn"],
///     handler="index.handler",
///     runtime=aws.lambda_.Runtime.NODE_JS20D_X,
///     layers=[example.arn])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Lambda.GetLayerVersion.Invoke(new()
///     {
///         LayerName = "my-shared-utilities",
///     });
///
///     // Use the layer in a Lambda function
///     var exampleFunction = new Aws.Lambda.Function("example", new()
///     {
///         Code = new FileArchive("function.zip"),
///         Name = "example_function",
///         Role = lambdaRole.Arn,
///         Handler = "index.handler",
///         Runtime = Aws.Lambda.Runtime.NodeJS20dX,
///         Layers = new[]
///         {
///             example.Apply(getLayerVersionResult => getLayerVersionResult.Arn),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := lambda.LookupLayerVersion(ctx, &lambda.LookupLayerVersionArgs{
/// 			LayerName: "my-shared-utilities",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Use the layer in a Lambda function
/// 		_, err = lambda.NewFunction(ctx, "example", &lambda.FunctionArgs{
/// 			Code:    pulumi.NewFileArchive("function.zip"),
/// 			Name:    pulumi.String("example_function"),
/// 			Role:    pulumi.Any(lambdaRole.Arn),
/// 			Handler: pulumi.String("index.handler"),
/// 			Runtime: pulumi.String(lambda.RuntimeNodeJS20dX),
/// 			Layers: pulumi.StringArray{
/// 				pulumi.String(example.Arn),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.LambdaFunctions;
/// import com.pulumi.aws.lambda.inputs.GetLayerVersionArgs;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.asset.FileArchive;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         final var example = LambdaFunctions.getLayerVersion(GetLayerVersionArgs.builder()
///             .layerName("my-shared-utilities")
///             .build());
///
///         // Use the layer in a Lambda function
///         var exampleFunction = new Function("exampleFunction", FunctionArgs.builder()
///             .code(new FileArchive("function.zip"))
///             .name("example_function")
///             .role(lambdaRole.arn())
///             .handler("index.handler")
///             .runtime("nodejs20.x")
///             .layers(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Use the layer in a Lambda function
///   exampleFunction:
///     type: aws:lambda:Function
///     name: example
///     properties:
///       code:
///         fn::FileArchive: function.zip
///       name: example_function
///       role: ${lambdaRole.arn}
///       handler: index.handler
///       runtime: nodejs20.x
///       layers:
///         - ${example.arn}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:lambda:getLayerVersion
///       arguments:
///         layerName: my-shared-utilities
/// ```
///
///
/// ### Get Specific Layer Version
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.lambda.getLayerVersion({
///     layerName: "production-utilities",
///     version: 5,
/// });
/// export const layerInfo = {
///     arn: example.then(example => example.arn),
///     version: example.then(example => example.version),
///     description: example.then(example => example.description),
/// };
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda.get_layer_version(layer_name="production-utilities",
///     version=5)
/// pulumi.export("layerInfo", {
///     "arn": example.arn,
///     "version": example.version,
///     "description": example.description,
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
///     var example = Aws.Lambda.GetLayerVersion.Invoke(new()
///     {
///         LayerName = "production-utilities",
///         Version = 5,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["layerInfo"] =
///         {
///             { "arn", example.Apply(getLayerVersionResult => getLayerVersionResult.Arn) },
///             { "version", example.Apply(getLayerVersionResult => getLayerVersionResult.Version) },
///             { "description", example.Apply(getLayerVersionResult => getLayerVersionResult.Description) },
///         },
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := lambda.LookupLayerVersion(ctx, &lambda.LookupLayerVersionArgs{
/// 			LayerName: "production-utilities",
/// 			Version:   pulumi.IntRef(5),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("layerInfo", pulumi.Map{
/// 			"arn":         example.Arn,
/// 			"version":     example.Version,
/// 			"description": example.Description,
/// 		})
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.LambdaFunctions;
/// import com.pulumi.aws.lambda.inputs.GetLayerVersionArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         final var example = LambdaFunctions.getLayerVersion(GetLayerVersionArgs.builder()
///             .layerName("production-utilities")
///             .version(5)
///             .build());
///
///         ctx.export("layerInfo", Map.ofEntries(
///             Map.entry("arn", example.arn()),
///             Map.entry("version", example.version()),
///             Map.entry("description", example.description())
///         ));
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:lambda:getLayerVersion
///       arguments:
///         layerName: production-utilities
///         version: 5
/// outputs:
///   layerInfo:
///     arn: ${example.arn}
///     version: ${example.version}
///     description: ${example.description}
/// ```
///
///
/// ### Get Latest Compatible Layer Version
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Find latest layer version compatible with Python 3.12
/// const pythonLayer = aws.lambda.getLayerVersion({
///     layerName: "python-dependencies",
///     compatibleRuntime: "python3.12",
/// });
/// // Find latest layer version compatible with ARM64 architecture
/// const armLayer = aws.lambda.getLayerVersion({
///     layerName: "optimized-libraries",
///     compatibleArchitecture: "arm64",
/// });
/// // Use both layers in a function
/// const example = new aws.lambda.Function("example", {
///     code: new pulumi.asset.FileArchive("function.zip"),
///     name: "multi_layer_function",
///     role: lambdaRole.arn,
///     handler: "app.handler",
///     runtime: aws.lambda.Runtime.Python3d12,
///     architectures: ["arm64"],
///     layers: [
///         pythonLayer.then(pythonLayer => pythonLayer.arn),
///         armLayer.then(armLayer => armLayer.arn),
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Find latest layer version compatible with Python 3.12
/// python_layer = aws.lambda.get_layer_version(layer_name="python-dependencies",
///     compatible_runtime="python3.12")
/// # Find latest layer version compatible with ARM64 architecture
/// arm_layer = aws.lambda.get_layer_version(layer_name="optimized-libraries",
///     compatible_architecture="arm64")
/// # Use both layers in a function
/// example = aws.lambda_.Function("example",
///     code=pulumi.FileArchive("function.zip"),
///     name="multi_layer_function",
///     role=lambda_role["arn"],
///     handler="app.handler",
///     runtime=aws.lambda_.Runtime.PYTHON3D12,
///     architectures=["arm64"],
///     layers=[
///         python_layer.arn,
///         arm_layer.arn,
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Find latest layer version compatible with Python 3.12
///     var pythonLayer = Aws.Lambda.GetLayerVersion.Invoke(new()
///     {
///         LayerName = "python-dependencies",
///         CompatibleRuntime = "python3.12",
///     });
///
///     // Find latest layer version compatible with ARM64 architecture
///     var armLayer = Aws.Lambda.GetLayerVersion.Invoke(new()
///     {
///         LayerName = "optimized-libraries",
///         CompatibleArchitecture = "arm64",
///     });
///
///     // Use both layers in a function
///     var example = new Aws.Lambda.Function("example", new()
///     {
///         Code = new FileArchive("function.zip"),
///         Name = "multi_layer_function",
///         Role = lambdaRole.Arn,
///         Handler = "app.handler",
///         Runtime = Aws.Lambda.Runtime.Python3d12,
///         Architectures = new[]
///         {
///             "arm64",
///         },
///         Layers = new[]
///         {
///             pythonLayer.Apply(getLayerVersionResult => getLayerVersionResult.Arn),
///             armLayer.Apply(getLayerVersionResult => getLayerVersionResult.Arn),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Find latest layer version compatible with Python 3.12
/// 		pythonLayer, err := lambda.LookupLayerVersion(ctx, &lambda.LookupLayerVersionArgs{
/// 			LayerName:         "python-dependencies",
/// 			CompatibleRuntime: pulumi.StringRef("python3.12"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Find latest layer version compatible with ARM64 architecture
/// 		armLayer, err := lambda.LookupLayerVersion(ctx, &lambda.LookupLayerVersionArgs{
/// 			LayerName:              "optimized-libraries",
/// 			CompatibleArchitecture: pulumi.StringRef("arm64"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Use both layers in a function
/// 		_, err = lambda.NewFunction(ctx, "example", &lambda.FunctionArgs{
/// 			Code:    pulumi.NewFileArchive("function.zip"),
/// 			Name:    pulumi.String("multi_layer_function"),
/// 			Role:    pulumi.Any(lambdaRole.Arn),
/// 			Handler: pulumi.String("app.handler"),
/// 			Runtime: pulumi.String(lambda.RuntimePython3d12),
/// 			Architectures: pulumi.StringArray{
/// 				pulumi.String("arm64"),
/// 			},
/// 			Layers: pulumi.StringArray{
/// 				pulumi.String(pythonLayer.Arn),
/// 				pulumi.String(armLayer.Arn),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.LambdaFunctions;
/// import com.pulumi.aws.lambda.inputs.GetLayerVersionArgs;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.asset.FileArchive;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         // Find latest layer version compatible with Python 3.12
///         final var pythonLayer = LambdaFunctions.getLayerVersion(GetLayerVersionArgs.builder()
///             .layerName("python-dependencies")
///             .compatibleRuntime("python3.12")
///             .build());
///
///         // Find latest layer version compatible with ARM64 architecture
///         final var armLayer = LambdaFunctions.getLayerVersion(GetLayerVersionArgs.builder()
///             .layerName("optimized-libraries")
///             .compatibleArchitecture("arm64")
///             .build());
///
///         // Use both layers in a function
///         var example = new Function("example", FunctionArgs.builder()
///             .code(new FileArchive("function.zip"))
///             .name("multi_layer_function")
///             .role(lambdaRole.arn())
///             .handler("app.handler")
///             .runtime("python3.12")
///             .architectures("arm64")
///             .layers(
///                 pythonLayer.arn(),
///                 armLayer.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Use both layers in a function
///   example:
///     type: aws:lambda:Function
///     properties:
///       code:
///         fn::FileArchive: function.zip
///       name: multi_layer_function
///       role: ${lambdaRole.arn}
///       handler: app.handler
///       runtime: python3.12
///       architectures:
///         - arm64
///       layers:
///         - ${pythonLayer.arn}
///         - ${armLayer.arn}
/// variables:
///   # Find latest layer version compatible with Python 3.12
///   pythonLayer:
///     fn::invoke:
///       function: aws:lambda:getLayerVersion
///       arguments:
///         layerName: python-dependencies
///         compatibleRuntime: python3.12
///   # Find latest layer version compatible with ARM64 architecture
///   armLayer:
///     fn::invoke:
///       function: aws:lambda:getLayerVersion
///       arguments:
///         layerName: optimized-libraries
///         compatibleArchitecture: arm64
/// ```
///
///
/// ### Compare Layer Versions
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Get latest version
/// const latest = aws.lambda.getLayerVersion({
///     layerName: "shared-layer",
/// });
/// // Get specific version for comparison
/// const stable = aws.lambda.getLayerVersion({
///     layerName: "shared-layer",
///     version: 3,
/// });
/// const useLatestLayer = latest.then(latest => latest.version > 5);
/// const selectedLayer = useLatestLayer ? latest.then(latest => latest.arn) : stable.then(stable => stable.arn);
/// export const selectedLayerVersion = useLatestLayer ? latest.then(latest => latest.version) : stable.then(stable => stable.version);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Get latest version
/// latest = aws.lambda.get_layer_version(layer_name="shared-layer")
/// # Get specific version for comparison
/// stable = aws.lambda.get_layer_version(layer_name="shared-layer",
///     version=3)
/// use_latest_layer = latest.version > 5
/// selected_layer = latest.arn if use_latest_layer else stable.arn
/// pulumi.export("selectedLayerVersion", latest.version if use_latest_layer else stable.version)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Get latest version
///     var latest = Aws.Lambda.GetLayerVersion.Invoke(new()
///     {
///         LayerName = "shared-layer",
///     });
///
///     // Get specific version for comparison
///     var stable = Aws.Lambda.GetLayerVersion.Invoke(new()
///     {
///         LayerName = "shared-layer",
///         Version = 3,
///     });
///
///     var useLatestLayer = latest.Apply(getLayerVersionResult => getLayerVersionResult.Version) > 5;
///
///     var selectedLayer = useLatestLayer ? latest.Apply(getLayerVersionResult => getLayerVersionResult.Arn) : stable.Apply(getLayerVersionResult => getLayerVersionResult.Arn);
///
///     return new Dictionary<string, object?>
///     {
///         ["selectedLayerVersion"] = useLatestLayer ? latest.Apply(getLayerVersionResult => getLayerVersionResult.Version) : stable.Apply(getLayerVersionResult => getLayerVersionResult.Version),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Get latest version
/// 		latest, err := lambda.LookupLayerVersion(ctx, &lambda.LookupLayerVersionArgs{
/// 			LayerName: "shared-layer",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Get specific version for comparison
/// 		stable, err := lambda.LookupLayerVersion(ctx, &lambda.LookupLayerVersionArgs{
/// 			LayerName: "shared-layer",
/// 			Version:   pulumi.IntRef(3),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		useLatestLayer := latest.Version > 5
/// 		var tmp0 *string
/// 		if useLatestLayer {
/// 			tmp0 = latest.Arn
/// 		} else {
/// 			tmp0 = stable.Arn
/// 		}
/// 		_ := tmp0
/// 		var tmp1 *int
/// 		if useLatestLayer {
/// 			tmp1 = latest.Version
/// 		} else {
/// 			tmp1 = stable.Version
/// 		}
/// 		ctx.Export("selectedLayerVersion", tmp1)
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.LambdaFunctions;
/// import com.pulumi.aws.lambda.inputs.GetLayerVersionArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         // Get latest version
///         final var latest = LambdaFunctions.getLayerVersion(GetLayerVersionArgs.builder()
///             .layerName("shared-layer")
///             .build());
///
///         // Get specific version for comparison
///         final var stable = LambdaFunctions.getLayerVersion(GetLayerVersionArgs.builder()
///             .layerName("shared-layer")
///             .version(3)
///             .build());
///
///         final var useLatestLayer = latest.version() > 5;
///
///         final var selectedLayer = useLatestLayer ? latest.arn() : stable.arn();
///
///         ctx.export("selectedLayerVersion", useLatestLayer ? latest.version() : stable.version());
///     }
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_lambda_get_layer_version_get_layer_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLayerVersionResult> getLayerVersion(
  GetLayerVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lambda/getLayerVersion:getLayerVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLayerVersionResult.fromMap(result);
}
