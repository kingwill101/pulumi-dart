import 'package:pulumi/pulumi.dart';
import 'get_region_disk_iam_policy_args.dart';
import 'get_region_disk_iam_policy_result.dart';

/// Retrieves the current IAM policy data for regiondisk
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.compute.getRegionDiskIamPolicy({
/// project: regiondisk.project,
/// region: regiondisk.region,
/// name: regiondisk.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.get_region_disk_iam_policy(project=regiondisk["project"],
/// region=regiondisk["region"],
/// name=regiondisk["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Compute.GetRegionDiskIamPolicy.Invoke(new()
/// {
/// Project = regiondisk.Project,
/// Region = regiondisk.Region,
/// Name = regiondisk.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.LookupRegionDiskIamPolicy(ctx, &compute.LookupRegionDiskIamPolicyArgs{
/// Project: pulumi.StringRef(regiondisk.Project),
/// Region:  pulumi.StringRef(regiondisk.Region),
/// Name:    regiondisk.Name,
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetRegionDiskIamPolicyArgs;
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
/// final var policy = ComputeFunctions.getRegionDiskIamPolicy(GetRegionDiskIamPolicyArgs.builder()
/// .project(regiondisk.project())
/// .region(regiondisk.region())
/// .name(regiondisk.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:compute:getRegionDiskIamPolicy
/// arguments:
/// project: ${regiondisk.project}
/// region: ${regiondisk.region}
/// name: ${regiondisk.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRegionDiskIamPolicyResult> getRegionDiskIamPolicy(
  GetRegionDiskIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionDiskIamPolicy:getRegionDiskIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionDiskIamPolicyResult.fromMap(result);
}
