import 'package:pulumi/pulumi.dart';
import 'get_global_forwarding_rule_args.dart';
import 'get_global_forwarding_rule_result.dart';

/// Get a global forwarding rule within GCE from its name.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_forwarding_rule = gcp.compute.getGlobalForwardingRule({
/// name: "forwarding-rule-global",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_forwarding_rule = gcp.compute.get_global_forwarding_rule(name="forwarding-rule-global")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_forwarding_rule = Gcp.Compute.GetGlobalForwardingRule.Invoke(new()
/// {
/// Name = "forwarding-rule-global",
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
/// _, err := compute.LookupGlobalForwardingRule(ctx, &compute.LookupGlobalForwardingRuleArgs{
/// Name: "forwarding-rule-global",
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
/// import com.pulumi.gcp.compute.inputs.GetGlobalForwardingRuleArgs;
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
/// final var my-forwarding-rule = ComputeFunctions.getGlobalForwardingRule(GetGlobalForwardingRuleArgs.builder()
/// .name("forwarding-rule-global")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-forwarding-rule:
/// fn::invoke:
/// function: gcp:compute:getGlobalForwardingRule
/// arguments:
/// name: forwarding-rule-global
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetGlobalForwardingRuleResult> getGlobalForwardingRule(
  GetGlobalForwardingRuleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getGlobalForwardingRule:getGlobalForwardingRule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGlobalForwardingRuleResult.fromMap(result);
}
