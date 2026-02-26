import 'package:pulumi/pulumi.dart';
import 'get_workload_identity_pool_iam_policy_args.dart';
import 'get_workload_identity_pool_iam_policy_result.dart';

/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iam.getWorkloadIdentityPoolIamPolicy({
/// project: example.project,
/// workloadIdentityPoolId: example.workloadIdentityPoolId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iam.get_workload_identity_pool_iam_policy(project=example["project"],
/// workload_identity_pool_id=example["workloadIdentityPoolId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Iam.GetWorkloadIdentityPoolIamPolicy.Invoke(new()
/// {
/// Project = example.Project,
/// WorkloadIdentityPoolId = example.WorkloadIdentityPoolId,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.LookupWorkloadIdentityPoolIamPolicy(ctx, &iam.LookupWorkloadIdentityPoolIamPolicyArgs{
/// Project:                pulumi.StringRef(example.Project),
/// WorkloadIdentityPoolId: example.WorkloadIdentityPoolId,
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
/// import com.pulumi.gcp.iam.IamFunctions;
/// import com.pulumi.gcp.iam.inputs.GetWorkloadIdentityPoolIamPolicyArgs;
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
/// final var policy = IamFunctions.getWorkloadIdentityPoolIamPolicy(GetWorkloadIdentityPoolIamPolicyArgs.builder()
/// .project(example.project())
/// .workloadIdentityPoolId(example.workloadIdentityPoolId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:iam:getWorkloadIdentityPoolIamPolicy
/// arguments:
/// project: ${example.project}
/// workloadIdentityPoolId: ${example.workloadIdentityPoolId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetWorkloadIdentityPoolIamPolicyResult> getWorkloadIdentityPoolIamPolicy(
  GetWorkloadIdentityPoolIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iam/getWorkloadIdentityPoolIamPolicy:getWorkloadIdentityPoolIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkloadIdentityPoolIamPolicyResult.fromMap(result);
}
