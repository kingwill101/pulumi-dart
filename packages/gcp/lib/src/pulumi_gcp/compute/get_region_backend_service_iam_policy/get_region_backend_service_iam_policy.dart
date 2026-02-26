import 'package:pulumi/pulumi.dart';
import 'get_region_backend_service_iam_policy_args.dart';
import 'get_region_backend_service_iam_policy_result.dart';

/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.compute.getRegionBackendServiceIamPolicy({
/// project: _default.project,
/// region: _default.region,
/// name: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.get_region_backend_service_iam_policy(project=default["project"],
/// region=default["region"],
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
/// var policy = Gcp.Compute.GetRegionBackendServiceIamPolicy.Invoke(new()
/// {
/// Project = @default.Project,
/// Region = @default.Region,
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
/// _, err := compute.LookupRegionBackendServiceIamPolicy(ctx, &compute.LookupRegionBackendServiceIamPolicyArgs{
/// Project: pulumi.StringRef(_default.Project),
/// Region:  pulumi.StringRef(_default.Region),
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
/// import com.pulumi.gcp.compute.inputs.GetRegionBackendServiceIamPolicyArgs;
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
/// final var policy = ComputeFunctions.getRegionBackendServiceIamPolicy(GetRegionBackendServiceIamPolicyArgs.builder()
/// .project(default_.project())
/// .region(default_.region())
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
/// function: gcp:compute:getRegionBackendServiceIamPolicy
/// arguments:
/// project: ${default.project}
/// region: ${default.region}
/// name: ${default.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRegionBackendServiceIamPolicyResult> getRegionBackendServiceIamPolicy(
  GetRegionBackendServiceIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionBackendServiceIamPolicy:getRegionBackendServiceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionBackendServiceIamPolicyResult.fromMap(result);
}
