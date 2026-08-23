import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_group_association_args.dart';
import 'web_acl_rule_group_association_managed_rule_group.dart';
import 'web_acl_rule_group_association_rule_group_reference.dart';
import 'web_acl_rule_group_association_state.dart';
import 'web_acl_rule_group_association_timeouts.dart';
import 'web_acl_rule_group_association_visibility_config.dart';

/// Associates a WAFv2 Rule Group (custom or managed) with a Web ACL by adding a rule that references the Rule Group. Use this resource to apply the rules defined in a Rule Group to a Web ACL without duplicating rule definitions.
///
/// This resource supports both:
///
/// - **Custom Rule Groups**: User-created rule groups that you manage within your AWS account
/// - **Managed Rule Groups**: Pre-configured rule groups provided by AWS or third-party vendors
///
/// &gt; **Warning:** Verify the rule names in your `ruleActionOverride`s carefully. With managed rule groups, WAF silently ignores any override that uses an invalid rule name. With customer-owned rule groups, invalid rule names in your overrides will cause web ACL updates to fail. An invalid rule name is any name that doesn't exactly match the case-sensitive name of an existing rule in the rule group.
///
/// &gt; **Warning:** Using this resource will cause the associated Web ACL resource to show configuration drift in the `rule` argument unless you add `lifecycle { ignoreChanges = [rule] }` to the Web ACL resource configuration. This is because this resource modifies the Web ACL's rules outside of the Web ACL resource's direct management.
///
/// &gt; **Note:** This resource creates a rule within the Web ACL that references the entire Rule Group. The rule group's individual rules are evaluated as a unit when requests are processed by the Web ACL.
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Web ACL must use lifecycle.ignore_changes to prevent drift from this resource
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
/// // Associate a custom rule group
/// const exampleWebAclRuleGroupAssociation = new aws.wafv2.WebAclRuleGroupAssociation("example", {
///     ruleName: "example-rule-group-rule",
///     priority: 100,
///     webAclArn: example.arn,
///     ruleGroupReference: {
///         arn: exampleAwsWafv2RuleGroup.arn,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Web ACL must use lifecycle.ignore_changes to prevent drift from this resource
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
/// # Associate a custom rule group
/// example_web_acl_rule_group_association = aws.wafv2.WebAclRuleGroupAssociation("example",
///     rule_name="example-rule-group-rule",
///     priority=100,
///     web_acl_arn=example.arn,
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
///     // Web ACL must use lifecycle.ignore_changes to prevent drift from this resource
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
///     // Associate a custom rule group
///     var exampleWebAclRuleGroupAssociation = new Aws.WafV2.WebAclRuleGroupAssociation("example", new()
///     {
///         RuleName = "example-rule-group-rule",
///         Priority = 100,
///         WebAclArn = example.Arn,
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
/// 		// Web ACL must use lifecycle.ignore_changes to prevent drift from this resource
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
/// 		// Associate a custom rule group
/// 		_, err = wafv2.NewWebAclRuleGroupAssociation(ctx, "example", &wafv2.WebAclRuleGroupAssociationArgs{
/// 			RuleName:  pulumi.String("example-rule-group-rule"),
/// 			Priority:  pulumi.Int(100),
/// 			WebAclArn: example.Arn,
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// # Web ACL must use lifecycle.ignore_changes to prevent drift from this resource
/// resource "aws_wafv2_webacl" "example" {
///   name  = "example-web-acl"
///   scope = "REGIONAL"
///   default_action = {
///     allow = {}
///   }
///   visibility_config = {
///     cloudwatch_metrics_enabled = true
///     metric_name                = "example-web-acl"
///     sampled_requests_enabled   = true
///   }
/// }
/// # Associate a custom rule group
/// resource "aws_wafv2_webaclrulegroupassociation" "example" {
///   rule_name   = "example-rule-group-rule"
///   priority    = 100
///   web_acl_arn = aws_wafv2_webacl.example.arn
///   rule_group_reference = {
///     arn = exampleAwsWafv2RuleGroup.arn
///   }
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
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleGroupAssociationRuleGroupReferenceArgs;
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
///         // Web ACL must use lifecycle.ignore_changes to prevent drift from this resource
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
///         // Associate a custom rule group
///         var exampleWebAclRuleGroupAssociation = new WebAclRuleGroupAssociation("exampleWebAclRuleGroupAssociation", WebAclRuleGroupAssociationArgs.builder()
///             .ruleName("example-rule-group-rule")
///             .priority(100)
///             .webAclArn(example.arn())
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
///   # Web ACL must use lifecycle.ignore_changes to prevent drift from this resource
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
///   # Associate a custom rule group
///   exampleWebAclRuleGroupAssociation:
///     type: aws:wafv2:WebAclRuleGroupAssociation
///     name: example
///     properties:
///       ruleName: example-rule-group-rule
///       priority: 100
///       webAclArn: ${example.arn}
///       ruleGroupReference:
///         arn: ${exampleAwsWafv2RuleGroup.arn}
/// ```
///
/// ### Managed Rule Group
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.wafv2.WebAclRuleGroupAssociation("example", {
///     ruleName: "aws-common-rule-set",
///     priority: 50,
///     webAclArn: exampleAwsWafv2WebAcl.arn,
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
/// example = aws.wafv2.WebAclRuleGroupAssociation("example",
///     rule_name="aws-common-rule-set",
///     priority=50,
///     web_acl_arn=example_aws_wafv2_web_acl["arn"],
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
///     var example = new Aws.WafV2.WebAclRuleGroupAssociation("example", new()
///     {
///         RuleName = "aws-common-rule-set",
///         Priority = 50,
///         WebAclArn = exampleAwsWafv2WebAcl.Arn,
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
/// 		_, err := wafv2.NewWebAclRuleGroupAssociation(ctx, "example", &wafv2.WebAclRuleGroupAssociationArgs{
/// 			RuleName:  pulumi.String("aws-common-rule-set"),
/// 			Priority:  pulumi.Int(50),
/// 			WebAclArn: pulumi.Any(exampleAwsWafv2WebAcl.Arn),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_wafv2_webaclrulegroupassociation" "example" {
///   rule_name   = "aws-common-rule-set"
///   priority    = 50
///   web_acl_arn = exampleAwsWafv2WebAcl.arn
///   managed_rule_group = {
///     name        = "AWSManagedRulesCommonRuleSet"
///     vendor_name = "AWS"
///   }
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
///         var example = new WebAclRuleGroupAssociation("example", WebAclRuleGroupAssociationArgs.builder()
///             .ruleName("aws-common-rule-set")
///             .priority(50)
///             .webAclArn(exampleAwsWafv2WebAcl.arn())
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
///     type: aws:wafv2:WebAclRuleGroupAssociation
///     properties:
///       ruleName: aws-common-rule-set
///       priority: 50
///       webAclArn: ${exampleAwsWafv2WebAcl.arn}
///       managedRuleGroup:
///         name: AWSManagedRulesCommonRuleSet
///         vendorName: AWS
/// ```
///
/// ### Managed Rule Group With Version
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.wafv2.WebAclRuleGroupAssociation("example", {
///     ruleName: "aws-common-rule-set-versioned",
///     priority: 60,
///     webAclArn: exampleAwsWafv2WebAcl.arn,
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
/// example = aws.wafv2.WebAclRuleGroupAssociation("example",
///     rule_name="aws-common-rule-set-versioned",
///     priority=60,
///     web_acl_arn=example_aws_wafv2_web_acl["arn"],
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
///     var example = new Aws.WafV2.WebAclRuleGroupAssociation("example", new()
///     {
///         RuleName = "aws-common-rule-set-versioned",
///         Priority = 60,
///         WebAclArn = exampleAwsWafv2WebAcl.Arn,
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
/// 		_, err := wafv2.NewWebAclRuleGroupAssociation(ctx, "example", &wafv2.WebAclRuleGroupAssociationArgs{
/// 			RuleName:  pulumi.String("aws-common-rule-set-versioned"),
/// 			Priority:  pulumi.Int(60),
/// 			WebAclArn: pulumi.Any(exampleAwsWafv2WebAcl.Arn),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_wafv2_webaclrulegroupassociation" "example" {
///   rule_name   = "aws-common-rule-set-versioned"
///   priority    = 60
///   web_acl_arn = exampleAwsWafv2WebAcl.arn
///   managed_rule_group = {
///     name        = "AWSManagedRulesCommonRuleSet"
///     vendor_name = "AWS"
///     version     = "Version_1.0"
///   }
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
///         var example = new WebAclRuleGroupAssociation("example", WebAclRuleGroupAssociationArgs.builder()
///             .ruleName("aws-common-rule-set-versioned")
///             .priority(60)
///             .webAclArn(exampleAwsWafv2WebAcl.arn())
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
///   example:
///     type: aws:wafv2:WebAclRuleGroupAssociation
///     properties:
///       ruleName: aws-common-rule-set-versioned
///       priority: 60
///       webAclArn: ${exampleAwsWafv2WebAcl.arn}
///       managedRuleGroup:
///         name: AWSManagedRulesCommonRuleSet
///         vendorName: AWS
///         version: Version_1.0
/// ```
///
/// ### Managed Rule Group With Rule Action Overrides
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.wafv2.WebAclRuleGroupAssociation("example", {
///     ruleName: "aws-common-rule-set-with-overrides",
///     priority: 70,
///     webAclArn: exampleAwsWafv2WebAcl.arn,
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
/// example = aws.wafv2.WebAclRuleGroupAssociation("example",
///     rule_name="aws-common-rule-set-with-overrides",
///     priority=70,
///     web_acl_arn=example_aws_wafv2_web_acl["arn"],
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
///     var example = new Aws.WafV2.WebAclRuleGroupAssociation("example", new()
///     {
///         RuleName = "aws-common-rule-set-with-overrides",
///         Priority = 70,
///         WebAclArn = exampleAwsWafv2WebAcl.Arn,
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
/// 		_, err := wafv2.NewWebAclRuleGroupAssociation(ctx, "example", &wafv2.WebAclRuleGroupAssociationArgs{
/// 			RuleName:  pulumi.String("aws-common-rule-set-with-overrides"),
/// 			Priority:  pulumi.Int(70),
/// 			WebAclArn: pulumi.Any(exampleAwsWafv2WebAcl.Arn),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_wafv2_webaclrulegroupassociation" "example" {
///   rule_name   = "aws-common-rule-set-with-overrides"
///   priority    = 70
///   web_acl_arn = exampleAwsWafv2WebAcl.arn
///   managed_rule_group = {
///     name        = "AWSManagedRulesCommonRuleSet"
///     vendor_name = "AWS"
///     rule_action_overrides = [{
///       "name" = "GenericRFI_BODY"
///       "actionToUse" = {
///         "count" = {
///           "customRequestHandling" = {
///             "insertHeaders" = [{
///               "name"  = "X-RFI-Override"
///               "value" = "counted"
///             }]
///           }
///         }
///       }
///       }, {
///       "name" = "SizeRestrictions_BODY"
///       "actionToUse" = {
///         "captcha" = {}
///       }
///     }]
///   }
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
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCountArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCountCustomRequestHandlingArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCountCustomRequestHandlingInsertHeaderArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptchaArgs;
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
///         var example = new WebAclRuleGroupAssociation("example", WebAclRuleGroupAssociationArgs.builder()
///             .ruleName("aws-common-rule-set-with-overrides")
///             .priority(70)
///             .webAclArn(exampleAwsWafv2WebAcl.arn())
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
///   example:
///     type: aws:wafv2:WebAclRuleGroupAssociation
///     properties:
///       ruleName: aws-common-rule-set-with-overrides
///       priority: 70
///       webAclArn: ${exampleAwsWafv2WebAcl.arn}
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
/// ### Managed Rule Group With Managed Rule Group Configs
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.wafv2.WebAclRuleGroupAssociation("example", {
///     ruleName: "acfp-ruleset-with-rule-config",
///     priority: 70,
///     webAclArn: exampleAwsWafv2WebAcl.arn,
///     managedRuleGroup: {
///         name: "AWSManagedRulesACFPRuleSet",
///         vendorName: "AWS",
///         managedRuleGroupConfigs: {
///             awsManagedRulesAcfpRuleSet: {
///                 creationPath: "/creation",
///                 registrationPagePath: "/registration",
///                 requestInspection: {
///                     emailField: {
///                         identifier: "/email",
///                     },
///                     passwordField: {
///                         identifier: "/password",
///                     },
///                     phoneNumberFields: {
///                         identifiers: [
///                             "/phone1",
///                             "/phone2",
///                         ],
///                     },
///                     addressFields: {
///                         identifiers: [
///                             "home",
///                             "work",
///                         ],
///                     },
///                     payloadType: "JSON",
///                     usernameField: {
///                         identifier: "/username",
///                     },
///                 },
///             },
///         },
///     },
///     visibilityConfig: {
///         cloudwatchMetricsEnabled: true,
///         metricName: "friendly-metric-name",
///         sampledRequestsEnabled: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafv2.WebAclRuleGroupAssociation("example",
///     rule_name="acfp-ruleset-with-rule-config",
///     priority=70,
///     web_acl_arn=example_aws_wafv2_web_acl["arn"],
///     managed_rule_group={
///         "name": "AWSManagedRulesACFPRuleSet",
///         "vendor_name": "AWS",
///         "managed_rule_group_configs": {
///             "aws_managed_rules_acfp_rule_set": {
///                 "creation_path": "/creation",
///                 "registration_page_path": "/registration",
///                 "request_inspection": {
///                     "email_field": {
///                         "identifier": "/email",
///                     },
///                     "password_field": {
///                         "identifier": "/password",
///                     },
///                     "phone_number_fields": {
///                         "identifiers": [
///                             "/phone1",
///                             "/phone2",
///                         ],
///                     },
///                     "address_fields": {
///                         "identifiers": [
///                             "home",
///                             "work",
///                         ],
///                     },
///                     "payload_type": "JSON",
///                     "username_field": {
///                         "identifier": "/username",
///                     },
///                 },
///             },
///         },
///     },
///     visibility_config={
///         "cloudwatch_metrics_enabled": True,
///         "metric_name": "friendly-metric-name",
///         "sampled_requests_enabled": True,
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
///         RuleName = "acfp-ruleset-with-rule-config",
///         Priority = 70,
///         WebAclArn = exampleAwsWafv2WebAcl.Arn,
///         ManagedRuleGroup = new Aws.WafV2.Inputs.WebAclRuleGroupAssociationManagedRuleGroupArgs
///         {
///             Name = "AWSManagedRulesACFPRuleSet",
///             VendorName = "AWS",
///             ManagedRuleGroupConfigs = new Aws.WafV2.Inputs.WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsArgs
///             {
///                 AwsManagedRulesAcfpRuleSet = new Aws.WafV2.Inputs.WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetArgs
///                 {
///                     CreationPath = "/creation",
///                     RegistrationPagePath = "/registration",
///                     RequestInspection = new Aws.WafV2.Inputs.WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionArgs
///                     {
///                         EmailField = new Aws.WafV2.Inputs.WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionEmailFieldArgs
///                         {
///                             Identifier = "/email",
///                         },
///                         PasswordField = new Aws.WafV2.Inputs.WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionPasswordFieldArgs
///                         {
///                             Identifier = "/password",
///                         },
///                         PhoneNumberFields = new Aws.WafV2.Inputs.WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionPhoneNumberFieldsArgs
///                         {
///                             Identifiers = new[]
///                             {
///                                 "/phone1",
///                                 "/phone2",
///                             },
///                         },
///                         AddressFields = new Aws.WafV2.Inputs.WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionAddressFieldsArgs
///                         {
///                             Identifiers = new[]
///                             {
///                                 "home",
///                                 "work",
///                             },
///                         },
///                         PayloadType = "JSON",
///                         UsernameField = new Aws.WafV2.Inputs.WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionUsernameFieldArgs
///                         {
///                             Identifier = "/username",
///                         },
///                     },
///                 },
///             },
///         },
///         VisibilityConfig = new Aws.WafV2.Inputs.WebAclRuleGroupAssociationVisibilityConfigArgs
///         {
///             CloudwatchMetricsEnabled = true,
///             MetricName = "friendly-metric-name",
///             SampledRequestsEnabled = true,
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
/// 			RuleName:  pulumi.String("acfp-ruleset-with-rule-config"),
/// 			Priority:  pulumi.Int(70),
/// 			WebAclArn: pulumi.Any(exampleAwsWafv2WebAcl.Arn),
/// 			ManagedRuleGroup: &wafv2.WebAclRuleGroupAssociationManagedRuleGroupArgs{
/// 				Name:       pulumi.String("AWSManagedRulesACFPRuleSet"),
/// 				VendorName: pulumi.String("AWS"),
/// 				ManagedRuleGroupConfigs: &wafv2.WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsArgs{
/// 					AwsManagedRulesAcfpRuleSet: &wafv2.WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetArgs{
/// 						CreationPath:         pulumi.String("/creation"),
/// 						RegistrationPagePath: pulumi.String("/registration"),
/// 						RequestInspection: &wafv2.WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionArgs{
/// 							EmailField: &wafv2.WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionEmailFieldArgs{
/// 								Identifier: pulumi.String("/email"),
/// 							},
/// 							PasswordField: &wafv2.WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionPasswordFieldArgs{
/// 								Identifier: pulumi.String("/password"),
/// 							},
/// 							PhoneNumberFields: &wafv2.WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionPhoneNumberFieldsArgs{
/// 								Identifiers: pulumi.StringArray{
/// 									pulumi.String("/phone1"),
/// 									pulumi.String("/phone2"),
/// 								},
/// 							},
/// 							AddressFields: &wafv2.WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionAddressFieldsArgs{
/// 								Identifiers: pulumi.StringArray{
/// 									pulumi.String("home"),
/// 									pulumi.String("work"),
/// 								},
/// 							},
/// 							PayloadType: pulumi.String("JSON"),
/// 							UsernameField: &wafv2.WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionUsernameFieldArgs{
/// 								Identifier: pulumi.String("/username"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VisibilityConfig: &wafv2.WebAclRuleGroupAssociationVisibilityConfigArgs{
/// 				CloudwatchMetricsEnabled: pulumi.Bool(true),
/// 				MetricName:               pulumi.String("friendly-metric-name"),
/// 				SampledRequestsEnabled:   pulumi.Bool(true),
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
/// resource "aws_wafv2_webaclrulegroupassociation" "example" {
///   rule_name   = "acfp-ruleset-with-rule-config"
///   priority    = 70
///   web_acl_arn = exampleAwsWafv2WebAcl.arn
///   managed_rule_group = {
///     name        = "AWSManagedRulesACFPRuleSet"
///     vendor_name = "AWS"
///     managed_rule_group_configs = {
///       aws_managed_rules_acfp_rule_set = {
///         creation_path          = "/creation"
///         registration_page_path = "/registration"
///         request_inspection = {
///           email_field = {
///             identifier = "/email"
///           }
///           password_field = {
///             identifier = "/password"
///           }
///           phone_number_fields = {
///             identifiers = ["/phone1", "/phone2"]
///           }
///           address_fields = {
///             identifiers = ["home", "work"]
///           }
///           payload_type = "JSON"
///           username_field = {
///             identifier = "/username"
///           }
///         }
///       }
///     }
///   }
///   visibility_config = {
///     cloudwatch_metrics_enabled = true
///     metric_name                = "friendly-metric-name"
///     sampled_requests_enabled   = true
///   }
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
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionEmailFieldArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionPasswordFieldArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionPhoneNumberFieldsArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionAddressFieldsArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionUsernameFieldArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleGroupAssociationVisibilityConfigArgs;
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
///         var example = new WebAclRuleGroupAssociation("example", WebAclRuleGroupAssociationArgs.builder()
///             .ruleName("acfp-ruleset-with-rule-config")
///             .priority(70)
///             .webAclArn(exampleAwsWafv2WebAcl.arn())
///             .managedRuleGroup(WebAclRuleGroupAssociationManagedRuleGroupArgs.builder()
///                 .name("AWSManagedRulesACFPRuleSet")
///                 .vendorName("AWS")
///                 .managedRuleGroupConfigs(WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsArgs.builder()
///                     .awsManagedRulesAcfpRuleSet(WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetArgs.builder()
///                         .creationPath("/creation")
///                         .registrationPagePath("/registration")
///                         .requestInspection(WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionArgs.builder()
///                             .emailField(WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionEmailFieldArgs.builder()
///                                 .identifier("/email")
///                                 .build())
///                             .passwordField(WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionPasswordFieldArgs.builder()
///                                 .identifier("/password")
///                                 .build())
///                             .phoneNumberFields(WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionPhoneNumberFieldsArgs.builder()
///                                 .identifiers(
///                                     "/phone1",
///                                     "/phone2")
///                                 .build())
///                             .addressFields(WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionAddressFieldsArgs.builder()
///                                 .identifiers(
///                                     "home",
///                                     "work")
///                                 .build())
///                             .payloadType("JSON")
///                             .usernameField(WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionUsernameFieldArgs.builder()
///                                 .identifier("/username")
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .visibilityConfig(WebAclRuleGroupAssociationVisibilityConfigArgs.builder()
///                 .cloudwatchMetricsEnabled(true)
///                 .metricName("friendly-metric-name")
///                 .sampledRequestsEnabled(true)
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
///       ruleName: acfp-ruleset-with-rule-config
///       priority: 70
///       webAclArn: ${exampleAwsWafv2WebAcl.arn}
///       managedRuleGroup:
///         name: AWSManagedRulesACFPRuleSet
///         vendorName: AWS
///         managedRuleGroupConfigs:
///           awsManagedRulesAcfpRuleSet:
///             creationPath: /creation
///             registrationPagePath: /registration
///             requestInspection:
///               emailField:
///                 identifier: /email
///               passwordField:
///                 identifier: /password
///               phoneNumberFields:
///                 identifiers:
///                   - /phone1
///                   - /phone2
///               addressFields:
///                 identifiers:
///                   - home
///                   - work
///               payloadType: JSON
///               usernameField:
///                 identifier: /username
///       visibilityConfig:
///         cloudwatchMetricsEnabled: true
///         metricName: friendly-metric-name
///         sampledRequestsEnabled: true
/// ```
///
/// ### Custom Rule Group With Override Action
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_wafv2_webaclrulegroupassociation" "example" {
///   rule_name       = "example-rule-group-rule"
///   priority        = 100
///   web_acl_arn     = exampleAwsWafv2WebAcl.arn
///   override_action = "count"
///   rule_group_reference = {
///     arn = exampleAwsWafv2RuleGroup.arn
///   }
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
/// ### Custom Rule Group With Rule Action Overrides
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
///     ruleGroupReference: {
///         arn: exampleAwsWafv2RuleGroup.arn,
///         ruleActionOverrides: [
///             {
///                 name: "geo-block-rule",
///                 actionToUse: {
///                     count: {
///                         customRequestHandling: {
///                             insertHeaders: [{
///                                 name: "X-Geo-Block-Override",
///                                 value: "counted",
///                             }],
///                         },
///                     },
///                 },
///             },
///             {
///                 name: "rate-limit-rule",
///                 actionToUse: {
///                     captcha: {
///                         customRequestHandling: {
///                             insertHeaders: [{
///                                 name: "X-Rate-Limit-Override",
///                                 value: "captcha-required",
///                             }],
///                         },
///                     },
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
/// example = aws.wafv2.WebAclRuleGroupAssociation("example",
///     rule_name="example-rule-group-rule",
///     priority=100,
///     web_acl_arn=example_aws_wafv2_web_acl["arn"],
///     rule_group_reference={
///         "arn": example_aws_wafv2_rule_group["arn"],
///         "rule_action_overrides": [
///             {
///                 "name": "geo-block-rule",
///                 "action_to_use": {
///                     "count": {
///                         "custom_request_handling": {
///                             "insert_headers": [{
///                                 "name": "X-Geo-Block-Override",
///                                 "value": "counted",
///                             }],
///                         },
///                     },
///                 },
///             },
///             {
///                 "name": "rate-limit-rule",
///                 "action_to_use": {
///                     "captcha": {
///                         "custom_request_handling": {
///                             "insert_headers": [{
///                                 "name": "X-Rate-Limit-Override",
///                                 "value": "captcha-required",
///                             }],
///                         },
///                     },
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
///     var example = new Aws.WafV2.WebAclRuleGroupAssociation("example", new()
///     {
///         RuleName = "example-rule-group-rule",
///         Priority = 100,
///         WebAclArn = exampleAwsWafv2WebAcl.Arn,
///         RuleGroupReference = new Aws.WafV2.Inputs.WebAclRuleGroupAssociationRuleGroupReferenceArgs
///         {
///             Arn = exampleAwsWafv2RuleGroup.Arn,
///             RuleActionOverrides = new[]
///             {
///                 new Aws.WafV2.Inputs.WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideArgs
///                 {
///                     Name = "geo-block-rule",
///                     ActionToUse = new Aws.WafV2.Inputs.WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseArgs
///                     {
///                         Count = new Aws.WafV2.Inputs.WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCountArgs
///                         {
///                             CustomRequestHandling = new Aws.WafV2.Inputs.WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCountCustomRequestHandlingArgs
///                             {
///                                 InsertHeaders = new[]
///                                 {
///                                     new Aws.WafV2.Inputs.WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCountCustomRequestHandlingInsertHeaderArgs
///                                     {
///                                         Name = "X-Geo-Block-Override",
///                                         Value = "counted",
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 new Aws.WafV2.Inputs.WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideArgs
///                 {
///                     Name = "rate-limit-rule",
///                     ActionToUse = new Aws.WafV2.Inputs.WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseArgs
///                     {
///                         Captcha = new Aws.WafV2.Inputs.WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptchaArgs
///                         {
///                             CustomRequestHandling = new Aws.WafV2.Inputs.WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptchaCustomRequestHandlingArgs
///                             {
///                                 InsertHeaders = new[]
///                                 {
///                                     new Aws.WafV2.Inputs.WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeaderArgs
///                                     {
///                                         Name = "X-Rate-Limit-Override",
///                                         Value = "captcha-required",
///                                     },
///                                 },
///                             },
///                         },
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
/// 		_, err := wafv2.NewWebAclRuleGroupAssociation(ctx, "example", &wafv2.WebAclRuleGroupAssociationArgs{
/// 			RuleName:  pulumi.String("example-rule-group-rule"),
/// 			Priority:  pulumi.Int(100),
/// 			WebAclArn: pulumi.Any(exampleAwsWafv2WebAcl.Arn),
/// 			RuleGroupReference: &wafv2.WebAclRuleGroupAssociationRuleGroupReferenceArgs{
/// 				Arn: pulumi.Any(exampleAwsWafv2RuleGroup.Arn),
/// 				RuleActionOverrides: wafv2.WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideArray{
/// 					&wafv2.WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideArgs{
/// 						Name: pulumi.String("geo-block-rule"),
/// 						ActionToUse: &wafv2.WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseArgs{
/// 							Count: &wafv2.WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCountArgs{
/// 								CustomRequestHandling: &wafv2.WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCountCustomRequestHandlingArgs{
/// 									InsertHeaders: wafv2.WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCountCustomRequestHandlingInsertHeaderArray{
/// 										&wafv2.WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCountCustomRequestHandlingInsertHeaderArgs{
/// 											Name:  pulumi.String("X-Geo-Block-Override"),
/// 											Value: pulumi.String("counted"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					&wafv2.WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideArgs{
/// 						Name: pulumi.String("rate-limit-rule"),
/// 						ActionToUse: &wafv2.WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseArgs{
/// 							Captcha: &wafv2.WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptchaArgs{
/// 								CustomRequestHandling: &wafv2.WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptchaCustomRequestHandlingArgs{
/// 									InsertHeaders: wafv2.WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeaderArray{
/// 										&wafv2.WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeaderArgs{
/// 											Name:  pulumi.String("X-Rate-Limit-Override"),
/// 											Value: pulumi.String("captcha-required"),
/// 										},
/// 									},
/// 								},
/// 							},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_wafv2_webaclrulegroupassociation" "example" {
///   rule_name   = "example-rule-group-rule"
///   priority    = 100
///   web_acl_arn = exampleAwsWafv2WebAcl.arn
///   rule_group_reference = {
///     arn = exampleAwsWafv2RuleGroup.arn
///     rule_action_overrides = [{
///       "name" = "geo-block-rule"
///       "actionToUse" = {
///         "count" = {
///           "customRequestHandling" = {
///             "insertHeaders" = [{
///               "name"  = "X-Geo-Block-Override"
///               "value" = "counted"
///             }]
///           }
///         }
///       }
///       }, {
///       "name" = "rate-limit-rule"
///       "actionToUse" = {
///         "captcha" = {
///           "customRequestHandling" = {
///             "insertHeaders" = [{
///               "name"  = "X-Rate-Limit-Override"
///               "value" = "captcha-required"
///             }]
///           }
///         }
///       }
///     }]
///   }
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
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCountArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCountCustomRequestHandlingArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCountCustomRequestHandlingInsertHeaderArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptchaArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptchaCustomRequestHandlingArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeaderArgs;
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
///         var example = new WebAclRuleGroupAssociation("example", WebAclRuleGroupAssociationArgs.builder()
///             .ruleName("example-rule-group-rule")
///             .priority(100)
///             .webAclArn(exampleAwsWafv2WebAcl.arn())
///             .ruleGroupReference(WebAclRuleGroupAssociationRuleGroupReferenceArgs.builder()
///                 .arn(exampleAwsWafv2RuleGroup.arn())
///                 .ruleActionOverrides(
///                     WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideArgs.builder()
///                         .name("geo-block-rule")
///                         .actionToUse(WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseArgs.builder()
///                             .count(WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCountArgs.builder()
///                                 .customRequestHandling(WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCountCustomRequestHandlingArgs.builder()
///                                     .insertHeaders(WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCountCustomRequestHandlingInsertHeaderArgs.builder()
///                                         .name("X-Geo-Block-Override")
///                                         .value("counted")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build())
///                         .build(),
///                     WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideArgs.builder()
///                         .name("rate-limit-rule")
///                         .actionToUse(WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseArgs.builder()
///                             .captcha(WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptchaArgs.builder()
///                                 .customRequestHandling(WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptchaCustomRequestHandlingArgs.builder()
///                                     .insertHeaders(WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeaderArgs.builder()
///                                         .name("X-Rate-Limit-Override")
///                                         .value("captcha-required")
///                                         .build())
///                                     .build())
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
///   example:
///     type: aws:wafv2:WebAclRuleGroupAssociation
///     properties:
///       ruleName: example-rule-group-rule
///       priority: 100
///       webAclArn: ${exampleAwsWafv2WebAcl.arn}
///       ruleGroupReference:
///         arn: ${exampleAwsWafv2RuleGroup.arn}
///         ruleActionOverrides:
///           - name: geo-block-rule
///             actionToUse:
///               count:
///                 customRequestHandling:
///                   insertHeaders:
///                     - name: X-Geo-Block-Override
///                       value: counted
///           - name: rate-limit-rule
///             actionToUse:
///               captcha:
///                 customRequestHandling:
///                   insertHeaders:
///                     - name: X-Rate-Limit-Override
///                       value: captcha-required
/// ```
///
/// ### CloudFront Web ACL
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.wafv2.WebAclRuleGroupAssociation("example", {
///     ruleName: "cloudfront-rule-group-rule",
///     priority: 50,
///     webAclArn: exampleAwsWafv2WebAcl.arn,
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
///     rule_name="cloudfront-rule-group-rule",
///     priority=50,
///     web_acl_arn=example_aws_wafv2_web_acl["arn"],
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
///         RuleName = "cloudfront-rule-group-rule",
///         Priority = 50,
///         WebAclArn = exampleAwsWafv2WebAcl.Arn,
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
/// 			RuleName:  pulumi.String("cloudfront-rule-group-rule"),
/// 			Priority:  pulumi.Int(50),
/// 			WebAclArn: pulumi.Any(exampleAwsWafv2WebAcl.Arn),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_wafv2_webaclrulegroupassociation" "example" {
///   rule_name   = "cloudfront-rule-group-rule"
///   priority    = 50
///   web_acl_arn = exampleAwsWafv2WebAcl.arn
///   rule_group_reference = {
///     arn = exampleAwsWafv2RuleGroup.arn
///   }
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
///         var example = new WebAclRuleGroupAssociation("example", WebAclRuleGroupAssociationArgs.builder()
///             .ruleName("cloudfront-rule-group-rule")
///             .priority(50)
///             .webAclArn(exampleAwsWafv2WebAcl.arn())
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
///       ruleName: cloudfront-rule-group-rule
///       priority: 50
///       webAclArn: ${exampleAwsWafv2WebAcl.arn}
///       ruleGroupReference:
///         arn: ${exampleAwsWafv2RuleGroup.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import WAFv2 web ACL custom rule group associations using `WebACLARN,RuleName,RuleGroupType,RuleGroupARN`, where `RuleGroupType` is `custom`. For example:
///
/// ```sh
/// $ pulumi import aws:wafv2/webAclRuleGroupAssociation:WebAclRuleGroupAssociation example "arn:aws:wafv2:us-east-1:123456789012:regional/webacl/example-web-acl/12345678-1234-1234-1234-123456789012,example-rule-group-rule,custom,arn:aws:wafv2:us-east-1:123456789012:regional/rulegroup/example-rule-group/87654321-4321-4321-4321-210987654321"
/// ```
///
/// Using `pulumi import`, import WAFv2 web ACL managed rule group associations using `WebACLARN,RuleName,RuleGroupType,VendorName:RuleGroupName[:Version]`, where `RuleGroupType` is `managed`. For example:
///
/// ```sh
/// $ pulumi import aws:wafv2/webAclRuleGroupAssociation:WebAclRuleGroupAssociation managed_example "arn:aws:wafv2:us-east-1:123456789012:regional/webacl/example-web-acl/12345678-1234-1234-1234-123456789012,aws-common-rule-set,managed,AWS:AWSManagedRulesCommonRuleSet"
/// ```
class WebAclRuleGroupAssociation extends pulumi.CustomResource {
  /// Managed Rule Group configuration. One of `ruleGroupReference` or `managedRuleGroup` is required. Conflicts with `ruleGroupReference`. See below.
  late final pulumi.Output<WebAclRuleGroupAssociationManagedRuleGroup?> managedRuleGroup;
  /// Override action for the rule group. Valid values are `none` and `count`. Defaults to `none`. When set to `count`, the actions defined in the rule group rules are overridden to count matches instead of blocking or allowing requests.
  late final pulumi.Output<String> overrideAction;
  /// Priority of the rule within the Web ACL. Rules are evaluated in order of priority, with lower numbers evaluated first.
  late final pulumi.Output<int> priority;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Custom Rule Group reference configuration. One of `ruleGroupReference` or `managedRuleGroup` is required. Conflicts with `managedRuleGroup`. See below.
  late final pulumi.Output<WebAclRuleGroupAssociationRuleGroupReference?> ruleGroupReference;
  /// Name of the rule to create in the Web ACL that references the rule group. Must be between 1 and 128 characters.
  late final pulumi.Output<String> ruleName;
  late final pulumi.Output<WebAclRuleGroupAssociationTimeouts?> timeouts;
  /// Defines and enables Amazon CloudWatch metrics and web request sample collection. See below.
  late final pulumi.Output<WebAclRuleGroupAssociationVisibilityConfig?> visibilityConfig;
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
    managedRuleGroup = registerOutput<WebAclRuleGroupAssociationManagedRuleGroup?>('managedRuleGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclRuleGroupAssociationManagedRuleGroup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    overrideAction = registerOutput<String>('overrideAction');
    priority = registerOutput<int>('priority');
    region = registerOutput<String>('region');
    ruleGroupReference = registerOutput<WebAclRuleGroupAssociationRuleGroupReference?>('ruleGroupReference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclRuleGroupAssociationRuleGroupReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ruleName = registerOutput<String>('ruleName');
    timeouts = registerOutput<WebAclRuleGroupAssociationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclRuleGroupAssociationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    visibilityConfig = registerOutput<WebAclRuleGroupAssociationVisibilityConfig?>('visibilityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclRuleGroupAssociationVisibilityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    webAclArn = registerOutput<String>('webAclArn');
  }

  /// Gets an existing [WebAclRuleGroupAssociation] resource's state with the given [name] and [id].
  static WebAclRuleGroupAssociation get(
    String name,
    pulumi.Input<String> id, {
    WebAclRuleGroupAssociationState? state,
  }) {
    return WebAclRuleGroupAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WebAclRuleGroupAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafv2/webAclRuleGroupAssociation:WebAclRuleGroupAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    managedRuleGroup = registerOutput<WebAclRuleGroupAssociationManagedRuleGroup?>('managedRuleGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclRuleGroupAssociationManagedRuleGroup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    overrideAction = registerOutput<String>('overrideAction');
    priority = registerOutput<int>('priority');
    region = registerOutput<String>('region');
    ruleGroupReference = registerOutput<WebAclRuleGroupAssociationRuleGroupReference?>('ruleGroupReference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclRuleGroupAssociationRuleGroupReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ruleName = registerOutput<String>('ruleName');
    timeouts = registerOutput<WebAclRuleGroupAssociationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclRuleGroupAssociationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    visibilityConfig = registerOutput<WebAclRuleGroupAssociationVisibilityConfig?>('visibilityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclRuleGroupAssociationVisibilityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    webAclArn = registerOutput<String>('webAclArn');
  }
}
