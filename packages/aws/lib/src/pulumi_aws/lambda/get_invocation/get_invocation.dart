import 'package:pulumi/pulumi.dart';
import 'get_invocation_args.dart';
import 'get_invocation_result.dart';

/// Invokes an AWS Lambda Function and returns its results. Use this data source to execute Lambda functions during Pulumi operations and use their results in other resources or outputs.
///
/// The Lambda function is invoked with [RequestResponse](https://docs.aws.amazon.com/lambda/latest/dg/API_Invoke.html#API_Invoke_RequestSyntax) invocation type.
///
/// > **Note:** The <span pulumi-lang-nodejs="`aws.lambda.Invocation`" pulumi-lang-dotnet="`aws.lambda.Invocation`" pulumi-lang-go="`lambda.Invocation`" pulumi-lang-python="`lambda.Invocation`" pulumi-lang-yaml="`aws.lambda.Invocation`" pulumi-lang-java="`aws.lambda.Invocation`">`aws.lambda.Invocation`</span> data source invokes the function during the first <span pulumi-lang-nodejs="`apply`" pulumi-lang-dotnet="`Apply`" pulumi-lang-go="`apply`" pulumi-lang-python="`apply`" pulumi-lang-yaml="`apply`" pulumi-lang-java="`apply`">`apply`</span> and every subsequent <span pulumi-lang-nodejs="`plan`" pulumi-lang-dotnet="`Plan`" pulumi-lang-go="`plan`" pulumi-lang-python="`plan`" pulumi-lang-yaml="`plan`" pulumi-lang-java="`plan`">`plan`</span> when the function is known.
///
/// > **Note:** If you get a `KMSAccessDeniedException: Lambda was unable to decrypt the environment variables because KMS access was denied` error when invoking a Lambda function with environment variables, the IAM role associated with the function may have been deleted and recreated after the function was created. You can fix the problem two ways: 1) updating the function's role to another role and then updating it back again to the recreated role. (When you create a function, Lambda grants permissions on the KMS key to the function's IAM role. If the IAM role is recreated, the grant is no longer valid. Changing the function's role or recreating the function causes Lambda to update the grant.)
///
/// ## Example Usage
///
/// ### Basic Invocation
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = aws.lambda.getInvocation({
/// functionName: exampleAwsLambdaFunction.functionName,
/// input: JSON.stringify({
/// operation: "getStatus",
/// id: "123456",
/// }),
/// });
/// export const result = example.then(example => std.jsondecode({
/// input: example.result,
/// })).then(invoke => invoke.result);
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.lambda.get_invocation(function_name=example_aws_lambda_function["functionName"],
/// input=json.dumps({
/// "operation": "getStatus",
/// "id": "123456",
/// }))
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
/// var example = Aws.Lambda.GetInvocation.Invoke(new()
/// {
/// FunctionName = exampleAwsLambdaFunction.FunctionName,
/// Input = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["operation"] = "getStatus",
/// ["id"] = "123456",
/// }),
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["result"] = Std.Jsondecode.Invoke(new()
/// {
/// Input = example.Apply(getInvocationResult => getInvocationResult.Result),
/// }).Apply(invoke => invoke.Result),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "operation": "getStatus",
/// "id":        "123456",
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// example, err := lambda.LookupInvocation(ctx, &lambda.LookupInvocationArgs{
/// FunctionName: exampleAwsLambdaFunction.FunctionName,
/// Input:        json0,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("result", pulumi.Any(std.Jsondecode(ctx, &std.JsondecodeArgs{
/// Input: example.Result,
/// }, nil).Result))
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var example = LambdaFunctions.getInvocation(GetInvocationArgs.builder()
/// .functionName(exampleAwsLambdaFunction.functionName())
/// .input(serializeJson(
/// jsonObject(
/// jsonProperty("operation", "getStatus"),
/// jsonProperty("id", "123456")
/// )))
/// .build());
///
/// ctx.export("result", StdFunctions.jsondecode(JsondecodeArgs.builder()
/// .input(example.result())
/// .build()).result());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:lambda:getInvocation
/// arguments:
/// functionName: ${exampleAwsLambdaFunction.functionName}
/// input:
/// fn::toJSON:
/// operation: getStatus
/// id: '123456'
/// outputs:
/// result:
/// fn::invoke:
/// function: std:jsondecode
/// arguments:
/// input: ${example.result}
/// return: result
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Dynamic Resource Configuration
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// // Get resource configuration from Lambda
/// const resourceConfig = aws.lambda.getInvocation({
/// functionName: "resource-config-generator",
/// qualifier: "production",
/// input: JSON.stringify({
/// environment: environment,
/// region: current.region,
/// service: "api",
/// }),
/// });
/// const config = resourceConfig.then(resourceConfig => std.jsondecode({
/// input: resourceConfig.result,
/// })).then(invoke => invoke.result);
/// // Use dynamic configuration
/// const example = new aws.elasticache.Cluster("example", {
/// clusterId: config?.cache?.clusterId,
/// engine: config?.cache?.engine,
/// nodeType: config?.cache?.nodeType,
/// numCacheNodes: config?.cache?.nodes,
/// parameterGroupName: config?.cache?.parameterGroup,
/// tags: config?.tags,
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
/// qualifier="production",
/// input=json.dumps({
/// "environment": environment,
/// "region": current["region"],
/// "service": "api",
/// }))
/// config = std.jsondecode(input=resource_config.result).result
/// # Use dynamic configuration
/// example = aws.elasticache.Cluster("example",
/// cluster_id=config["cache"]["clusterId"],
/// engine=config["cache"]["engine"],
/// node_type=config["cache"]["nodeType"],
/// num_cache_nodes=config["cache"]["nodes"],
/// parameter_group_name=config["cache"]["parameterGroup"],
/// tags=config["tags"])
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
/// // Get resource configuration from Lambda
/// var resourceConfig = Aws.Lambda.GetInvocation.Invoke(new()
/// {
/// FunctionName = "resource-config-generator",
/// Qualifier = "production",
/// Input = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["environment"] = environment,
/// ["region"] = current.Region,
/// ["service"] = "api",
/// }),
/// });
///
/// var config = Std.Jsondecode.Invoke(new()
/// {
/// Input = resourceConfig.Apply(getInvocationResult => getInvocationResult.Result),
/// }).Apply(invoke => invoke.Result);
///
/// // Use dynamic configuration
/// var example = new Aws.ElastiCache.Cluster("example", new()
/// {
/// ClusterId = config?.Cache?.ClusterId,
/// Engine = config?.Cache?.Engine,
/// NodeType = config?.Cache?.NodeType,
/// NumCacheNodes = config?.Cache?.Nodes,
/// ParameterGroupName = config?.Cache?.ParameterGroup,
/// Tags = config?.Tags,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticache"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "environment": environment,
/// "region":      current.Region,
/// "service":     "api",
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// // Get resource configuration from Lambda
/// resourceConfig, err := lambda.LookupInvocation(ctx, &lambda.LookupInvocationArgs{
/// FunctionName: "resource-config-generator",
/// Qualifier:    pulumi.StringRef("production"),
/// Input:        json0,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// config := std.Jsondecode(ctx, &std.JsondecodeArgs{
/// Input: resourceConfig.Result,
/// }, nil).Result
/// // Use dynamic configuration
/// _, err = elasticache.NewCluster(ctx, "example", &elasticache.ClusterArgs{
/// ClusterId:          pulumi.Any(config.Cache.ClusterId),
/// Engine:             pulumi.Any(config.Cache.Engine),
/// NodeType:           pulumi.Any(config.Cache.NodeType),
/// NumCacheNodes:      pulumi.Any(config.Cache.Nodes),
/// ParameterGroupName: pulumi.Any(config.Cache.ParameterGroup),
/// Tags:               pulumi.Any(config.Tags),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// // Get resource configuration from Lambda
/// final var resourceConfig = LambdaFunctions.getInvocation(GetInvocationArgs.builder()
/// .functionName("resource-config-generator")
/// .qualifier("production")
/// .input(serializeJson(
/// jsonObject(
/// jsonProperty("environment", environment),
/// jsonProperty("region", current.region()),
/// jsonProperty("service", "api")
/// )))
/// .build());
///
/// final var config = StdFunctions.jsondecode(JsondecodeArgs.builder()
/// .input(resourceConfig.result())
/// .build()).result();
///
/// // Use dynamic configuration
/// var example = new Cluster("example", ClusterArgs.builder()
/// .clusterId(config.cache().clusterId())
/// .engine(config.cache().engine())
/// .nodeType(config.cache().nodeType())
/// .numCacheNodes(config.cache().nodes())
/// .parameterGroupName(config.cache().parameterGroup())
/// .tags(config.tags())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # Use dynamic configuration
/// example:
/// type: aws:elasticache:Cluster
/// properties:
/// clusterId: ${config.cache.clusterId}
/// engine: ${config.cache.engine}
/// nodeType: ${config.cache.nodeType}
/// numCacheNodes: ${config.cache.nodes}
/// parameterGroupName: ${config.cache.parameterGroup}
/// tags: ${config.tags}
/// variables:
/// # Get resource configuration from Lambda
/// resourceConfig:
/// fn::invoke:
/// function: aws:lambda:getInvocation
/// arguments:
/// functionName: resource-config-generator
/// qualifier: production
/// input:
/// fn::toJSON:
/// environment: ${environment}
/// region: ${current.region}
/// service: api
/// config:
/// fn::invoke:
/// function: std:jsondecode
/// arguments:
/// input: ${resourceConfig.result}
/// return: result
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetInvocationResult> getInvocation(
  GetInvocationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lambda/getInvocation:getInvocation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInvocationResult.fromMap(result);
}
