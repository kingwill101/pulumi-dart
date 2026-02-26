import 'package:pulumi/pulumi.dart';
import 'get_organization_policy_args.dart';
import 'get_organization_policy_result.dart';

/// Allows management of Organization policies for a Google Folder. For more information see
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
/// const policy = gcp.folder.getOrganizationPolicy({
/// folder: "folders/folderid",
/// constraint: "constraints/compute.trustedImageProjects",
/// });
/// export const version = policy.then(policy => policy.version);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.folder.get_organization_policy(folder="folders/folderid",
/// constraint="constraints/compute.trustedImageProjects")
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
/// var policy = Gcp.Folder.GetOrganizationPolicy.Invoke(new()
/// {
/// Folder = "folders/folderid",
/// Constraint = "constraints/compute.trustedImageProjects",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/folder"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// policy, err := folder.LookupOrganizationPolicy(ctx, &folder.LookupOrganizationPolicyArgs{
/// Folder:     "folders/folderid",
/// Constraint: "constraints/compute.trustedImageProjects",
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
/// import com.pulumi.gcp.folder.FolderFunctions;
/// import com.pulumi.gcp.folder.inputs.GetOrganizationPolicyArgs;
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
/// final var policy = FolderFunctions.getOrganizationPolicy(GetOrganizationPolicyArgs.builder()
/// .folder("folders/folderid")
/// .constraint("constraints/compute.trustedImageProjects")
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
/// function: gcp:folder:getOrganizationPolicy
/// arguments:
/// folder: folders/folderid
/// constraint: constraints/compute.trustedImageProjects
/// outputs:
/// version: ${policy.version}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetOrganizationPolicyResult> getOrganizationPolicy(
  GetOrganizationPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:folder/getOrganizationPolicy:getOrganizationPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationPolicyResult.fromMap(result);
}
