import 'package:pulumi/pulumi.dart';
import 'get_workforce_pool_iam_policy_args.dart';
import 'get_workforce_pool_iam_policy_result.dart';

/// Retrieves the current IAM policy data for workforcepool
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iam.getWorkforcePoolIamPolicy({
/// location: example.location,
/// workforcePoolId: example.workforcePoolId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iam.get_workforce_pool_iam_policy(location=example["location"],
/// workforce_pool_id=example["workforcePoolId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Iam.GetWorkforcePoolIamPolicy.Invoke(new()
/// {
/// Location = example.Location,
/// WorkforcePoolId = example.WorkforcePoolId,
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
/// _, err := iam.LookupWorkforcePoolIamPolicy(ctx, &iam.LookupWorkforcePoolIamPolicyArgs{
/// Location:        pulumi.StringRef(example.Location),
/// WorkforcePoolId: example.WorkforcePoolId,
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
/// import com.pulumi.gcp.iam.inputs.GetWorkforcePoolIamPolicyArgs;
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
/// final var policy = IamFunctions.getWorkforcePoolIamPolicy(GetWorkforcePoolIamPolicyArgs.builder()
/// .location(example.location())
/// .workforcePoolId(example.workforcePoolId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:iam:getWorkforcePoolIamPolicy
/// arguments:
/// location: ${example.location}
/// workforcePoolId: ${example.workforcePoolId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetWorkforcePoolIamPolicyResult> getWorkforcePoolIamPolicy(
  GetWorkforcePoolIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iam/getWorkforcePoolIamPolicy:getWorkforcePoolIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkforcePoolIamPolicyResult.fromMap(result);
}
