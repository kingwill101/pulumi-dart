import 'package:pulumi/pulumi.dart';
import 'get_security_policy_args.dart';
import 'get_security_policy_result.dart';

/// To get more information about Google Compute Security Policy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/securityPolicies)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/armor/docs/configure-security-policies)
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const sp1 = gcp.compute.getSecurityPolicy({
/// name: "my-policy",
/// project: "my-project",
/// });
/// const sp2 = gcp.compute.getSecurityPolicy({
/// selfLink: "https://www.googleapis.com/compute/v1/projects/my-project/global/securityPolicies/my-policy",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// sp1 = gcp.compute.get_security_policy(name="my-policy",
/// project="my-project")
/// sp2 = gcp.compute.get_security_policy(self_link="https://www.googleapis.com/compute/v1/projects/my-project/global/securityPolicies/my-policy")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var sp1 = Gcp.Compute.GetSecurityPolicy.Invoke(new()
/// {
/// Name = "my-policy",
/// Project = "my-project",
/// });
///
/// var sp2 = Gcp.Compute.GetSecurityPolicy.Invoke(new()
/// {
/// SelfLink = "https://www.googleapis.com/compute/v1/projects/my-project/global/securityPolicies/my-policy",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.LookupSecurityPolicy(ctx, &compute.LookupSecurityPolicyArgs{
/// Name:    pulumi.StringRef("my-policy"),
/// Project: pulumi.StringRef("my-project"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = compute.LookupSecurityPolicy(ctx, &compute.LookupSecurityPolicyArgs{
/// SelfLink: pulumi.StringRef("https://www.googleapis.com/compute/v1/projects/my-project/global/securityPolicies/my-policy"),
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetSecurityPolicyArgs;
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
/// final var sp1 = ComputeFunctions.getSecurityPolicy(GetSecurityPolicyArgs.builder()
/// .name("my-policy")
/// .project("my-project")
/// .build());
///
/// final var sp2 = ComputeFunctions.getSecurityPolicy(GetSecurityPolicyArgs.builder()
/// .selfLink("https://www.googleapis.com/compute/v1/projects/my-project/global/securityPolicies/my-policy")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// sp1:
/// fn::invoke:
/// function: gcp:compute:getSecurityPolicy
/// arguments:
/// name: my-policy
/// project: my-project
/// sp2:
/// fn::invoke:
/// function: gcp:compute:getSecurityPolicy
/// arguments:
/// selfLink: https://www.googleapis.com/compute/v1/projects/my-project/global/securityPolicies/my-policy
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSecurityPolicyResult> getSecurityPolicy(
  GetSecurityPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getSecurityPolicy:getSecurityPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecurityPolicyResult.fromMap(result);
}
