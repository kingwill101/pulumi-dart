import 'package:pulumi/pulumi.dart';
import 'get_runtime_iam_policy_args.dart';
import 'get_runtime_iam_policy_result.dart';

/// Retrieves the current IAM policy data for runtime
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.notebooks.getRuntimeIamPolicy({
/// project: runtime.project,
/// location: runtime.location,
/// runtimeName: runtime.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.notebooks.get_runtime_iam_policy(project=runtime["project"],
/// location=runtime["location"],
/// runtime_name=runtime["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Notebooks.GetRuntimeIamPolicy.Invoke(new()
/// {
/// Project = runtime.Project,
/// Location = runtime.Location,
/// RuntimeName = runtime.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := notebooks.LookupRuntimeIamPolicy(ctx, &notebooks.LookupRuntimeIamPolicyArgs{
/// Project:     pulumi.StringRef(runtime.Project),
/// Location:    pulumi.StringRef(runtime.Location),
/// RuntimeName: runtime.Name,
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
/// import com.pulumi.gcp.notebooks.NotebooksFunctions;
/// import com.pulumi.gcp.notebooks.inputs.GetRuntimeIamPolicyArgs;
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
/// final var policy = NotebooksFunctions.getRuntimeIamPolicy(GetRuntimeIamPolicyArgs.builder()
/// .project(runtime.project())
/// .location(runtime.location())
/// .runtimeName(runtime.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:notebooks:getRuntimeIamPolicy
/// arguments:
/// project: ${runtime.project}
/// location: ${runtime.location}
/// runtimeName: ${runtime.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRuntimeIamPolicyResult> getRuntimeIamPolicy(
  GetRuntimeIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:notebooks/getRuntimeIamPolicy:getRuntimeIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRuntimeIamPolicyResult.fromMap(result);
}
