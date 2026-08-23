import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ipset_args.dart';
import 'get_ipset_result.dart';
import 'get_rate_based_rule_args.dart';
import 'get_rate_based_rule_result.dart';
import 'get_rule_args.dart';
import 'get_rule_result.dart';
import 'get_subscribed_rule_group_args.dart';
import 'get_subscribed_rule_group_result.dart';
import 'get_web_acl_args.dart';
import 'get_web_acl_result.dart';

/// `aws.waf.IpSet` Retrieves a WAF IP Set Resource Id.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.waf.getIpset({
///     name: "tfWAFIPSet",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.waf.get_ipset(name="tfWAFIPSet")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Waf.GetIpset.Invoke(new()
///     {
///         Name = "tfWAFIPSet",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/waf"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := waf.GetIpset(ctx, &waf.GetIpsetArgs{
/// 			Name: "tfWAFIPSet",
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
/// data "aws_waf_getipset" "example" {
///   name = "tfWAFIPSet"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.waf.WafFunctions;
/// import com.pulumi.aws.waf.inputs.GetIpsetArgs;
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
///         final var example = WafFunctions.getIpset(GetIpsetArgs.builder()
///             .name("tfWAFIPSet")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:waf:getIpset
///       arguments:
///         name: tfWAFIPSet
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_waf_get_ipset_get_ipset_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIpsetResult> getIpset(
  GetIpsetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:waf/getIpset:getIpset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpsetResult.fromMap(result);
}

/// `aws.waf.RateBasedRule` Retrieves a WAF Rate Based Rule Resource Id.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.waf.getRateBasedRule({
///     name: "tfWAFRateBasedRule",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.waf.get_rate_based_rule(name="tfWAFRateBasedRule")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Waf.GetRateBasedRule.Invoke(new()
///     {
///         Name = "tfWAFRateBasedRule",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/waf"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := waf.LookupRateBasedRule(ctx, &waf.LookupRateBasedRuleArgs{
/// 			Name: "tfWAFRateBasedRule",
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
/// data "aws_waf_getratebasedrule" "example" {
///   name = "tfWAFRateBasedRule"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.waf.WafFunctions;
/// import com.pulumi.aws.waf.inputs.GetRateBasedRuleArgs;
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
///         final var example = WafFunctions.getRateBasedRule(GetRateBasedRuleArgs.builder()
///             .name("tfWAFRateBasedRule")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:waf:getRateBasedRule
///       arguments:
///         name: tfWAFRateBasedRule
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_waf_get_rate_based_rule_get_rate_based_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRateBasedRuleResult> getRateBasedRule(
  GetRateBasedRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:waf/getRateBasedRule:getRateBasedRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRateBasedRuleResult.fromMap(result);
}

/// `aws.waf.Rule` Retrieves a WAF Rule Resource Id.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.waf.getRule({
///     name: "tfWAFRule",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.waf.get_rule(name="tfWAFRule")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Waf.GetRule.Invoke(new()
///     {
///         Name = "tfWAFRule",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/waf"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := waf.LookupRule(ctx, &waf.LookupRuleArgs{
/// 			Name: "tfWAFRule",
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
/// data "aws_waf_getrule" "example" {
///   name = "tfWAFRule"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.waf.WafFunctions;
/// import com.pulumi.aws.waf.inputs.GetRuleArgs;
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
///         final var example = WafFunctions.getRule(GetRuleArgs.builder()
///             .name("tfWAFRule")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:waf:getRule
///       arguments:
///         name: tfWAFRule
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_waf_get_rule_get_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRuleResult> getRule(
  GetRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:waf/getRule:getRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRuleResult.fromMap(result);
}

