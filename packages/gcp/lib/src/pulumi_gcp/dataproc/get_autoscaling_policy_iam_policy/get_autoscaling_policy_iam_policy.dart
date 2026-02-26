import 'package:pulumi/pulumi.dart';
import 'get_autoscaling_policy_iam_policy_args.dart';
import 'get_autoscaling_policy_iam_policy_result.dart';

/// Retrieves the current IAM policy data for autoscalingpolicy
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.dataproc.getAutoscalingPolicyIamPolicy({
/// project: basic.project,
/// location: basic.location,
/// policyId: basic.policyId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dataproc.get_autoscaling_policy_iam_policy(project=basic["project"],
/// location=basic["location"],
/// policy_id=basic["policyId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Dataproc.GetAutoscalingPolicyIamPolicy.Invoke(new()
/// {
/// Project = basic.Project,
/// Location = basic.Location,
/// PolicyId = basic.PolicyId,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataproc.LookupAutoscalingPolicyIamPolicy(ctx, &dataproc.LookupAutoscalingPolicyIamPolicyArgs{
/// Project:  pulumi.StringRef(basic.Project),
/// Location: pulumi.StringRef(basic.Location),
/// PolicyId: basic.PolicyId,
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
/// import com.pulumi.gcp.dataproc.DataprocFunctions;
/// import com.pulumi.gcp.dataproc.inputs.GetAutoscalingPolicyIamPolicyArgs;
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
/// final var policy = DataprocFunctions.getAutoscalingPolicyIamPolicy(GetAutoscalingPolicyIamPolicyArgs.builder()
/// .project(basic.project())
/// .location(basic.location())
/// .policyId(basic.policyId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:dataproc:getAutoscalingPolicyIamPolicy
/// arguments:
/// project: ${basic.project}
/// location: ${basic.location}
/// policyId: ${basic.policyId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAutoscalingPolicyIamPolicyResult> getAutoscalingPolicyIamPolicy(
  GetAutoscalingPolicyIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataproc/getAutoscalingPolicyIamPolicy:getAutoscalingPolicyIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAutoscalingPolicyIamPolicyResult.fromMap(result);
}
