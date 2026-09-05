import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ipset_args.dart';
import 'get_ipset_result.dart';
import 'get_rate_based_mod_args.dart';
import 'get_rate_based_mod_result.dart';
import 'get_rule_args.dart';
import 'get_rule_result.dart';
import 'get_subscribed_rule_group_args.dart';
import 'get_subscribed_rule_group_result.dart';
import 'get_web_acl_args.dart';
import 'get_web_acl_result.dart';

/// `aws.wafregional.IpSet` Retrieves a WAF Regional IP Set Resource Id.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.wafregional.getIpset({
///     name: "tfWAFRegionalIPSet",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafregional.get_ipset(name="tfWAFRegionalIPSet")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.WafRegional.GetIpset.Invoke(new()
///     {
///         Name = "tfWAFRegionalIPSet",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafregional"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := wafregional.GetIpset(ctx, &wafregional.GetIpsetArgs{
/// 			Name: "tfWAFRegionalIPSet",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_wafregional_getipset" "example" {
///   name = "tfWAFRegionalIPSet"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafregional.WafregionalFunctions;
/// import com.pulumi.aws.wafregional.inputs.GetIpsetArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = WafregionalFunctions.getIpset(GetIpsetArgs.builder()
///             .name("tfWAFRegionalIPSet")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:wafregional:getIpset
///       arguments:
///         name: tfWAFRegionalIPSet
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_wafregional_get_ipset_get_ipset_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIpsetResult> getIpset(
  GetIpsetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafregional/getIpset:getIpset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpsetResult.fromMap(result);
}

pulumi.Output<GetIpsetResult> getIpsetOutput(
  GetIpsetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:wafregional/getIpset:getIpset',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIpsetResult.fromMap);
}

/// `aws.wafregional.RateBasedRule` Retrieves a WAF Regional Rate Based Rule Resource Id.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.wafregional.getRateBasedMod({
///     name: "tfWAFRegionalRateBasedRule",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafregional.get_rate_based_mod(name="tfWAFRegionalRateBasedRule")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.WafRegional.GetRateBasedMod.Invoke(new()
///     {
///         Name = "tfWAFRegionalRateBasedRule",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafregional"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := wafregional.GetRateBasedMod(ctx, &wafregional.GetRateBasedModArgs{
/// 			Name: "tfWAFRegionalRateBasedRule",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_wafregional_getratebasedmod" "example" {
///   name = "tfWAFRegionalRateBasedRule"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafregional.WafregionalFunctions;
/// import com.pulumi.aws.wafregional.inputs.GetRateBasedModArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = WafregionalFunctions.getRateBasedMod(GetRateBasedModArgs.builder()
///             .name("tfWAFRegionalRateBasedRule")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:wafregional:getRateBasedMod
///       arguments:
///         name: tfWAFRegionalRateBasedRule
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_wafregional_get_rate_based_mod_get_rate_based_mod_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRateBasedModResult> getRateBasedMod(
  GetRateBasedModArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafregional/getRateBasedMod:getRateBasedMod',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRateBasedModResult.fromMap(result);
}

pulumi.Output<GetRateBasedModResult> getRateBasedModOutput(
  GetRateBasedModArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:wafregional/getRateBasedMod:getRateBasedMod',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRateBasedModResult.fromMap);
}

/// `aws.wafregional.Rule` Retrieves a WAF Regional Rule Resource Id.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.wafregional.getRule({
///     name: "tfWAFRegionalRule",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafregional.get_rule(name="tfWAFRegionalRule")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.WafRegional.GetRule.Invoke(new()
///     {
///         Name = "tfWAFRegionalRule",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafregional"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := wafregional.LookupRule(ctx, &wafregional.LookupRuleArgs{
/// 			Name: "tfWAFRegionalRule",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_wafregional_getrule" "example" {
///   name = "tfWAFRegionalRule"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafregional.WafregionalFunctions;
/// import com.pulumi.aws.wafregional.inputs.GetRuleArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = WafregionalFunctions.getRule(GetRuleArgs.builder()
///             .name("tfWAFRegionalRule")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:wafregional:getRule
///       arguments:
///         name: tfWAFRegionalRule
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_wafregional_get_rule_get_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRuleResult> getRule(
  GetRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafregional/getRule:getRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRuleResult.fromMap(result);
}

