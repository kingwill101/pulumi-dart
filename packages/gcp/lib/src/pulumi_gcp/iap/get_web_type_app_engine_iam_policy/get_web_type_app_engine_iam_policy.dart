import 'package:pulumi/pulumi.dart';
import 'get_web_type_app_engine_iam_policy_args.dart';
import 'get_web_type_app_engine_iam_policy_result.dart';

/// Retrieves the current IAM policy data for webtypeappengine
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getWebTypeAppEngineIamPolicy({
/// project: app.project,
/// appId: app.appId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_web_type_app_engine_iam_policy(project=app["project"],
/// app_id=app["appId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Iap.GetWebTypeAppEngineIamPolicy.Invoke(new()
/// {
/// Project = app.Project,
/// AppId = app.AppId,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iap.GetWebTypeAppEngineIamPolicy(ctx, &iap.GetWebTypeAppEngineIamPolicyArgs{
/// Project: pulumi.StringRef(app.Project),
/// AppId:   app.AppId,
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
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetWebTypeAppEngineIamPolicyArgs;
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
/// final var policy = IapFunctions.getWebTypeAppEngineIamPolicy(GetWebTypeAppEngineIamPolicyArgs.builder()
/// .project(app.project())
/// .appId(app.appId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:iap:getWebTypeAppEngineIamPolicy
/// arguments:
/// project: ${app.project}
/// appId: ${app.appId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetWebTypeAppEngineIamPolicyResult> getWebTypeAppEngineIamPolicy(
  GetWebTypeAppEngineIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getWebTypeAppEngineIamPolicy:getWebTypeAppEngineIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWebTypeAppEngineIamPolicyResult.fromMap(result);
}
