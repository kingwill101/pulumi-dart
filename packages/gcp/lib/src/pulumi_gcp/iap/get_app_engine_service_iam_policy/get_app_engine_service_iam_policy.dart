import 'package:pulumi/pulumi.dart';
import 'get_app_engine_service_iam_policy_args.dart';
import 'get_app_engine_service_iam_policy_result.dart';

/// Retrieves the current IAM policy data for appengineservice
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getAppEngineServiceIamPolicy({
/// project: version.project,
/// appId: version.project,
/// service: version.service,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_app_engine_service_iam_policy(project=version["project"],
/// app_id=version["project"],
/// service=version["service"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Iap.GetAppEngineServiceIamPolicy.Invoke(new()
/// {
/// Project = version.Project,
/// AppId = version.Project,
/// Service = version.Service,
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
/// _, err := iap.LookupAppEngineServiceIamPolicy(ctx, &iap.LookupAppEngineServiceIamPolicyArgs{
/// Project: pulumi.StringRef(version.Project),
/// AppId:   version.Project,
/// Service: version.Service,
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
/// import com.pulumi.gcp.iap.inputs.GetAppEngineServiceIamPolicyArgs;
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
/// final var policy = IapFunctions.getAppEngineServiceIamPolicy(GetAppEngineServiceIamPolicyArgs.builder()
/// .project(version.project())
/// .appId(version.project())
/// .service(version.service())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:iap:getAppEngineServiceIamPolicy
/// arguments:
/// project: ${version.project}
/// appId: ${version.project}
/// service: ${version.service}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAppEngineServiceIamPolicyResult> getAppEngineServiceIamPolicy(
  GetAppEngineServiceIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getAppEngineServiceIamPolicy:getAppEngineServiceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAppEngineServiceIamPolicyResult.fromMap(result);
}