pulumi.Output<GetRuleResult> getRuleOutput(
  GetRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:wafregional/getRule:getRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRuleResult.fromMap);
}

/// `aws.wafregional.getSubscribedRuleGroup` retrieves information about a Managed WAF Rule Group from AWS Marketplace for use in WAF Regional (needs to be subscribed to first).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const byName = aws.wafregional.getSubscribedRuleGroup({
///     name: "F5 Bot Detection Signatures For AWS WAF",
/// });
/// const byMetricName = aws.wafregional.getSubscribedRuleGroup({
///     metricName: "F5BotDetectionSignatures",
/// });
/// const acl = new aws.wafregional.WebAcl("acl", {rules: [
///     {
///         priority: 1,
///         ruleId: byName.then(byName => byName.id),
///         type: "GROUP",
///     },
///     {
///         priority: 2,
///         ruleId: byMetricName.then(byMetricName => byMetricName.id),
///         type: "GROUP",
///     },
/// ]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// by_name = aws.wafregional.get_subscribed_rule_group(name="F5 Bot Detection Signatures For AWS WAF")
/// by_metric_name = aws.wafregional.get_subscribed_rule_group(metric_name="F5BotDetectionSignatures")
/// acl = aws.wafregional.WebAcl("acl", rules=[
///     {
///         "priority": 1,
///         "rule_id": by_name.id,
///         "type": "GROUP",
///     },
///     {
///         "priority": 2,
///         "rule_id": by_metric_name.id,
///         "type": "GROUP",
///     },
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
///     var byName = Aws.WafRegional.GetSubscribedRuleGroup.Invoke(new()
///     {
///         Name = "F5 Bot Detection Signatures For AWS WAF",
///     });
///
///     var byMetricName = Aws.WafRegional.GetSubscribedRuleGroup.Invoke(new()
///     {
///         MetricName = "F5BotDetectionSignatures",
///     });
///
///     var acl = new Aws.WafRegional.WebAcl("acl", new()
///     {
///         Rules = new[]
///         {
///             new Aws.WafRegional.Inputs.WebAclRuleArgs
///             {
///                 Priority = 1,
///                 RuleId = byName.Apply(getSubscribedRuleGroupResult => getSubscribedRuleGroupResult.Id),
///                 Type = "GROUP",
///             },
///             new Aws.WafRegional.Inputs.WebAclRuleArgs
///             {
///                 Priority = 2,
///                 RuleId = byMetricName.Apply(getSubscribedRuleGroupResult => getSubscribedRuleGroupResult.Id),
///                 Type = "GROUP",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafregional"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		byName, err := wafregional.GetSubscribedRuleGroup(ctx, &wafregional.GetSubscribedRuleGroupArgs{
/// 			Name: pulumi.StringRef("F5 Bot Detection Signatures For AWS WAF"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		byMetricName, err := wafregional.GetSubscribedRuleGroup(ctx, &wafregional.GetSubscribedRuleGroupArgs{
/// 			MetricName: pulumi.StringRef("F5BotDetectionSignatures"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = wafregional.NewWebAcl(ctx, "acl", &wafregional.WebAclArgs{
/// 			Rules: wafregional.WebAclRuleArray{
/// 				&wafregional.WebAclRuleArgs{
/// 					Priority: pulumi.Int(1),
/// 					RuleId:   pulumi.String(byName.Id),
/// 					Type:     pulumi.String("GROUP"),
/// 				},
/// 				&wafregional.WebAclRuleArgs{
/// 					Priority: pulumi.Int(2),
/// 					RuleId:   pulumi.String(byMetricName.Id),
/// 					Type:     pulumi.String("GROUP"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_wafregional_getsubscribedrulegroup" "byName" {
///   name = "F5 Bot Detection Signatures For AWS WAF"
/// }
/// data "aws_wafregional_getsubscribedrulegroup" "byMetricName" {
///   metric_name = "F5BotDetectionSignatures"
/// }
///
/// resource "aws_wafregional_webacl" "acl" {
///   rules {
///     priority = 1
///     rule_id  = data.aws_wafregional_getsubscribedrulegroup.byName.id
///     type     = "GROUP"
///   }
///   rules {
///     priority = 2
///     rule_id  = data.aws_wafregional_getsubscribedrulegroup.byMetricName.id
///     type     = "GROUP"
///   }
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var byName = WafregionalFunctions.getSubscribedRuleGroup(GetSubscribedRuleGroupArgs.builder()
///             .name("F5 Bot Detection Signatures For AWS WAF")
///             .build());
///
///         final var byMetricName = WafregionalFunctions.getSubscribedRuleGroup(GetSubscribedRuleGroupArgs.builder()
///             .metricName("F5BotDetectionSignatures")
///             .build());
///
///         var acl = new WebAcl("acl", WebAclArgs.builder()
///             .rules(
///                 WebAclRuleArgs.builder()
///                     .priority(1)
///                     .ruleId(byName.id())
///                     .type("GROUP")
///                     .build(),
///                 WebAclRuleArgs.builder()
///                     .priority(2)
///                     .ruleId(byMetricName.id())
///                     .type("GROUP")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   acl:
///     type: aws:wafregional:WebAcl
///     properties:
///       rules:
///         - priority: 1
///           ruleId: ${byName.id}
///           type: GROUP
///         - priority: 2
///           ruleId: ${byMetricName.id}
///           type: GROUP
/// variables:
///   byName:
///     fn::invoke:
///       function: aws:wafregional:getSubscribedRuleGroup
///       arguments:
///         name: F5 Bot Detection Signatures For AWS WAF
///   byMetricName:
///     fn::invoke:
///       function: aws:wafregional:getSubscribedRuleGroup
///       arguments:
///         metricName: F5BotDetectionSignatures
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_wafregional_get_subscribed_rule_group_get_subscribed_rule_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubscribedRuleGroupResult> getSubscribedRuleGroup(
  GetSubscribedRuleGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafregional/getSubscribedRuleGroup:getSubscribedRuleGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscribedRuleGroupResult.fromMap(result);
}

pulumi.Output<GetSubscribedRuleGroupResult> getSubscribedRuleGroupOutput(
  GetSubscribedRuleGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:wafregional/getSubscribedRuleGroup:getSubscribedRuleGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSubscribedRuleGroupResult.fromMap);
}

