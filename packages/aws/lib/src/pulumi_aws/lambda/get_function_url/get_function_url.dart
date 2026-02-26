import 'package:pulumi/pulumi.dart';
import 'get_function_url_args.dart';
import 'get_function_url_result.dart';

/// Provides details about an AWS Lambda Function URL. Use this data source to retrieve information about an existing function URL configuration.
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
/// const example = aws.lambda.getFunctionUrl({
/// functionName: "my_lambda_function",
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
/// var example = Aws.Lambda.GetFunctionUrl.Invoke(new()
/// {
/// FunctionName = "my_lambda_function",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["functionUrl"] = example.Apply(getFunctionUrlResult => getFunctionUrlResult.FunctionUrl),
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
/// example, err := lambda.LookupFunctionUrl(ctx, &lambda.LookupFunctionUrlArgs{
/// FunctionName: "my_lambda_function",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("functionUrl", example.FunctionUrl)
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var example = LambdaFunctions.getFunctionUrl(GetFunctionUrlArgs.builder()
/// .functionName("my_lambda_function")
/// .build());
///
/// ctx.export("functionUrl", example.functionUrl());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:lambda:getFunctionUrl
/// arguments:
/// functionName: my_lambda_function
/// outputs:
/// functionUrl: ${example.functionUrl}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Qualifier
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = aws.lambda.getFunctionUrl({
/// functionName: exampleAwsLambdaFunction.functionName,
/// qualifier: "production",
/// });
/// // Use the URL in other resources
/// const lambdaAlias = new aws.route53.Record("lambda_alias", {
/// zoneId: exampleAwsRoute53Zone.zoneId,
/// name: "api.example.com",
/// type: aws.route53.RecordType.CNAME,
/// ttl: 300,
/// records: [example.then(example => std.replace({
/// text: example.functionUrl,
/// search: "https://",
/// replace: "",
/// })).then(invoke => invoke.result)],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.lambda.get_function_url(function_name=example_aws_lambda_function["functionName"],
/// qualifier="production")
/// # Use the URL in other resources
/// lambda_alias = aws.route53.Record("lambda_alias",
/// zone_id=example_aws_route53_zone["zoneId"],
/// name="api.example.com",
/// type=aws.route53.RecordType.CNAME,
/// ttl=300,
/// records=[std.replace(text=example.function_url,
/// search="https://",
/// replace="").result])
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
/// var example = Aws.Lambda.GetFunctionUrl.Invoke(new()
/// {
/// FunctionName = exampleAwsLambdaFunction.FunctionName,
/// Qualifier = "production",
/// });
///
/// // Use the URL in other resources
/// var lambdaAlias = new Aws.Route53.Record("lambda_alias", new()
/// {
/// ZoneId = exampleAwsRoute53Zone.ZoneId,
/// Name = "api.example.com",
/// Type = Aws.Route53.RecordType.CNAME,
/// Ttl = 300,
/// Records = new[]
/// {
/// Std.Replace.Invoke(new()
/// {
/// Text = example.Apply(getFunctionUrlResult => getFunctionUrlResult.FunctionUrl),
/// Search = "https://",
/// Replace = "",
/// }).Apply(invoke => invoke.Result),
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := lambda.LookupFunctionUrl(ctx, &lambda.LookupFunctionUrlArgs{
/// FunctionName: exampleAwsLambdaFunction.FunctionName,
/// Qualifier:    pulumi.StringRef("production"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// invokeReplace, err := std.Replace(ctx, &std.ReplaceArgs{
/// Text:    example.FunctionUrl,
/// Search:  "https://",
/// Replace: "",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// // Use the URL in other resources
/// _, err = route53.NewRecord(ctx, "lambda_alias", &route53.RecordArgs{
/// ZoneId: pulumi.Any(exampleAwsRoute53Zone.ZoneId),
/// Name:   pulumi.String("api.example.com"),
/// Type:   pulumi.String(route53.RecordTypeCNAME),
/// Ttl:    pulumi.Int(300),
/// Records: pulumi.StringArray{
/// pulumi.String(invokeReplace.Result),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var example = LambdaFunctions.getFunctionUrl(GetFunctionUrlArgs.builder()
/// .functionName(exampleAwsLambdaFunction.functionName())
/// .qualifier("production")
/// .build());
///
/// // Use the URL in other resources
/// var lambdaAlias = new Record("lambdaAlias", RecordArgs.builder()
/// .zoneId(exampleAwsRoute53Zone.zoneId())
/// .name("api.example.com")
/// .type("CNAME")
/// .ttl(300)
/// .records(StdFunctions.replace(ReplaceArgs.builder()
/// .text(example.functionUrl())
/// .search("https://")
/// .replace("")
/// .build()).result())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # Use the URL in other resources
/// lambdaAlias:
/// type: aws:route53:Record
/// name: lambda_alias
/// properties:
/// zoneId: ${exampleAwsRoute53Zone.zoneId}
/// name: api.example.com
/// type: CNAME
/// ttl: 300
/// records:
/// - fn::invoke:
/// function: std:replace
/// arguments:
/// text: ${example.functionUrl}
/// search: https://
/// replace: ""
/// return: result
/// variables:
/// example:
/// fn::invoke:
/// function: aws:lambda:getFunctionUrl
/// arguments:
/// functionName: ${exampleAwsLambdaFunction.functionName}
/// qualifier: production
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Retrieve CORS Configuration
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.lambda.getFunctionUrl({
/// functionName: "api_function",
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
/// var example = Aws.Lambda.GetFunctionUrl.Invoke(new()
/// {
/// FunctionName = "api_function",
/// });
///
/// var corsConfig = Output.Tuple(example.Apply(getFunctionUrlResult => getFunctionUrlResult.Cors).Length, example).Apply(values =>
/// {
/// var length = values.Item1;
/// var example = values.Item2;
/// return length > 0 ? example.Apply(getFunctionUrlResult => getFunctionUrlResult.Cors[0]) : null;
/// });
///
/// var allowedOrigins = corsConfig != null ? corsConfig?.AllowOrigins : new[] {};
///
/// return new Dictionary<string, object?>
/// {
/// ["corsAllowedOrigins"] = allowedOrigins,
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var example = LambdaFunctions.getFunctionUrl(GetFunctionUrlArgs.builder()
/// .functionName("api_function")
/// .build());
///
/// final var corsConfig = example.cors().length().applyValue(_length -> _length > 0 ? example.cors()[0] : null);
///
/// final var allowedOrigins = corsConfig != null ? corsConfig.allowOrigins() : List.of();
///
/// ctx.export("corsAllowedOrigins", allowedOrigins);
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetFunctionUrlResult> getFunctionUrl(
  GetFunctionUrlArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lambda/getFunctionUrl:getFunctionUrl',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFunctionUrlResult.fromMap(result);
}
