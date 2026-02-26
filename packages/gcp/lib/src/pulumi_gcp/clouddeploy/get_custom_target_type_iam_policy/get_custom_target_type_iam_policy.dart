import 'package:pulumi/pulumi.dart';
import 'get_custom_target_type_iam_policy_args.dart';
import 'get_custom_target_type_iam_policy_result.dart';

/// Retrieves the current IAM policy data for customtargettype
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.clouddeploy.getCustomTargetTypeIamPolicy({
/// project: custom_target_type.project,
/// location: custom_target_type.location,
/// name: custom_target_type.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.clouddeploy.get_custom_target_type_iam_policy(project=custom_target_type["project"],
/// location=custom_target_type["location"],
/// name=custom_target_type["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.CloudDeploy.GetCustomTargetTypeIamPolicy.Invoke(new()
/// {
/// Project = custom_target_type.Project,
/// Location = custom_target_type.Location,
/// Name = custom_target_type.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/clouddeploy"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := clouddeploy.LookupCustomTargetTypeIamPolicy(ctx, &clouddeploy.LookupCustomTargetTypeIamPolicyArgs{
/// Project:  pulumi.StringRef(custom_target_type.Project),
/// Location: pulumi.StringRef(custom_target_type.Location),
/// Name:     custom_target_type.Name,
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
/// import com.pulumi.gcp.clouddeploy.ClouddeployFunctions;
/// import com.pulumi.gcp.clouddeploy.inputs.GetCustomTargetTypeIamPolicyArgs;
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
/// final var policy = ClouddeployFunctions.getCustomTargetTypeIamPolicy(GetCustomTargetTypeIamPolicyArgs.builder()
/// .project(custom_target_type.project())
/// .location(custom_target_type.location())
/// .name(custom_target_type.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:clouddeploy:getCustomTargetTypeIamPolicy
/// arguments:
/// project: ${["custom-target-type"].project}
/// location: ${["custom-target-type"].location}
/// name: ${["custom-target-type"].name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetCustomTargetTypeIamPolicyResult> getCustomTargetTypeIamPolicy(
  GetCustomTargetTypeIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:clouddeploy/getCustomTargetTypeIamPolicy:getCustomTargetTypeIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCustomTargetTypeIamPolicyResult.fromMap(result);
}