/// `aws.wafregional.WebAcl` Retrieves a WAF Regional Web ACL Resource Id.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.wafregional.getWebAcl({
///     name: "tfWAFRegionalWebACL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafregional.get_web_acl(name="tfWAFRegionalWebACL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.WafRegional.GetWebAcl.Invoke(new()
///     {
///         Name = "tfWAFRegionalWebACL",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafregional"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := wafregional.LookupWebAcl(ctx, &wafregional.LookupWebAclArgs{
/// 			Name: "tfWAFRegionalWebACL",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_wafregional_getwebacl" "example" {
///   name = "tfWAFRegionalWebACL"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafregional.WafregionalFunctions;
/// import com.pulumi.aws.wafregional.inputs.GetWebAclArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = WafregionalFunctions.getWebAcl(GetWebAclArgs.builder()
///             .name("tfWAFRegionalWebACL")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:wafregional:getWebAcl
///       arguments:
///         name: tfWAFRegionalWebACL
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_wafregional_get_web_acl_get_web_acl_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAclResult> getWebAcl(
  GetWebAclArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafregional/getWebAcl:getWebAcl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAclResult.fromMap(result);
}

pulumi.Output<GetWebAclResult> getWebAclOutput(
  GetWebAclArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:wafregional/getWebAcl:getWebAcl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAclResult.fromMap);
}
