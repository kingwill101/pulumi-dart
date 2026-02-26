import 'package:pulumi/pulumi.dart';
import 'get_environment_iam_policy_args.dart';
import 'get_environment_iam_policy_result.dart';

/// Retrieves the current IAM policy data for environment
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.apigee.getEnvironmentIamPolicy({
/// orgId: apigeeEnvironment.orgId,
/// envId: apigeeEnvironment.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.apigee.get_environment_iam_policy(org_id=apigee_environment["orgId"],
/// env_id=apigee_environment["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Apigee.GetEnvironmentIamPolicy.Invoke(new()
/// {
/// OrgId = apigeeEnvironment.OrgId,
/// EnvId = apigeeEnvironment.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigee"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apigee.LookupEnvironmentIamPolicy(ctx, &apigee.LookupEnvironmentIamPolicyArgs{
/// OrgId: apigeeEnvironment.OrgId,
/// EnvId: apigeeEnvironment.Name,
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
/// import com.pulumi.gcp.apigee.ApigeeFunctions;
/// import com.pulumi.gcp.apigee.inputs.GetEnvironmentIamPolicyArgs;
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
/// final var policy = ApigeeFunctions.getEnvironmentIamPolicy(GetEnvironmentIamPolicyArgs.builder()
/// .orgId(apigeeEnvironment.orgId())
/// .envId(apigeeEnvironment.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:apigee:getEnvironmentIamPolicy
/// arguments:
/// orgId: ${apigeeEnvironment.orgId}
/// envId: ${apigeeEnvironment.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetEnvironmentIamPolicyResult> getEnvironmentIamPolicy(
  GetEnvironmentIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:apigee/getEnvironmentIamPolicy:getEnvironmentIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentIamPolicyResult.fromMap(result);
}
