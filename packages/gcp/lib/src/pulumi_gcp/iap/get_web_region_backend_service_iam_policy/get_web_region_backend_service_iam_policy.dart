import 'package:pulumi/pulumi.dart';
import 'get_web_region_backend_service_iam_policy_args.dart';
import 'get_web_region_backend_service_iam_policy_result.dart';

/// Retrieves the current IAM policy data for webregionbackendservice
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getWebRegionBackendServiceIamPolicy({
/// project: _default.project,
/// region: _default.region,
/// webRegionBackendService: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_web_region_backend_service_iam_policy(project=default["project"],
/// region=default["region"],
/// web_region_backend_service=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Iap.GetWebRegionBackendServiceIamPolicy.Invoke(new()
/// {
/// Project = @default.Project,
/// Region = @default.Region,
/// WebRegionBackendService = @default.Name,
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
/// _, err := iap.LookupWebRegionBackendServiceIamPolicy(ctx, &iap.LookupWebRegionBackendServiceIamPolicyArgs{
/// Project:                 pulumi.StringRef(_default.Project),
/// Region:                  pulumi.StringRef(_default.Region),
/// WebRegionBackendService: _default.Name,
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
/// import com.pulumi.gcp.iap.inputs.GetWebRegionBackendServiceIamPolicyArgs;
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
/// final var policy = IapFunctions.getWebRegionBackendServiceIamPolicy(GetWebRegionBackendServiceIamPolicyArgs.builder()
/// .project(default_.project())
/// .region(default_.region())
/// .webRegionBackendService(default_.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:iap:getWebRegionBackendServiceIamPolicy
/// arguments:
/// project: ${default.project}
/// region: ${default.region}
/// webRegionBackendService: ${default.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetWebRegionBackendServiceIamPolicyResult>
    getWebRegionBackendServiceIamPolicy(
  GetWebRegionBackendServiceIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getWebRegionBackendServiceIamPolicy:getWebRegionBackendServiceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWebRegionBackendServiceIamPolicyResult.fromMap(result);
}
