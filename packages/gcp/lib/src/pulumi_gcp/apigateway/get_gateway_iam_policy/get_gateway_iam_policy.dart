import 'package:pulumi/pulumi.dart';
import 'get_gateway_iam_policy_args.dart';
import 'get_gateway_iam_policy_result.dart';

/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.apigateway.getGatewayIamPolicy({
/// project: apiGw.project,
/// region: apiGw.region,
/// gateway: apiGw.gatewayId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.apigateway.get_gateway_iam_policy(project=api_gw["project"],
/// region=api_gw["region"],
/// gateway=api_gw["gatewayId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.ApiGateway.GetGatewayIamPolicy.Invoke(new()
/// {
/// Project = apiGw.Project,
/// Region = apiGw.Region,
/// Gateway = apiGw.GatewayId,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apigateway.LookupGatewayIamPolicy(ctx, &apigateway.LookupGatewayIamPolicyArgs{
/// Project: pulumi.StringRef(apiGw.Project),
/// Region:  pulumi.StringRef(apiGw.Region),
/// Gateway: apiGw.GatewayId,
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
/// import com.pulumi.gcp.apigateway.ApigatewayFunctions;
/// import com.pulumi.gcp.apigateway.inputs.GetGatewayIamPolicyArgs;
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
/// final var policy = ApigatewayFunctions.getGatewayIamPolicy(GetGatewayIamPolicyArgs.builder()
/// .project(apiGw.project())
/// .region(apiGw.region())
/// .gateway(apiGw.gatewayId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:apigateway:getGatewayIamPolicy
/// arguments:
/// project: ${apiGw.project}
/// region: ${apiGw.region}
/// gateway: ${apiGw.gatewayId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetGatewayIamPolicyResult> getGatewayIamPolicy(
  GetGatewayIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:apigateway/getGatewayIamPolicy:getGatewayIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGatewayIamPolicyResult.fromMap(result);
}
