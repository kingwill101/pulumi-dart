import 'package:pulumi/pulumi.dart';
import 'get_external_access_rule_args.dart';
import 'get_external_access_rule_result.dart';

/// Use this data source to get details about a external access rule resource.
///
/// To get more information about external address, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.networkPolicies.externalAccessRules)
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myExternalAccessRule = gcp.vmwareengine.getExternalAccessRule({
/// name: "my-external-access-rule",
/// parent: "project/my-project/locations/us-west1-a/networkPolicies/my-network-policy",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_external_access_rule = gcp.vmwareengine.get_external_access_rule(name="my-external-access-rule",
/// parent="project/my-project/locations/us-west1-a/networkPolicies/my-network-policy")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myExternalAccessRule = Gcp.VMwareEngine.GetExternalAccessRule.Invoke(new()
/// {
/// Name = "my-external-access-rule",
/// Parent = "project/my-project/locations/us-west1-a/networkPolicies/my-network-policy",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := vmwareengine.LookupExternalAccessRule(ctx, &vmwareengine.LookupExternalAccessRuleArgs{
/// Name:   "my-external-access-rule",
/// Parent: "project/my-project/locations/us-west1-a/networkPolicies/my-network-policy",
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
/// import com.pulumi.gcp.vmwareengine.VmwareengineFunctions;
/// import com.pulumi.gcp.vmwareengine.inputs.GetExternalAccessRuleArgs;
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
/// final var myExternalAccessRule = VmwareengineFunctions.getExternalAccessRule(GetExternalAccessRuleArgs.builder()
/// .name("my-external-access-rule")
/// .parent("project/my-project/locations/us-west1-a/networkPolicies/my-network-policy")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// myExternalAccessRule:
/// fn::invoke:
/// function: gcp:vmwareengine:getExternalAccessRule
/// arguments:
/// name: my-external-access-rule
/// parent: project/my-project/locations/us-west1-a/networkPolicies/my-network-policy
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetExternalAccessRuleResult> getExternalAccessRule(
  GetExternalAccessRuleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getExternalAccessRule:getExternalAccessRule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetExternalAccessRuleResult.fromMap(result);
}
