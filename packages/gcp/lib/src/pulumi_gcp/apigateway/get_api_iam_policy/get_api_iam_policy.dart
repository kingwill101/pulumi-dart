import 'package:pulumi/pulumi.dart';
import 'get_api_iam_policy_args.dart';
import 'get_api_iam_policy_result.dart';

/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.apigateway.getApiIamPolicy({
/// project: api.project,
/// api: api.apiId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.apigateway.get_api_iam_policy(project=api["project"],
/// api=api["apiId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.ApiGateway.GetApiIamPolicy.Invoke(new()
/// {
/// Project = api.Project,
/// Api = api.ApiId,
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
/// _, err := apigateway.LookupApiIamPolicy(ctx, &apigateway.LookupApiIamPolicyArgs{
/// Project: pulumi.StringRef(api.Project),
/// Api:     api.ApiId,
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
/// import com.pulumi.gcp.apigateway.inputs.GetApiIamPolicyArgs;
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
/// final var policy = ApigatewayFunctions.getApiIamPolicy(GetApiIamPolicyArgs.builder()
/// .project(api.project())
/// .api(api.apiId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:apigateway:getApiIamPolicy
/// arguments:
/// project: ${api.project}
/// api: ${api.apiId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetApiIamPolicyResult> getApiIamPolicy(
  GetApiIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:apigateway/getApiIamPolicy:getApiIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetApiIamPolicyResult.fromMap(result);
}
