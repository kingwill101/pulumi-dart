import 'package:pulumi/pulumi.dart';
import 'get_instance_iam_policy_args6.dart';
import 'get_instance_iam_policy_result6.dart';

/// Retrieves the current IAM policy data for a Spanner instance.
///
/// ## example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.spanner.getInstanceIamPolicy({
/// project: instance.project,
/// instance: instance.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.spanner.get_instance_iam_policy(project=instance["project"],
/// instance=instance["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foo = Gcp.Spanner.GetInstanceIamPolicy.Invoke(new()
/// {
/// Project = instance.Project,
/// Instance = instance.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/spanner"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := spanner.GetInstanceIamPolicy(ctx, &spanner.GetInstanceIamPolicyArgs{
/// Project:  pulumi.StringRef(instance.Project),
/// Instance: instance.Name,
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
/// import com.pulumi.gcp.spanner.SpannerFunctions;
/// import com.pulumi.gcp.spanner.inputs.GetInstanceIamPolicyArgs;
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
/// final var foo = SpannerFunctions.getInstanceIamPolicy(GetInstanceIamPolicyArgs.builder()
/// .project(instance.project())
/// .instance(instance.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// foo:
/// fn::invoke:
/// function: gcp:spanner:getInstanceIamPolicy
/// arguments:
/// project: ${instance.project}
/// instance: ${instance.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetInstanceIamPolicyResult6> getInstanceIamPolicy6(
  GetInstanceIamPolicyArgs6 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:spanner/getInstanceIamPolicy:getInstanceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult6.fromMap(result);
}
