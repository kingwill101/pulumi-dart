import 'package:pulumi/pulumi.dart';
import 'get_machine_image_iam_policy_args.dart';
import 'get_machine_image_iam_policy_result.dart';

/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.compute.getMachineImageIamPolicy({
/// project: image.project,
/// machineImage: image.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.get_machine_image_iam_policy(project=image["project"],
/// machine_image=image["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Compute.GetMachineImageIamPolicy.Invoke(new()
/// {
/// Project = image.Project,
/// MachineImage = image.Name,
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
/// _, err := compute.LookupMachineImageIamPolicy(ctx, &compute.LookupMachineImageIamPolicyArgs{
/// Project:      pulumi.StringRef(image.Project),
/// MachineImage: image.Name,
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
/// import com.pulumi.gcp.compute.inputs.GetMachineImageIamPolicyArgs;
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
/// final var policy = ComputeFunctions.getMachineImageIamPolicy(GetMachineImageIamPolicyArgs.builder()
/// .project(image.project())
/// .machineImage(image.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:compute:getMachineImageIamPolicy
/// arguments:
/// project: ${image.project}
/// machineImage: ${image.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetMachineImageIamPolicyResult> getMachineImageIamPolicy(
  GetMachineImageIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getMachineImageIamPolicy:getMachineImageIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMachineImageIamPolicyResult.fromMap(result);
}
