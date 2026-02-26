import 'package:pulumi/pulumi.dart';
import 'get_export_args.dart';
import 'get_export_result.dart';

/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.apigateway.getExport({
/// restApiId: exampleAwsApiGatewayStage.restApiId,
/// stageName: exampleAwsApiGatewayStage.stageName,
/// exportType: "oas30",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigateway.get_export(rest_api_id=example_aws_api_gateway_stage["restApiId"],
/// stage_name=example_aws_api_gateway_stage["stageName"],
/// export_type="oas30")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.ApiGateway.GetExport.Invoke(new()
/// {
/// RestApiId = exampleAwsApiGatewayStage.RestApiId,
/// StageName = exampleAwsApiGatewayStage.StageName,
/// ExportType = "oas30",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apigateway.GetExport(ctx, &apigateway.GetExportArgs{
/// RestApiId:  exampleAwsApiGatewayStage.RestApiId,
/// StageName:  exampleAwsApiGatewayStage.StageName,
/// ExportType: "oas30",
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
/// import com.pulumi.aws.apigateway.ApigatewayFunctions;
/// import com.pulumi.aws.apigateway.inputs.GetExportArgs;
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
/// final var example = ApigatewayFunctions.getExport(GetExportArgs.builder()
/// .restApiId(exampleAwsApiGatewayStage.restApiId())
/// .stageName(exampleAwsApiGatewayStage.stageName())
/// .exportType("oas30")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:apigateway:getExport
/// arguments:
/// restApiId: ${exampleAwsApiGatewayStage.restApiId}
/// stageName: ${exampleAwsApiGatewayStage.stageName}
/// exportType: oas30
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetExportResult> getExport(
  GetExportArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigateway/getExport:getExport',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetExportResult.fromMap(result);
}
