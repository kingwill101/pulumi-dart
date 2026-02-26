import 'package:pulumi/pulumi.dart';
import 'get_function_args2.dart';
import 'get_function_result2.dart';

/// Provides details about an AWS Lambda Function. Use this data source to obtain information about an existing Lambda function for use in other resources or as a reference for function configurations.
///
/// > **Note:** This data source returns information about the latest version or alias specified by the <span pulumi-lang-nodejs="`qualifier`" pulumi-lang-dotnet="`Qualifier`" pulumi-lang-go="`qualifier`" pulumi-lang-python="`qualifier`" pulumi-lang-yaml="`qualifier`" pulumi-lang-java="`qualifier`">`qualifier`</span>. If no <span pulumi-lang-nodejs="`qualifier`" pulumi-lang-dotnet="`Qualifier`" pulumi-lang-go="`qualifier`" pulumi-lang-python="`qualifier`" pulumi-lang-yaml="`qualifier`" pulumi-lang-java="`qualifier`">`qualifier`</span> is provided, it returns information about the most recent published version, or `$LATEST` if no published version exists.
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
/// const example = aws.lambda.getFunction({
/// functionName: "my-lambda-function",
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
/// var example = Aws.Lambda.GetFunction.Invoke(new()
/// {
/// FunctionName = "my-lambda-function",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["functionArn"] = example.Apply(getFunctionResult => getFunctionResult.Arn),
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
/// example, err := lambda.LookupFunction(ctx, &lambda.LookupFunctionArgs{
/// FunctionName: "my-lambda-function",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("functionArn", example.Arn)
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
/// import com.pulumi.aws.lambda.inputs.GetFunctionArgs;
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
/// final var example = LambdaFunctions.getFunction(GetFunctionArgs.builder()
/// .functionName("my-lambda-function")
/// .build());
///
/// ctx.export("functionArn", example.arn());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:lambda:getFunction
/// arguments:
/// functionName: my-lambda-function
/// outputs:
/// functionArn: ${example.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Using Function Alias
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.lambda.getFunction({
/// functionName: "api-handler",
/// qualifier: "production",
/// });
/// // Use in API Gateway integration
/// const exampleIntegration = new aws.apigateway.Integration("example", {
/// restApi: exampleAwsApiGatewayRestApi.id,
/// resourceId: exampleAwsApiGatewayResource.id,
/// httpMethod: exampleAwsApiGatewayMethod.httpMethod,
/// integrationHttpMethod: "POST",
/// type: "AWS_PROXY",
/// uri: example.then(example => example.invokeArn),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda.get_function(function_name="api-handler",
/// qualifier="production")
/// # Use in API Gateway integration
/// example_integration = aws.apigateway.Integration("example",
/// rest_api=example_aws_api_gateway_rest_api["id"],
/// resource_id=example_aws_api_gateway_resource["id"],
/// http_method=example_aws_api_gateway_method["httpMethod"],
/// integration_http_method="POST",
/// type="AWS_PROXY",
/// uri=example.invoke_arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Lambda.GetFunction.Invoke(new()
/// {
/// FunctionName = "api-handler",
/// Qualifier = "production",
/// });
///
/// // Use in API Gateway integration
/// var exampleIntegration = new Aws.ApiGateway.Integration("example", new()
/// {
/// RestApi = exampleAwsApiGatewayRestApi.Id,
/// ResourceId = exampleAwsApiGatewayResource.Id,
/// HttpMethod = exampleAwsApiGatewayMethod.HttpMethod,
/// IntegrationHttpMethod = "POST",
/// Type = "AWS_PROXY",
/// Uri = example.Apply(getFunctionResult => getFunctionResult.InvokeArn),
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
/// example, err := lambda.LookupFunction(ctx, &lambda.LookupFunctionArgs{
/// FunctionName: "api-handler",
/// Qualifier:    pulumi.StringRef("production"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// // Use in API Gateway integration
/// _, err = apigateway.NewIntegration(ctx, "example", &apigateway.IntegrationArgs{
/// RestApi:               pulumi.Any(exampleAwsApiGatewayRestApi.Id),
/// ResourceId:            pulumi.Any(exampleAwsApiGatewayResource.Id),
/// HttpMethod:            pulumi.Any(exampleAwsApiGatewayMethod.HttpMethod),
/// IntegrationHttpMethod: pulumi.String("POST"),
/// Type:                  pulumi.String("AWS_PROXY"),
/// Uri:                   pulumi.String(example.InvokeArn),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var example = LambdaFunctions.getFunction(GetFunctionArgs.builder()
/// .functionName("api-handler")
/// .qualifier("production")
/// .build());
///
/// // Use in API Gateway integration
/// var exampleIntegration = new Integration("exampleIntegration", IntegrationArgs.builder()
/// .restApi(exampleAwsApiGatewayRestApi.id())
/// .resourceId(exampleAwsApiGatewayResource.id())
/// .httpMethod(exampleAwsApiGatewayMethod.httpMethod())
/// .integrationHttpMethod("POST")
/// .type("AWS_PROXY")
/// .uri(example.invokeArn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # Use in API Gateway integration
/// exampleIntegration:
/// type: aws:apigateway:Integration
/// name: example
/// properties:
/// restApi: ${exampleAwsApiGatewayRestApi.id}
/// resourceId: ${exampleAwsApiGatewayResource.id}
/// httpMethod: ${exampleAwsApiGatewayMethod.httpMethod}
/// integrationHttpMethod: POST
/// type: AWS_PROXY
/// uri: ${example.invokeArn}
/// variables:
/// example:
/// fn::invoke:
/// function: aws:lambda:getFunction
/// arguments:
/// functionName: api-handler
/// qualifier: production
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Function Configuration Reference
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// function singleOrNone<T>(elements: pulumi.Input<T>[]): pulumi.Input<T> {
/// if (elements.length != 1) {
/// throw new Error("singleOrNone expected input list to have a single element");
/// }
/// return elements[0];
/// }
///
/// // Get existing function details
/// const reference = aws.lambda.getFunction({
/// functionName: "existing-function",
/// });
/// // Create new function with similar configuration
/// const example = new aws.lambda.Function("example", {
/// durableConfig: singleOrNone(.map(entry => ({
/// executionTimeout: entry.value.executionTimeout,
/// retentionPeriod: entry.value.retentionPeriod,
/// }))),
/// code: new pulumi.asset.FileArchive("new-function.zip"),
/// name: "new-function",
/// role: reference.then(reference => reference.role),
/// handler: reference.then(reference => reference.handler),
/// runtime: reference.then(reference => reference.runtime).apply((x) => aws.lambda.Runtime[x]),
/// memorySize: reference.then(reference => reference.memorySize),
/// timeout: reference.then(reference => reference.timeout),
/// architectures: reference.then(reference => reference.architectures),
/// vpcConfig: {
/// subnetIds: reference.then(reference => reference.vpcConfig?.subnetIds),
/// securityGroupIds: reference.then(reference => reference.vpcConfig?.securityGroupIds),
/// },
/// environment: {
/// variables: reference.then(reference => reference.environment?.variables),
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// def single_or_none(elements):
/// if len(elements) != 1:
/// raise Exception("single_or_none expected input list to have a single element")
/// return elements[0]
///
///
/// # Get existing function details
/// reference = aws.lambda.get_function(function_name="existing-function")
/// # Create new function with similar configuration
/// example = aws.lambda_.Function("example",
/// durable_config=single_or_none([{"key": k, "value": v} for k, v in reference.durable_configs].apply(lambda entries: [{
/// "executionTimeout": entry["value"].execution_timeout,
/// "retentionPeriod": entry["value"].retention_period,
/// } for entry in entries])),
/// code=pulumi.FileArchive("new-function.zip"),
/// name="new-function",
/// role=reference.role,
/// handler=reference.handler,
/// runtime=reference.runtime.apply(lambda x: aws.lambda_.Runtime(x)),
/// memory_size=reference.memory_size,
/// timeout=reference.timeout,
/// architectures=reference.architectures,
/// vpc_config={
/// "subnet_ids": reference.vpc_config.subnet_ids,
/// "security_group_ids": reference.vpc_config.security_group_ids,
/// },
/// environment={
/// "variables": reference.environment.variables,
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
/// // Get existing function details
/// var reference = Aws.Lambda.GetFunction.Invoke(new()
/// {
/// FunctionName = "existing-function",
/// });
///
/// // Create new function with similar configuration
/// var example = new Aws.Lambda.Function("example", new()
/// {
/// DurableConfig = Enumerable.Single(),
/// Code = new FileArchive("new-function.zip"),
/// Name = "new-function",
/// Role = reference.Apply(getFunctionResult => getFunctionResult.Role),
/// Handler = reference.Apply(getFunctionResult => getFunctionResult.Handler),
/// Runtime = reference.Apply(getFunctionResult => getFunctionResult.Runtime).Apply(System.Enum.Parse<Aws.Lambda.Runtime>),
/// MemorySize = reference.Apply(getFunctionResult => getFunctionResult.MemorySize),
/// Timeout = reference.Apply(getFunctionResult => getFunctionResult.Timeout),
/// Architectures = reference.Apply(getFunctionResult => getFunctionResult.Architectures),
/// VpcConfig = new Aws.Lambda.Inputs.FunctionVpcConfigArgs
/// {
/// SubnetIds = reference.Apply(getFunctionResult => getFunctionResult.VpcConfig?.SubnetIds),
/// SecurityGroupIds = reference.Apply(getFunctionResult => getFunctionResult.VpcConfig?.SecurityGroupIds),
/// },
/// Environment = new Aws.Lambda.Inputs.FunctionEnvironmentArgs
/// {
/// Variables = reference.Apply(getFunctionResult => getFunctionResult.Environment?.Variables),
/// },
/// });
///
/// });
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Function Version Management
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Get details about specific version
/// const version = aws.lambda.getFunction({
/// functionName: "my-function",
/// qualifier: "3",
/// });
/// // Get details about latest version
/// const latest = aws.lambda.getFunction({
/// functionName: "my-function",
/// qualifier: "$LATEST",
/// });
/// export const versionComparison = {
/// specificVersion: version.then(version => version.version),
/// latestVersion: latest.then(latest => latest.version),
/// codeDifference: Promise.all([version, latest]).then(([version, latest]) => version.codeSha256 != latest.codeSha256),
/// };
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Get details about specific version
/// version = aws.lambda.get_function(function_name="my-function",
/// qualifier="3")
/// # Get details about latest version
/// latest = aws.lambda.get_function(function_name="my-function",
/// qualifier="$LATEST")
/// pulumi.export("versionComparison", {
/// "specificVersion": version.version,
/// "latestVersion": latest.version,
/// "codeDifference": version.code_sha256 != latest.code_sha256,
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
/// // Get details about specific version
/// var version = Aws.Lambda.GetFunction.Invoke(new()
/// {
/// FunctionName = "my-function",
/// Qualifier = "3",
/// });
///
/// // Get details about latest version
/// var latest = Aws.Lambda.GetFunction.Invoke(new()
/// {
/// FunctionName = "my-function",
/// Qualifier = "$LATEST",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["versionComparison"] =
/// {
/// { "specificVersion", version.Apply(getFunctionResult => getFunctionResult.Version) },
/// { "latestVersion", latest.Apply(getFunctionResult => getFunctionResult.Version) },
/// { "codeDifference", Output.Tuple(version, latest).Apply(values =>
/// {
/// var version = values.Item1;
/// var latest = values.Item2;
/// return version.Apply(getFunctionResult => getFunctionResult.CodeSha256) != latest.Apply(getFunctionResult => getFunctionResult.CodeSha256);
/// }) },
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
/// // Get details about specific version
/// version, err := lambda.LookupFunction(ctx, &lambda.LookupFunctionArgs{
/// FunctionName: "my-function",
/// Qualifier:    pulumi.StringRef("3"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// // Get details about latest version
/// latest, err := lambda.LookupFunction(ctx, &lambda.LookupFunctionArgs{
/// FunctionName: "my-function",
/// Qualifier:    pulumi.StringRef("$LATEST"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("versionComparison", pulumi.Map{
/// "specificVersion": version.Version,
/// "latestVersion":   latest.Version,
/// "codeDifference":  pulumi.Bool(version.CodeSha256 != latest.CodeSha256),
/// })
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
/// import com.pulumi.aws.lambda.inputs.GetFunctionArgs;
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
/// // Get details about specific version
/// final var version = LambdaFunctions.getFunction(GetFunctionArgs.builder()
/// .functionName("my-function")
/// .qualifier("3")
/// .build());
///
/// // Get details about latest version
/// final var latest = LambdaFunctions.getFunction(GetFunctionArgs.builder()
/// .functionName("my-function")
/// .qualifier("$LATEST")
/// .build());
///
/// ctx.export("versionComparison", Map.ofEntries(
/// Map.entry("specificVersion", version.version()),
/// Map.entry("latestVersion", latest.version()),
/// Map.entry("codeDifference", version.codeSha256() != latest.codeSha256())
/// ));
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Accessing Durable Configuration
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const durableFunction = aws.lambda.getFunction({
/// functionName: "my-durable-function",
/// });
/// export const durableSettings = {
/// hasDurableConfig: durableFunction.then(durableFunction => durableFunction.durableConfigs).length.apply(length => length > 0),
/// executionTimeout: pulumi.all([durableFunction.then(durableFunction => durableFunction.durableConfigs).length, durableFunction]).apply(([length, durableFunction]) => length > 0 ? durableFunction.durableConfigs?.[0]?.executionTimeout : null),
/// retentionPeriod: pulumi.all([durableFunction.then(durableFunction => durableFunction.durableConfigs).length, durableFunction]).apply(([length, durableFunction]) => length > 0 ? durableFunction.durableConfigs?.[0]?.retentionPeriod : null),
/// };
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// durable_function = aws.lambda.get_function(function_name="my-durable-function")
/// pulumi.export("durableSettings", {
/// "hasDurableConfig": len(durable_function.durable_configs).apply(lambda length: length > 0),
/// "executionTimeout": len(durable_function.durable_configs).apply(lambda length: durable_function.durable_configs[0].execution_timeout if length > 0 else None),
/// "retentionPeriod": len(durable_function.durable_configs).apply(lambda length: durable_function.durable_configs[0].retention_period if length > 0 else None),
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
/// var durableFunction = Aws.Lambda.GetFunction.Invoke(new()
/// {
/// FunctionName = "my-durable-function",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["durableSettings"] =
/// {
/// { "hasDurableConfig", durableFunction.Apply(getFunctionResult => getFunctionResult.DurableConfigs).Length.Apply(length => length > 0) },
/// { "executionTimeout", Output.Tuple(durableFunction.Apply(getFunctionResult => getFunctionResult.DurableConfigs).Length, durableFunction).Apply(values =>
/// {
/// var length = values.Item1;
/// var durableFunction = values.Item2;
/// return length > 0 ? durableFunction.Apply(getFunctionResult => getFunctionResult.DurableConfigs[0]?.ExecutionTimeout) : null;
/// }) },
/// { "retentionPeriod", Output.Tuple(durableFunction.Apply(getFunctionResult => getFunctionResult.DurableConfigs).Length, durableFunction).Apply(values =>
/// {
/// var length = values.Item1;
/// var durableFunction = values.Item2;
/// return length > 0 ? durableFunction.Apply(getFunctionResult => getFunctionResult.DurableConfigs[0]?.RetentionPeriod) : null;
/// }) },
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
/// durableFunction, err := lambda.LookupFunction(ctx, &lambda.LookupFunctionArgs{
/// FunctionName: "my-durable-function",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// var tmp0 *int
/// if length > 0 {
/// tmp0 = durableFunction.DurableConfigs[0].ExecutionTimeout
/// } else {
/// tmp0 = nil
/// }
/// var tmp1 *int
/// if length > 0 {
/// tmp1 = durableFunction.DurableConfigs[0].RetentionPeriod
/// } else {
/// tmp1 = nil
/// }
/// ctx.Export("durableSettings", pulumi.Map{
/// "hasDurableConfig": len(durableFunction.DurableConfigs).ApplyT(func(length int) (bool, error) {
/// return bool(length.ApplyT(func(__convert float64) (bool, error) {
/// return __convert > 0, nil
/// }).(pulumi.BoolOutput)), nil
/// }).(pulumi.BoolOutput),
/// "executionTimeout": len(durableFunction.DurableConfigs).ApplyT(func(length int) (*int, error) {
/// return &tmp0, nil
/// }).(pulumi.IntPtrOutput),
/// "retentionPeriod": len(durableFunction.DurableConfigs).ApplyT(func(length int) (*int, error) {
/// return &tmp1, nil
/// }).(pulumi.IntPtrOutput),
/// })
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
/// import com.pulumi.aws.lambda.inputs.GetFunctionArgs;
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
/// final var durableFunction = LambdaFunctions.getFunction(GetFunctionArgs.builder()
/// .functionName("my-durable-function")
/// .build());
///
/// ctx.export("durableSettings", Map.ofEntries(
/// Map.entry("hasDurableConfig", durableFunction.durableConfigs().length().applyValue(_length -> _length > 0)),
/// Map.entry("executionTimeout", durableFunction.durableConfigs().length().applyValue(_length -> _length > 0 ? durableFunction.durableConfigs()[0].executionTimeout() : null)),
/// Map.entry("retentionPeriod", durableFunction.durableConfigs().length().applyValue(_length -> _length > 0 ? durableFunction.durableConfigs()[0].retentionPeriod() : null))
/// ));
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetFunctionResult2> getFunction2(
  GetFunctionArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lambda/getFunction:getFunction',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFunctionResult2.fromMap(result);
}
