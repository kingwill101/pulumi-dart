import 'package:pulumi/pulumi.dart';
import 'get_api_config_iam_policy_args.dart';
import 'get_api_config_iam_policy_result.dart';

/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.apigateway.getApiConfigIamPolicy({
/// api: apiCfg.api,
/// apiConfig: apiCfg.apiConfigId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.apigateway.get_api_config_iam_policy(api=api_cfg["api"],
/// api_config=api_cfg["apiConfigId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.ApiGateway.GetApiConfigIamPolicy.Invoke(new()
/// {
/// Api = apiCfg.Api,
/// ApiConfig = apiCfg.ApiConfigId,
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
/// _, err := apigateway.LookupApiConfigIamPolicy(ctx, &apigateway.LookupApiConfigIamPolicyArgs{
/// Api:       apiCfg.Api,
/// ApiConfig: apiCfg.ApiConfigId,
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
/// import com.pulumi.gcp.apigateway.inputs.GetApiConfigIamPolicyArgs;
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
/// final var policy = ApigatewayFunctions.getApiConfigIamPolicy(GetApiConfigIamPolicyArgs.builder()
/// .api(apiCfg.api())
/// .apiConfig(apiCfg.apiConfigId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:apigateway:getApiConfigIamPolicy
/// arguments:
/// api: ${apiCfg.api}
/// apiConfig: ${apiCfg.apiConfigId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetApiConfigIamPolicyResult> getApiConfigIamPolicy(
  GetApiConfigIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:apigateway/getApiConfigIamPolicy:getApiConfigIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetApiConfigIamPolicyResult.fromMap(result);
}
