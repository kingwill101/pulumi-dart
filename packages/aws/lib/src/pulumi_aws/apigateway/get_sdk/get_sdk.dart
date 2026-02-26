import 'package:pulumi/pulumi.dart';
import 'get_sdk_args.dart';
import 'get_sdk_result.dart';

/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.apigateway.getSdk({
/// restApiId: exampleAwsApiGatewayStage.restApiId,
/// stageName: exampleAwsApiGatewayStage.stageName,
/// sdkType: "android",
/// parameters: {
/// groupId: "example",
/// artifactId: "example",
/// artifactVersion: "example",
/// invokerPackage: "example",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigateway.get_sdk(rest_api_id=example_aws_api_gateway_stage["restApiId"],
/// stage_name=example_aws_api_gateway_stage["stageName"],
/// sdk_type="android",
/// parameters={
/// "groupId": "example",
/// "artifactId": "example",
/// "artifactVersion": "example",
/// "invokerPackage": "example",
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
/// var example = Aws.ApiGateway.GetSdk.Invoke(new()
/// {
/// RestApiId = exampleAwsApiGatewayStage.RestApiId,
/// StageName = exampleAwsApiGatewayStage.StageName,
/// SdkType = "android",
/// Parameters =
/// {
/// { "groupId", "example" },
/// { "artifactId", "example" },
/// { "artifactVersion", "example" },
/// { "invokerPackage", "example" },
/// },
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
/// _, err := apigateway.GetSdk(ctx, &apigateway.GetSdkArgs{
/// RestApiId: exampleAwsApiGatewayStage.RestApiId,
/// StageName: exampleAwsApiGatewayStage.StageName,
/// SdkType:   "android",
/// Parameters: map[string]interface{}{
/// "groupId":         "example",
/// "artifactId":      "example",
/// "artifactVersion": "example",
/// "invokerPackage":  "example",
/// },
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
/// import com.pulumi.aws.apigateway.inputs.GetSdkArgs;
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
/// final var example = ApigatewayFunctions.getSdk(GetSdkArgs.builder()
/// .restApiId(exampleAwsApiGatewayStage.restApiId())
/// .stageName(exampleAwsApiGatewayStage.stageName())
/// .sdkType("android")
/// .parameters(Map.ofEntries(
/// Map.entry("groupId", "example"),
/// Map.entry("artifactId", "example"),
/// Map.entry("artifactVersion", "example"),
/// Map.entry("invokerPackage", "example")
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:apigateway:getSdk
/// arguments:
/// restApiId: ${exampleAwsApiGatewayStage.restApiId}
/// stageName: ${exampleAwsApiGatewayStage.stageName}
/// sdkType: android
/// parameters:
/// groupId: example
/// artifactId: example
/// artifactVersion: example
/// invokerPackage: example
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSdkResult> getSdk(
  GetSdkArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigateway/getSdk:getSdk',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSdkResult.fromMap(result);
}
