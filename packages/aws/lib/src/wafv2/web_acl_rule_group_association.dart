import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_group_association_args.dart';
import 'web_acl_rule_group_association_managed_rule_group.dart';
import 'web_acl_rule_group_association_rule_group_reference.dart';
import 'web_acl_rule_group_association_timeouts.dart';

/// Associates a WAFv2 Rule Group (custom or managed) with a Web ACL by adding a rule that references the Rule Group. Use this resource to apply the rules defined in a Rule Group to a Web ACL without duplicating rule definitions.
///
/// This resource supports both:
///
/// - **Custom Rule Groups**: User-created rule groups that you manage within your AWS account
/// - **Managed Rule Groups**: Pre-configured rule groups provided by AWS or third-party vendors
///
/// !> **Warning:** Verify the rule names in your `rule_action_override`s carefully. With managed rule groups, WAF silently ignores any override that uses an invalid rule name. With customer-owned rule groups, invalid rule names in your overrides will cause web ACL updates to fail. An invalid rule name is any name that doesn't exactly match the case-sensitive name of an existing rule in the rule group.
///
/// !> **Warning:** Using this resource will cause the associated Web ACL resource to show configuration drift in the `rule` argument unless you add `lifecycle { ignore_changes = [rule] }` to the Web ACL resource configuration. This is because this resource modifies the Web ACL's rules outside of the Web ACL resource's direct management.
///
/// > **Note:** This resource creates a rule within the Web ACL that references the entire Rule Group. The rule group's individual rules are evaluated as a unit when requests are processed by the Web ACL.
/// ## Example Usage
///
/// ### Custom Rule Group - Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.wafv2.RuleGroup("example", {
///     name: "example-rule-group",
///     scope: "REGIONAL",
///     capacity: 10,
///     rules: [{
///         name: "block-suspicious-requests",
///         priority: 1,
///         action: {
///             block: {},
///         },
///         statement: {
///             geoMatchStatement: {
///                 countryCodes: [
///                     "CN",
///                     "RU",
///                 ],
///             },
///         },
///         visibilityConfig: {
///             cloudwatchMetricsEnabled: true,
///             metricName: "block-suspicious-requests",
///             sampledRequestsEnabled: true,
///         },
///     }],
///     visibilityConfig: {
///         cloudwatchMetricsEnabled: true,
///         metricName: "example-rule-group",
///         sampledRequestsEnabled: true,
///     },
/// });
/// const exampleWebAcl = new aws.wafv2.WebAcl("example", {
///     name: "example-web-acl",
///     scope: "REGIONAL",
///     defaultAction: {
///         allow: {},
///     },
///     visibilityConfig: {
///         cloudwatchMetricsEnabled: true,
///         metricName: "example-web-acl",
///         sampledRequestsEnabled: true,
///     },
/// });
/// const exampleWebAclRuleGroupAssociation = new aws.wafv2.WebAclRuleGroupAssociation("example", {
///     ruleName: "example-rule-group-rule",
///     priority: 100,
///     webAclArn: exampleWebAcl.arn,
///     ruleGroupReference: {
///         arn: example.arn,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafv2.RuleGroup("example",
///     name="example-rule-group",
///     scope="REGIONAL",
///     capacity=10,
///     rules=[{
///         "name": "block-suspicious-requests",
///         "priority": 1,
///         "action": {
///             "block": {},
///         },
///         "statement": {
///             "geo_match_statement": {
///                 "country_codes": [
///                     "CN",
///                     "RU",
///                 ],
///             },
///         },
///         "visibility_config": {
///             "cloudwatch_metrics_enabled": True,
///             "metric_name": "block-suspicious-requests",
///             "sampled_requests_enabled": True,
///         },
///     }],
///     visibility_config={
///         "cloudwatch_metrics_enabled": True,
///         "metric_name": "example-rule-group",
///         "sampled_requests_enabled": True,
///     })
/// example_web_acl = aws.wafv2.WebAcl("example",
///     name="example-web-acl",
///     scope="REGIONAL",
///     default_action={
///         "allow": {},
///     },
///     visibility_config={
///         "cloudwatch_metrics_enabled": True,
///         "metric_name": "example-web-acl",
///         "sampled_requests_enabled": True,
///     })
/// example_web_acl_rule_group_association = aws.wafv2.WebAclRuleGroupAssociation("example",
///     rule_name="example-rule-group-rule",
///     priority=100,
///     web_acl_arn=example_web_acl.arn,
///     rule_group_reference={
///         "arn": example.arn,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.WafV2.RuleGroup("example", new()
///     {
///         Name = "example-rule-group",
///         Scope = "REGIONAL",
///         Capacity = 10,
///         Rules = new[]
///         {
///             new Aws.WafV2.Inputs.RuleGroupRuleArgs
///             {
///                 Name = "block-suspicious-requests",
///                 Priority = 1,
///                 Action = new Aws.WafV2.Inputs.RuleGroupRuleActionArgs
///                 {
///                     Block = null,
///                 },
///                 Statement = new Aws.WafV2.Inputs.RuleGroupRuleStatementArgs
///                 {
///                     GeoMatchStatement = new Aws.WafV2.Inputs.RuleGroupRuleStatementGeoMatchStatementArgs
///                     {
///                         CountryCodes = new[]
///                         {
///                             "CN",
///                             "RU",
///                         },
///                     },
///                 },
///                 VisibilityConfig = new Aws.WafV2.Inputs.RuleGroupRuleVisibilityConfigArgs
///                 {
///                     CloudwatchMetricsEnabled = true,
///                     MetricName = "block-suspicious-requests",
///                     SampledRequestsEnabled = true,
///                 },
///             },
///         },
///         VisibilityConfig = new Aws.WafV2.Inputs.RuleGroupVisibilityConfigArgs
///         {
///             CloudwatchMetricsEnabled = true,
///             MetricName = "example-rule-group",
///             SampledRequestsEnabled = true,
///         },
///     });
///
///     var exampleWebAcl = new Aws.WafV2.WebAcl("example", new()
///     {
///         Name = "example-web-acl",
///         Scope = "REGIONAL",
///         DefaultAction = new Aws.WafV2.Inputs.WebAclDefaultActionArgs
///         {
///             Allow = null,
///         },
///         VisibilityConfig = new Aws.WafV2.Inputs.WebAclVisibilityConfigArgs
///         {
///             CloudwatchMetricsEnabled = true,
///             MetricName = "example-web-acl",
///             SampledRequestsEnabled = true,
///         },
///     });
///
///     var exampleWebAclRuleGroupAssociation = new Aws.WafV2.WebAclRuleGroupAssociation("example", new()
///     {
///         RuleName = "example-rule-group-rule",
///         Priority = 100,
///         WebAclArn = exampleWebAcl.Arn,
///         RuleGroupReference = new Aws.WafV2.Inputs.WebAclRuleGroupAssociationRuleGroupReferenceArgs
///         {
///             Arn = example.Arn,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := wafv2.NewRuleGroup(ctx, "example", &wafv2.RuleGroupArgs{
/// 			Name:     pulumi.String("example-rule-group"),
/// 			Scope:    pulumi.String("REGIONAL"),
/// 			Capacity: pulumi.Int(10),
/// 			Rules: wafv2.RuleGroupRuleArray{
/// 				&wafv2.RuleGroupRuleArgs{
/// 					Name:     pulumi.String("block-suspicious-requests"),
/// 					Priority: pulumi.Int(1),
/// 					Action: &wafv2.RuleGroupRuleActionArgs{
/// 						Block: &wafv2.RuleGroupRuleActionBlockArgs{},
/// 					},
/// 					Statement: &wafv2.RuleGroupRuleStatementArgs{
/// 						GeoMatchStatement: &wafv2.RuleGroupRuleStatementGeoMatchStatementArgs{
/// 							CountryCodes: pulumi.StringArray{
/// 								pulumi.String("CN"),
/// 								pulumi.String("RU"),
/// 							},
/// 						},
/// 					},
/// 					VisibilityConfig: &wafv2.RuleGroupRuleVisibilityConfigArgs{
/// 						CloudwatchMetricsEnabled: pulumi.Bool(true),
/// 						MetricName:               pulumi.String("block-suspicious-requests"),
/// 						SampledRequestsEnabled:   pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			VisibilityConfig: &wafv2.RuleGroupVisibilityConfigArgs{
/// 				CloudwatchMetricsEnabled: pulumi.Bool(true),
/// 				MetricName:               pulumi.String("example-rule-group"),
/// 				SampledRequestsEnabled:   pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWebAcl, err := wafv2.NewWebAcl(ctx, "example", &wafv2.WebAclArgs{
/// 			Name:  pulumi.String("example-web-acl"),
/// 			Scope: pulumi.String("REGIONAL"),
/// 			DefaultAction: &wafv2.WebAclDefaultActionArgs{
/// 				Allow: &wafv2.WebAclDefaultActionAllowArgs{},
/// 			},
/// 			VisibilityConfig: &wafv2.WebAclVisibilityConfigArgs{
/// 				CloudwatchMetricsEnabled: pulumi.Bool(true),
/// 				MetricName:               pulumi.String("example-web-acl"),
/// 				SampledRequestsEnabled:   pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = wafv2.NewWebAclRuleGroupAssociation(ctx, "example", &wafv2.WebAclRuleGroupAssociationArgs{
/// 			RuleName:  pulumi.String("example-rule-group-rule"),
/// 			Priority:  pulumi.Int(100),
/// 			WebAclArn: exampleWebAcl.Arn,
/// 			RuleGroupReference: &wafv2.WebAclRuleGroupAssociationRuleGroupReferenceArgs{
/// 				Arn: example.Arn,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafv2.RuleGroup;
/// import com.pulumi.aws.wafv2.RuleGroupArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleActionArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleActionBlockArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementGeoMatchStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleVisibilityConfigArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupVisibilityConfigArgs;
/// import com.pulumi.aws.wafv2.WebAcl;
/// import com.pulumi.aws.wafv2.WebAclArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclDefaultActionArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclDefaultActionAllowArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclVisibilityConfigArgs;
/// import com.pulumi.aws.wafv2.WebAclRuleGroupAssociation;
/// import com.pulumi.aws.wafv2.WebAclRuleGroupAssociationArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleGroupAssociationRuleGroupReferenceArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new RuleGroup("example", RuleGroupArgs.builder()
///             .name("example-rule-group")
///             .scope("REGIONAL")
///             .capacity(10)
///             .rules(RuleGroupRuleArgs.builder()
///                 .name("block-suspicious-requests")
///                 .priority(1)
///                 .action(RuleGroupRuleActionArgs.builder()
///                     .block(RuleGroupRuleActionBlockArgs.builder()
///                         .build())
///                     .build())
///                 .statement(RuleGroupRuleStatementArgs.builder()
///                     .geoMatchStatement(RuleGroupRuleStatementGeoMatchStatementArgs.builder()
///                         .countryCodes(
///                             "CN",
///                             "RU")
///                         .build())
///                     .build())
///                 .visibilityConfig(RuleGroupRuleVisibilityConfigArgs.builder()
///                     .cloudwatchMetricsEnabled(true)
///                     .metricName("block-suspicious-requests")
///                     .sampledRequestsEnabled(true)
///                     .build())
///                 .build())
///             .visibilityConfig(RuleGroupVisibilityConfigArgs.builder()
///                 .cloudwatchMetricsEnabled(true)
///                 .metricName("example-rule-group")
///                 .sampledRequestsEnabled(true)
///                 .build())
///             .build());
///
///         var exampleWebAcl = new WebAcl("exampleWebAcl", WebAclArgs.builder()
///             .name("example-web-acl")
///             .scope("REGIONAL")
///             .defaultAction(WebAclDefaultActionArgs.builder()
///                 .allow(WebAclDefaultActionAllowArgs.builder()
///                     .build())
///                 .build())
///             .visibilityConfig(WebAclVisibilityConfigArgs.builder()
///                 .cloudwatchMetricsEnabled(true)
///                 .metricName("example-web-acl")
///                 .sampledRequestsEnabled(true)
///                 .build())
///             .build());
///
///         var exampleWebAclRuleGroupAssociation = new WebAclRuleGroupAssociation("exampleWebAclRuleGroupAssociation", WebAclRuleGroupAssociationArgs.builder()
///             .ruleName("example-rule-group-rule")
///             .priority(100)
///             .webAclArn(exampleWebAcl.arn())
///             .ruleGroupReference(WebAclRuleGroupAssociationRuleGroupReferenceArgs.builder()
///                 .arn(example.arn())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:wafv2:RuleGroup
///     properties:
///       name: example-rule-group
///       scope: REGIONAL
///       capacity: 10
///       rules:
///         - name: block-suspicious-requests
///           priority: 1
///           action:
///             block: {}
///           statement:
///             geoMatchStatement:
///               countryCodes:
///                 - CN
///                 - RU
///           visibilityConfig:
///             cloudwatchMetricsEnabled: true
///             metricName: block-suspicious-requests
///             sampledRequestsEnabled: true
///       visibilityConfig:
///         cloudwatchMetricsEnabled: true
///         metricName: example-rule-group
///         sampledRequestsEnabled: true
///   exampleWebAcl:
///     type: aws:wafv2:WebAcl
///     name: example
///     properties:
///       name: example-web-acl
///       scope: REGIONAL
///       defaultAction:
///         allow: {}
///       visibilityConfig:
///         cloudwatchMetricsEnabled: true
///         metricName: example-web-acl
///         sampledRequestsEnabled: true
///   exampleWebAclRuleGroupAssociation:
///     type: aws:wafv2:WebAclRuleGroupAssociation
///     name: example
///     properties:
///       ruleName: example-rule-group-rule
///       priority: 100
///       webAclArn: ${exampleWebAcl.arn}
///       ruleGroupReference:
///         arn: ${example.arn}
/// ```
///
/// ### Managed Rule Group - Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.wafv2.WebAcl("example", {
///     name: "example-web-acl",
///     scope: "REGIONAL",
///     defaultAction: {
///         allow: {},
///     },
///     visibilityConfig: {
///         cloudwatchMetricsEnabled: true,
///         metricName: "example-web-acl",
///         sampledRequestsEnabled: true,
///     },
/// });
/// const managedExample = new aws.wafv2.WebAclRuleGroupAssociation("managed_example", {
///     ruleName: "aws-common-rule-set",
///     priority: 50,
///     webAclArn: example.arn,
///     managedRuleGroup: {
///         name: "AWSManagedRulesCommonRuleSet",
///         vendorName: "AWS",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafv2.WebAcl("example",
///     name="example-web-acl",
///     scope="REGIONAL",
///     default_action={
///         "allow": {},
///     },
///     visibility_config={
///         "cloudwatch_metrics_enabled": True,
///         "metric_name": "example-web-acl",
///         "sampled_requests_enabled": True,
///     })
/// managed_example = aws.wafv2.WebAclRuleGroupAssociation("managed_example",
///     rule_name="aws-common-rule-set",
///     priority=50,
///     web_acl_arn=example.arn,
///     managed_rule_group={
///         "name": "AWSManagedRulesCommonRuleSet",
///         "vendor_name": "AWS",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.WafV2.WebAcl("example", new()
///     {
///         Name = "example-web-acl",
///         Scope = "REGIONAL",
///         DefaultAction = new Aws.WafV2.Inputs.WebAclDefaultActionArgs
///         {
///             Allow = null,
///         },
///         VisibilityConfig = new Aws.WafV2.Inputs.WebAclVisibilityConfigArgs
///         {
///             CloudwatchMetricsEnabled = true,
///             MetricName = "example-web-acl",
///             SampledRequestsEnabled = true,
///         },
///     });
///
///     var managedExample = new Aws.WafV2.WebAclRuleGroupAssociation("managed_example", new()
///     {
///         RuleName = "aws-common-rule-set",
///         Priority = 50,
///         WebAclArn = example.Arn,
///         ManagedRuleGroup = new Aws.WafV2.Inputs.WebAclRuleGroupAssociationManagedRuleGroupArgs
///         {
///             Name = "AWSManagedRulesCommonRuleSet",
///             VendorName = "AWS",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := wafv2.NewWebAcl(ctx, "example", &wafv2.WebAclArgs{
/// 			Name:  pulumi.String("example-web-acl"),
/// 			Scope: pulumi.String("REGIONAL"),
/// 			DefaultAction: &wafv2.WebAclDefaultActionArgs{
/// 				Allow: &wafv2.WebAclDefaultActionAllowArgs{},
/// 			},
/// 			VisibilityConfig: &wafv2.WebAclVisibilityConfigArgs{
/// 				CloudwatchMetricsEnabled: pulumi.Bool(true),
/// 				MetricName:               pulumi.String("example-web-acl"),
/// 				SampledRequestsEnabled:   pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = wafv2.NewWebAclRuleGroupAssociation(ctx, "managed_example", &wafv2.WebAclRuleGroupAssociationArgs{
/// 			RuleName:  pulumi.String("aws-common-rule-set"),
/// 			Priority:  pulumi.Int(50),
/// 			WebAclArn: example.Arn,
/// 			ManagedRuleGroup: &wafv2.WebAclRuleGroupAssociationManagedRuleGroupArgs{
/// 				Name:       pulumi.String("AWSManagedRulesCommonRuleSet"),
/// 				VendorName: pulumi.String("AWS"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafv2.WebAcl;
/// import com.pulumi.aws.wafv2.WebAclArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclDefaultActionArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclDefaultActionAllowArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclVisibilityConfigArgs;
/// import com.pulumi.aws.wafv2.WebAclRuleGroupAssociation;
/// import com.pulumi.aws.wafv2.WebAclRuleGroupAssociationArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleGroupAssociationManagedRuleGroupArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new WebAcl("example", WebAclArgs.builder()
///             .name("example-web-acl")
///             .scope("REGIONAL")
///             .defaultAction(WebAclDefaultActionArgs.builder()
///                 .allow(WebAclDefaultActionAllowArgs.builder()
///                     .build())
///                 .build())
///             .visibilityConfig(WebAclVisibilityConfigArgs.builder()
///                 .cloudwatchMetricsEnabled(true)
///                 .metricName("example-web-acl")
///                 .sampledRequestsEnabled(true)
///                 .build())
///             .build());
///
///         var managedExample = new WebAclRuleGroupAssociation("managedExample", WebAclRuleGroupAssociationArgs.builder()
///             .ruleName("aws-common-rule-set")
///             .priority(50)
///             .webAclArn(example.arn())
///             .managedRuleGroup(WebAclRuleGroupAssociationManagedRuleGroupArgs.builder()
///                 .name("AWSManagedRulesCommonRuleSet")
///                 .vendorName("AWS")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:wafv2:WebAcl
///     properties:
///       name: example-web-acl
///       scope: REGIONAL
///       defaultAction:
///         allow: {}
///       visibilityConfig:
///         cloudwatchMetricsEnabled: true
///         metricName: example-web-acl
///         sampledRequestsEnabled: true
///   managedExample:
///     type: aws:wafv2:WebAclRuleGroupAssociation
///     name: managed_example
///     properties:
///       ruleName: aws-common-rule-set
///       priority: 50
///       webAclArn: ${example.arn}
///       managedRuleGroup:
///         name: AWSManagedRulesCommonRuleSet
///         vendorName: AWS
/// ```
///
/// ### Managed Rule Group - With Version
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const managedVersioned = new aws.wafv2.WebAclRuleGroupAssociation("managed_versioned", {
///     ruleName: "aws-common-rule-set-versioned",
///     priority: 60,
///     webAclArn: example.arn,
///     managedRuleGroup: {
///         name: "AWSManagedRulesCommonRuleSet",
///         vendorName: "AWS",
///         version: "Version_1.0",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// managed_versioned = aws.wafv2.WebAclRuleGroupAssociation("managed_versioned",
///     rule_name="aws-common-rule-set-versioned",
///     priority=60,
///     web_acl_arn=example["arn"],
///     managed_rule_group={
///         "name": "AWSManagedRulesCommonRuleSet",
///         "vendor_name": "AWS",
///         "version": "Version_1.0",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedVersioned = new Aws.WafV2.WebAclRuleGroupAssociation("managed_versioned", new()
///     {
///         RuleName = "aws-common-rule-set-versioned",
///         Priority = 60,
///         WebAclArn = example.Arn,
///         ManagedRuleGroup = new Aws.WafV2.Inputs.WebAclRuleGroupAssociationManagedRuleGroupArgs
///         {
///             Name = "AWSManagedRulesCommonRuleSet",
///             VendorName = "AWS",
///             Version = "Version_1.0",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := wafv2.NewWebAclRuleGroupAssociation(ctx, "managed_versioned", &wafv2.WebAclRuleGroupAssociationArgs{
/// 			RuleName:  pulumi.String("aws-common-rule-set-versioned"),
/// 			Priority:  pulumi.Int(60),
/// 			WebAclArn: pulumi.Any(example.Arn),
/// 			ManagedRuleGroup: &wafv2.WebAclRuleGroupAssociationManagedRuleGroupArgs{
/// 				Name:       pulumi.String("AWSManagedRulesCommonRuleSet"),
/// 				VendorName: pulumi.String("AWS"),
/// 				Version:    pulumi.String("Version_1.0"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafv2.WebAclRuleGroupAssociation;
/// import com.pulumi.aws.wafv2.WebAclRuleGroupAssociationArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleGroupAssociationManagedRuleGroupArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var managedVersioned = new WebAclRuleGroupAssociation("managedVersioned", WebAclRuleGroupAssociationArgs.builder()
///             .ruleName("aws-common-rule-set-versioned")
///             .priority(60)
///             .webAclArn(example.arn())
///             .managedRuleGroup(WebAclRuleGroupAssociationManagedRuleGroupArgs.builder()
///                 .name("AWSManagedRulesCommonRuleSet")
///                 .vendorName("AWS")
///                 .version("Version_1.0")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   managedVersioned:
///     type: aws:wafv2:WebAclRuleGroupAssociation
///     name: managed_versioned
///     properties:
///       ruleName: aws-common-rule-set-versioned
///       priority: 60
///       webAclArn: ${example.arn}
///       managedRuleGroup:
///         name: AWSManagedRulesCommonRuleSet
///         vendorName: AWS
///         version: Version_1.0
/// ```
///
/// ### Managed Rule Group - With Rule Action Overrides
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const managedWithOverrides = new aws.wafv2.WebAclRuleGroupAssociation("managed_with_overrides", {
///     ruleName: "aws-common-rule-set-with-overrides",
///     priority: 70,
///     webAclArn: example.arn,
///     managedRuleGroup: {
///         name: "AWSManagedRulesCommonRuleSet",
///         vendorName: "AWS",
///         ruleActionOverrides: [
///             {
///                 name: "GenericRFI_BODY",
///                 actionToUse: {
///                     count: {
///                         customRequestHandling: {
///                             insertHeaders: [{
///                                 name: "X-RFI-Override",
///                                 value: "counted",
///                             }],
///                         },
///                     },
///                 },
///             },
///             {
///                 name: "SizeRestrictions_BODY",
///                 actionToUse: {
///                     captcha: {},
///                 },
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// managed_with_overrides = aws.wafv2.WebAclRuleGroupAssociation("managed_with_overrides",
///     rule_name="aws-common-rule-set-with-overrides",
///     priority=70,
///     web_acl_arn=example["arn"],
///     managed_rule_group={
///         "name": "AWSManagedRulesCommonRuleSet",
///         "vendor_name": "AWS",
///         "rule_action_overrides": [
///             {
///                 "name": "GenericRFI_BODY",
///                 "action_to_use": {
///                     "count": {
///                         "custom_request_handling": {
///                             "insert_headers": [{
///                                 "name": "X-RFI-Override",
///                                 "value": "counted",
///                             }],
///                         },
///                     },
///                 },
///             },
///             {
///                 "name": "SizeRestrictions_BODY",
///                 "action_to_use": {
///                     "captcha": {},
///                 },
///             },
///         ],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedWithOverrides = new Aws.WafV2.WebAclRuleGroupAssociation("managed_with_overrides", new()
///     {
///         RuleName = "aws-common-rule-set-with-overrides",
///         Priority = 70,
///         WebAclArn = example.Arn,
///         ManagedRuleGroup = new Aws.WafV2.Inputs.WebAclRuleGroupAssociationManagedRuleGroupArgs
///         {
///             Name = "AWSManagedRulesCommonRuleSet",
///             VendorName = "AWS",
///             RuleActionOverrides = new[]
///             {
///                 new Aws.WafV2.Inputs.WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideArgs
///                 {
///                     Name = "GenericRFI_BODY",
///                     ActionToUse = new Aws.WafV2.Inputs.WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseArgs
///                     {
///                         Count = new Aws.WafV2.Inputs.WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCountArgs
///                         {
///                             CustomRequestHandling = new Aws.WafV2.Inputs.WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCountCustomRequestHandlingArgs
///                             {
///                                 InsertHeaders = new[]
///                                 {
///                                     new Aws.WafV2.Inputs.WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCountCustomRequestHandlingInsertHeaderArgs
///                                     {
///                                         Name = "X-RFI-Override",
///                                         Value = "counted",
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 new Aws.WafV2.Inputs.WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideArgs
///                 {
///                     Name = "SizeRestrictions_BODY",
///                     ActionToUse = new Aws.WafV2.Inputs.WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseArgs
///                     {
///                         Captcha = null,
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := wafv2.NewWebAclRuleGroupAssociation(ctx, "managed_with_overrides", &wafv2.WebAclRuleGroupAssociationArgs{
/// 			RuleName:  pulumi.String("aws-common-rule-set-with-overrides"),
/// 			Priority:  pulumi.Int(70),
/// 			WebAclArn: pulumi.Any(example.Arn),
/// 			ManagedRuleGroup: &wafv2.WebAclRuleGroupAssociationManagedRuleGroupArgs{
/// 				Name:       pulumi.String("AWSManagedRulesCommonRuleSet"),
/// 				VendorName: pulumi.String("AWS"),
/// 				RuleActionOverrides: wafv2.WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideArray{
/// 					&wafv2.WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideArgs{
/// 						Name: pulumi.String("GenericRFI_BODY"),
/// 						ActionToUse: &wafv2.WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseArgs{
/// 							Count: &wafv2.WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCountArgs{
/// 								CustomRequestHandling: &wafv2.WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCountCustomRequestHandlingArgs{
/// 									InsertHeaders: wafv2.WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCountCustomRequestHandlingInsertHeaderArray{
/// 										&wafv2.WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCountCustomRequestHandlingInsertHeaderArgs{
/// 											Name:  pulumi.String("X-RFI-Override"),
/// 											Value: pulumi.String("counted"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					&wafv2.WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideArgs{
/// 						Name: pulumi.String("SizeRestrictions_BODY"),
/// 						ActionToUse: &wafv2.WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseArgs{
/// 							Captcha: &wafv2.WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptchaArgs{},
/// 						},
/// 					},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafv2.WebAclRuleGroupAssociation;
/// import com.pulumi.aws.wafv2.WebAclRuleGroupAssociationArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleGroupAssociationManagedRuleGroupArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var managedWithOverrides = new WebAclRuleGroupAssociation("managedWithOverrides", WebAclRuleGroupAssociationArgs.builder()
///             .ruleName("aws-common-rule-set-with-overrides")
///             .priority(70)
///             .webAclArn(example.arn())
///             .managedRuleGroup(WebAclRuleGroupAssociationManagedRuleGroupArgs.builder()
///                 .name("AWSManagedRulesCommonRuleSet")
///                 .vendorName("AWS")
///                 .ruleActionOverrides(
///                     WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideArgs.builder()
///                         .name("GenericRFI_BODY")
///                         .actionToUse(WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseArgs.builder()
///                             .count(WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCountArgs.builder()
///                                 .customRequestHandling(WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCountCustomRequestHandlingArgs.builder()
///                                     .insertHeaders(WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCountCustomRequestHandlingInsertHeaderArgs.builder()
///                                         .name("X-RFI-Override")
///                                         .value("counted")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build())
///                         .build(),
///                     WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideArgs.builder()
///                         .name("SizeRestrictions_BODY")
///                         .actionToUse(WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseArgs.builder()
///                             .captcha(WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptchaArgs.builder()
///                                 .build())
///                             .build())
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   managedWithOverrides:
///     type: aws:wafv2:WebAclRuleGroupAssociation
///     name: managed_with_overrides
///     properties:
///       ruleName: aws-common-rule-set-with-overrides
///       priority: 70
///       webAclArn: ${example.arn}
///       managedRuleGroup:
///         name: AWSManagedRulesCommonRuleSet
///         vendorName: AWS
///         ruleActionOverrides:
///           - name: GenericRFI_BODY
///             actionToUse:
///               count:
///                 customRequestHandling:
///                   insertHeaders:
///                     - name: X-RFI-Override
///                       value: counted
///           - name: SizeRestrictions_BODY
///             actionToUse:
///               captcha: {}
/// ```
///
/// ### Custom Rule Group - With Override Action
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.wafv2.WebAclRuleGroupAssociation("example", {
///     ruleName: "example-rule-group-rule",
///     priority: 100,
///     webAclArn: exampleAwsWafv2WebAcl.arn,
///     overrideAction: "count",
///     ruleGroupReference: {
///         arn: exampleAwsWafv2RuleGroup.arn,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafv2.WebAclRuleGroupAssociation("example",
///     rule_name="example-rule-group-rule",
///     priority=100,
///     web_acl_arn=example_aws_wafv2_web_acl["arn"],
///     override_action="count",
///     rule_group_reference={
///         "arn": example_aws_wafv2_rule_group["arn"],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.WafV2.WebAclRuleGroupAssociation("example", new()
///     {
///         RuleName = "example-rule-group-rule",
///         Priority = 100,
///         WebAclArn = exampleAwsWafv2WebAcl.Arn,
///         OverrideAction = "count",
///         RuleGroupReference = new Aws.WafV2.Inputs.WebAclRuleGroupAssociationRuleGroupReferenceArgs
///         {
///             Arn = exampleAwsWafv2RuleGroup.Arn,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := wafv2.NewWebAclRuleGroupAssociation(ctx, "example", &wafv2.WebAclRuleGroupAssociationArgs{
/// 			RuleName:       pulumi.String("example-rule-group-rule"),
/// 			Priority:       pulumi.Int(100),
/// 			WebAclArn:      pulumi.Any(exampleAwsWafv2WebAcl.Arn),
/// 			OverrideAction: pulumi.String("count"),
/// 			RuleGroupReference: &wafv2.WebAclRuleGroupAssociationRuleGroupReferenceArgs{
/// 				Arn: pulumi.Any(exampleAwsWafv2RuleGroup.Arn),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafv2.WebAclRuleGroupAssociation;
/// import com.pulumi.aws.wafv2.WebAclRuleGroupAssociationArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleGroupAssociationRuleGroupReferenceArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new WebAclRuleGroupAssociation("example", WebAclRuleGroupAssociationArgs.builder()
///             .ruleName("example-rule-group-rule")
///             .priority(100)
///             .webAclArn(exampleAwsWafv2WebAcl.arn())
///             .overrideAction("count")
///             .ruleGroupReference(WebAclRuleGroupAssociationRuleGroupReferenceArgs.builder()
///                 .arn(exampleAwsWafv2RuleGroup.arn())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:wafv2:WebAclRuleGroupAssociation
///     properties:
///       ruleName: example-rule-group-rule
///       priority: 100
///       webAclArn: ${exampleAwsWafv2WebAcl.arn}
///       overrideAction: count
///       ruleGroupReference:
///         arn: ${exampleAwsWafv2RuleGroup.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import WAFv2 web ACL custom rule group associations using `WebACLARN,RuleGroupARN,RuleName`. For example:
///
/// ```sh
/// $ pulumi import aws:wafv2/webAclRuleGroupAssociation:WebAclRuleGroupAssociation example "arn:aws:wafv2:us-east-1:123456789012:regional/webacl/example-web-acl/12345678-1234-1234-1234-123456789012,arn:aws:wafv2:us-east-1:123456789012:regional/rulegroup/example-rule-group/87654321-4321-4321-4321-210987654321,example-rule-group-rule"
/// ```
///
/// Using `pulumi import`, import WAFv2 web ACL managed rule group associations using `WebACLARN,VendorName:RuleGroupName[:Version],RuleName`. For example:
///
/// ```sh
/// $ pulumi import aws:wafv2/webAclRuleGroupAssociation:WebAclRuleGroupAssociation managed_example "arn:aws:wafv2:us-east-1:123456789012:regional/webacl/example-web-acl/12345678-1234-1234-1234-123456789012,AWS:AWSManagedRulesCommonRuleSet,aws-common-rule-set"
/// ```
class WebAclRuleGroupAssociation extends pulumi.CustomResource {
  /// Managed Rule Group configuration. One of `rule_group_reference` or `managed_rule_group` is required. Conflicts with `rule_group_reference`. See below.
  late final pulumi.Output<WebAclRuleGroupAssociationManagedRuleGroup?>
  managedRuleGroup;

  /// Override action for the rule group. Valid values are `none` and `count`. Defaults to `none`. When set to `count`, the actions defined in the rule group rules are overridden to count matches instead of blocking or allowing requests.
  late final pulumi.Output<String> overrideAction;

  /// Priority of the rule within the Web ACL. Rules are evaluated in order of priority, with lower numbers evaluated first.
  late final pulumi.Output<int> priority;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Custom Rule Group reference configuration. One of `rule_group_reference` or `managed_rule_group` is required. Conflicts with `managed_rule_group`. See below.
  late final pulumi.Output<WebAclRuleGroupAssociationRuleGroupReference?>
  ruleGroupReference;

  /// Name of the rule to create in the Web ACL that references the rule group. Must be between 1 and 128 characters.
  late final pulumi.Output<String> ruleName;
  late final pulumi.Output<WebAclRuleGroupAssociationTimeouts?> timeouts;

  /// ARN of the Web ACL to associate the Rule Group with.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> webAclArn;

  /// Creates a new [WebAclRuleGroupAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAclRuleGroupAssociation]. {@macro pulumi_wafv2_web_acl_rule_group_association_web_acl_rule_group_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAclRuleGroupAssociation(
    String name, {
    WebAclRuleGroupAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:wafv2/webAclRuleGroupAssociation:WebAclRuleGroupAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.managedRuleGroup =
        registerOutput<WebAclRuleGroupAssociationManagedRuleGroup?>(
          'managedRuleGroup',
        );
    this.overrideAction = registerOutput<String>('overrideAction');
    this.priority = registerOutput<int>('priority');
    this.region = registerOutput<String>('region');
    this.ruleGroupReference =
        registerOutput<WebAclRuleGroupAssociationRuleGroupReference?>(
          'ruleGroupReference',
        );
    this.ruleName = registerOutput<String>('ruleName');
    this.timeouts = registerOutput<WebAclRuleGroupAssociationTimeouts?>(
      'timeouts',
    );
    this.webAclArn = registerOutput<String>('webAclArn');
  }
}
