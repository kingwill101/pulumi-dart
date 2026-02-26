import 'package:pulumi/pulumi.dart';
import 'get_function_args.dart';
import 'get_function_result.dart';

/// Provides information about a CloudFront Function.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const functionName = config.require("functionName");
/// const existing = aws.cloudfront.getFunction({
/// name: functionName,
/// stage: "LIVE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// function_name = config.require("functionName")
/// existing = aws.cloudfront.get_function(name=function_name,
/// stage="LIVE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var config = new Config();
/// var functionName = config.Require("functionName");
/// var existing = Aws.CloudFront.GetFunction.Invoke(new()
/// {
/// Name = functionName,
/// Stage = "LIVE",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// functionName := cfg.Require("functionName")
/// _, err := cloudfront.LookupFunction(ctx, &cloudfront.LookupFunctionArgs{
/// Name:  functionName,
/// Stage: "LIVE",
/// }, nil)
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
/// import com.pulumi.aws.cloudfront.CloudfrontFunctions;
/// import com.pulumi.aws.cloudfront.inputs.GetFunctionArgs;
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
/// final var config = ctx.config();
/// final var functionName = config.get("functionName");
/// final var existing = CloudfrontFunctions.getFunction(GetFunctionArgs.builder()
/// .name(functionName)
/// .stage("LIVE")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// configuration:
/// functionName:
/// type: string
/// variables:
/// existing:
/// fn::invoke:
/// function: aws:cloudfront:getFunction
/// arguments:
/// name: ${functionName}
/// stage: LIVE
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetFunctionResult> getFunction(
  GetFunctionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getFunction:getFunction',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFunctionResult.fromMap(result);
}
