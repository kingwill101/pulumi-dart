import 'package:pulumi/pulumi.dart';
import 'get_managed_rule_group_args.dart';
import 'get_managed_rule_group_result.dart';

/// High-level information for a managed rule group.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.wafv2.getManagedRuleGroup({
/// name: "AWSManagedRulesCommonRuleSet",
/// scope: "REGIONAL",
/// vendorName: "AWS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafv2.get_managed_rule_group(name="AWSManagedRulesCommonRuleSet",
/// scope="REGIONAL",
/// vendor_name="AWS")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.WafV2.GetManagedRuleGroup.Invoke(new()
/// {
/// Name = "AWSManagedRulesCommonRuleSet",
/// Scope = "REGIONAL",
/// VendorName = "AWS",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := wafv2.GetManagedRuleGroup(ctx, &wafv2.GetManagedRuleGroupArgs{
/// Name:       "AWSManagedRulesCommonRuleSet",
/// Scope:      "REGIONAL",
/// VendorName: "AWS",
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
/// import com.pulumi.aws.wafv2.Wafv2Functions;
/// import com.pulumi.aws.wafv2.inputs.GetManagedRuleGroupArgs;
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
/// final var example = Wafv2Functions.getManagedRuleGroup(GetManagedRuleGroupArgs.builder()
/// .name("AWSManagedRulesCommonRuleSet")
/// .scope("REGIONAL")
/// .vendorName("AWS")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:wafv2:getManagedRuleGroup
/// arguments:
/// name: AWSManagedRulesCommonRuleSet
/// scope: REGIONAL
/// vendorName: AWS
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetManagedRuleGroupResult> getManagedRuleGroup(
  GetManagedRuleGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafv2/getManagedRuleGroup:getManagedRuleGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetManagedRuleGroupResult.fromMap(result);
}
