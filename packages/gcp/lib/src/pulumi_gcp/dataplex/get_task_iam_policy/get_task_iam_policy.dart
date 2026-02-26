import 'package:pulumi/pulumi.dart';
import 'get_task_iam_policy_args.dart';
import 'get_task_iam_policy_result.dart';

/// Retrieves the current IAM policy data for task
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.dataplex.getTaskIamPolicy({
/// project: example.project,
/// location: example.location,
/// lake: example.lake,
/// taskId: example.taskId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dataplex.get_task_iam_policy(project=example["project"],
/// location=example["location"],
/// lake=example["lake"],
/// task_id=example["taskId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.DataPlex.GetTaskIamPolicy.Invoke(new()
/// {
/// Project = example.Project,
/// Location = example.Location,
/// Lake = example.Lake,
/// TaskId = example.TaskId,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataplex.LookupTaskIamPolicy(ctx, &dataplex.LookupTaskIamPolicyArgs{
/// Project:  pulumi.StringRef(example.Project),
/// Location: pulumi.StringRef(example.Location),
/// Lake:     example.Lake,
/// TaskId:   example.TaskId,
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
/// import com.pulumi.gcp.dataplex.DataplexFunctions;
/// import com.pulumi.gcp.dataplex.inputs.GetTaskIamPolicyArgs;
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
/// final var policy = DataplexFunctions.getTaskIamPolicy(GetTaskIamPolicyArgs.builder()
/// .project(example.project())
/// .location(example.location())
/// .lake(example.lake())
/// .taskId(example.taskId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:dataplex:getTaskIamPolicy
/// arguments:
/// project: ${example.project}
/// location: ${example.location}
/// lake: ${example.lake}
/// taskId: ${example.taskId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetTaskIamPolicyResult> getTaskIamPolicy(
  GetTaskIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getTaskIamPolicy:getTaskIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTaskIamPolicyResult.fromMap(result);
}
