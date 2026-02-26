import 'package:pulumi/pulumi.dart';
import 'get_access_policy_iam_policy_args.dart';
import 'get_access_policy_iam_policy_result.dart';

/// Retrieves the current IAM policy data for accesspolicy
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.accesscontextmanager.getAccessPolicyIamPolicy({
/// name: access_policy.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.accesscontextmanager.get_access_policy_iam_policy(name=access_policy["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.AccessContextManager.GetAccessPolicyIamPolicy.Invoke(new()
/// {
/// Name = access_policy.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/accesscontextmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := accesscontextmanager.LookupAccessPolicyIamPolicy(ctx, &accesscontextmanager.LookupAccessPolicyIamPolicyArgs{
/// Name: access_policy.Name,
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
/// import com.pulumi.gcp.accesscontextmanager.AccesscontextmanagerFunctions;
/// import com.pulumi.gcp.accesscontextmanager.inputs.GetAccessPolicyIamPolicyArgs;
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
/// final var policy = AccesscontextmanagerFunctions.getAccessPolicyIamPolicy(GetAccessPolicyIamPolicyArgs.builder()
/// .name(access_policy.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:accesscontextmanager:getAccessPolicyIamPolicy
/// arguments:
/// name: ${["access-policy"].name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAccessPolicyIamPolicyResult> getAccessPolicyIamPolicy(
  GetAccessPolicyIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:accesscontextmanager/getAccessPolicyIamPolicy:getAccessPolicyIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAccessPolicyIamPolicyResult.fromMap(result);
}
