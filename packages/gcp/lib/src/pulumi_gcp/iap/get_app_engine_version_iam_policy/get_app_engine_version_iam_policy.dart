import 'package:pulumi/pulumi.dart';
import 'get_app_engine_version_iam_policy_args.dart';
import 'get_app_engine_version_iam_policy_result.dart';

/// Retrieves the current IAM policy data for appengineversion
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getAppEngineVersionIamPolicy({
/// project: version.project,
/// appId: version.project,
/// service: version.service,
/// versionId: version.versionId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_app_engine_version_iam_policy(project=version["project"],
/// app_id=version["project"],
/// service=version["service"],
/// version_id=version["versionId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Iap.GetAppEngineVersionIamPolicy.Invoke(new()
/// {
/// Project = version.Project,
/// AppId = version.Project,
/// Service = version.Service,
/// VersionId = version.VersionId,
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
/// _, err := iap.LookupAppEngineVersionIamPolicy(ctx, &iap.LookupAppEngineVersionIamPolicyArgs{
/// Project:   pulumi.StringRef(version.Project),
/// AppId:     version.Project,
/// Service:   version.Service,
/// VersionId: version.VersionId,
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
/// import com.pulumi.gcp.iap.inputs.GetAppEngineVersionIamPolicyArgs;
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
/// final var policy = IapFunctions.getAppEngineVersionIamPolicy(GetAppEngineVersionIamPolicyArgs.builder()
/// .project(version.project())
/// .appId(version.project())
/// .service(version.service())
/// .versionId(version.versionId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:iap:getAppEngineVersionIamPolicy
/// arguments:
/// project: ${version.project}
/// appId: ${version.project}
/// service: ${version.service}
/// versionId: ${version.versionId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAppEngineVersionIamPolicyResult> getAppEngineVersionIamPolicy(
  GetAppEngineVersionIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getAppEngineVersionIamPolicy:getAppEngineVersionIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAppEngineVersionIamPolicyResult.fromMap(result);
}
