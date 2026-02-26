import 'package:pulumi/pulumi.dart';
import 'get_disk_iam_policy_args.dart';
import 'get_disk_iam_policy_result.dart';

/// Retrieves the current IAM policy data for disk
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.compute.getDiskIamPolicy({
/// project: _default.project,
/// zone: _default.zone,
/// name: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.get_disk_iam_policy(project=default["project"],
/// zone=default["zone"],
/// name=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Compute.GetDiskIamPolicy.Invoke(new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
/// Name = @default.Name,
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
/// _, err := compute.LookupDiskIamPolicy(ctx, &compute.LookupDiskIamPolicyArgs{
/// Project: pulumi.StringRef(_default.Project),
/// Zone:    pulumi.StringRef(_default.Zone),
/// Name:    _default.Name,
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
/// import com.pulumi.gcp.compute.inputs.GetDiskIamPolicyArgs;
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
/// final var policy = ComputeFunctions.getDiskIamPolicy(GetDiskIamPolicyArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
/// .name(default_.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:compute:getDiskIamPolicy
/// arguments:
/// project: ${default.project}
/// zone: ${default.zone}
/// name: ${default.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDiskIamPolicyResult> getDiskIamPolicy(
  GetDiskIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getDiskIamPolicy:getDiskIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDiskIamPolicyResult.fromMap(result);
}
