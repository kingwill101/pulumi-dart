import 'package:pulumi/pulumi.dart';
import 'get_export_args2.dart';
import 'get_export_result2.dart';

/// Exports a definition of an API in a particular output format and specification.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.apigatewayv2.getExport({
/// apiId: testAwsApigatewayv2Route.apiId,
/// specification: "OAS30",
/// outputType: "JSON",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.apigatewayv2.get_export(api_id=test_aws_apigatewayv2_route["apiId"],
/// specification="OAS30",
/// output_type="JSON")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.ApiGatewayV2.GetExport.Invoke(new()
/// {
/// ApiId = testAwsApigatewayv2Route.ApiId,
/// Specification = "OAS30",
/// OutputType = "JSON",
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
/// _, err := apigatewayv2.GetExport(ctx, &apigatewayv2.GetExportArgs{
/// ApiId:         testAwsApigatewayv2Route.ApiId,
/// Specification: "OAS30",
/// OutputType:    "JSON",
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
/// import com.pulumi.aws.apigatewayv2.Apigatewayv2Functions;
/// import com.pulumi.aws.apigatewayv2.inputs.GetExportArgs;
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
/// final var test = Apigatewayv2Functions.getExport(GetExportArgs.builder()
/// .apiId(testAwsApigatewayv2Route.apiId())
/// .specification("OAS30")
/// .outputType("JSON")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:apigatewayv2:getExport
/// arguments:
/// apiId: ${testAwsApigatewayv2Route.apiId}
/// specification: OAS30
/// outputType: JSON
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetExportResult2> getExport2(
  GetExportArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigatewayv2/getExport:getExport',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetExportResult2.fromMap(result);
}
