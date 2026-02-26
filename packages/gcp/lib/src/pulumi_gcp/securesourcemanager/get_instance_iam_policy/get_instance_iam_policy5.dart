import 'package:pulumi/pulumi.dart';
import 'get_instance_iam_policy_args5.dart';
import 'get_instance_iam_policy_result5.dart';

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
/// const policy = gcp.securesourcemanager.getInstanceIamPolicy({
/// project: _default.project,
/// location: _default.location,
/// instanceId: _default.instanceId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.securesourcemanager.get_instance_iam_policy(project=default["project"],
/// location=default["location"],
/// instance_id=default["instanceId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.SecureSourceManager.GetInstanceIamPolicy.Invoke(new()
/// {
/// Project = @default.Project,
/// Location = @default.Location,
/// InstanceId = @default.InstanceId,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := securesourcemanager.LookupInstanceIamPolicy(ctx, &securesourcemanager.LookupInstanceIamPolicyArgs{
/// Project:    pulumi.StringRef(_default.Project),
/// Location:   pulumi.StringRef(_default.Location),
/// InstanceId: _default.InstanceId,
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
/// import com.pulumi.gcp.securesourcemanager.SecuresourcemanagerFunctions;
/// import com.pulumi.gcp.securesourcemanager.inputs.GetInstanceIamPolicyArgs;
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
/// final var policy = SecuresourcemanagerFunctions.getInstanceIamPolicy(GetInstanceIamPolicyArgs.builder()
/// .project(default_.project())
/// .location(default_.location())
/// .instanceId(default_.instanceId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:securesourcemanager:getInstanceIamPolicy
/// arguments:
/// project: ${default.project}
/// location: ${default.location}
/// instanceId: ${default.instanceId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetInstanceIamPolicyResult5> getInstanceIamPolicy5(
  GetInstanceIamPolicyArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:securesourcemanager/getInstanceIamPolicy:getInstanceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult5.fromMap(result);
}
