import 'package:pulumi/pulumi.dart';
import 'get_listener_rule_args.dart';
import 'get_listener_rule_result.dart';

/// Provides information about an AWS Elastic Load Balancing Listener Rule.
///
/// ## Example Usage
///
/// ### Match by Rule ARN
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const lbRuleArn = config.require("lbRuleArn");
/// const example = aws.lb.getListenerRule({
/// arn: lbRuleArn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// lb_rule_arn = config.require("lbRuleArn")
/// example = aws.lb.get_listener_rule(arn=lb_rule_arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var config = new Config();
/// var lbRuleArn = config.Require("lbRuleArn");
/// var example = Aws.LB.GetListenerRule.Invoke(new()
/// {
/// Arn = lbRuleArn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// lbRuleArn := cfg.Require("lbRuleArn")
/// _, err := lb.LookupListenerRule(ctx, &lb.LookupListenerRuleArgs{
/// Arn: pulumi.StringRef(lbRuleArn),
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
/// import com.pulumi.aws.lb.LbFunctions;
/// import com.pulumi.aws.lb.inputs.GetListenerRuleArgs;
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
/// final var config = ctx.config();
/// final var lbRuleArn = config.get("lbRuleArn");
/// final var example = LbFunctions.getListenerRule(GetListenerRuleArgs.builder()
/// .arn(lbRuleArn)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// configuration:
/// lbRuleArn:
/// type: string
/// variables:
/// example:
/// fn::invoke:
/// function: aws:lb:getListenerRule
/// arguments:
/// arn: ${lbRuleArn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Match by Listener ARN and Priority
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const lbListenerArn = config.require("lbListenerArn");
/// const lbRulePriority = config.requireNumber("lbRulePriority");
/// const example = aws.lb.getListenerRule({
/// listenerArn: lbListenerArn,
/// priority: lbRulePriority,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// lb_listener_arn = config.require("lbListenerArn")
/// lb_rule_priority = config.require_float("lbRulePriority")
/// example = aws.lb.get_listener_rule(listener_arn=lb_listener_arn,
/// priority=lb_rule_priority)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var config = new Config();
/// var lbListenerArn = config.Require("lbListenerArn");
/// var lbRulePriority = config.RequireDouble("lbRulePriority");
/// var example = Aws.LB.GetListenerRule.Invoke(new()
/// {
/// ListenerArn = lbListenerArn,
/// Priority = lbRulePriority,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// lbListenerArn := cfg.Require("lbListenerArn")
/// lbRulePriority := cfg.RequireFloat64("lbRulePriority")
/// _, err := lb.LookupListenerRule(ctx, &lb.LookupListenerRuleArgs{
/// ListenerArn: pulumi.StringRef(lbListenerArn),
/// Priority:    pulumi.IntRef(lbRulePriority),
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
/// import com.pulumi.aws.lb.LbFunctions;
/// import com.pulumi.aws.lb.inputs.GetListenerRuleArgs;
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
/// final var config = ctx.config();
/// final var lbListenerArn = config.get("lbListenerArn");
/// final var lbRulePriority = config.get("lbRulePriority");
/// final var example = LbFunctions.getListenerRule(GetListenerRuleArgs.builder()
/// .listenerArn(lbListenerArn)
/// .priority(lbRulePriority)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// configuration:
/// lbListenerArn:
/// type: string
/// lbRulePriority:
/// type: number
/// variables:
/// example:
/// fn::invoke:
/// function: aws:lb:getListenerRule
/// arguments:
/// listenerArn: ${lbListenerArn}
/// priority: ${lbRulePriority}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetListenerRuleResult> getListenerRule(
  GetListenerRuleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lb/getListenerRule:getListenerRule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetListenerRuleResult.fromMap(result);
}
