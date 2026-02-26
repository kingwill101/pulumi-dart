import 'package:pulumi/pulumi.dart';
import 'get_organization_policy_args2.dart';
import 'get_organization_policy_result2.dart';

/// Allows management of Organization policies for a Google Project. For more information see
/// [the official
/// documentation](https://docs.cloud.google.com/resource-manager/docs/organization-policy/overview)
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.projects.getOrganizationPolicy({
/// project: "project-id",
/// constraint: "constraints/serviceuser.services",
/// });
/// export const version = policy.then(policy => policy.version);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.projects.get_organization_policy(project="project-id",
/// constraint="constraints/serviceuser.services")
/// pulumi.export("version", policy.version)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Projects.GetOrganizationPolicy.Invoke(new()
/// {
/// Project = "project-id",
/// Constraint = "constraints/serviceuser.services",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["version"] = policy.Apply(getOrganizationPolicyResult => getOrganizationPolicyResult.Version),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// policy, err := projects.LookupOrganizationPolicy(ctx, &projects.LookupOrganizationPolicyArgs{
/// Project:    "project-id",
/// Constraint: "constraints/serviceuser.services",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("version", policy.Version)
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
/// import com.pulumi.gcp.projects.ProjectsFunctions;
/// import com.pulumi.gcp.projects.inputs.GetOrganizationPolicyArgs;
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
/// final var policy = ProjectsFunctions.getOrganizationPolicy(GetOrganizationPolicyArgs.builder()
/// .project("project-id")
/// .constraint("constraints/serviceuser.services")
/// .build());
///
/// ctx.export("version", policy.version());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:projects:getOrganizationPolicy
/// arguments:
/// project: project-id
/// constraint: constraints/serviceuser.services
/// outputs:
/// version: ${policy.version}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetOrganizationPolicyResult2> getOrganizationPolicy2(
  GetOrganizationPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:projects/getOrganizationPolicy:getOrganizationPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationPolicyResult2.fromMap(result);
}
