import 'package:pulumi/pulumi.dart';
import 'get_subscribed_rule_group_args2.dart';
import 'get_subscribed_rule_group_result2.dart';

/// <span pulumi-lang-nodejs="`aws.wafregional.getSubscribedRuleGroup`" pulumi-lang-dotnet="`aws.wafregional.getSubscribedRuleGroup`" pulumi-lang-go="`wafregional.getSubscribedRuleGroup`" pulumi-lang-python="`wafregional_get_subscribed_rule_group`" pulumi-lang-yaml="`aws.wafregional.getSubscribedRuleGroup`" pulumi-lang-java="`aws.wafregional.getSubscribedRuleGroup`">`aws.wafregional.getSubscribedRuleGroup`</span> retrieves information about a Managed WAF Rule Group from AWS Marketplace for use in WAF Regional (needs to be subscribed to first).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const byName = aws.wafregional.getSubscribedRuleGroup({
/// name: "F5 Bot Detection Signatures For AWS WAF",
/// });
/// const byMetricName = aws.wafregional.getSubscribedRuleGroup({
/// metricName: "F5BotDetectionSignatures",
/// });
/// const acl = new aws.wafregional.WebAcl("acl", {rules: [
/// {
/// priority: 1,
/// ruleId: byName.then(byName => byName.id),
/// type: "GROUP",
/// },
/// {
/// priority: 2,
/// ruleId: byMetricName.then(byMetricName => byMetricName.id),
/// type: "GROUP",
/// },
/// ]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// by_name = aws.wafregional.get_subscribed_rule_group(name="F5 Bot Detection Signatures For AWS WAF")
/// by_metric_name = aws.wafregional.get_subscribed_rule_group(metric_name="F5BotDetectionSignatures")
/// acl = aws.wafregional.WebAcl("acl", rules=[
/// {
/// "priority": 1,
/// "rule_id": by_name.id,
/// "type": "GROUP",
/// },
/// {
/// "priority": 2,
/// "rule_id": by_metric_name.id,
/// "type": "GROUP",
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var byName = Aws.WafRegional.GetSubscribedRuleGroup.Invoke(new()
/// {
/// Name = "F5 Bot Detection Signatures For AWS WAF",
/// });
///
/// var byMetricName = Aws.WafRegional.GetSubscribedRuleGroup.Invoke(new()
/// {
/// MetricName = "F5BotDetectionSignatures",
/// });
///
/// var acl = new Aws.WafRegional.WebAcl("acl", new()
/// {
/// Rules = new[]
/// {
/// new Aws.WafRegional.Inputs.WebAclRuleArgs
/// {
/// Priority = 1,
/// RuleId = byName.Apply(getSubscribedRuleGroupResult => getSubscribedRuleGroupResult.Id),
/// Type = "GROUP",
/// },
/// new Aws.WafRegional.Inputs.WebAclRuleArgs
/// {
/// Priority = 2,
/// RuleId = byMetricName.Apply(getSubscribedRuleGroupResult => getSubscribedRuleGroupResult.Id),
/// Type = "GROUP",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafregional"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// byName, err := wafregional.GetSubscribedRuleGroup(ctx, &wafregional.GetSubscribedRuleGroupArgs{
/// Name: pulumi.StringRef("F5 Bot Detection Signatures For AWS WAF"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// byMetricName, err := wafregional.GetSubscribedRuleGroup(ctx, &wafregional.GetSubscribedRuleGroupArgs{
/// MetricName: pulumi.StringRef("F5BotDetectionSignatures"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = wafregional.NewWebAcl(ctx, "acl", &wafregional.WebAclArgs{
/// Rules: wafregional.WebAclRuleArray{
/// &wafregional.WebAclRuleArgs{
/// Priority: pulumi.Int(1),
/// RuleId:   pulumi.String(byName.Id),
/// Type:     pulumi.String("GROUP"),
/// },
/// &wafregional.WebAclRuleArgs{
/// Priority: pulumi.Int(2),
/// RuleId:   pulumi.String(byMetricName.Id),
/// Type:     pulumi.String("GROUP"),
/// },
/// },
/// })
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
/// import com.pulumi.aws.wafregional.WafregionalFunctions;
/// import com.pulumi.aws.wafregional.inputs.GetSubscribedRuleGroupArgs;
/// import com.pulumi.aws.wafregional.WebAcl;
/// import com.pulumi.aws.wafregional.WebAclArgs;
/// import com.pulumi.aws.wafregional.inputs.WebAclRuleArgs;
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
/// final var byName = WafregionalFunctions.getSubscribedRuleGroup(GetSubscribedRuleGroupArgs.builder()
/// .name("F5 Bot Detection Signatures For AWS WAF")
/// .build());
///
/// final var byMetricName = WafregionalFunctions.getSubscribedRuleGroup(GetSubscribedRuleGroupArgs.builder()
/// .metricName("F5BotDetectionSignatures")
/// .build());
///
/// var acl = new WebAcl("acl", WebAclArgs.builder()
/// .rules(
/// WebAclRuleArgs.builder()
/// .priority(1)
/// .ruleId(byName.id())
/// .type("GROUP")
/// .build(),
/// WebAclRuleArgs.builder()
/// .priority(2)
/// .ruleId(byMetricName.id())
/// .type("GROUP")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// acl:
/// type: aws:wafregional:WebAcl
/// properties:
/// rules:
/// - priority: 1
/// ruleId: ${byName.id}
/// type: GROUP
/// - priority: 2
/// ruleId: ${byMetricName.id}
/// type: GROUP
/// variables:
/// byName:
/// fn::invoke:
/// function: aws:wafregional:getSubscribedRuleGroup
/// arguments:
/// name: F5 Bot Detection Signatures For AWS WAF
/// byMetricName:
/// fn::invoke:
/// function: aws:wafregional:getSubscribedRuleGroup
/// arguments:
/// metricName: F5BotDetectionSignatures
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSubscribedRuleGroupResult2> getSubscribedRuleGroup2(
  GetSubscribedRuleGroupArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafregional/getSubscribedRuleGroup:getSubscribedRuleGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSubscribedRuleGroupResult2.fromMap(result);
}
