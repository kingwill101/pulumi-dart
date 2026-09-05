import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_action.dart';
import 'web_acl_rule_args.dart';
import 'web_acl_rule_captcha_config.dart';
import 'web_acl_rule_challenge_config.dart';
import 'web_acl_rule_override_action.dart';
import 'web_acl_rule_rule_label.dart';
import 'web_acl_rule_state.dart';
import 'web_acl_rule_statement.dart';
import 'web_acl_rule_timeouts.dart';
import 'web_acl_rule_visibility_config.dart';

/// Manages an individual rule within a WAFv2 Web ACL. This resource creates proper Terraform dependencies for safe deletion of referenced resources like IP sets, solving the `WAFAssociatedItemException` error that occurs when deleting IP sets that are still referenced by Web ACL rules.
///
/// &gt; **NOTE:** When using this resource, you must add `lifecycle { ignoreChanges = [rule] }` to your `aws.wafv2.WebAcl` resource to prevent conflicts. See the `aws.wafv2.WebAcl` documentation for a full description of the limitations of inline rules that this resource addresses.
///
/// ## Example Usage
///
/// ### Migrating from Inline Rules
///
/// This resource supports a "create-or-adopt" pattern that allows seamless migration from inline Web ACL rules to separate `aws.wafv2.WebAclRule` resources without infrastructure changes.
///
/// When you create an `aws.wafv2.WebAclRule` resource with the same name as an existing inline rule in the Web ACL, the resource will automatically adopt the existing rule instead of creating a duplicate. This enables zero-downtime migration from inline rules to separate resources.
///
/// Starting with inline rules, update your configuration to use separate rule resources and apply:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.wafv2.WebAcl("example", {
///     defaultAction: {
///         allow: {},
///     },
///     visibilityConfig: {
///         cloudwatchMetricsEnabled: false,
///         metricName: "example",
///         sampledRequestsEnabled: false,
///     },
///     name: "example",
///     scope: "REGIONAL",
/// }, {
///     ignoreChanges: ["rules"],
/// });
/// // Separate rule resource with identical configuration
/// const blockCountries = new aws.wafv2.WebAclRule("block_countries", {
///     action: {
///         block: {},
///     },
///     statement: {
///         geoMatchStatement: {
///             countryCodes: [
///                 "CN",
///                 "RU",
///             ],
///         },
///     },
///     visibilityConfig: {
///         cloudwatchMetricsEnabled: false,
///         metricName: "block-countries",
///         sampledRequestsEnabled: false,
///     },
///     name: "block-countries",
///     priority: 1,
///     webAclArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafv2.WebAcl("example",
///     default_action={
///         "allow": {},
///     },
///     visibility_config={
///         "cloudwatch_metrics_enabled": False,
///         "metric_name": "example",
///         "sampled_requests_enabled": False,
///     },
///     name="example",
///     scope="REGIONAL",
///     opts = pulumi.ResourceOptions(ignore_changes=["rules"]))
/// # Separate rule resource with identical configuration
/// block_countries = aws.wafv2.WebAclRule("block_countries",
///     action={
///         "block": {},
///     },
///     statement={
///         "geo_match_statement": {
///             "country_codes": [
///                 "CN",
///                 "RU",
///             ],
///         },
///     },
///     visibility_config={
///         "cloudwatch_metrics_enabled": False,
///         "metric_name": "block-countries",
///         "sampled_requests_enabled": False,
///     },
///     name="block-countries",
///     priority=1,
///     web_acl_arn=example.arn)
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
///         DefaultAction = new Aws.WafV2.Inputs.WebAclDefaultActionArgs
///         {
///             Allow = null,
///         },
///         VisibilityConfig = new Aws.WafV2.Inputs.WebAclVisibilityConfigArgs
///         {
///             CloudwatchMetricsEnabled = false,
///             MetricName = "example",
///             SampledRequestsEnabled = false,
///         },
///         Name = "example",
///         Scope = "REGIONAL",
///     }, new CustomResourceOptions
///     {
///         IgnoreChanges =
///         {
///             "rules",
///         },
///     });
///
///     // Separate rule resource with identical configuration
///     var blockCountries = new Aws.WafV2.WebAclRule("block_countries", new()
///     {
///         Action = new Aws.WafV2.Inputs.WebAclRuleActionArgs
///         {
///             Block = null,
///         },
///         Statement = new Aws.WafV2.Inputs.WebAclRuleStatementArgs
///         {
///             GeoMatchStatement = new Aws.WafV2.Inputs.WebAclRuleStatementGeoMatchStatementArgs
///             {
///                 CountryCodes = new[]
///                 {
///                     "CN",
///                     "RU",
///                 },
///             },
///         },
///         VisibilityConfig = new Aws.WafV2.Inputs.WebAclRuleVisibilityConfigArgs
///         {
///             CloudwatchMetricsEnabled = false,
///             MetricName = "block-countries",
///             SampledRequestsEnabled = false,
///         },
///         Name = "block-countries",
///         Priority = 1,
///         WebAclArn = example.Arn,
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
/// 			DefaultAction: &wafv2.WebAclDefaultActionArgs{
/// 				Allow: &wafv2.WebAclDefaultActionAllowArgs{},
/// 			},
/// 			VisibilityConfig: &wafv2.WebAclVisibilityConfigArgs{
/// 				CloudwatchMetricsEnabled: pulumi.Bool(false),
/// 				MetricName:               pulumi.String("example"),
/// 				SampledRequestsEnabled:   pulumi.Bool(false),
/// 			},
/// 			Name:  pulumi.String("example"),
/// 			Scope: pulumi.String("REGIONAL"),
/// 		}, pulumi.IgnoreChanges([]string{
/// 			"rules",
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Separate rule resource with identical configuration
/// 		_, err = wafv2.NewWebAclRule(ctx, "block_countries", &wafv2.WebAclRuleArgs{
/// 			Action: &wafv2.WebAclRuleActionArgs{
/// 				Block: &wafv2.WebAclRuleActionBlockArgs{},
/// 			},
/// 			Statement: &wafv2.WebAclRuleStatementArgs{
/// 				GeoMatchStatement: &wafv2.WebAclRuleStatementGeoMatchStatementArgs{
/// 					CountryCodes: pulumi.StringArray{
/// 						pulumi.String("CN"),
/// 						pulumi.String("RU"),
/// 					},
/// 				},
/// 			},
/// 			VisibilityConfig: &wafv2.WebAclRuleVisibilityConfigArgs{
/// 				CloudwatchMetricsEnabled: pulumi.Bool(false),
/// 				MetricName:               pulumi.String("block-countries"),
/// 				SampledRequestsEnabled:   pulumi.Bool(false),
/// 			},
/// 			Name:      pulumi.String("block-countries"),
/// 			Priority:  pulumi.Int(1),
/// 			WebAclArn: example.Arn,
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
/// resource "aws_wafv2_webacl" "example" {
///   lifecycle {
///     ignore_changes = [rules]
///   }
///   default_action = {
///     allow = {}
///   }
///   visibility_config = {
///     cloudwatch_metrics_enabled = false
///     metric_name                = "example"
///     sampled_requests_enabled   = false
///   }
///   name  = "example"
///   scope = "REGIONAL"
/// }
/// # Separate rule resource with identical configuration
/// resource "aws_wafv2_webaclrule" "block_countries" {
///   action = {
///     block = {}
///   }
///   statement = {
///     geo_match_statement = {
///       country_codes = ["CN", "RU"]
///     }
///   }
///   visibility_config = {
///     cloudwatch_metrics_enabled = false
///     metric_name                = "block-countries"
///     sampled_requests_enabled   = false
///   }
///   name        = "block-countries"
///   priority    = 1
///   web_acl_arn = aws_wafv2_webacl.example.arn
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
/// import com.pulumi.aws.wafv2.WebAclRule;
/// import com.pulumi.aws.wafv2.WebAclRuleArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleActionArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleActionBlockArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleStatementGeoMatchStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleVisibilityConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new WebAcl("example", WebAclArgs.builder()
///             .defaultAction(WebAclDefaultActionArgs.builder()
///                 .allow(WebAclDefaultActionAllowArgs.builder()
///                     .build())
///                 .build())
///             .visibilityConfig(WebAclVisibilityConfigArgs.builder()
///                 .cloudwatchMetricsEnabled(false)
///                 .metricName("example")
///                 .sampledRequestsEnabled(false)
///                 .build())
///             .name("example")
///             .scope("REGIONAL")
///             .build(), CustomResourceOptions.builder()
///                 .ignoreChanges("rules")
///                 .build());
///
///         // Separate rule resource with identical configuration
///         var blockCountries = new WebAclRule("blockCountries", WebAclRuleArgs.builder()
///             .action(WebAclRuleActionArgs.builder()
///                 .block(WebAclRuleActionBlockArgs.builder()
///                     .build())
///                 .build())
///             .statement(WebAclRuleStatementArgs.builder()
///                 .geoMatchStatement(WebAclRuleStatementGeoMatchStatementArgs.builder()
///                     .countryCodes(
///                         "CN",
///                         "RU")
///                     .build())
///                 .build())
///             .visibilityConfig(WebAclRuleVisibilityConfigArgs.builder()
///                 .cloudwatchMetricsEnabled(false)
///                 .metricName("block-countries")
///                 .sampledRequestsEnabled(false)
///                 .build())
///             .name("block-countries")
///             .priority(1)
///             .webAclArn(example.arn())
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
///       defaultAction:
///         allow: {}
///       visibilityConfig:
///         cloudwatchMetricsEnabled: false
///         metricName: example
///         sampledRequestsEnabled: false
///       name: example
///       scope: REGIONAL
///     options:
///       ignoreChanges:
///         - rules
///   # Separate rule resource with identical configuration
///   blockCountries:
///     type: aws:wafv2:WebAclRule
///     name: block_countries
///     properties:
///       action:
///         block: {}
///       statement:
///         geoMatchStatement:
///           countryCodes:
///             - CN
///             - RU
///       visibilityConfig:
///         cloudwatchMetricsEnabled: false
///         metricName: block-countries
///         sampledRequestsEnabled: false
///       name: block-countries
///       priority: 1
///       webAclArn: ${example.arn}
/// ```
///
///
/// Apply the configuration:
///
/// ```bash
/// pulumi up
/// ```
///
/// The `aws.wafv2.WebAclRule` resource will adopt the existing inline rule without making any changes to the actual Web ACL infrastructure. The rule continues to function identically, but is now managed as a separate Terraform resource.
///
/// - The rule name in the `aws.wafv2.WebAclRule` resource must exactly match the existing inline rule name
/// - Add `lifecycle { ignoreChanges = [rule] }` to your Web ACL resource to prevent conflicts
/// - The create-or-adopt behavior only applies when a rule with the same name already exists in the Web ACL
///
/// ### Basic Geo Match Rule
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.wafv2.WebAcl("example", {
///     defaultAction: {
///         allow: {},
///     },
///     visibilityConfig: {
///         cloudwatchMetricsEnabled: false,
///         metricName: "example",
///         sampledRequestsEnabled: false,
///     },
///     name: "example",
///     scope: "REGIONAL",
/// }, {
///     ignoreChanges: ["rules"],
/// });
/// const blockCountries = new aws.wafv2.WebAclRule("block_countries", {
///     action: {
///         block: {},
///     },
///     statement: {
///         geoMatchStatement: {
///             countryCodes: [
///                 "CN",
///                 "RU",
///             ],
///         },
///     },
///     visibilityConfig: {
///         cloudwatchMetricsEnabled: false,
///         metricName: "block-countries",
///         sampledRequestsEnabled: false,
///     },
///     name: "block-countries",
///     priority: 1,
///     webAclArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafv2.WebAcl("example",
///     default_action={
///         "allow": {},
///     },
///     visibility_config={
///         "cloudwatch_metrics_enabled": False,
///         "metric_name": "example",
///         "sampled_requests_enabled": False,
///     },
///     name="example",
///     scope="REGIONAL",
///     opts = pulumi.ResourceOptions(ignore_changes=["rules"]))
/// block_countries = aws.wafv2.WebAclRule("block_countries",
///     action={
///         "block": {},
///     },
///     statement={
///         "geo_match_statement": {
///             "country_codes": [
///                 "CN",
///                 "RU",
///             ],
///         },
///     },
///     visibility_config={
///         "cloudwatch_metrics_enabled": False,
///         "metric_name": "block-countries",
///         "sampled_requests_enabled": False,
///     },
///     name="block-countries",
///     priority=1,
///     web_acl_arn=example.arn)
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
///         DefaultAction = new Aws.WafV2.Inputs.WebAclDefaultActionArgs
///         {
///             Allow = null,
///         },
///         VisibilityConfig = new Aws.WafV2.Inputs.WebAclVisibilityConfigArgs
///         {
///             CloudwatchMetricsEnabled = false,
///             MetricName = "example",
///             SampledRequestsEnabled = false,
///         },
///         Name = "example",
///         Scope = "REGIONAL",
///     }, new CustomResourceOptions
///     {
///         IgnoreChanges =
///         {
///             "rules",
///         },
///     });
///
///     var blockCountries = new Aws.WafV2.WebAclRule("block_countries", new()
///     {
///         Action = new Aws.WafV2.Inputs.WebAclRuleActionArgs
///         {
///             Block = null,
///         },
///         Statement = new Aws.WafV2.Inputs.WebAclRuleStatementArgs
///         {
///             GeoMatchStatement = new Aws.WafV2.Inputs.WebAclRuleStatementGeoMatchStatementArgs
///             {
///                 CountryCodes = new[]
///                 {
///                     "CN",
///                     "RU",
///                 },
///             },
///         },
///         VisibilityConfig = new Aws.WafV2.Inputs.WebAclRuleVisibilityConfigArgs
///         {
///             CloudwatchMetricsEnabled = false,
///             MetricName = "block-countries",
///             SampledRequestsEnabled = false,
///         },
///         Name = "block-countries",
///         Priority = 1,
///         WebAclArn = example.Arn,
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
/// 			DefaultAction: &wafv2.WebAclDefaultActionArgs{
/// 				Allow: &wafv2.WebAclDefaultActionAllowArgs{},
/// 			},
/// 			VisibilityConfig: &wafv2.WebAclVisibilityConfigArgs{
/// 				CloudwatchMetricsEnabled: pulumi.Bool(false),
/// 				MetricName:               pulumi.String("example"),
/// 				SampledRequestsEnabled:   pulumi.Bool(false),
/// 			},
/// 			Name:  pulumi.String("example"),
/// 			Scope: pulumi.String("REGIONAL"),
/// 		}, pulumi.IgnoreChanges([]string{
/// 			"rules",
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = wafv2.NewWebAclRule(ctx, "block_countries", &wafv2.WebAclRuleArgs{
/// 			Action: &wafv2.WebAclRuleActionArgs{
/// 				Block: &wafv2.WebAclRuleActionBlockArgs{},
/// 			},
/// 			Statement: &wafv2.WebAclRuleStatementArgs{
/// 				GeoMatchStatement: &wafv2.WebAclRuleStatementGeoMatchStatementArgs{
/// 					CountryCodes: pulumi.StringArray{
/// 						pulumi.String("CN"),
/// 						pulumi.String("RU"),
/// 					},
/// 				},
/// 			},
/// 			VisibilityConfig: &wafv2.WebAclRuleVisibilityConfigArgs{
/// 				CloudwatchMetricsEnabled: pulumi.Bool(false),
/// 				MetricName:               pulumi.String("block-countries"),
/// 				SampledRequestsEnabled:   pulumi.Bool(false),
/// 			},
/// 			Name:      pulumi.String("block-countries"),
/// 			Priority:  pulumi.Int(1),
/// 			WebAclArn: example.Arn,
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
/// resource "aws_wafv2_webacl" "example" {
///   lifecycle {
///     ignore_changes = [rules]
///   }
///   default_action = {
///     allow = {}
///   }
///   visibility_config = {
///     cloudwatch_metrics_enabled = false
///     metric_name                = "example"
///     sampled_requests_enabled   = false
///   }
///   name  = "example"
///   scope = "REGIONAL"
/// }
/// resource "aws_wafv2_webaclrule" "block_countries" {
///   action = {
///     block = {}
///   }
///   statement = {
///     geo_match_statement = {
///       country_codes = ["CN", "RU"]
///     }
///   }
///   visibility_config = {
///     cloudwatch_metrics_enabled = false
///     metric_name                = "block-countries"
///     sampled_requests_enabled   = false
///   }
///   name        = "block-countries"
///   priority    = 1
///   web_acl_arn = aws_wafv2_webacl.example.arn
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
/// import com.pulumi.aws.wafv2.WebAclRule;
/// import com.pulumi.aws.wafv2.WebAclRuleArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleActionArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleActionBlockArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleStatementGeoMatchStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleVisibilityConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new WebAcl("example", WebAclArgs.builder()
///             .defaultAction(WebAclDefaultActionArgs.builder()
///                 .allow(WebAclDefaultActionAllowArgs.builder()
///                     .build())
///                 .build())
///             .visibilityConfig(WebAclVisibilityConfigArgs.builder()
///                 .cloudwatchMetricsEnabled(false)
///                 .metricName("example")
///                 .sampledRequestsEnabled(false)
///                 .build())
///             .name("example")
///             .scope("REGIONAL")
///             .build(), CustomResourceOptions.builder()
///                 .ignoreChanges("rules")
///                 .build());
///
///         var blockCountries = new WebAclRule("blockCountries", WebAclRuleArgs.builder()
///             .action(WebAclRuleActionArgs.builder()
///                 .block(WebAclRuleActionBlockArgs.builder()
///                     .build())
///                 .build())
///             .statement(WebAclRuleStatementArgs.builder()
///                 .geoMatchStatement(WebAclRuleStatementGeoMatchStatementArgs.builder()
///                     .countryCodes(
///                         "CN",
///                         "RU")
///                     .build())
///                 .build())
///             .visibilityConfig(WebAclRuleVisibilityConfigArgs.builder()
///                 .cloudwatchMetricsEnabled(false)
///                 .metricName("block-countries")
///                 .sampledRequestsEnabled(false)
///                 .build())
///             .name("block-countries")
///             .priority(1)
///             .webAclArn(example.arn())
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
///       defaultAction:
///         allow: {}
///       visibilityConfig:
///         cloudwatchMetricsEnabled: false
///         metricName: example
///         sampledRequestsEnabled: false
///       name: example
///       scope: REGIONAL
///     options:
///       ignoreChanges:
///         - rules
///   blockCountries:
///     type: aws:wafv2:WebAclRule
///     name: block_countries
///     properties:
///       action:
///         block: {}
///       statement:
///         geoMatchStatement:
///           countryCodes:
///             - CN
///             - RU
///       visibilityConfig:
///         cloudwatchMetricsEnabled: false
///         metricName: block-countries
///         sampledRequestsEnabled: false
///       name: block-countries
///       priority: 1
///       webAclArn: ${example.arn}
/// ```
///
///
/// ### IP Set Reference (Solves Deletion Ordering)
///
/// This example demonstrates the primary use case: referencing an IP set in a way that allows safe deletion.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const blockedIps = new aws.wafv2.IpSet("blocked_ips", {
///     name: "blocked-ips",
///     scope: "REGIONAL",
///     ipAddressVersion: "IPV4",
///     addresses: [
///         "1.2.3.4/32",
///         "5.6.7.8/32",
///     ],
/// });
/// const example = new aws.wafv2.WebAcl("example", {
///     defaultAction: {
///         allow: {},
///     },
///     visibilityConfig: {
///         cloudwatchMetricsEnabled: true,
///         metricName: "example",
///         sampledRequestsEnabled: true,
///     },
///     name: "example",
///     scope: "REGIONAL",
/// }, {
///     ignoreChanges: ["rules"],
/// });
/// const blockIps = new aws.wafv2.WebAclRule("block_ips", {
///     action: {
///         block: {},
///     },
///     statement: {
///         ipSetReferenceStatement: {
///             arn: blockedIps.arn,
///         },
///     },
///     visibilityConfig: {
///         cloudwatchMetricsEnabled: true,
///         metricName: "block-bad-ips",
///         sampledRequestsEnabled: true,
///     },
///     name: "block-bad-ips",
///     priority: 1,
///     webAclArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// blocked_ips = aws.wafv2.IpSet("blocked_ips",
///     name="blocked-ips",
///     scope="REGIONAL",
///     ip_address_version="IPV4",
///     addresses=[
///         "1.2.3.4/32",
///         "5.6.7.8/32",
///     ])
/// example = aws.wafv2.WebAcl("example",
///     default_action={
///         "allow": {},
///     },
///     visibility_config={
///         "cloudwatch_metrics_enabled": True,
///         "metric_name": "example",
///         "sampled_requests_enabled": True,
///     },
///     name="example",
///     scope="REGIONAL",
///     opts = pulumi.ResourceOptions(ignore_changes=["rules"]))
/// block_ips = aws.wafv2.WebAclRule("block_ips",
///     action={
///         "block": {},
///     },
///     statement={
///         "ip_set_reference_statement": {
///             "arn": blocked_ips.arn,
///         },
///     },
///     visibility_config={
///         "cloudwatch_metrics_enabled": True,
///         "metric_name": "block-bad-ips",
///         "sampled_requests_enabled": True,
///     },
///     name="block-bad-ips",
///     priority=1,
///     web_acl_arn=example.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var blockedIps = new Aws.WafV2.IpSet("blocked_ips", new()
///     {
///         Name = "blocked-ips",
///         Scope = "REGIONAL",
///         IpAddressVersion = "IPV4",
///         Addresses = new[]
///         {
///             "1.2.3.4/32",
///             "5.6.7.8/32",
///         },
///     });
///
///     var example = new Aws.WafV2.WebAcl("example", new()
///     {
///         DefaultAction = new Aws.WafV2.Inputs.WebAclDefaultActionArgs
///         {
///             Allow = null,
///         },
///         VisibilityConfig = new Aws.WafV2.Inputs.WebAclVisibilityConfigArgs
///         {
///             CloudwatchMetricsEnabled = true,
///             MetricName = "example",
///             SampledRequestsEnabled = true,
///         },
///         Name = "example",
///         Scope = "REGIONAL",
///     }, new CustomResourceOptions
///     {
///         IgnoreChanges =
///         {
///             "rules",
///         },
///     });
///
///     var blockIps = new Aws.WafV2.WebAclRule("block_ips", new()
///     {
///         Action = new Aws.WafV2.Inputs.WebAclRuleActionArgs
///         {
///             Block = null,
///         },
///         Statement = new Aws.WafV2.Inputs.WebAclRuleStatementArgs
///         {
///             IpSetReferenceStatement = new Aws.WafV2.Inputs.WebAclRuleStatementIpSetReferenceStatementArgs
///             {
///                 Arn = blockedIps.Arn,
///             },
///         },
///         VisibilityConfig = new Aws.WafV2.Inputs.WebAclRuleVisibilityConfigArgs
///         {
///             CloudwatchMetricsEnabled = true,
///             MetricName = "block-bad-ips",
///             SampledRequestsEnabled = true,
///         },
///         Name = "block-bad-ips",
///         Priority = 1,
///         WebAclArn = example.Arn,
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
/// 		blockedIps, err := wafv2.NewIpSet(ctx, "blocked_ips", &wafv2.IpSetArgs{
/// 			Name:             pulumi.String("blocked-ips"),
/// 			Scope:            pulumi.String("REGIONAL"),
/// 			IpAddressVersion: pulumi.String("IPV4"),
/// 			Addresses: pulumi.StringArray{
/// 				pulumi.String("1.2.3.4/32"),
/// 				pulumi.String("5.6.7.8/32"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := wafv2.NewWebAcl(ctx, "example", &wafv2.WebAclArgs{
/// 			DefaultAction: &wafv2.WebAclDefaultActionArgs{
/// 				Allow: &wafv2.WebAclDefaultActionAllowArgs{},
/// 			},
/// 			VisibilityConfig: &wafv2.WebAclVisibilityConfigArgs{
/// 				CloudwatchMetricsEnabled: pulumi.Bool(true),
/// 				MetricName:               pulumi.String("example"),
/// 				SampledRequestsEnabled:   pulumi.Bool(true),
/// 			},
/// 			Name:  pulumi.String("example"),
/// 			Scope: pulumi.String("REGIONAL"),
/// 		}, pulumi.IgnoreChanges([]string{
/// 			"rules",
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = wafv2.NewWebAclRule(ctx, "block_ips", &wafv2.WebAclRuleArgs{
/// 			Action: &wafv2.WebAclRuleActionArgs{
/// 				Block: &wafv2.WebAclRuleActionBlockArgs{},
/// 			},
/// 			Statement: &wafv2.WebAclRuleStatementArgs{
/// 				IpSetReferenceStatement: &wafv2.WebAclRuleStatementIpSetReferenceStatementArgs{
/// 					Arn: blockedIps.Arn,
/// 				},
/// 			},
/// 			VisibilityConfig: &wafv2.WebAclRuleVisibilityConfigArgs{
/// 				CloudwatchMetricsEnabled: pulumi.Bool(true),
/// 				MetricName:               pulumi.String("block-bad-ips"),
/// 				SampledRequestsEnabled:   pulumi.Bool(true),
/// 			},
/// 			Name:      pulumi.String("block-bad-ips"),
/// 			Priority:  pulumi.Int(1),
/// 			WebAclArn: example.Arn,
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
/// resource "aws_wafv2_ipset" "blocked_ips" {
///   name               = "blocked-ips"
///   scope              = "REGIONAL"
///   ip_address_version = "IPV4"
///   addresses          = ["1.2.3.4/32", "5.6.7.8/32"]
/// }
/// resource "aws_wafv2_webacl" "example" {
///   lifecycle {
///     ignore_changes = [rules]
///   }
///   default_action = {
///     allow = {}
///   }
///   visibility_config = {
///     cloudwatch_metrics_enabled = true
///     metric_name                = "example"
///     sampled_requests_enabled   = true
///   }
///   name  = "example"
///   scope = "REGIONAL"
/// }
/// resource "aws_wafv2_webaclrule" "block_ips" {
///   action = {
///     block = {}
///   }
///   statement = {
///     ip_set_reference_statement = {
///       arn = aws_wafv2_ipset.blocked_ips.arn
///     }
///   }
///   visibility_config = {
///     cloudwatch_metrics_enabled = true
///     metric_name                = "block-bad-ips"
///     sampled_requests_enabled   = true
///   }
///   name        = "block-bad-ips"
///   priority    = 1
///   web_acl_arn = aws_wafv2_webacl.example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafv2.IpSet;
/// import com.pulumi.aws.wafv2.IpSetArgs;
/// import com.pulumi.aws.wafv2.WebAcl;
/// import com.pulumi.aws.wafv2.WebAclArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclDefaultActionArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclDefaultActionAllowArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclVisibilityConfigArgs;
/// import com.pulumi.aws.wafv2.WebAclRule;
/// import com.pulumi.aws.wafv2.WebAclRuleArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleActionArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleActionBlockArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleStatementIpSetReferenceStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleVisibilityConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var blockedIps = new IpSet("blockedIps", IpSetArgs.builder()
///             .name("blocked-ips")
///             .scope("REGIONAL")
///             .ipAddressVersion("IPV4")
///             .addresses(
///                 "1.2.3.4/32",
///                 "5.6.7.8/32")
///             .build());
///
///         var example = new WebAcl("example", WebAclArgs.builder()
///             .defaultAction(WebAclDefaultActionArgs.builder()
///                 .allow(WebAclDefaultActionAllowArgs.builder()
///                     .build())
///                 .build())
///             .visibilityConfig(WebAclVisibilityConfigArgs.builder()
///                 .cloudwatchMetricsEnabled(true)
///                 .metricName("example")
///                 .sampledRequestsEnabled(true)
///                 .build())
///             .name("example")
///             .scope("REGIONAL")
///             .build(), CustomResourceOptions.builder()
///                 .ignoreChanges("rules")
///                 .build());
///
///         var blockIps = new WebAclRule("blockIps", WebAclRuleArgs.builder()
///             .action(WebAclRuleActionArgs.builder()
///                 .block(WebAclRuleActionBlockArgs.builder()
///                     .build())
///                 .build())
///             .statement(WebAclRuleStatementArgs.builder()
///                 .ipSetReferenceStatement(WebAclRuleStatementIpSetReferenceStatementArgs.builder()
///                     .arn(blockedIps.arn())
///                     .build())
///                 .build())
///             .visibilityConfig(WebAclRuleVisibilityConfigArgs.builder()
///                 .cloudwatchMetricsEnabled(true)
///                 .metricName("block-bad-ips")
///                 .sampledRequestsEnabled(true)
///                 .build())
///             .name("block-bad-ips")
///             .priority(1)
///             .webAclArn(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   blockedIps:
///     type: aws:wafv2:IpSet
///     name: blocked_ips
///     properties:
///       name: blocked-ips
///       scope: REGIONAL
///       ipAddressVersion: IPV4
///       addresses:
///         - 1.2.3.4/32
///         - 5.6.7.8/32
///   example:
///     type: aws:wafv2:WebAcl
///     properties:
///       defaultAction:
///         allow: {}
///       visibilityConfig:
///         cloudwatchMetricsEnabled: true
///         metricName: example
///         sampledRequestsEnabled: true
///       name: example
///       scope: REGIONAL
///     options:
///       ignoreChanges:
///         - rules
///   blockIps:
///     type: aws:wafv2:WebAclRule
///     name: block_ips
///     properties:
///       action:
///         block: {}
///       statement:
///         ipSetReferenceStatement:
///           arn: ${blockedIps.arn}
///       visibilityConfig:
///         cloudwatchMetricsEnabled: true
///         metricName: block-bad-ips
///         sampledRequestsEnabled: true
///       name: block-bad-ips
///       priority: 1
///       webAclArn: ${example.arn}
/// ```
///
///
/// ### Rate-Based Rule
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const rateLimit = new aws.wafv2.WebAclRule("rate_limit", {
///     action: {
///         block: {},
///     },
///     statement: {
///         rateBasedStatement: {
///             limit: 2000,
///             aggregateKeyType: "IP",
///         },
///     },
///     visibilityConfig: {
///         cloudwatchMetricsEnabled: true,
///         metricName: "rate-limit",
///         sampledRequestsEnabled: true,
///     },
///     name: "rate-limit",
///     priority: 2,
///     webAclArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// rate_limit = aws.wafv2.WebAclRule("rate_limit",
///     action={
///         "block": {},
///     },
///     statement={
///         "rate_based_statement": {
///             "limit": 2000,
///             "aggregate_key_type": "IP",
///         },
///     },
///     visibility_config={
///         "cloudwatch_metrics_enabled": True,
///         "metric_name": "rate-limit",
///         "sampled_requests_enabled": True,
///     },
///     name="rate-limit",
///     priority=2,
///     web_acl_arn=example["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var rateLimit = new Aws.WafV2.WebAclRule("rate_limit", new()
///     {
///         Action = new Aws.WafV2.Inputs.WebAclRuleActionArgs
///         {
///             Block = null,
///         },
///         Statement = new Aws.WafV2.Inputs.WebAclRuleStatementArgs
///         {
///             RateBasedStatement = new Aws.WafV2.Inputs.WebAclRuleStatementRateBasedStatementArgs
///             {
///                 Limit = 2000,
///                 AggregateKeyType = "IP",
///             },
///         },
///         VisibilityConfig = new Aws.WafV2.Inputs.WebAclRuleVisibilityConfigArgs
///         {
///             CloudwatchMetricsEnabled = true,
///             MetricName = "rate-limit",
///             SampledRequestsEnabled = true,
///         },
///         Name = "rate-limit",
///         Priority = 2,
///         WebAclArn = example.Arn,
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
/// 		_, err := wafv2.NewWebAclRule(ctx, "rate_limit", &wafv2.WebAclRuleArgs{
/// 			Action: &wafv2.WebAclRuleActionArgs{
/// 				Block: &wafv2.WebAclRuleActionBlockArgs{},
/// 			},
/// 			Statement: &wafv2.WebAclRuleStatementArgs{
/// 				RateBasedStatement: &wafv2.WebAclRuleStatementRateBasedStatementArgs{
/// 					Limit:            pulumi.Int(2000),
/// 					AggregateKeyType: pulumi.String("IP"),
/// 				},
/// 			},
/// 			VisibilityConfig: &wafv2.WebAclRuleVisibilityConfigArgs{
/// 				CloudwatchMetricsEnabled: pulumi.Bool(true),
/// 				MetricName:               pulumi.String("rate-limit"),
/// 				SampledRequestsEnabled:   pulumi.Bool(true),
/// 			},
/// 			Name:      pulumi.String("rate-limit"),
/// 			Priority:  pulumi.Int(2),
/// 			WebAclArn: pulumi.Any(example.Arn),
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
/// resource "aws_wafv2_webaclrule" "rate_limit" {
///   action = {
///     block = {}
///   }
///   statement = {
///     rate_based_statement = {
///       limit              = 2000
///       aggregate_key_type = "IP"
///     }
///   }
///   visibility_config = {
///     cloudwatch_metrics_enabled = true
///     metric_name                = "rate-limit"
///     sampled_requests_enabled   = true
///   }
///   name        = "rate-limit"
///   priority    = 2
///   web_acl_arn = example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafv2.WebAclRule;
/// import com.pulumi.aws.wafv2.WebAclRuleArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleActionArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleActionBlockArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleStatementRateBasedStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleVisibilityConfigArgs;
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
///         var rateLimit = new WebAclRule("rateLimit", WebAclRuleArgs.builder()
///             .action(WebAclRuleActionArgs.builder()
///                 .block(WebAclRuleActionBlockArgs.builder()
///                     .build())
///                 .build())
///             .statement(WebAclRuleStatementArgs.builder()
///                 .rateBasedStatement(WebAclRuleStatementRateBasedStatementArgs.builder()
///                     .limit(2000)
///                     .aggregateKeyType("IP")
///                     .build())
///                 .build())
///             .visibilityConfig(WebAclRuleVisibilityConfigArgs.builder()
///                 .cloudwatchMetricsEnabled(true)
///                 .metricName("rate-limit")
///                 .sampledRequestsEnabled(true)
///                 .build())
///             .name("rate-limit")
///             .priority(2)
///             .webAclArn(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   rateLimit:
///     type: aws:wafv2:WebAclRule
///     name: rate_limit
///     properties:
///       action:
///         block: {}
///       statement:
///         rateBasedStatement:
///           limit: 2000
///           aggregateKeyType: IP
///       visibilityConfig:
///         cloudwatchMetricsEnabled: true
///         metricName: rate-limit
///         sampledRequestsEnabled: true
///       name: rate-limit
///       priority: 2
///       webAclArn: ${example.arn}
/// ```
///
///
/// ### Managed Rule Group with Override Action
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const awsManagedRules = new aws.wafv2.WebAclRule("aws_managed_rules", {
///     overrideAction: {
///         none: {},
///     },
///     statement: {
///         managedRuleGroupStatement: {
///             name: "AWSManagedRulesCommonRuleSet",
///             vendorName: "AWS",
///         },
///     },
///     visibilityConfig: {
///         cloudwatchMetricsEnabled: true,
///         metricName: "aws-managed-rules",
///         sampledRequestsEnabled: true,
///     },
///     name: "aws-managed-rules",
///     priority: 3,
///     webAclArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// aws_managed_rules = aws.wafv2.WebAclRule("aws_managed_rules",
///     override_action={
///         "none": {},
///     },
///     statement={
///         "managed_rule_group_statement": {
///             "name": "AWSManagedRulesCommonRuleSet",
///             "vendor_name": "AWS",
///         },
///     },
///     visibility_config={
///         "cloudwatch_metrics_enabled": True,
///         "metric_name": "aws-managed-rules",
///         "sampled_requests_enabled": True,
///     },
///     name="aws-managed-rules",
///     priority=3,
///     web_acl_arn=example["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var awsManagedRules = new Aws.WafV2.WebAclRule("aws_managed_rules", new()
///     {
///         OverrideAction = new Aws.WafV2.Inputs.WebAclRuleOverrideActionArgs
///         {
///             None = null,
///         },
///         Statement = new Aws.WafV2.Inputs.WebAclRuleStatementArgs
///         {
///             ManagedRuleGroupStatement = new Aws.WafV2.Inputs.WebAclRuleStatementManagedRuleGroupStatementArgs
///             {
///                 Name = "AWSManagedRulesCommonRuleSet",
///                 VendorName = "AWS",
///             },
///         },
///         VisibilityConfig = new Aws.WafV2.Inputs.WebAclRuleVisibilityConfigArgs
///         {
///             CloudwatchMetricsEnabled = true,
///             MetricName = "aws-managed-rules",
///             SampledRequestsEnabled = true,
///         },
///         Name = "aws-managed-rules",
///         Priority = 3,
///         WebAclArn = example.Arn,
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
/// 		_, err := wafv2.NewWebAclRule(ctx, "aws_managed_rules", &wafv2.WebAclRuleArgs{
/// 			OverrideAction: &wafv2.WebAclRuleOverrideActionArgs{
/// 				None: &wafv2.WebAclRuleOverrideActionNoneArgs{},
/// 			},
/// 			Statement: &wafv2.WebAclRuleStatementArgs{
/// 				ManagedRuleGroupStatement: &wafv2.WebAclRuleStatementManagedRuleGroupStatementArgs{
/// 					Name:       pulumi.String("AWSManagedRulesCommonRuleSet"),
/// 					VendorName: pulumi.String("AWS"),
/// 				},
/// 			},
/// 			VisibilityConfig: &wafv2.WebAclRuleVisibilityConfigArgs{
/// 				CloudwatchMetricsEnabled: pulumi.Bool(true),
/// 				MetricName:               pulumi.String("aws-managed-rules"),
/// 				SampledRequestsEnabled:   pulumi.Bool(true),
/// 			},
/// 			Name:      pulumi.String("aws-managed-rules"),
/// 			Priority:  pulumi.Int(3),
/// 			WebAclArn: pulumi.Any(example.Arn),
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
/// resource "aws_wafv2_webaclrule" "aws_managed_rules" {
///   override_action = {
///     none = {}
///   }
///   statement = {
///     managed_rule_group_statement = {
///       name        = "AWSManagedRulesCommonRuleSet"
///       vendor_name = "AWS"
///     }
///   }
///   visibility_config = {
///     cloudwatch_metrics_enabled = true
///     metric_name                = "aws-managed-rules"
///     sampled_requests_enabled   = true
///   }
///   name        = "aws-managed-rules"
///   priority    = 3
///   web_acl_arn = example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafv2.WebAclRule;
/// import com.pulumi.aws.wafv2.WebAclRuleArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleOverrideActionArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleOverrideActionNoneArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleStatementManagedRuleGroupStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleVisibilityConfigArgs;
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
///         var awsManagedRules = new WebAclRule("awsManagedRules", WebAclRuleArgs.builder()
///             .overrideAction(WebAclRuleOverrideActionArgs.builder()
///                 .none(WebAclRuleOverrideActionNoneArgs.builder()
///                     .build())
///                 .build())
///             .statement(WebAclRuleStatementArgs.builder()
///                 .managedRuleGroupStatement(WebAclRuleStatementManagedRuleGroupStatementArgs.builder()
///                     .name("AWSManagedRulesCommonRuleSet")
///                     .vendorName("AWS")
///                     .build())
///                 .build())
///             .visibilityConfig(WebAclRuleVisibilityConfigArgs.builder()
///                 .cloudwatchMetricsEnabled(true)
///                 .metricName("aws-managed-rules")
///                 .sampledRequestsEnabled(true)
///                 .build())
///             .name("aws-managed-rules")
///             .priority(3)
///             .webAclArn(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   awsManagedRules:
///     type: aws:wafv2:WebAclRule
///     name: aws_managed_rules
///     properties:
///       overrideAction:
///         none: {}
///       statement:
///         managedRuleGroupStatement:
///           name: AWSManagedRulesCommonRuleSet
///           vendorName: AWS
///       visibilityConfig:
///         cloudwatchMetricsEnabled: true
///         metricName: aws-managed-rules
///         sampledRequestsEnabled: true
///       name: aws-managed-rules
///       priority: 3
///       webAclArn: ${example.arn}
/// ```
///
///
/// ### Custom Request Handling
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const captchaWithHeaders = new aws.wafv2.WebAclRule("captcha_with_headers", {
///     action: {
///         captcha: {
///             customRequestHandling: {
///                 insertHeaders: [{
///                     name: "x-captcha-rule",
///                     value: "triggered",
///                 }],
///             },
///         },
///     },
///     statement: {
///         geoMatchStatement: {
///             countryCodes: ["US"],
///         },
///     },
///     visibilityConfig: {
///         cloudwatchMetricsEnabled: true,
///         metricName: "captcha-with-headers",
///         sampledRequestsEnabled: true,
///     },
///     name: "captcha-with-headers",
///     priority: 4,
///     webAclArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// captcha_with_headers = aws.wafv2.WebAclRule("captcha_with_headers",
///     action={
///         "captcha": {
///             "custom_request_handling": {
///                 "insert_headers": [{
///                     "name": "x-captcha-rule",
///                     "value": "triggered",
///                 }],
///             },
///         },
///     },
///     statement={
///         "geo_match_statement": {
///             "country_codes": ["US"],
///         },
///     },
///     visibility_config={
///         "cloudwatch_metrics_enabled": True,
///         "metric_name": "captcha-with-headers",
///         "sampled_requests_enabled": True,
///     },
///     name="captcha-with-headers",
///     priority=4,
///     web_acl_arn=example["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var captchaWithHeaders = new Aws.WafV2.WebAclRule("captcha_with_headers", new()
///     {
///         Action = new Aws.WafV2.Inputs.WebAclRuleActionArgs
///         {
///             Captcha = new Aws.WafV2.Inputs.WebAclRuleActionCaptchaArgs
///             {
///                 CustomRequestHandling = new Aws.WafV2.Inputs.WebAclRuleActionCaptchaCustomRequestHandlingArgs
///                 {
///                     InsertHeaders = new[]
///                     {
///                         new Aws.WafV2.Inputs.WebAclRuleActionCaptchaCustomRequestHandlingInsertHeaderArgs
///                         {
///                             Name = "x-captcha-rule",
///                             Value = "triggered",
///                         },
///                     },
///                 },
///             },
///         },
///         Statement = new Aws.WafV2.Inputs.WebAclRuleStatementArgs
///         {
///             GeoMatchStatement = new Aws.WafV2.Inputs.WebAclRuleStatementGeoMatchStatementArgs
///             {
///                 CountryCodes = new[]
///                 {
///                     "US",
///                 },
///             },
///         },
///         VisibilityConfig = new Aws.WafV2.Inputs.WebAclRuleVisibilityConfigArgs
///         {
///             CloudwatchMetricsEnabled = true,
///             MetricName = "captcha-with-headers",
///             SampledRequestsEnabled = true,
///         },
///         Name = "captcha-with-headers",
///         Priority = 4,
///         WebAclArn = example.Arn,
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
/// 		_, err := wafv2.NewWebAclRule(ctx, "captcha_with_headers", &wafv2.WebAclRuleArgs{
/// 			Action: &wafv2.WebAclRuleActionArgs{
/// 				Captcha: &wafv2.WebAclRuleActionCaptchaArgs{
/// 					CustomRequestHandling: &wafv2.WebAclRuleActionCaptchaCustomRequestHandlingArgs{
/// 						InsertHeaders: wafv2.WebAclRuleActionCaptchaCustomRequestHandlingInsertHeaderArray{
/// 							&wafv2.WebAclRuleActionCaptchaCustomRequestHandlingInsertHeaderArgs{
/// 								Name:  pulumi.String("x-captcha-rule"),
/// 								Value: pulumi.String("triggered"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Statement: &wafv2.WebAclRuleStatementArgs{
/// 				GeoMatchStatement: &wafv2.WebAclRuleStatementGeoMatchStatementArgs{
/// 					CountryCodes: pulumi.StringArray{
/// 						pulumi.String("US"),
/// 					},
/// 				},
/// 			},
/// 			VisibilityConfig: &wafv2.WebAclRuleVisibilityConfigArgs{
/// 				CloudwatchMetricsEnabled: pulumi.Bool(true),
/// 				MetricName:               pulumi.String("captcha-with-headers"),
/// 				SampledRequestsEnabled:   pulumi.Bool(true),
/// 			},
/// 			Name:      pulumi.String("captcha-with-headers"),
/// 			Priority:  pulumi.Int(4),
/// 			WebAclArn: pulumi.Any(example.Arn),
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
/// resource "aws_wafv2_webaclrule" "captcha_with_headers" {
///   action = {
///     captcha = {
///       custom_request_handling = {
///         insert_headers = [{
///           "name"  = "x-captcha-rule"
///           "value" = "triggered"
///         }]
///       }
///     }
///   }
///   statement = {
///     geo_match_statement = {
///       country_codes = ["US"]
///     }
///   }
///   visibility_config = {
///     cloudwatch_metrics_enabled = true
///     metric_name                = "captcha-with-headers"
///     sampled_requests_enabled   = true
///   }
///   name        = "captcha-with-headers"
///   priority    = 4
///   web_acl_arn = example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafv2.WebAclRule;
/// import com.pulumi.aws.wafv2.WebAclRuleArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleActionArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleActionCaptchaArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleActionCaptchaCustomRequestHandlingArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleActionCaptchaCustomRequestHandlingInsertHeaderArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleStatementGeoMatchStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleVisibilityConfigArgs;
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
///         var captchaWithHeaders = new WebAclRule("captchaWithHeaders", WebAclRuleArgs.builder()
///             .action(WebAclRuleActionArgs.builder()
///                 .captcha(WebAclRuleActionCaptchaArgs.builder()
///                     .customRequestHandling(WebAclRuleActionCaptchaCustomRequestHandlingArgs.builder()
///                         .insertHeaders(WebAclRuleActionCaptchaCustomRequestHandlingInsertHeaderArgs.builder()
///                             .name("x-captcha-rule")
///                             .value("triggered")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .statement(WebAclRuleStatementArgs.builder()
///                 .geoMatchStatement(WebAclRuleStatementGeoMatchStatementArgs.builder()
///                     .countryCodes("US")
///                     .build())
///                 .build())
///             .visibilityConfig(WebAclRuleVisibilityConfigArgs.builder()
///                 .cloudwatchMetricsEnabled(true)
///                 .metricName("captcha-with-headers")
///                 .sampledRequestsEnabled(true)
///                 .build())
///             .name("captcha-with-headers")
///             .priority(4)
///             .webAclArn(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   captchaWithHeaders:
///     type: aws:wafv2:WebAclRule
///     name: captcha_with_headers
///     properties:
///       action:
///         captcha:
///           customRequestHandling:
///             insertHeaders:
///               - name: x-captcha-rule
///                 value: triggered
///       statement:
///         geoMatchStatement:
///           countryCodes:
///             - US
///       visibilityConfig:
///         cloudwatchMetricsEnabled: true
///         metricName: captcha-with-headers
///         sampledRequestsEnabled: true
///       name: captcha-with-headers
///       priority: 4
///       webAclArn: ${example.arn}
/// ```
///
///
/// ### IP Set Reference
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const blockedIps = new aws.wafv2.WebAclRule("blocked_ips", {
///     action: {
///         block: {},
///     },
///     statement: {
///         ipSetReferenceStatement: {
///             arn: blockedIpsAwsWafv2IpSet.arn,
///         },
///     },
///     visibilityConfig: {
///         cloudwatchMetricsEnabled: true,
///         metricName: "block-bad-ips",
///         sampledRequestsEnabled: true,
///     },
///     name: "blocked-ips",
///     priority: 1,
///     webAclArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// blocked_ips = aws.wafv2.WebAclRule("blocked_ips",
///     action={
///         "block": {},
///     },
///     statement={
///         "ip_set_reference_statement": {
///             "arn": blocked_ips_aws_wafv2_ip_set["arn"],
///         },
///     },
///     visibility_config={
///         "cloudwatch_metrics_enabled": True,
///         "metric_name": "block-bad-ips",
///         "sampled_requests_enabled": True,
///     },
///     name="blocked-ips",
///     priority=1,
///     web_acl_arn=example["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var blockedIps = new Aws.WafV2.WebAclRule("blocked_ips", new()
///     {
///         Action = new Aws.WafV2.Inputs.WebAclRuleActionArgs
///         {
///             Block = null,
///         },
///         Statement = new Aws.WafV2.Inputs.WebAclRuleStatementArgs
///         {
///             IpSetReferenceStatement = new Aws.WafV2.Inputs.WebAclRuleStatementIpSetReferenceStatementArgs
///             {
///                 Arn = blockedIpsAwsWafv2IpSet.Arn,
///             },
///         },
///         VisibilityConfig = new Aws.WafV2.Inputs.WebAclRuleVisibilityConfigArgs
///         {
///             CloudwatchMetricsEnabled = true,
///             MetricName = "block-bad-ips",
///             SampledRequestsEnabled = true,
///         },
///         Name = "blocked-ips",
///         Priority = 1,
///         WebAclArn = example.Arn,
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
/// 		_, err := wafv2.NewWebAclRule(ctx, "blocked_ips", &wafv2.WebAclRuleArgs{
/// 			Action: &wafv2.WebAclRuleActionArgs{
/// 				Block: &wafv2.WebAclRuleActionBlockArgs{},
/// 			},
/// 			Statement: &wafv2.WebAclRuleStatementArgs{
/// 				IpSetReferenceStatement: &wafv2.WebAclRuleStatementIpSetReferenceStatementArgs{
/// 					Arn: pulumi.Any(blockedIpsAwsWafv2IpSet.Arn),
/// 				},
/// 			},
/// 			VisibilityConfig: &wafv2.WebAclRuleVisibilityConfigArgs{
/// 				CloudwatchMetricsEnabled: pulumi.Bool(true),
/// 				MetricName:               pulumi.String("block-bad-ips"),
/// 				SampledRequestsEnabled:   pulumi.Bool(true),
/// 			},
/// 			Name:      pulumi.String("blocked-ips"),
/// 			Priority:  pulumi.Int(1),
/// 			WebAclArn: pulumi.Any(example.Arn),
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
/// resource "aws_wafv2_webaclrule" "blocked_ips" {
///   action = {
///     block = {}
///   }
///   statement = {
///     ip_set_reference_statement = {
///       arn = blockedIpsAwsWafv2IpSet.arn
///     }
///   }
///   visibility_config = {
///     cloudwatch_metrics_enabled = true
///     metric_name                = "block-bad-ips"
///     sampled_requests_enabled   = true
///   }
///   name        = "blocked-ips"
///   priority    = 1
///   web_acl_arn = example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafv2.WebAclRule;
/// import com.pulumi.aws.wafv2.WebAclRuleArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleActionArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleActionBlockArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleStatementIpSetReferenceStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleVisibilityConfigArgs;
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
///         var blockedIps = new WebAclRule("blockedIps", WebAclRuleArgs.builder()
///             .action(WebAclRuleActionArgs.builder()
///                 .block(WebAclRuleActionBlockArgs.builder()
///                     .build())
///                 .build())
///             .statement(WebAclRuleStatementArgs.builder()
///                 .ipSetReferenceStatement(WebAclRuleStatementIpSetReferenceStatementArgs.builder()
///                     .arn(blockedIpsAwsWafv2IpSet.arn())
///                     .build())
///                 .build())
///             .visibilityConfig(WebAclRuleVisibilityConfigArgs.builder()
///                 .cloudwatchMetricsEnabled(true)
///                 .metricName("block-bad-ips")
///                 .sampledRequestsEnabled(true)
///                 .build())
///             .name("blocked-ips")
///             .priority(1)
///             .webAclArn(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   blockedIps:
///     type: aws:wafv2:WebAclRule
///     name: blocked_ips
///     properties:
///       action:
///         block: {}
///       statement:
///         ipSetReferenceStatement:
///           arn: ${blockedIpsAwsWafv2IpSet.arn}
///       visibilityConfig:
///         cloudwatchMetricsEnabled: true
///         metricName: block-bad-ips
///         sampledRequestsEnabled: true
///       name: blocked-ips
///       priority: 1
///       webAclArn: ${example.arn}
/// ```
///
///
/// With this configuration, when you remove both the `aws.wafv2.WebAclRule` and `aws.wafv2.IpSet` resources, Terraform will:
///
/// 1. Delete the rule first (removing the reference from the Web ACL)
/// 2. Delete the IP set second (now safe because it's no longer referenced)
///
/// This prevents the `WAFAssociatedItemException` error.
///
/// ### Logical AND Statement
///
/// Block requests that match multiple conditions (e.g., from a specific country AND containing a specific string):
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const blockSuspicious = new aws.wafv2.WebAclRule("block_suspicious", {
///     action: {
///         block: {},
///     },
///     statement: {
///         andStatement: {
///             statements: [
///                 {
///                     geoMatchStatement: {
///                         countryCodes: ["CN"],
///                     },
///                 },
///                 {
///                     byteMatchStatement: {
///                         fieldToMatch: {
///                             uriPath: {},
///                         },
///                         textTransformations: [{
///                             priority: 0,
///                             type: "LOWERCASE",
///                         }],
///                         searchString: "admin",
///                         positionalConstraint: "CONTAINS",
///                     },
///                 },
///             ],
///         },
///     },
///     visibilityConfig: {
///         cloudwatchMetricsEnabled: true,
///         metricName: "block-suspicious",
///         sampledRequestsEnabled: true,
///     },
///     name: "block-suspicious",
///     priority: 1,
///     webAclArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// block_suspicious = aws.wafv2.WebAclRule("block_suspicious",
///     action={
///         "block": {},
///     },
///     statement={
///         "and_statement": {
///             "statements": [
///                 {
///                     "geo_match_statement": {
///                         "country_codes": ["CN"],
///                     },
///                 },
///                 {
///                     "byte_match_statement": {
///                         "field_to_match": {
///                             "uri_path": {},
///                         },
///                         "text_transformations": [{
///                             "priority": 0,
///                             "type": "LOWERCASE",
///                         }],
///                         "search_string": "admin",
///                         "positional_constraint": "CONTAINS",
///                     },
///                 },
///             ],
///         },
///     },
///     visibility_config={
///         "cloudwatch_metrics_enabled": True,
///         "metric_name": "block-suspicious",
///         "sampled_requests_enabled": True,
///     },
///     name="block-suspicious",
///     priority=1,
///     web_acl_arn=example["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var blockSuspicious = new Aws.WafV2.WebAclRule("block_suspicious", new()
///     {
///         Action = new Aws.WafV2.Inputs.WebAclRuleActionArgs
///         {
///             Block = null,
///         },
///         Statement = new Aws.WafV2.Inputs.WebAclRuleStatementArgs
///         {
///             AndStatement = new Aws.WafV2.Inputs.WebAclRuleStatementAndStatementArgs
///             {
///                 Statements =
///                 {
///                     new Aws.WafV2.Inputs.WebAclRuleStatementArgs
///                     {
///                         GeoMatchStatement = new Aws.WafV2.Inputs.WebAclRuleStatementGeoMatchStatementArgs
///                         {
///                             CountryCodes = new[]
///                             {
///                                 "CN",
///                             },
///                         },
///                     },
///                     new Aws.WafV2.Inputs.WebAclRuleStatementArgs
///                     {
///                         ByteMatchStatement = new Aws.WafV2.Inputs.WebAclRuleStatementByteMatchStatementArgs
///                         {
///                             FieldToMatch = new Aws.WafV2.Inputs.WebAclRuleStatementByteMatchStatementFieldToMatchArgs
///                             {
///                                 UriPath = null,
///                             },
///                             TextTransformations = new[]
///                             {
///                                 new Aws.WafV2.Inputs.WebAclRuleStatementByteMatchStatementTextTransformationArgs
///                                 {
///                                     Priority = 0,
///                                     Type = "LOWERCASE",
///                                 },
///                             },
///                             SearchString = "admin",
///                             PositionalConstraint = "CONTAINS",
///                         },
///                     },
///                 },
///             },
///         },
///         VisibilityConfig = new Aws.WafV2.Inputs.WebAclRuleVisibilityConfigArgs
///         {
///             CloudwatchMetricsEnabled = true,
///             MetricName = "block-suspicious",
///             SampledRequestsEnabled = true,
///         },
///         Name = "block-suspicious",
///         Priority = 1,
///         WebAclArn = example.Arn,
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
/// 		_, err := wafv2.NewWebAclRule(ctx, "block_suspicious", &wafv2.WebAclRuleArgs{
/// 			Action: &wafv2.WebAclRuleActionArgs{
/// 				Block: &wafv2.WebAclRuleActionBlockArgs{},
/// 			},
/// 			Statement: &wafv2.WebAclRuleStatementArgs{
/// 				AndStatement: &wafv2.WebAclRuleStatementAndStatementArgs{
/// 					Statements: wafv2.WebAclRuleStatementArray{
/// 						&wafv2.WebAclRuleStatementArgs{
/// 							GeoMatchStatement: &wafv2.WebAclRuleStatementGeoMatchStatementArgs{
/// 								CountryCodes: pulumi.StringArray{
/// 									pulumi.String("CN"),
/// 								},
/// 							},
/// 						},
/// 						&wafv2.WebAclRuleStatementArgs{
/// 							ByteMatchStatement: &wafv2.WebAclRuleStatementByteMatchStatementArgs{
/// 								FieldToMatch: &wafv2.WebAclRuleStatementByteMatchStatementFieldToMatchArgs{
/// 									UriPath: &wafv2.WebAclRuleStatementByteMatchStatementFieldToMatchUriPathArgs{},
/// 								},
/// 								TextTransformations: wafv2.WebAclRuleStatementByteMatchStatementTextTransformationArray{
/// 									&wafv2.WebAclRuleStatementByteMatchStatementTextTransformationArgs{
/// 										Priority: pulumi.Int(0),
/// 										Type:     pulumi.String("LOWERCASE"),
/// 									},
/// 								},
/// 								SearchString:         pulumi.String("admin"),
/// 								PositionalConstraint: pulumi.String("CONTAINS"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VisibilityConfig: &wafv2.WebAclRuleVisibilityConfigArgs{
/// 				CloudwatchMetricsEnabled: pulumi.Bool(true),
/// 				MetricName:               pulumi.String("block-suspicious"),
/// 				SampledRequestsEnabled:   pulumi.Bool(true),
/// 			},
/// 			Name:      pulumi.String("block-suspicious"),
/// 			Priority:  pulumi.Int(1),
/// 			WebAclArn: pulumi.Any(example.Arn),
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
/// resource "aws_wafv2_webaclrule" "block_suspicious" {
///   action = {
///     block = {}
///   }
///   statement = {
///     and_statement = {
///       statements = [{
///         "geoMatchStatement" = {
///           "countryCodes" = ["CN"]
///         }
///         }, {
///         "byteMatchStatement" = {
///           "fieldToMatch" = {
///             "uriPath" = {}
///           }
///           "textTransformations" = [{
///             "priority" = 0
///             "type"     = "LOWERCASE"
///           }]
///           "searchString"         = "admin"
///           "positionalConstraint" = "CONTAINS"
///         }
///       }]
///     }
///   }
///   visibility_config = {
///     cloudwatch_metrics_enabled = true
///     metric_name                = "block-suspicious"
///     sampled_requests_enabled   = true
///   }
///   name        = "block-suspicious"
///   priority    = 1
///   web_acl_arn = example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafv2.WebAclRule;
/// import com.pulumi.aws.wafv2.WebAclRuleArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleActionArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleActionBlockArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleStatementAndStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleStatementGeoMatchStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleStatementByteMatchStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleStatementByteMatchStatementFieldToMatchArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleStatementByteMatchStatementFieldToMatchUriPathArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleStatementByteMatchStatementTextTransformationArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleVisibilityConfigArgs;
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
///         var blockSuspicious = new WebAclRule("blockSuspicious", WebAclRuleArgs.builder()
///             .action(WebAclRuleActionArgs.builder()
///                 .block(WebAclRuleActionBlockArgs.builder()
///                     .build())
///                 .build())
///             .statement(WebAclRuleStatementArgs.builder()
///                 .andStatement(Map.of("statements", Arrays.asList(
///                     WebAclRuleStatementArgs.builder()
///                         .geoMatchStatement(WebAclRuleStatementGeoMatchStatementArgs.builder()
///                             .countryCodes("CN")
///                             .build())
///                         .build(),
///                     WebAclRuleStatementArgs.builder()
///                         .byteMatchStatement(WebAclRuleStatementByteMatchStatementArgs.builder()
///                             .fieldToMatch(WebAclRuleStatementByteMatchStatementFieldToMatchArgs.builder()
///                                 .uriPath(WebAclRuleStatementByteMatchStatementFieldToMatchUriPathArgs.builder()
///                                     .build())
///                                 .build())
///                             .textTransformations(WebAclRuleStatementByteMatchStatementTextTransformationArgs.builder()
///                                 .priority(0)
///                                 .type("LOWERCASE")
///                                 .build())
///                             .searchString("admin")
///                             .positionalConstraint("CONTAINS")
///                             .build())
///                         .build())))
///                 .build())
///             .visibilityConfig(WebAclRuleVisibilityConfigArgs.builder()
///                 .cloudwatchMetricsEnabled(true)
///                 .metricName("block-suspicious")
///                 .sampledRequestsEnabled(true)
///                 .build())
///             .name("block-suspicious")
///             .priority(1)
///             .webAclArn(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   blockSuspicious:
///     type: aws:wafv2:WebAclRule
///     name: block_suspicious
///     properties:
///       action:
///         block: {}
///       statement:
///         andStatement:
///           statements:
///             - geoMatchStatement:
///                 countryCodes:
///                   - CN
///             - byteMatchStatement:
///                 fieldToMatch:
///                   uriPath: {}
///                 textTransformations:
///                   - priority: 0
///                     type: LOWERCASE
///                 searchString: admin
///                 positionalConstraint: CONTAINS
///       visibilityConfig:
///         cloudwatchMetricsEnabled: true
///         metricName: block-suspicious
///         sampledRequestsEnabled: true
///       name: block-suspicious
///       priority: 1
///       webAclArn: ${example.arn}
/// ```
///
///
/// ### Logical OR Statement
///
/// Block requests that match any of multiple conditions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const blockCountries = new aws.wafv2.WebAclRule("block_countries", {
///     action: {
///         block: {},
///     },
///     statement: {
///         orStatement: {
///             statements: [
///                 {
///                     geoMatchStatement: {
///                         countryCodes: ["CN"],
///                     },
///                 },
///                 {
///                     geoMatchStatement: {
///                         countryCodes: ["RU"],
///                     },
///                 },
///             ],
///         },
///     },
///     visibilityConfig: {
///         cloudwatchMetricsEnabled: true,
///         metricName: "block-countries",
///         sampledRequestsEnabled: true,
///     },
///     name: "block-countries",
///     priority: 2,
///     webAclArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// block_countries = aws.wafv2.WebAclRule("block_countries",
///     action={
///         "block": {},
///     },
///     statement={
///         "or_statement": {
///             "statements": [
///                 {
///                     "geo_match_statement": {
///                         "country_codes": ["CN"],
///                     },
///                 },
///                 {
///                     "geo_match_statement": {
///                         "country_codes": ["RU"],
///                     },
///                 },
///             ],
///         },
///     },
///     visibility_config={
///         "cloudwatch_metrics_enabled": True,
///         "metric_name": "block-countries",
///         "sampled_requests_enabled": True,
///     },
///     name="block-countries",
///     priority=2,
///     web_acl_arn=example["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var blockCountries = new Aws.WafV2.WebAclRule("block_countries", new()
///     {
///         Action = new Aws.WafV2.Inputs.WebAclRuleActionArgs
///         {
///             Block = null,
///         },
///         Statement = new Aws.WafV2.Inputs.WebAclRuleStatementArgs
///         {
///             OrStatement = new Aws.WafV2.Inputs.WebAclRuleStatementOrStatementArgs
///             {
///                 Statements =
///                 {
///                     new Aws.WafV2.Inputs.WebAclRuleStatementArgs
///                     {
///                         GeoMatchStatement = new Aws.WafV2.Inputs.WebAclRuleStatementGeoMatchStatementArgs
///                         {
///                             CountryCodes = new[]
///                             {
///                                 "CN",
///                             },
///                         },
///                     },
///                     new Aws.WafV2.Inputs.WebAclRuleStatementArgs
///                     {
///                         GeoMatchStatement = new Aws.WafV2.Inputs.WebAclRuleStatementGeoMatchStatementArgs
///                         {
///                             CountryCodes = new[]
///                             {
///                                 "RU",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         VisibilityConfig = new Aws.WafV2.Inputs.WebAclRuleVisibilityConfigArgs
///         {
///             CloudwatchMetricsEnabled = true,
///             MetricName = "block-countries",
///             SampledRequestsEnabled = true,
///         },
///         Name = "block-countries",
///         Priority = 2,
///         WebAclArn = example.Arn,
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
/// 		_, err := wafv2.NewWebAclRule(ctx, "block_countries", &wafv2.WebAclRuleArgs{
/// 			Action: &wafv2.WebAclRuleActionArgs{
/// 				Block: &wafv2.WebAclRuleActionBlockArgs{},
/// 			},
/// 			Statement: &wafv2.WebAclRuleStatementArgs{
/// 				OrStatement: &wafv2.WebAclRuleStatementOrStatementArgs{
/// 					Statements: wafv2.WebAclRuleStatementArray{
/// 						&wafv2.WebAclRuleStatementArgs{
/// 							GeoMatchStatement: &wafv2.WebAclRuleStatementGeoMatchStatementArgs{
/// 								CountryCodes: pulumi.StringArray{
/// 									pulumi.String("CN"),
/// 								},
/// 							},
/// 						},
/// 						&wafv2.WebAclRuleStatementArgs{
/// 							GeoMatchStatement: &wafv2.WebAclRuleStatementGeoMatchStatementArgs{
/// 								CountryCodes: pulumi.StringArray{
/// 									pulumi.String("RU"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VisibilityConfig: &wafv2.WebAclRuleVisibilityConfigArgs{
/// 				CloudwatchMetricsEnabled: pulumi.Bool(true),
/// 				MetricName:               pulumi.String("block-countries"),
/// 				SampledRequestsEnabled:   pulumi.Bool(true),
/// 			},
/// 			Name:      pulumi.String("block-countries"),
/// 			Priority:  pulumi.Int(2),
/// 			WebAclArn: pulumi.Any(example.Arn),
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
/// resource "aws_wafv2_webaclrule" "block_countries" {
///   action = {
///     block = {}
///   }
///   statement = {
///     or_statement = {
///       statements = [{
///         "geoMatchStatement" = {
///           "countryCodes" = ["CN"]
///         }
///         }, {
///         "geoMatchStatement" = {
///           "countryCodes" = ["RU"]
///         }
///       }]
///     }
///   }
///   visibility_config = {
///     cloudwatch_metrics_enabled = true
///     metric_name                = "block-countries"
///     sampled_requests_enabled   = true
///   }
///   name        = "block-countries"
///   priority    = 2
///   web_acl_arn = example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafv2.WebAclRule;
/// import com.pulumi.aws.wafv2.WebAclRuleArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleActionArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleActionBlockArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleStatementOrStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleStatementGeoMatchStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleVisibilityConfigArgs;
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
///         var blockCountries = new WebAclRule("blockCountries", WebAclRuleArgs.builder()
///             .action(WebAclRuleActionArgs.builder()
///                 .block(WebAclRuleActionBlockArgs.builder()
///                     .build())
///                 .build())
///             .statement(WebAclRuleStatementArgs.builder()
///                 .orStatement(Map.of("statements", Arrays.asList(
///                     WebAclRuleStatementArgs.builder()
///                         .geoMatchStatement(WebAclRuleStatementGeoMatchStatementArgs.builder()
///                             .countryCodes("CN")
///                             .build())
///                         .build(),
///                     WebAclRuleStatementArgs.builder()
///                         .geoMatchStatement(WebAclRuleStatementGeoMatchStatementArgs.builder()
///                             .countryCodes("RU")
///                             .build())
///                         .build())))
///                 .build())
///             .visibilityConfig(WebAclRuleVisibilityConfigArgs.builder()
///                 .cloudwatchMetricsEnabled(true)
///                 .metricName("block-countries")
///                 .sampledRequestsEnabled(true)
///                 .build())
///             .name("block-countries")
///             .priority(2)
///             .webAclArn(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   blockCountries:
///     type: aws:wafv2:WebAclRule
///     name: block_countries
///     properties:
///       action:
///         block: {}
///       statement:
///         orStatement:
///           statements:
///             - geoMatchStatement:
///                 countryCodes:
///                   - CN
///             - geoMatchStatement:
///                 countryCodes:
///                   - RU
///       visibilityConfig:
///         cloudwatchMetricsEnabled: true
///         metricName: block-countries
///         sampledRequestsEnabled: true
///       name: block-countries
///       priority: 2
///       webAclArn: ${example.arn}
/// ```
///
///
/// ### Logical NOT Statement
///
/// Allow requests only from specific countries by negating a geo match:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const allowOnlyUs = new aws.wafv2.WebAclRule("allow_only_us", {
///     action: {
///         block: {},
///     },
///     statement: {
///         notStatement: {
///             statement: {
///                 geoMatchStatement: {
///                     countryCodes: [
///                         "US",
///                         "CA",
///                     ],
///                 },
///             },
///         },
///     },
///     visibilityConfig: {
///         cloudwatchMetricsEnabled: true,
///         metricName: "allow-only-us",
///         sampledRequestsEnabled: true,
///     },
///     name: "allow-only-us",
///     priority: 3,
///     webAclArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// allow_only_us = aws.wafv2.WebAclRule("allow_only_us",
///     action={
///         "block": {},
///     },
///     statement={
///         "not_statement": {
///             "statement": {
///                 "geo_match_statement": {
///                     "country_codes": [
///                         "US",
///                         "CA",
///                     ],
///                 },
///             },
///         },
///     },
///     visibility_config={
///         "cloudwatch_metrics_enabled": True,
///         "metric_name": "allow-only-us",
///         "sampled_requests_enabled": True,
///     },
///     name="allow-only-us",
///     priority=3,
///     web_acl_arn=example["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var allowOnlyUs = new Aws.WafV2.WebAclRule("allow_only_us", new()
///     {
///         Action = new Aws.WafV2.Inputs.WebAclRuleActionArgs
///         {
///             Block = null,
///         },
///         Statement = new Aws.WafV2.Inputs.WebAclRuleStatementArgs
///         {
///             NotStatement = new Aws.WafV2.Inputs.WebAclRuleStatementNotStatementArgs
///             {
///                 Statement = new Aws.WafV2.Inputs.WebAclRuleStatementArgs
///                 {
///                     GeoMatchStatement = new Aws.WafV2.Inputs.WebAclRuleStatementGeoMatchStatementArgs
///                     {
///                         CountryCodes = new[]
///                         {
///                             "US",
///                             "CA",
///                         },
///                     },
///                 },
///             },
///         },
///         VisibilityConfig = new Aws.WafV2.Inputs.WebAclRuleVisibilityConfigArgs
///         {
///             CloudwatchMetricsEnabled = true,
///             MetricName = "allow-only-us",
///             SampledRequestsEnabled = true,
///         },
///         Name = "allow-only-us",
///         Priority = 3,
///         WebAclArn = example.Arn,
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
/// 		_, err := wafv2.NewWebAclRule(ctx, "allow_only_us", &wafv2.WebAclRuleArgs{
/// 			Action: &wafv2.WebAclRuleActionArgs{
/// 				Block: &wafv2.WebAclRuleActionBlockArgs{},
/// 			},
/// 			Statement: &wafv2.WebAclRuleStatementArgs{
/// 				NotStatement: &wafv2.WebAclRuleStatementNotStatementArgs{
/// 					Statement: &wafv2.WebAclRuleStatementArgs{
/// 						GeoMatchStatement: &wafv2.WebAclRuleStatementGeoMatchStatementArgs{
/// 							CountryCodes: pulumi.StringArray{
/// 								pulumi.String("US"),
/// 								pulumi.String("CA"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VisibilityConfig: &wafv2.WebAclRuleVisibilityConfigArgs{
/// 				CloudwatchMetricsEnabled: pulumi.Bool(true),
/// 				MetricName:               pulumi.String("allow-only-us"),
/// 				SampledRequestsEnabled:   pulumi.Bool(true),
/// 			},
/// 			Name:      pulumi.String("allow-only-us"),
/// 			Priority:  pulumi.Int(3),
/// 			WebAclArn: pulumi.Any(example.Arn),
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
/// resource "aws_wafv2_webaclrule" "allow_only_us" {
///   action = {
///     block = {}
///   }
///   statement = {
///     not_statement = {
///       statement = {
///         geo_match_statement = {
///           country_codes = ["US", "CA"]
///         }
///       }
///     }
///   }
///   visibility_config = {
///     cloudwatch_metrics_enabled = true
///     metric_name                = "allow-only-us"
///     sampled_requests_enabled   = true
///   }
///   name        = "allow-only-us"
///   priority    = 3
///   web_acl_arn = example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafv2.WebAclRule;
/// import com.pulumi.aws.wafv2.WebAclRuleArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleActionArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleActionBlockArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleStatementNotStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleStatementGeoMatchStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleVisibilityConfigArgs;
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
///         var allowOnlyUs = new WebAclRule("allowOnlyUs", WebAclRuleArgs.builder()
///             .action(WebAclRuleActionArgs.builder()
///                 .block(WebAclRuleActionBlockArgs.builder()
///                     .build())
///                 .build())
///             .statement(WebAclRuleStatementArgs.builder()
///                 .notStatement(Map.of("statement", WebAclRuleStatementArgs.builder()
///                     .geoMatchStatement(WebAclRuleStatementGeoMatchStatementArgs.builder()
///                         .countryCodes(
///                             "US",
///                             "CA")
///                         .build())
///                     .build()))
///                 .build())
///             .visibilityConfig(WebAclRuleVisibilityConfigArgs.builder()
///                 .cloudwatchMetricsEnabled(true)
///                 .metricName("allow-only-us")
///                 .sampledRequestsEnabled(true)
///                 .build())
///             .name("allow-only-us")
///             .priority(3)
///             .webAclArn(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   allowOnlyUs:
///     type: aws:wafv2:WebAclRule
///     name: allow_only_us
///     properties:
///       action:
///         block: {}
///       statement:
///         notStatement:
///           statement:
///             geoMatchStatement:
///               countryCodes:
///                 - US
///                 - CA
///       visibilityConfig:
///         cloudwatchMetricsEnabled: true
///         metricName: allow-only-us
///         sampledRequestsEnabled: true
///       name: allow-only-us
///       priority: 3
///       webAclArn: ${example.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) Rule name, unique within the Web ACL.
/// * `webAclArn` (String) ARN of the Web ACL.
///
/// #### Optional
///
/// * `accountId` (String) Account ID where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import WAFv2 Web ACL Rules using the `webAclArn` and `name` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:wafv2/webAclRule:WebAclRule example arn:aws:wafv2:us-east-1:123456789012:regional/webacl/example/abc123def456,my-rule
/// ```
class WebAclRuleWafv2 extends pulumi.CustomResource {
  /// Action to take when the rule matches. See Action below. Conflicts with `overrideAction`.
  late final pulumi.Output<WebAclRuleAction?> action;
  /// CAPTCHA configuration that overrides the web ACL level setting. See Captcha Config below.
  late final pulumi.Output<WebAclRuleCaptchaConfig?> captchaConfig;
  /// Challenge configuration that overrides the web ACL level setting. See Challenge Config below.
  late final pulumi.Output<WebAclRuleChallengeConfig?> challengeConfig;
  /// Name of the rule. Must be unique within the Web ACL.
  late final pulumi.Output<String> name;
  /// Override action for managed rule groups. See Override Action below. Conflicts with `action`.
  late final pulumi.Output<WebAclRuleOverrideAction?> overrideAction;
  /// Rule priority. Rules with lower priority are evaluated first.
  late final pulumi.Output<int> priority;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Labels to apply to matching web requests. See Rule Label below.
  late final pulumi.Output<List<WebAclRuleRuleLabel>?> ruleLabels;
  /// Rule statement. See Statement below.
  late final pulumi.Output<WebAclRuleStatement?> statement;
  late final pulumi.Output<WebAclRuleTimeouts?> timeouts;
  /// CloudWatch metrics configuration. See Visibility Config below.
  late final pulumi.Output<WebAclRuleVisibilityConfig?> visibilityConfig;
  /// ARN of the Web ACL to add the rule to.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> webAclArn;

  /// Creates a new [WebAclRuleWafv2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAclRuleWafv2]. {@macro pulumi_wafv2_web_acl_rule_web_acl_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAclRuleWafv2(
    String name, {
    WebAclRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafv2/webAclRule:WebAclRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    action = registerOutput<WebAclRuleAction?>('action', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclRuleAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    captchaConfig = registerOutput<WebAclRuleCaptchaConfig?>('captchaConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclRuleCaptchaConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    challengeConfig = registerOutput<WebAclRuleChallengeConfig?>('challengeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclRuleChallengeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    overrideAction = registerOutput<WebAclRuleOverrideAction?>('overrideAction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclRuleOverrideAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    priority = registerOutput<int>('priority');
    region = registerOutput<String>('region');
    ruleLabels = registerOutput<List<WebAclRuleRuleLabel>?>('ruleLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WebAclRuleRuleLabel>(guardedValue, (value) => WebAclRuleRuleLabel.fromMap((value as Map).cast<String, dynamic>())); });
    statement = registerOutput<WebAclRuleStatement?>('statement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclRuleStatement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<WebAclRuleTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclRuleTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    visibilityConfig = registerOutput<WebAclRuleVisibilityConfig?>('visibilityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclRuleVisibilityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    webAclArn = registerOutput<String>('webAclArn');
  }

  /// Gets an existing [WebAclRuleWafv2] resource's state with the given [name] and [id].
  static WebAclRuleWafv2 get(
    String name,
    pulumi.Input<String> id, {
    WebAclRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return WebAclRuleWafv2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  WebAclRuleWafv2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafv2/webAclRule:WebAclRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<WebAclRuleAction?>('action', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclRuleAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    captchaConfig = registerOutput<WebAclRuleCaptchaConfig?>('captchaConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclRuleCaptchaConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    challengeConfig = registerOutput<WebAclRuleChallengeConfig?>('challengeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclRuleChallengeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    overrideAction = registerOutput<WebAclRuleOverrideAction?>('overrideAction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclRuleOverrideAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    priority = registerOutput<int>('priority');
    region = registerOutput<String>('region');
    ruleLabels = registerOutput<List<WebAclRuleRuleLabel>?>('ruleLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WebAclRuleRuleLabel>(guardedValue, (value) => WebAclRuleRuleLabel.fromMap((value as Map).cast<String, dynamic>())); });
    statement = registerOutput<WebAclRuleStatement?>('statement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclRuleStatement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<WebAclRuleTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclRuleTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    visibilityConfig = registerOutput<WebAclRuleVisibilityConfig?>('visibilityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclRuleVisibilityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    webAclArn = registerOutput<String>('webAclArn');
  }

  /// Creates a typed reference to an existing [WebAclRuleWafv2] resource.
  WebAclRuleWafv2.reference(String urn)
    : super(
        'aws:wafv2/webAclRule:WebAclRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    action = registerOutput<WebAclRuleAction?>('action', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclRuleAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    captchaConfig = registerOutput<WebAclRuleCaptchaConfig?>('captchaConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclRuleCaptchaConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    challengeConfig = registerOutput<WebAclRuleChallengeConfig?>('challengeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclRuleChallengeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    overrideAction = registerOutput<WebAclRuleOverrideAction?>('overrideAction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclRuleOverrideAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    priority = registerOutput<int>('priority');
    region = registerOutput<String>('region');
    ruleLabels = registerOutput<List<WebAclRuleRuleLabel>?>('ruleLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WebAclRuleRuleLabel>(guardedValue, (value) => WebAclRuleRuleLabel.fromMap((value as Map).cast<String, dynamic>())); });
    statement = registerOutput<WebAclRuleStatement?>('statement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclRuleStatement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<WebAclRuleTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclRuleTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    visibilityConfig = registerOutput<WebAclRuleVisibilityConfig?>('visibilityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclRuleVisibilityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    webAclArn = registerOutput<String>('webAclArn');
  }
}
