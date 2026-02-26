import 'package:pulumi/pulumi.dart';
import 'get_squota_info_args.dart';
import 'get_squota_info_result.dart';

/// Provides information about a particular quota for a given project, folder or organization.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myQuotaInfo = gcp.cloudquota.getSQuotaInfo({
/// parent: "projects/my-project",
/// service: "compute.googleapis.com",
/// quotaId: "CPUS-per-project-region",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_quota_info = gcp.cloudquota.get_s_quota_info(parent="projects/my-project",
/// service="compute.googleapis.com",
/// quota_id="CPUS-per-project-region")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myQuotaInfo = Gcp.CloudQuota.GetSQuotaInfo.Invoke(new()
/// {
/// Parent = "projects/my-project",
/// Service = "compute.googleapis.com",
/// QuotaId = "CPUS-per-project-region",
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
/// _, err := cloudquota.GetSQuotaInfo(ctx, &cloudquota.GetSQuotaInfoArgs{
/// Parent:  "projects/my-project",
/// Service: "compute.googleapis.com",
/// QuotaId: "CPUS-per-project-region",
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
/// import com.pulumi.gcp.cloudquota.inputs.GetSQuotaInfoArgs;
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
/// final var myQuotaInfo = CloudquotaFunctions.getSQuotaInfo(GetSQuotaInfoArgs.builder()
/// .parent("projects/my-project")
/// .service("compute.googleapis.com")
/// .quotaId("CPUS-per-project-region")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// myQuotaInfo:
/// fn::invoke:
/// function: gcp:cloudquota:getSQuotaInfo
/// arguments:
/// parent: projects/my-project
/// service: compute.googleapis.com
/// quotaId: CPUS-per-project-region
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSQuotaInfoResult> getSQuotaInfo(
  GetSQuotaInfoArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudquota/getSQuotaInfo:getSQuotaInfo',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSQuotaInfoResult.fromMap(result);
}
