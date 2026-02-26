import 'package:pulumi/pulumi.dart';
import 'get_functions_args.dart';
import 'get_functions_result.dart';

/// Provides a list of AWS Lambda Functions in the current region. Use this data source to discover existing Lambda functions for inventory, monitoring, or bulk operations.
///
/// ## Example Usage
///
/// ### List All Functions
///
/// <!--Start PulumiCodeChooser -->
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
/// var all = Aws.Lambda.GetFunctions.Invoke();
///
/// return new Dictionary<string, object?>
/// {
/// ["functionCount"] = all.Apply(getFunctionsResult => getFunctionsResult.FunctionNames).Length,
/// ["allFunctionNames"] = all.Apply(getFunctionsResult => getFunctionsResult.FunctionNames),
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
/// all, err := lambda.GetFunctions(ctx, &lambda.GetFunctionsArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("functionCount", len(all.FunctionNames))
/// ctx.Export("allFunctionNames", all.FunctionNames)
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
/// import com.pulumi.aws.lambda.inputs.GetFunctionsArgs;
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
/// final var all = LambdaFunctions.getFunctions(GetFunctionsArgs.builder()
/// .build());
///
/// ctx.export("functionCount", all.functionNames().length());
/// ctx.export("allFunctionNames", all.functionNames());
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Use Function List for Bulk Operations
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Get all Lambda functions
/// const all = aws.lambda.getFunctions({});
/// // Create CloudWatch alarms for all functions
/// const lambdaErrors: aws.cloudwatch.MetricAlarm[] = [];
/// all.then(all => all.functionNames).length.apply(rangeBody => {
/// for (const range = {value: 0}; range.value < rangeBody; range.value++) {
/// lambdaErrors.push(new aws.cloudwatch.MetricAlarm(`lambda_errors-${range.value}`, {
/// name: all.then(all => `${all.functionNames[range.value]}-errors`),
/// comparisonOperator: "GreaterThanThreshold",
/// evaluationPeriods: 2,
/// metricName: "Errors",
/// namespace: "AWS/Lambda",
/// period: 300,
/// statistic: "Sum",
/// threshold: 5,
/// alarmDescription: "This metric monitors lambda errors",
/// dimensions: {
/// FunctionName: all.then(all => all.functionNames[range.value]),
/// },
/// tags: {
/// Environment: "monitoring",
/// Purpose: "lambda-error-tracking",
/// },
/// }));
/// }
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
/// for range in [{"value": i} for i in range(0, range_body)]:
/// lambda_errors.append(aws.cloudwatch.MetricAlarm(f"lambda_errors-{range['value']}",
/// name=f"{all.function_names[range['value']]}-errors",
/// comparison_operator="GreaterThanThreshold",
/// evaluation_periods=2,
/// metric_name="Errors",
/// namespace="AWS/Lambda",
/// period=300,
/// statistic="Sum",
/// threshold=5,
/// alarm_description="This metric monitors lambda errors",
/// dimensions={
/// "FunctionName": all.function_names[range["value"]],
/// },
/// tags={
/// "Environment": "monitoring",
/// "Purpose": "lambda-error-tracking",
/// }))
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
/// // Get all Lambda functions
/// var all = Aws.Lambda.GetFunctions.Invoke();
///
/// // Create CloudWatch alarms for all functions
/// var lambdaErrors = new List<Aws.CloudWatch.MetricAlarm>();
/// for (var rangeIndex = 0; rangeIndex < all.Apply(getFunctionsResult => getFunctionsResult.FunctionNames).Length; rangeIndex++)
/// {
/// var range = new { Value = rangeIndex };
/// lambdaErrors.Add(new Aws.CloudWatch.MetricAlarm($"lambda_errors-{range.Value}", new()
/// {
/// Name = $"{all.Apply(getFunctionsResult => getFunctionsResult.FunctionNames)[range.Value]}-errors",
/// ComparisonOperator = "GreaterThanThreshold",
/// EvaluationPeriods = 2,
/// MetricName = "Errors",
/// Namespace = "AWS/Lambda",
/// Period = 300,
/// Statistic = "Sum",
/// Threshold = 5,
/// AlarmDescription = "This metric monitors lambda errors",
/// Dimensions =
/// {
/// { "FunctionName", all.Apply(getFunctionsResult => getFunctionsResult.FunctionNames)[range.Value] },
/// },
/// Tags =
/// {
/// { "Environment", "monitoring" },
/// { "Purpose", "lambda-error-tracking" },
/// },
/// }));
/// }
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // Get all Lambda functions
/// all, err := lambda.GetFunctions(ctx, &lambda.GetFunctionsArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// // Create CloudWatch alarms for all functions
/// var lambdaErrors []*cloudwatch.MetricAlarm
/// for index := 0; index < int(len(all.FunctionNames)); index++ {
/// key0 := index
/// val0 := index
/// __res, err := cloudwatch.NewMetricAlarm(ctx, fmt.Sprintf("lambda_errors-%v", key0), &cloudwatch.MetricAlarmArgs{
/// Name:               pulumi.Sprintf("%v-errors", all.FunctionNames[val0]),
/// ComparisonOperator: pulumi.String("GreaterThanThreshold"),
/// EvaluationPeriods:  pulumi.Int(2),
/// MetricName:         pulumi.String("Errors"),
/// Namespace:          pulumi.String("AWS/Lambda"),
/// Period:             pulumi.Int(300),
/// Statistic:          pulumi.String("Sum"),
/// Threshold:          pulumi.Float64(5),
/// AlarmDescription:   pulumi.String("This metric monitors lambda errors"),
/// Dimensions: pulumi.StringMap{
/// "FunctionName": pulumi.String(all.FunctionNames[val0]),
/// },
/// Tags: pulumi.StringMap{
/// "Environment": pulumi.String("monitoring"),
/// "Purpose":     pulumi.String("lambda-error-tracking"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// lambdaErrors = append(lambdaErrors, __res)
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// // Get all Lambda functions
/// final var all = LambdaFunctions.getFunctions(GetFunctionsArgs.builder()
/// .build());
///
/// // Create CloudWatch alarms for all functions
/// for (var i = 0; i < all.functionNames().length(); i++) {
/// new MetricAlarm("lambdaErrors-" + i, MetricAlarmArgs.builder()
/// .name(String.format("%s-errors", all.functionNames()[range.value()]))
/// .comparisonOperator("GreaterThanThreshold")
/// .evaluationPeriods(2)
/// .metricName("Errors")
/// .namespace("AWS/Lambda")
/// .period(300)
/// .statistic("Sum")
/// .threshold(5.0)
/// .alarmDescription("This metric monitors lambda errors")
/// .dimensions(Map.of("FunctionName", all.functionNames()[range.value()]))
/// .tags(Map.ofEntries(
/// Map.entry("Environment", "monitoring"),
/// Map.entry("Purpose", "lambda-error-tracking")
/// ))
/// .build());
///
///
/// }
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Create Function Inventory
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// export = async () => {
/// const all = await aws.lambda.getFunctions({});
/// // Get detailed information for each function
/// const details = .map(__index => (await aws.lambda.getFunction({
/// functionName: all.functionNames[__index],
/// })));
/// const functionInventory = .map(([i, name]) => ({
/// name: name,
/// arn: all.functionArns[i],
/// runtime: details.apply(details => details[i].runtime),
/// memorySize: details.apply(details => details[i].memorySize),
/// timeout: details.apply(details => details[i].timeout),
/// handler: details.apply(details => details[i].handler),
/// }));
/// return {
/// functionInventory: functionInventory,
/// };
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
/// "name": name,
/// "arn": all.function_arns[i],
/// "runtime": details.apply(lambda details: details[i].runtime),
/// "memorySize": details.apply(lambda details: details[i].memory_size),
/// "timeout": details.apply(lambda details: details[i].timeout),
/// "handler": details.apply(lambda details: details[i].handler),
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
/// var all = Aws.Lambda.GetFunctions.Invoke();
///
/// // Get detailed information for each function
/// var details = ;
///
/// var functionInventory = Output.Tuple(all, all, details, details, details, details).Apply(values =>
/// {
/// var all = values.Item1;
/// var all1 = values.Item2;
/// var details = values.Item3;
/// var details1 = values.Item4;
/// var details2 = values.Item5;
/// var details3 = values.Item6;
/// return .Select(name =>
/// {
/// return
/// {
/// { "name", name },
/// { "arn", all1.FunctionArns[i] },
/// { "runtime", details[i].Runtime },
/// { "memorySize", details1[i].MemorySize },
/// { "timeout", details2[i].Timeout },
/// { "handler", details3[i].Handler },
/// };
/// }).ToList();
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["functionInventory"] = functionInventory,
/// };
/// });
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetFunctionsResult> getFunctions(
  GetFunctionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lambda/getFunctions:getFunctions',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFunctionsResult.fromMap(result);
}
