import 'package:pulumi/pulumi.dart';
import 'get_instance_iam_policy_args4.dart';
import 'get_instance_iam_policy_result4.dart';

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
/// const policy = gcp.notebooks.getInstanceIamPolicy({
/// project: instance.project,
/// location: instance.location,
/// instanceName: instance.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.notebooks.get_instance_iam_policy(project=instance["project"],
/// location=instance["location"],
/// instance_name=instance["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Notebooks.GetInstanceIamPolicy.Invoke(new()
/// {
/// Project = instance.Project,
/// Location = instance.Location,
/// InstanceName = instance.Name,
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
/// _, err := notebooks.LookupInstanceIamPolicy(ctx, &notebooks.LookupInstanceIamPolicyArgs{
/// Project:      pulumi.StringRef(instance.Project),
/// Location:     pulumi.StringRef(instance.Location),
/// InstanceName: instance.Name,
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
/// import com.pulumi.gcp.notebooks.inputs.GetInstanceIamPolicyArgs;
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
/// final var policy = NotebooksFunctions.getInstanceIamPolicy(GetInstanceIamPolicyArgs.builder()
/// .project(instance.project())
/// .location(instance.location())
/// .instanceName(instance.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:notebooks:getInstanceIamPolicy
/// arguments:
/// project: ${instance.project}
/// location: ${instance.location}
/// instanceName: ${instance.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetInstanceIamPolicyResult4> getInstanceIamPolicy4(
  GetInstanceIamPolicyArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:notebooks/getInstanceIamPolicy:getInstanceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult4.fromMap(result);
}
