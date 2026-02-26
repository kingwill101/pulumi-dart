import 'package:pulumi/pulumi.dart';
import 'get_instance_iam_policy_args2.dart';
import 'get_instance_iam_policy_result2.dart';

/// Retrieves the current IAM policy data for instance
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.compute.getInstanceIamPolicy({
/// project: _default.project,
/// zone: _default.zone,
/// instanceName: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.get_instance_iam_policy(project=default["project"],
/// zone=default["zone"],
/// instance_name=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Compute.GetInstanceIamPolicy.Invoke(new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
/// InstanceName = @default.Name,
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
/// _, err := compute.GetInstanceIamPolicy(ctx, &compute.GetInstanceIamPolicyArgs{
/// Project:      pulumi.StringRef(_default.Project),
/// Zone:         pulumi.StringRef(_default.Zone),
/// InstanceName: _default.Name,
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
/// import com.pulumi.gcp.compute.inputs.GetInstanceIamPolicyArgs;
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
/// final var policy = ComputeFunctions.getInstanceIamPolicy(GetInstanceIamPolicyArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
/// .instanceName(default_.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:compute:getInstanceIamPolicy
/// arguments:
/// project: ${default.project}
/// zone: ${default.zone}
/// instanceName: ${default.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetInstanceIamPolicyResult2> getInstanceIamPolicy2(
  GetInstanceIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInstanceIamPolicy:getInstanceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult2.fromMap(result);
}
