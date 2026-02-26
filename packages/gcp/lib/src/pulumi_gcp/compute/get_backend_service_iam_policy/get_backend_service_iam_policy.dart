import 'package:pulumi/pulumi.dart';
import 'get_backend_service_iam_policy_args.dart';
import 'get_backend_service_iam_policy_result.dart';

/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.compute.getBackendServiceIamPolicy({
/// project: _default.project,
/// name: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.get_backend_service_iam_policy(project=default["project"],
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
/// var policy = Gcp.Compute.GetBackendServiceIamPolicy.Invoke(new()
/// {
/// Project = @default.Project,
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
/// _, err := compute.LookupBackendServiceIamPolicy(ctx, &compute.LookupBackendServiceIamPolicyArgs{
/// Project: pulumi.StringRef(_default.Project),
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
/// import com.pulumi.gcp.compute.inputs.GetBackendServiceIamPolicyArgs;
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
/// final var policy = ComputeFunctions.getBackendServiceIamPolicy(GetBackendServiceIamPolicyArgs.builder()
/// .project(default_.project())
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
/// function: gcp:compute:getBackendServiceIamPolicy
/// arguments:
/// project: ${default.project}
/// name: ${default.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetBackendServiceIamPolicyResult> getBackendServiceIamPolicy(
  GetBackendServiceIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getBackendServiceIamPolicy:getBackendServiceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackendServiceIamPolicyResult.fromMap(result);
}
