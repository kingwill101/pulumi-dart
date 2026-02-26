import 'package:pulumi/pulumi.dart';
import 'get_squota_infos_args.dart';
import 'get_squota_infos_result.dart';

/// Provides information about all quotas for a given project, folder or organization.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myQuotaInfos = gcp.cloudquota.getSQuotaInfos({
/// parent: "projects/my-project",
/// service: "compute.googleapis.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_quota_infos = gcp.cloudquota.get_s_quota_infos(parent="projects/my-project",
/// service="compute.googleapis.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myQuotaInfos = Gcp.CloudQuota.GetSQuotaInfos.Invoke(new()
/// {
/// Parent = "projects/my-project",
/// Service = "compute.googleapis.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudquota"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudquota.GetSQuotaInfos(ctx, &cloudquota.GetSQuotaInfosArgs{
/// Parent:  "projects/my-project",
/// Service: "compute.googleapis.com",
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
/// import com.pulumi.gcp.cloudquota.CloudquotaFunctions;
/// import com.pulumi.gcp.cloudquota.inputs.GetSQuotaInfosArgs;
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
/// final var myQuotaInfos = CloudquotaFunctions.getSQuotaInfos(GetSQuotaInfosArgs.builder()
/// .parent("projects/my-project")
/// .service("compute.googleapis.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// myQuotaInfos:
/// fn::invoke:
/// function: gcp:cloudquota:getSQuotaInfos
/// arguments:
/// parent: projects/my-project
/// service: compute.googleapis.com
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSQuotaInfosResult> getSQuotaInfos(
  GetSQuotaInfosArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudquota/getSQuotaInfos:getSQuotaInfos',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSQuotaInfosResult.fromMap(result);
}
