import 'package:pulumi/pulumi.dart';
import 'get_rule_args.dart';
import 'get_rule_result.dart';

/// Use this data source to get information about a Google IAM Role.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const roleinfo = gcp.iam.getRule({
/// name: "roles/compute.viewer",
/// });
/// export const theRolePermissions = roleinfo.then(roleinfo => roleinfo.includedPermissions);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// roleinfo = gcp.iam.get_rule(name="roles/compute.viewer")
/// pulumi.export("theRolePermissions", roleinfo.included_permissions)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var roleinfo = Gcp.Iam.GetRule.Invoke(new()
/// {
/// Name = "roles/compute.viewer",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["theRolePermissions"] = roleinfo.Apply(getRuleResult => getRuleResult.IncludedPermissions),
/// };
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
/// roleinfo, err := iam.GetRule(ctx, &iam.GetRuleArgs{
/// Name: "roles/compute.viewer",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("theRolePermissions", roleinfo.IncludedPermissions)
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
/// import com.pulumi.gcp.iam.inputs.GetRuleArgs;
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
/// final var roleinfo = IamFunctions.getRule(GetRuleArgs.builder()
/// .name("roles/compute.viewer")
/// .build());
///
/// ctx.export("theRolePermissions", roleinfo.includedPermissions());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// roleinfo:
/// fn::invoke:
/// function: gcp:iam:getRule
/// arguments:
/// name: roles/compute.viewer
/// outputs:
/// theRolePermissions: ${roleinfo.includedPermissions}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRuleResult> getRule(
  GetRuleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iam/getRule:getRule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRuleResult.fromMap(result);
}