/// `aws.waf.getSubscribedRuleGroup` retrieves information about a Managed WAF Rule Group from AWS Marketplace (needs to be subscribed to first).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const byName = aws.waf.getSubscribedRuleGroup({
///     name: "F5 Bot Detection Signatures For AWS WAF",
/// });
/// const byMetricName = aws.waf.getSubscribedRuleGroup({
///     metricName: "F5BotDetectionSignatures",
/// });
/// const acl = new aws.waf.WebAcl("acl", {rules: [
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
/// by_name = aws.waf.get_subscribed_rule_group(name="F5 Bot Detection Signatures For AWS WAF")
/// by_metric_name = aws.waf.get_subscribed_rule_group(metric_name="F5BotDetectionSignatures")
/// acl = aws.waf.WebAcl("acl", rules=[
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
///     var byName = Aws.Waf.GetSubscribedRuleGroup.Invoke(new()
///     {
///         Name = "F5 Bot Detection Signatures For AWS WAF",
///     });
///
///     var byMetricName = Aws.Waf.GetSubscribedRuleGroup.Invoke(new()
///     {
///         MetricName = "F5BotDetectionSignatures",
///     });
///
///     var acl = new Aws.Waf.WebAcl("acl", new()
///     {
///         Rules = new[]
///         {
///             new Aws.Waf.Inputs.WebAclRuleArgs
///             {
///                 Priority = 1,
///                 RuleId = byName.Apply(getSubscribedRuleGroupResult => getSubscribedRuleGroupResult.Id),
///                 Type = "GROUP",
///             },
///             new Aws.Waf.Inputs.WebAclRuleArgs
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/waf"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		byName, err := waf.GetSubscribedRuleGroup(ctx, &waf.GetSubscribedRuleGroupArgs{
/// 			Name: pulumi.StringRef("F5 Bot Detection Signatures For AWS WAF"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		byMetricName, err := waf.GetSubscribedRuleGroup(ctx, &waf.GetSubscribedRuleGroupArgs{
/// 			MetricName: pulumi.StringRef("F5BotDetectionSignatures"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = waf.NewWebAcl(ctx, "acl", &waf.WebAclArgs{
/// 			Rules: waf.WebAclRuleArray{
/// 				&waf.WebAclRuleArgs{
/// 					Priority: pulumi.Int(1),
/// 					RuleId:   pulumi.String(byName.Id),
/// 					Type:     pulumi.String("GROUP"),
/// 				},
/// 				&waf.WebAclRuleArgs{
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
/// data "aws_waf_getsubscribedrulegroup" "byName" {
///   name = "F5 Bot Detection Signatures For AWS WAF"
/// }
/// data "aws_waf_getsubscribedrulegroup" "byMetricName" {
///   metric_name = "F5BotDetectionSignatures"
/// }
///
/// resource "aws_waf_webacl" "acl" {
///   rules {
///     priority = 1
///     rule_id  = data.aws_waf_getsubscribedrulegroup.byName.id
///     type     = "GROUP"
///   }
///   rules {
///     priority = 2
///     rule_id  = data.aws_waf_getsubscribedrulegroup.byMetricName.id
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
/// import com.pulumi.aws.waf.WafFunctions;
/// import com.pulumi.aws.waf.inputs.GetSubscribedRuleGroupArgs;
/// import com.pulumi.aws.waf.WebAcl;
/// import com.pulumi.aws.waf.WebAclArgs;
/// import com.pulumi.aws.waf.inputs.WebAclRuleArgs;
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
///         final var byName = WafFunctions.getSubscribedRuleGroup(GetSubscribedRuleGroupArgs.builder()
///             .name("F5 Bot Detection Signatures For AWS WAF")
///             .build());
///
///         final var byMetricName = WafFunctions.getSubscribedRuleGroup(GetSubscribedRuleGroupArgs.builder()
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
///     type: aws:waf:WebAcl
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
///       function: aws:waf:getSubscribedRuleGroup
///       arguments:
///         name: F5 Bot Detection Signatures For AWS WAF
///   byMetricName:
///     fn::invoke:
///       function: aws:waf:getSubscribedRuleGroup
///       arguments:
///         metricName: F5BotDetectionSignatures
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_waf_get_subscribed_rule_group_get_subscribed_rule_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubscribedRuleGroupResult> getSubscribedRuleGroup(
  GetSubscribedRuleGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:waf/getSubscribedRuleGroup:getSubscribedRuleGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscribedRuleGroupResult.fromMap(result);
}

/// `aws.waf.WebAcl` Retrieves a WAF Web ACL Resource Id.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.waf.getWebAcl({
///     name: "tfWAFWebACL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.waf.get_web_acl(name="tfWAFWebACL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Waf.GetWebAcl.Invoke(new()
///     {
///         Name = "tfWAFWebACL",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/waf"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := waf.LookupWebAcl(ctx, &waf.LookupWebAclArgs{
/// 			Name: "tfWAFWebACL",
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
/// data "aws_waf_getwebacl" "example" {
///   name = "tfWAFWebACL"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.waf.WafFunctions;
/// import com.pulumi.aws.waf.inputs.GetWebAclArgs;
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
///         final var example = WafFunctions.getWebAcl(GetWebAclArgs.builder()
///             .name("tfWAFWebACL")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:waf:getWebAcl
///       arguments:
///         name: tfWAFWebACL
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_waf_get_web_acl_get_web_acl_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAclResult> getWebAcl(
  GetWebAclArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:waf/getWebAcl:getWebAcl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAclResult.fromMap(result);
}
