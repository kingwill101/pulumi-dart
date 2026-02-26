import 'package:pulumi/pulumi.dart';
import 'get_forwarding_rule_args.dart';
import 'get_forwarding_rule_result.dart';

/// Get a forwarding rule within GCE from its name.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_forwarding_rule = gcp.compute.getForwardingRule({
/// name: "forwarding-rule-us-east1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_forwarding_rule = gcp.compute.get_forwarding_rule(name="forwarding-rule-us-east1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_forwarding_rule = Gcp.Compute.GetForwardingRule.Invoke(new()
/// {
/// Name = "forwarding-rule-us-east1",
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
/// _, err := compute.LookupForwardingRule(ctx, &compute.LookupForwardingRuleArgs{
/// Name: "forwarding-rule-us-east1",
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
/// import com.pulumi.gcp.compute.inputs.GetForwardingRuleArgs;
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
/// final var my-forwarding-rule = ComputeFunctions.getForwardingRule(GetForwardingRuleArgs.builder()
/// .name("forwarding-rule-us-east1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-forwarding-rule:
/// fn::invoke:
/// function: gcp:compute:getForwardingRule
/// arguments:
/// name: forwarding-rule-us-east1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetForwardingRuleResult> getForwardingRule(
  GetForwardingRuleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getForwardingRule:getForwardingRule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetForwardingRuleResult.fromMap(result);
}
