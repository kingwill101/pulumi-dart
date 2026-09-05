import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_args.dart';
import 'rule_group_custom_response_body.dart';
import 'rule_group_rule.dart';
import 'rule_group_state.dart';
import 'rule_group_visibility_config.dart';

/// Creates a WAFv2 Rule Group resource.
///
/// ## Example Usage
///
/// ### Simple
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.wafv2.RuleGroup("example", {
///     visibilityConfig: {
///         cloudwatchMetricsEnabled: false,
///         metricName: "friendly-metric-name",
///         sampledRequestsEnabled: false,
///     },
///     rules: [{
///         action: {
///             allow: {},
///         },
///         statement: {
///             geoMatchStatement: {
///                 countryCodes: [
///                     "US",
///                     "NL",
///                 ],
///             },
///         },
///         visibilityConfig: {
///             cloudwatchMetricsEnabled: false,
///             metricName: "friendly-rule-metric-name",
///             sampledRequestsEnabled: false,
///         },
///         name: "rule-1",
///         priority: 1,
///     }],
///     name: "example-rule",
///     scope: "REGIONAL",
///     capacity: 2,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafv2.RuleGroup("example",
///     visibility_config={
///         "cloudwatch_metrics_enabled": False,
///         "metric_name": "friendly-metric-name",
///         "sampled_requests_enabled": False,
///     },
///     rules=[{
///         "action": {
///             "allow": {},
///         },
///         "statement": {
///             "geo_match_statement": {
///                 "country_codes": [
///                     "US",
///                     "NL",
///                 ],
///             },
///         },
///         "visibility_config": {
///             "cloudwatch_metrics_enabled": False,
///             "metric_name": "friendly-rule-metric-name",
///             "sampled_requests_enabled": False,
///         },
///         "name": "rule-1",
///         "priority": 1,
///     }],
///     name="example-rule",
///     scope="REGIONAL",
///     capacity=2)
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
///         VisibilityConfig = new Aws.WafV2.Inputs.RuleGroupVisibilityConfigArgs
///         {
///             CloudwatchMetricsEnabled = false,
///             MetricName = "friendly-metric-name",
///             SampledRequestsEnabled = false,
///         },
///         Rules =
///         {
///             new Aws.WafV2.Inputs.RuleGroupRuleArgs
///             {
///                 Action = new Aws.WafV2.Inputs.RuleGroupRuleActionArgs
///                 {
///                     Allow = null,
///                 },
///                 Statement = new Aws.WafV2.Inputs.RuleGroupRuleStatementArgs
///                 {
///                     GeoMatchStatement = new Aws.WafV2.Inputs.RuleGroupRuleStatementGeoMatchStatementArgs
///                     {
///                         CountryCodes = new[]
///                         {
///                             "US",
///                             "NL",
///                         },
///                     },
///                 },
///                 VisibilityConfig = new Aws.WafV2.Inputs.RuleGroupRuleVisibilityConfigArgs
///                 {
///                     CloudwatchMetricsEnabled = false,
///                     MetricName = "friendly-rule-metric-name",
///                     SampledRequestsEnabled = false,
///                 },
///                 Name = "rule-1",
///                 Priority = 1,
///             },
///         },
///         Name = "example-rule",
///         Scope = "REGIONAL",
///         Capacity = 2,
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
/// 		_, err := wafv2.NewRuleGroup(ctx, "example", &wafv2.RuleGroupArgs{
/// 			VisibilityConfig: &wafv2.RuleGroupVisibilityConfigArgs{
/// 				CloudwatchMetricsEnabled: pulumi.Bool(false),
/// 				MetricName:               pulumi.String("friendly-metric-name"),
/// 				SampledRequestsEnabled:   pulumi.Bool(false),
/// 			},
/// 			Rules: wafv2.RuleGroupRuleArray{
/// 				&wafv2.RuleGroupRuleArgs{
/// 					Action: &wafv2.RuleGroupRuleActionArgs{
/// 						Allow: &wafv2.RuleGroupRuleActionAllowArgs{},
/// 					},
/// 					Statement: &wafv2.RuleGroupRuleStatementArgs{
/// 						GeoMatchStatement: &wafv2.RuleGroupRuleStatementGeoMatchStatementArgs{
/// 							CountryCodes: pulumi.StringArray{
/// 								pulumi.String("US"),
/// 								pulumi.String("NL"),
/// 							},
/// 						},
/// 					},
/// 					VisibilityConfig: &wafv2.RuleGroupRuleVisibilityConfigArgs{
/// 						CloudwatchMetricsEnabled: pulumi.Bool(false),
/// 						MetricName:               pulumi.String("friendly-rule-metric-name"),
/// 						SampledRequestsEnabled:   pulumi.Bool(false),
/// 					},
/// 					Name:     pulumi.String("rule-1"),
/// 					Priority: pulumi.Int(1),
/// 				},
/// 			},
/// 			Name:     pulumi.String("example-rule"),
/// 			Scope:    pulumi.String("REGIONAL"),
/// 			Capacity: pulumi.Int(2),
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
/// resource "aws_wafv2_rulegroup" "example" {
///   visibility_config = {
///     cloudwatch_metrics_enabled = false
///     metric_name                = "friendly-metric-name"
///     sampled_requests_enabled   = false
///   }
///   rules {
///     action = {
///       allow = {}
///     }
///     statement = {
///       geo_match_statement = {
///         country_codes = ["US", "NL"]
///       }
///     }
///     visibility_config = {
///       cloudwatch_metrics_enabled = false
///       metric_name                = "friendly-rule-metric-name"
///       sampled_requests_enabled   = false
///     }
///     name     = "rule-1"
///     priority = 1
///   }
///   name     = "example-rule"
///   scope    = "REGIONAL"
///   capacity = 2
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
/// import com.pulumi.aws.wafv2.inputs.RuleGroupVisibilityConfigArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleActionArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleActionAllowArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementGeoMatchStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleVisibilityConfigArgs;
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
///         var example = new RuleGroup("example", RuleGroupArgs.builder()
///             .visibilityConfig(RuleGroupVisibilityConfigArgs.builder()
///                 .cloudwatchMetricsEnabled(false)
///                 .metricName("friendly-metric-name")
///                 .sampledRequestsEnabled(false)
///                 .build())
///             .rules(RuleGroupRuleArgs.builder()
///                 .action(RuleGroupRuleActionArgs.builder()
///                     .allow(RuleGroupRuleActionAllowArgs.builder()
///                         .build())
///                     .build())
///                 .statement(RuleGroupRuleStatementArgs.builder()
///                     .geoMatchStatement(RuleGroupRuleStatementGeoMatchStatementArgs.builder()
///                         .countryCodes(
///                             "US",
///                             "NL")
///                         .build())
///                     .build())
///                 .visibilityConfig(RuleGroupRuleVisibilityConfigArgs.builder()
///                     .cloudwatchMetricsEnabled(false)
///                     .metricName("friendly-rule-metric-name")
///                     .sampledRequestsEnabled(false)
///                     .build())
///                 .name("rule-1")
///                 .priority(1)
///                 .build())
///             .name("example-rule")
///             .scope("REGIONAL")
///             .capacity(2)
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
///       visibilityConfig:
///         cloudwatchMetricsEnabled: false
///         metricName: friendly-metric-name
///         sampledRequestsEnabled: false
///       rules:
///         - action:
///             allow: {}
///           statement:
///             geoMatchStatement:
///               countryCodes:
///                 - US
///                 - NL
///           visibilityConfig:
///             cloudwatchMetricsEnabled: false
///             metricName: friendly-rule-metric-name
///             sampledRequestsEnabled: false
///           name: rule-1
///           priority: 1
///       name: example-rule
///       scope: REGIONAL
///       capacity: 2
/// ```
///
///
/// ### Complex
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.wafv2.IpSet("test", {
///     name: "test",
///     scope: "REGIONAL",
///     ipAddressVersion: "IPV4",
///     addresses: [
///         "1.1.1.1/32",
///         "2.2.2.2/32",
///     ],
/// });
/// const testRegexPatternSet = new aws.wafv2.RegexPatternSet("test", {
///     regularExpressions: [{
///         regexString: "one",
///     }],
///     name: "test",
///     scope: "REGIONAL",
/// });
/// const example = new aws.wafv2.RuleGroup("example", {
///     visibilityConfig: {
///         cloudwatchMetricsEnabled: false,
///         metricName: "friendly-metric-name",
///         sampledRequestsEnabled: false,
///     },
///     captchaConfig: [{
///         immunityTimeProperty: [{
///             immunityTime: 120,
///         }],
///     }],
///     rules: [
///         {
///             action: {
///                 block: {},
///             },
///             statement: {
///                 notStatement: {
///                     statements: [{
///                         andStatement: {
///                             statements: [
///                                 {
///                                     geoMatchStatement: {
///                                         countryCodes: ["US"],
///                                     },
///                                 },
///                                 {
///                                     byteMatchStatement: {
///                                         fieldToMatch: {
///                                             allQueryArguments: {},
///                                         },
///                                         textTransformations: [
///                                             {
///                                                 priority: 5,
///                                                 type: "CMD_LINE",
///                                             },
///                                             {
///                                                 priority: 2,
///                                                 type: "LOWERCASE",
///                                             },
///                                         ],
///                                         positionalConstraint: "CONTAINS",
///                                         searchString: "word",
///                                     },
///                                 },
///                             ],
///                         },
///                     }],
///                 },
///             },
///             visibilityConfig: {
///                 cloudwatchMetricsEnabled: false,
///                 metricName: "rule-1",
///                 sampledRequestsEnabled: false,
///             },
///             name: "rule-1",
///             priority: 1,
///         },
///         {
///             action: {
///                 count: {},
///             },
///             statement: {
///                 orStatement: {
///                     statements: [
///                         {
///                             regexMatchStatement: {
///                                 fieldToMatch: {
///                                     singleHeader: {
///                                         name: "user-agent",
///                                     },
///                                 },
///                                 textTransformations: [{
///                                     priority: 6,
///                                     type: "NONE",
///                                 }],
///                                 regexString: "a-z?",
///                             },
///                         },
///                         {
///                             sqliMatchStatement: {
///                                 fieldToMatch: {
///                                     body: {},
///                                 },
///                                 textTransformations: [
///                                     {
///                                         priority: 5,
///                                         type: "URL_DECODE",
///                                     },
///                                     {
///                                         priority: 4,
///                                         type: "HTML_ENTITY_DECODE",
///                                     },
///                                     {
///                                         priority: 3,
///                                         type: "COMPRESS_WHITE_SPACE",
///                                     },
///                                 ],
///                             },
///                         },
///                         {
///                             xssMatchStatement: {
///                                 fieldToMatch: {
///                                     method: {},
///                                 },
///                                 textTransformations: [{
///                                     priority: 2,
///                                     type: "NONE",
///                                 }],
///                             },
///                         },
///                     ],
///                 },
///             },
///             visibilityConfig: {
///                 cloudwatchMetricsEnabled: false,
///                 metricName: "rule-2",
///                 sampledRequestsEnabled: false,
///             },
///             captchaConfig: {
///                 immunityTimeProperty: {
///                     immunityTime: 240,
///                 },
///             },
///             name: "rule-2",
///             priority: 2,
///         },
///         {
///             action: {
///                 block: {},
///             },
///             statement: {
///                 sizeConstraintStatement: {
///                     fieldToMatch: {
///                         singleQueryArgument: {
///                             name: "username",
///                         },
///                     },
///                     textTransformations: [{
///                         priority: 5,
///                         type: "NONE",
///                     }],
///                     comparisonOperator: "GT",
///                     size: 100,
///                 },
///             },
///             visibilityConfig: {
///                 cloudwatchMetricsEnabled: false,
///                 metricName: "rule-3",
///                 sampledRequestsEnabled: false,
///             },
///             name: "rule-3",
///             priority: 3,
///         },
///         {
///             action: {
///                 block: {},
///             },
///             statement: {
///                 orStatement: {
///                     statements: [
///                         {
///                             ipSetReferenceStatement: {
///                                 arn: test.arn,
///                             },
///                         },
///                         {
///                             regexPatternSetReferenceStatement: {
///                                 fieldToMatch: {
///                                     singleHeader: {
///                                         name: "referer",
///                                     },
///                                 },
///                                 textTransformations: [{
///                                     priority: 2,
///                                     type: "NONE",
///                                 }],
///                                 arn: testRegexPatternSet.arn,
///                             },
///                         },
///                     ],
///                 },
///             },
///             visibilityConfig: {
///                 cloudwatchMetricsEnabled: false,
///                 metricName: "rule-4",
///                 sampledRequestsEnabled: false,
///             },
///             name: "rule-4",
///             priority: 4,
///         },
///     ],
///     name: "complex-example",
///     description: "An rule group containing all statements",
///     scope: "REGIONAL",
///     capacity: 500,
///     tags: {
///         Name: "example-and-statement",
///         Code: "123456",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.wafv2.IpSet("test",
///     name="test",
///     scope="REGIONAL",
///     ip_address_version="IPV4",
///     addresses=[
///         "1.1.1.1/32",
///         "2.2.2.2/32",
///     ])
/// test_regex_pattern_set = aws.wafv2.RegexPatternSet("test",
///     regular_expressions=[{
///         "regex_string": "one",
///     }],
///     name="test",
///     scope="REGIONAL")
/// example = aws.wafv2.RuleGroup("example",
///     visibility_config={
///         "cloudwatch_metrics_enabled": False,
///         "metric_name": "friendly-metric-name",
///         "sampled_requests_enabled": False,
///     },
///     captcha_config=[{
///         "immunityTimeProperty": [{
///             "immunityTime": 120,
///         }],
///     }],
///     rules=[
///         {
///             "action": {
///                 "block": {},
///             },
///             "statement": {
///                 "not_statement": {
///                     "statements": [{
///                         "and_statement": {
///                             "statements": [
///                                 {
///                                     "geo_match_statement": {
///                                         "country_codes": ["US"],
///                                     },
///                                 },
///                                 {
///                                     "byte_match_statement": {
///                                         "field_to_match": {
///                                             "all_query_arguments": {},
///                                         },
///                                         "text_transformations": [
///                                             {
///                                                 "priority": 5,
///                                                 "type": "CMD_LINE",
///                                             },
///                                             {
///                                                 "priority": 2,
///                                                 "type": "LOWERCASE",
///                                             },
///                                         ],
///                                         "positional_constraint": "CONTAINS",
///                                         "search_string": "word",
///                                     },
///                                 },
///                             ],
///                         },
///                     }],
///                 },
///             },
///             "visibility_config": {
///                 "cloudwatch_metrics_enabled": False,
///                 "metric_name": "rule-1",
///                 "sampled_requests_enabled": False,
///             },
///             "name": "rule-1",
///             "priority": 1,
///         },
///         {
///             "action": {
///                 "count": {},
///             },
///             "statement": {
///                 "or_statement": {
///                     "statements": [
///                         {
///                             "regex_match_statement": {
///                                 "field_to_match": {
///                                     "single_header": {
///                                         "name": "user-agent",
///                                     },
///                                 },
///                                 "text_transformations": [{
///                                     "priority": 6,
///                                     "type": "NONE",
///                                 }],
///                                 "regex_string": "a-z?",
///                             },
///                         },
///                         {
///                             "sqli_match_statement": {
///                                 "field_to_match": {
///                                     "body": {},
///                                 },
///                                 "text_transformations": [
///                                     {
///                                         "priority": 5,
///                                         "type": "URL_DECODE",
///                                     },
///                                     {
///                                         "priority": 4,
///                                         "type": "HTML_ENTITY_DECODE",
///                                     },
///                                     {
///                                         "priority": 3,
///                                         "type": "COMPRESS_WHITE_SPACE",
///                                     },
///                                 ],
///                             },
///                         },
///                         {
///                             "xss_match_statement": {
///                                 "field_to_match": {
///                                     "method": {},
///                                 },
///                                 "text_transformations": [{
///                                     "priority": 2,
///                                     "type": "NONE",
///                                 }],
///                             },
///                         },
///                     ],
///                 },
///             },
///             "visibility_config": {
///                 "cloudwatch_metrics_enabled": False,
///                 "metric_name": "rule-2",
///                 "sampled_requests_enabled": False,
///             },
///             "captcha_config": {
///                 "immunity_time_property": {
///                     "immunity_time": 240,
///                 },
///             },
///             "name": "rule-2",
///             "priority": 2,
///         },
///         {
///             "action": {
///                 "block": {},
///             },
///             "statement": {
///                 "size_constraint_statement": {
///                     "field_to_match": {
///                         "single_query_argument": {
///                             "name": "username",
///                         },
///                     },
///                     "text_transformations": [{
///                         "priority": 5,
///                         "type": "NONE",
///                     }],
///                     "comparison_operator": "GT",
///                     "size": 100,
///                 },
///             },
///             "visibility_config": {
///                 "cloudwatch_metrics_enabled": False,
///                 "metric_name": "rule-3",
///                 "sampled_requests_enabled": False,
///             },
///             "name": "rule-3",
///             "priority": 3,
///         },
///         {
///             "action": {
///                 "block": {},
///             },
///             "statement": {
///                 "or_statement": {
///                     "statements": [
///                         {
///                             "ip_set_reference_statement": {
///                                 "arn": test.arn,
///                             },
///                         },
///                         {
///                             "regex_pattern_set_reference_statement": {
///                                 "field_to_match": {
///                                     "single_header": {
///                                         "name": "referer",
///                                     },
///                                 },
///                                 "text_transformations": [{
///                                     "priority": 2,
///                                     "type": "NONE",
///                                 }],
///                                 "arn": test_regex_pattern_set.arn,
///                             },
///                         },
///                     ],
///                 },
///             },
///             "visibility_config": {
///                 "cloudwatch_metrics_enabled": False,
///                 "metric_name": "rule-4",
///                 "sampled_requests_enabled": False,
///             },
///             "name": "rule-4",
///             "priority": 4,
///         },
///     ],
///     name="complex-example",
///     description="An rule group containing all statements",
///     scope="REGIONAL",
///     capacity=500,
///     tags={
///         "Name": "example-and-statement",
///         "Code": "123456",
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
///     var test = new Aws.WafV2.IpSet("test", new()
///     {
///         Name = "test",
///         Scope = "REGIONAL",
///         IpAddressVersion = "IPV4",
///         Addresses = new[]
///         {
///             "1.1.1.1/32",
///             "2.2.2.2/32",
///         },
///     });
///
///     var testRegexPatternSet = new Aws.WafV2.RegexPatternSet("test", new()
///     {
///         RegularExpressions = new[]
///         {
///             new Aws.WafV2.Inputs.RegexPatternSetRegularExpressionArgs
///             {
///                 RegexString = "one",
///             },
///         },
///         Name = "test",
///         Scope = "REGIONAL",
///     });
///
///     var example = new Aws.WafV2.RuleGroup("example", new()
///     {
///         VisibilityConfig = new Aws.WafV2.Inputs.RuleGroupVisibilityConfigArgs
///         {
///             CloudwatchMetricsEnabled = false,
///             MetricName = "friendly-metric-name",
///             SampledRequestsEnabled = false,
///         },
///         CaptchaConfig = new[]
///         {
///
///             {
///                 { "immunityTimeProperty", new[]
///                 {
///
///                     {
///                         { "immunityTime", 120 },
///                     },
///                 } },
///             },
///         },
///         Rules =
///         {
///             new Aws.WafV2.Inputs.RuleGroupRuleArgs
///             {
///                 Action = new Aws.WafV2.Inputs.RuleGroupRuleActionArgs
///                 {
///                     Block = null,
///                 },
///                 Statement = new Aws.WafV2.Inputs.RuleGroupRuleStatementArgs
///                 {
///                     NotStatement = new Aws.WafV2.Inputs.RuleGroupRuleStatementNotStatementArgs
///                     {
///                         Statements =
///                         {
///                             new Aws.WafV2.Inputs.RuleGroupRuleStatementArgs
///                             {
///                                 AndStatement = new Aws.WafV2.Inputs.RuleGroupRuleStatementAndStatementArgs
///                                 {
///                                     Statements =
///                                     {
///                                         new Aws.WafV2.Inputs.RuleGroupRuleStatementArgs
///                                         {
///                                             GeoMatchStatement = new Aws.WafV2.Inputs.RuleGroupRuleStatementGeoMatchStatementArgs
///                                             {
///                                                 CountryCodes = new[]
///                                                 {
///                                                     "US",
///                                                 },
///                                             },
///                                         },
///                                         new Aws.WafV2.Inputs.RuleGroupRuleStatementArgs
///                                         {
///                                             ByteMatchStatement = new Aws.WafV2.Inputs.RuleGroupRuleStatementByteMatchStatementArgs
///                                             {
///                                                 FieldToMatch = new Aws.WafV2.Inputs.RuleGroupRuleStatementByteMatchStatementFieldToMatchArgs
///                                                 {
///                                                     AllQueryArguments = null,
///                                                 },
///                                                 TextTransformations = new[]
///                                                 {
///                                                     new Aws.WafV2.Inputs.RuleGroupRuleStatementByteMatchStatementTextTransformationArgs
///                                                     {
///                                                         Priority = 5,
///                                                         Type = "CMD_LINE",
///                                                     },
///                                                     new Aws.WafV2.Inputs.RuleGroupRuleStatementByteMatchStatementTextTransformationArgs
///                                                     {
///                                                         Priority = 2,
///                                                         Type = "LOWERCASE",
///                                                     },
///                                                 },
///                                                 PositionalConstraint = "CONTAINS",
///                                                 SearchString = "word",
///                                             },
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 VisibilityConfig = new Aws.WafV2.Inputs.RuleGroupRuleVisibilityConfigArgs
///                 {
///                     CloudwatchMetricsEnabled = false,
///                     MetricName = "rule-1",
///                     SampledRequestsEnabled = false,
///                 },
///                 Name = "rule-1",
///                 Priority = 1,
///             },
///             new Aws.WafV2.Inputs.RuleGroupRuleArgs
///             {
///                 Action = new Aws.WafV2.Inputs.RuleGroupRuleActionArgs
///                 {
///                     Count = null,
///                 },
///                 Statement = new Aws.WafV2.Inputs.RuleGroupRuleStatementArgs
///                 {
///                     OrStatement = new Aws.WafV2.Inputs.RuleGroupRuleStatementOrStatementArgs
///                     {
///                         Statements =
///                         {
///                             new Aws.WafV2.Inputs.RuleGroupRuleStatementArgs
///                             {
///                                 RegexMatchStatement = new Aws.WafV2.Inputs.RuleGroupRuleStatementRegexMatchStatementArgs
///                                 {
///                                     FieldToMatch = new Aws.WafV2.Inputs.RuleGroupRuleStatementRegexMatchStatementFieldToMatchArgs
///                                     {
///                                         SingleHeader = new Aws.WafV2.Inputs.RuleGroupRuleStatementRegexMatchStatementFieldToMatchSingleHeaderArgs
///                                         {
///                                             Name = "user-agent",
///                                         },
///                                     },
///                                     TextTransformations = new[]
///                                     {
///                                         new Aws.WafV2.Inputs.RuleGroupRuleStatementRegexMatchStatementTextTransformationArgs
///                                         {
///                                             Priority = 6,
///                                             Type = "NONE",
///                                         },
///                                     },
///                                     RegexString = "a-z?",
///                                 },
///                             },
///                             new Aws.WafV2.Inputs.RuleGroupRuleStatementArgs
///                             {
///                                 SqliMatchStatement = new Aws.WafV2.Inputs.RuleGroupRuleStatementSqliMatchStatementArgs
///                                 {
///                                     FieldToMatch = new Aws.WafV2.Inputs.RuleGroupRuleStatementSqliMatchStatementFieldToMatchArgs
///                                     {
///                                         Body = null,
///                                     },
///                                     TextTransformations = new[]
///                                     {
///                                         new Aws.WafV2.Inputs.RuleGroupRuleStatementSqliMatchStatementTextTransformationArgs
///                                         {
///                                             Priority = 5,
///                                             Type = "URL_DECODE",
///                                         },
///                                         new Aws.WafV2.Inputs.RuleGroupRuleStatementSqliMatchStatementTextTransformationArgs
///                                         {
///                                             Priority = 4,
///                                             Type = "HTML_ENTITY_DECODE",
///                                         },
///                                         new Aws.WafV2.Inputs.RuleGroupRuleStatementSqliMatchStatementTextTransformationArgs
///                                         {
///                                             Priority = 3,
///                                             Type = "COMPRESS_WHITE_SPACE",
///                                         },
///                                     },
///                                 },
///                             },
///                             new Aws.WafV2.Inputs.RuleGroupRuleStatementArgs
///                             {
///                                 XssMatchStatement = new Aws.WafV2.Inputs.RuleGroupRuleStatementXssMatchStatementArgs
///                                 {
///                                     FieldToMatch = new Aws.WafV2.Inputs.RuleGroupRuleStatementXssMatchStatementFieldToMatchArgs
///                                     {
///                                         Method = null,
///                                     },
///                                     TextTransformations = new[]
///                                     {
///                                         new Aws.WafV2.Inputs.RuleGroupRuleStatementXssMatchStatementTextTransformationArgs
///                                         {
///                                             Priority = 2,
///                                             Type = "NONE",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 VisibilityConfig = new Aws.WafV2.Inputs.RuleGroupRuleVisibilityConfigArgs
///                 {
///                     CloudwatchMetricsEnabled = false,
///                     MetricName = "rule-2",
///                     SampledRequestsEnabled = false,
///                 },
///                 CaptchaConfig = new Aws.WafV2.Inputs.RuleGroupRuleCaptchaConfigArgs
///                 {
///                     ImmunityTimeProperty = new Aws.WafV2.Inputs.RuleGroupRuleCaptchaConfigImmunityTimePropertyArgs
///                     {
///                         ImmunityTime = 240,
///                     },
///                 },
///                 Name = "rule-2",
///                 Priority = 2,
///             },
///             new Aws.WafV2.Inputs.RuleGroupRuleArgs
///             {
///                 Action = new Aws.WafV2.Inputs.RuleGroupRuleActionArgs
///                 {
///                     Block = null,
///                 },
///                 Statement = new Aws.WafV2.Inputs.RuleGroupRuleStatementArgs
///                 {
///                     SizeConstraintStatement = new Aws.WafV2.Inputs.RuleGroupRuleStatementSizeConstraintStatementArgs
///                     {
///                         FieldToMatch = new Aws.WafV2.Inputs.RuleGroupRuleStatementSizeConstraintStatementFieldToMatchArgs
///                         {
///                             SingleQueryArgument = new Aws.WafV2.Inputs.RuleGroupRuleStatementSizeConstraintStatementFieldToMatchSingleQueryArgumentArgs
///                             {
///                                 Name = "username",
///                             },
///                         },
///                         TextTransformations = new[]
///                         {
///                             new Aws.WafV2.Inputs.RuleGroupRuleStatementSizeConstraintStatementTextTransformationArgs
///                             {
///                                 Priority = 5,
///                                 Type = "NONE",
///                             },
///                         },
///                         ComparisonOperator = "GT",
///                         Size = 100,
///                     },
///                 },
///                 VisibilityConfig = new Aws.WafV2.Inputs.RuleGroupRuleVisibilityConfigArgs
///                 {
///                     CloudwatchMetricsEnabled = false,
///                     MetricName = "rule-3",
///                     SampledRequestsEnabled = false,
///                 },
///                 Name = "rule-3",
///                 Priority = 3,
///             },
///             new Aws.WafV2.Inputs.RuleGroupRuleArgs
///             {
///                 Action = new Aws.WafV2.Inputs.RuleGroupRuleActionArgs
///                 {
///                     Block = null,
///                 },
///                 Statement = new Aws.WafV2.Inputs.RuleGroupRuleStatementArgs
///                 {
///                     OrStatement = new Aws.WafV2.Inputs.RuleGroupRuleStatementOrStatementArgs
///                     {
///                         Statements =
///                         {
///                             new Aws.WafV2.Inputs.RuleGroupRuleStatementArgs
///                             {
///                                 IpSetReferenceStatement = new Aws.WafV2.Inputs.RuleGroupRuleStatementIpSetReferenceStatementArgs
///                                 {
///                                     Arn = test.Arn,
///                                 },
///                             },
///                             new Aws.WafV2.Inputs.RuleGroupRuleStatementArgs
///                             {
///                                 RegexPatternSetReferenceStatement = new Aws.WafV2.Inputs.RuleGroupRuleStatementRegexPatternSetReferenceStatementArgs
///                                 {
///                                     FieldToMatch = new Aws.WafV2.Inputs.RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchArgs
///                                     {
///                                         SingleHeader = new Aws.WafV2.Inputs.RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchSingleHeaderArgs
///                                         {
///                                             Name = "referer",
///                                         },
///                                     },
///                                     TextTransformations = new[]
///                                     {
///                                         new Aws.WafV2.Inputs.RuleGroupRuleStatementRegexPatternSetReferenceStatementTextTransformationArgs
///                                         {
///                                             Priority = 2,
///                                             Type = "NONE",
///                                         },
///                                     },
///                                     Arn = testRegexPatternSet.Arn,
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 VisibilityConfig = new Aws.WafV2.Inputs.RuleGroupRuleVisibilityConfigArgs
///                 {
///                     CloudwatchMetricsEnabled = false,
///                     MetricName = "rule-4",
///                     SampledRequestsEnabled = false,
///                 },
///                 Name = "rule-4",
///                 Priority = 4,
///             },
///         },
///         Name = "complex-example",
///         Description = "An rule group containing all statements",
///         Scope = "REGIONAL",
///         Capacity = 500,
///         Tags =
///         {
///             { "Name", "example-and-statement" },
///             { "Code", "123456" },
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
/// 		test, err := wafv2.NewIpSet(ctx, "test", &wafv2.IpSetArgs{
/// 			Name:             pulumi.String("test"),
/// 			Scope:            pulumi.String("REGIONAL"),
/// 			IpAddressVersion: pulumi.String("IPV4"),
/// 			Addresses: pulumi.StringArray{
/// 				pulumi.String("1.1.1.1/32"),
/// 				pulumi.String("2.2.2.2/32"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testRegexPatternSet, err := wafv2.NewRegexPatternSet(ctx, "test", &wafv2.RegexPatternSetArgs{
/// 			RegularExpressions: wafv2.RegexPatternSetRegularExpressionArray{
/// 				&wafv2.RegexPatternSetRegularExpressionArgs{
/// 					RegexString: pulumi.String("one"),
/// 				},
/// 			},
/// 			Name:  pulumi.String("test"),
/// 			Scope: pulumi.String("REGIONAL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = wafv2.NewRuleGroup(ctx, "example", &wafv2.RuleGroupArgs{
/// 			VisibilityConfig: &wafv2.RuleGroupVisibilityConfigArgs{
/// 				CloudwatchMetricsEnabled: pulumi.Bool(false),
/// 				MetricName:               pulumi.String("friendly-metric-name"),
/// 				SampledRequestsEnabled:   pulumi.Bool(false),
/// 			},
/// 			CaptchaConfig: []map[string][]map[string]int{
/// 				{
/// 					"immunityTimeProperty": []map[string]int{
/// 						{
/// 							"immunityTime": 120,
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Rules: wafv2.RuleGroupRuleArray{
/// 				&wafv2.RuleGroupRuleArgs{
/// 					Action: &wafv2.RuleGroupRuleActionArgs{
/// 						Block: &wafv2.RuleGroupRuleActionBlockArgs{},
/// 					},
/// 					Statement: &wafv2.RuleGroupRuleStatementArgs{
/// 						NotStatement: &wafv2.RuleGroupRuleStatementNotStatementArgs{
/// 							Statements: wafv2.RuleGroupRuleStatementArray{
/// 								&wafv2.RuleGroupRuleStatementArgs{
/// 									AndStatement: &wafv2.RuleGroupRuleStatementAndStatementArgs{
/// 										Statements: wafv2.RuleGroupRuleStatementArray{
/// 											&wafv2.RuleGroupRuleStatementArgs{
/// 												GeoMatchStatement: &wafv2.RuleGroupRuleStatementGeoMatchStatementArgs{
/// 													CountryCodes: pulumi.StringArray{
/// 														pulumi.String("US"),
/// 													},
/// 												},
/// 											},
/// 											&wafv2.RuleGroupRuleStatementArgs{
/// 												ByteMatchStatement: &wafv2.RuleGroupRuleStatementByteMatchStatementArgs{
/// 													FieldToMatch: &wafv2.RuleGroupRuleStatementByteMatchStatementFieldToMatchArgs{
/// 														AllQueryArguments: &wafv2.RuleGroupRuleStatementByteMatchStatementFieldToMatchAllQueryArgumentsArgs{},
/// 													},
/// 													TextTransformations: wafv2.RuleGroupRuleStatementByteMatchStatementTextTransformationArray{
/// 														&wafv2.RuleGroupRuleStatementByteMatchStatementTextTransformationArgs{
/// 															Priority: pulumi.Int(5),
/// 															Type:     pulumi.String("CMD_LINE"),
/// 														},
/// 														&wafv2.RuleGroupRuleStatementByteMatchStatementTextTransformationArgs{
/// 															Priority: pulumi.Int(2),
/// 															Type:     pulumi.String("LOWERCASE"),
/// 														},
/// 													},
/// 													PositionalConstraint: pulumi.String("CONTAINS"),
/// 													SearchString:         pulumi.String("word"),
/// 												},
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					VisibilityConfig: &wafv2.RuleGroupRuleVisibilityConfigArgs{
/// 						CloudwatchMetricsEnabled: pulumi.Bool(false),
/// 						MetricName:               pulumi.String("rule-1"),
/// 						SampledRequestsEnabled:   pulumi.Bool(false),
/// 					},
/// 					Name:     pulumi.String("rule-1"),
/// 					Priority: pulumi.Int(1),
/// 				},
/// 				&wafv2.RuleGroupRuleArgs{
/// 					Action: &wafv2.RuleGroupRuleActionArgs{
/// 						Count: &wafv2.RuleGroupRuleActionCountArgs{},
/// 					},
/// 					Statement: &wafv2.RuleGroupRuleStatementArgs{
/// 						OrStatement: &wafv2.RuleGroupRuleStatementOrStatementArgs{
/// 							Statements: wafv2.RuleGroupRuleStatementArray{
/// 								&wafv2.RuleGroupRuleStatementArgs{
/// 									RegexMatchStatement: &wafv2.RuleGroupRuleStatementRegexMatchStatementArgs{
/// 										FieldToMatch: &wafv2.RuleGroupRuleStatementRegexMatchStatementFieldToMatchArgs{
/// 											SingleHeader: &wafv2.RuleGroupRuleStatementRegexMatchStatementFieldToMatchSingleHeaderArgs{
/// 												Name: pulumi.String("user-agent"),
/// 											},
/// 										},
/// 										TextTransformations: wafv2.RuleGroupRuleStatementRegexMatchStatementTextTransformationArray{
/// 											&wafv2.RuleGroupRuleStatementRegexMatchStatementTextTransformationArgs{
/// 												Priority: pulumi.Int(6),
/// 												Type:     pulumi.String("NONE"),
/// 											},
/// 										},
/// 										RegexString: pulumi.String("a-z?"),
/// 									},
/// 								},
/// 								&wafv2.RuleGroupRuleStatementArgs{
/// 									SqliMatchStatement: &wafv2.RuleGroupRuleStatementSqliMatchStatementArgs{
/// 										FieldToMatch: &wafv2.RuleGroupRuleStatementSqliMatchStatementFieldToMatchArgs{
/// 											Body: &wafv2.RuleGroupRuleStatementSqliMatchStatementFieldToMatchBodyArgs{},
/// 										},
/// 										TextTransformations: wafv2.RuleGroupRuleStatementSqliMatchStatementTextTransformationArray{
/// 											&wafv2.RuleGroupRuleStatementSqliMatchStatementTextTransformationArgs{
/// 												Priority: pulumi.Int(5),
/// 												Type:     pulumi.String("URL_DECODE"),
/// 											},
/// 											&wafv2.RuleGroupRuleStatementSqliMatchStatementTextTransformationArgs{
/// 												Priority: pulumi.Int(4),
/// 												Type:     pulumi.String("HTML_ENTITY_DECODE"),
/// 											},
/// 											&wafv2.RuleGroupRuleStatementSqliMatchStatementTextTransformationArgs{
/// 												Priority: pulumi.Int(3),
/// 												Type:     pulumi.String("COMPRESS_WHITE_SPACE"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 								&wafv2.RuleGroupRuleStatementArgs{
/// 									XssMatchStatement: &wafv2.RuleGroupRuleStatementXssMatchStatementArgs{
/// 										FieldToMatch: &wafv2.RuleGroupRuleStatementXssMatchStatementFieldToMatchArgs{
/// 											Method: &wafv2.RuleGroupRuleStatementXssMatchStatementFieldToMatchMethodArgs{},
/// 										},
/// 										TextTransformations: wafv2.RuleGroupRuleStatementXssMatchStatementTextTransformationArray{
/// 											&wafv2.RuleGroupRuleStatementXssMatchStatementTextTransformationArgs{
/// 												Priority: pulumi.Int(2),
/// 												Type:     pulumi.String("NONE"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					VisibilityConfig: &wafv2.RuleGroupRuleVisibilityConfigArgs{
/// 						CloudwatchMetricsEnabled: pulumi.Bool(false),
/// 						MetricName:               pulumi.String("rule-2"),
/// 						SampledRequestsEnabled:   pulumi.Bool(false),
/// 					},
/// 					CaptchaConfig: &wafv2.RuleGroupRuleCaptchaConfigArgs{
/// 						ImmunityTimeProperty: &wafv2.RuleGroupRuleCaptchaConfigImmunityTimePropertyArgs{
/// 							ImmunityTime: pulumi.Int(240),
/// 						},
/// 					},
/// 					Name:     pulumi.String("rule-2"),
/// 					Priority: pulumi.Int(2),
/// 				},
/// 				&wafv2.RuleGroupRuleArgs{
/// 					Action: &wafv2.RuleGroupRuleActionArgs{
/// 						Block: &wafv2.RuleGroupRuleActionBlockArgs{},
/// 					},
/// 					Statement: &wafv2.RuleGroupRuleStatementArgs{
/// 						SizeConstraintStatement: &wafv2.RuleGroupRuleStatementSizeConstraintStatementArgs{
/// 							FieldToMatch: &wafv2.RuleGroupRuleStatementSizeConstraintStatementFieldToMatchArgs{
/// 								SingleQueryArgument: &wafv2.RuleGroupRuleStatementSizeConstraintStatementFieldToMatchSingleQueryArgumentArgs{
/// 									Name: pulumi.String("username"),
/// 								},
/// 							},
/// 							TextTransformations: wafv2.RuleGroupRuleStatementSizeConstraintStatementTextTransformationArray{
/// 								&wafv2.RuleGroupRuleStatementSizeConstraintStatementTextTransformationArgs{
/// 									Priority: pulumi.Int(5),
/// 									Type:     pulumi.String("NONE"),
/// 								},
/// 							},
/// 							ComparisonOperator: pulumi.String("GT"),
/// 							Size:               pulumi.Int(100),
/// 						},
/// 					},
/// 					VisibilityConfig: &wafv2.RuleGroupRuleVisibilityConfigArgs{
/// 						CloudwatchMetricsEnabled: pulumi.Bool(false),
/// 						MetricName:               pulumi.String("rule-3"),
/// 						SampledRequestsEnabled:   pulumi.Bool(false),
/// 					},
/// 					Name:     pulumi.String("rule-3"),
/// 					Priority: pulumi.Int(3),
/// 				},
/// 				&wafv2.RuleGroupRuleArgs{
/// 					Action: &wafv2.RuleGroupRuleActionArgs{
/// 						Block: &wafv2.RuleGroupRuleActionBlockArgs{},
/// 					},
/// 					Statement: &wafv2.RuleGroupRuleStatementArgs{
/// 						OrStatement: &wafv2.RuleGroupRuleStatementOrStatementArgs{
/// 							Statements: wafv2.RuleGroupRuleStatementArray{
/// 								&wafv2.RuleGroupRuleStatementArgs{
/// 									IpSetReferenceStatement: &wafv2.RuleGroupRuleStatementIpSetReferenceStatementArgs{
/// 										Arn: test.Arn,
/// 									},
/// 								},
/// 								&wafv2.RuleGroupRuleStatementArgs{
/// 									RegexPatternSetReferenceStatement: &wafv2.RuleGroupRuleStatementRegexPatternSetReferenceStatementArgs{
/// 										FieldToMatch: &wafv2.RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchArgs{
/// 											SingleHeader: &wafv2.RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchSingleHeaderArgs{
/// 												Name: pulumi.String("referer"),
/// 											},
/// 										},
/// 										TextTransformations: wafv2.RuleGroupRuleStatementRegexPatternSetReferenceStatementTextTransformationArray{
/// 											&wafv2.RuleGroupRuleStatementRegexPatternSetReferenceStatementTextTransformationArgs{
/// 												Priority: pulumi.Int(2),
/// 												Type:     pulumi.String("NONE"),
/// 											},
/// 										},
/// 										Arn: testRegexPatternSet.Arn,
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					VisibilityConfig: &wafv2.RuleGroupRuleVisibilityConfigArgs{
/// 						CloudwatchMetricsEnabled: pulumi.Bool(false),
/// 						MetricName:               pulumi.String("rule-4"),
/// 						SampledRequestsEnabled:   pulumi.Bool(false),
/// 					},
/// 					Name:     pulumi.String("rule-4"),
/// 					Priority: pulumi.Int(4),
/// 				},
/// 			},
/// 			Name:        pulumi.String("complex-example"),
/// 			Description: pulumi.String("An rule group containing all statements"),
/// 			Scope:       pulumi.String("REGIONAL"),
/// 			Capacity:    pulumi.Int(500),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example-and-statement"),
/// 				"Code": pulumi.String("123456"),
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
/// resource "aws_wafv2_ipset" "test" {
///   name               = "test"
///   scope              = "REGIONAL"
///   ip_address_version = "IPV4"
///   addresses          = ["1.1.1.1/32", "2.2.2.2/32"]
/// }
/// resource "aws_wafv2_regexpatternset" "test" {
///   regular_expressions {
///     regex_string = "one"
///   }
///   name  = "test"
///   scope = "REGIONAL"
/// }
/// resource "aws_wafv2_rulegroup" "example" {
///   visibility_config = {
///     cloudwatch_metrics_enabled = false
///     metric_name                = "friendly-metric-name"
///     sampled_requests_enabled   = false
///   }
///   captcha_config = [{
///     "immunityTimeProperty" = [{
///       "immunityTime" = 120
///     }]
///   }]
///   rules {
///     action = {
///       block = {}
///     }
///     statement = {
///       not_statement = {
///         statements = [{
///           "andStatement" = {
///             "statements" = [{
///               "geoMatchStatement" = {
///                 "countryCodes" = ["US"]
///               }
///               }, {
///               "byteMatchStatement" = {
///                 "fieldToMatch" = {
///                   "allQueryArguments" = {}
///                 }
///                 "textTransformations" = [{
///                   "priority" = 5
///                   "type"     = "CMD_LINE"
///                   }, {
///                   "priority" = 2
///                   "type"     = "LOWERCASE"
///                 }]
///                 "positionalConstraint" = "CONTAINS"
///                 "searchString"         = "word"
///               }
///             }]
///           }
///         }]
///       }
///     }
///     visibility_config = {
///       cloudwatch_metrics_enabled = false
///       metric_name                = "rule-1"
///       sampled_requests_enabled   = false
///     }
///     name     = "rule-1"
///     priority = 1
///   }
///   rules {
///     action = {
///       count = {}
///     }
///     statement = {
///       or_statement = {
///         statements = [{
///           "regexMatchStatement" = {
///             "fieldToMatch" = {
///               "singleHeader" = {
///                 "name" = "user-agent"
///               }
///             }
///             "textTransformations" = [{
///               "priority" = 6
///               "type"     = "NONE"
///             }]
///             "regexString" = "a-z?"
///           }
///           }, {
///           "sqliMatchStatement" = {
///             "fieldToMatch" = {
///               "body" = {}
///             }
///             "textTransformations" = [{
///               "priority" = 5
///               "type"     = "URL_DECODE"
///               }, {
///               "priority" = 4
///               "type"     = "HTML_ENTITY_DECODE"
///               }, {
///               "priority" = 3
///               "type"     = "COMPRESS_WHITE_SPACE"
///             }]
///           }
///           }, {
///           "xssMatchStatement" = {
///             "fieldToMatch" = {
///               "method" = {}
///             }
///             "textTransformations" = [{
///               "priority" = 2
///               "type"     = "NONE"
///             }]
///           }
///         }]
///       }
///     }
///     visibility_config = {
///       cloudwatch_metrics_enabled = false
///       metric_name                = "rule-2"
///       sampled_requests_enabled   = false
///     }
///     captcha_config = {
///       immunity_time_property = {
///         immunity_time = 240
///       }
///     }
///     name     = "rule-2"
///     priority = 2
///   }
///   rules {
///     action = {
///       block = {}
///     }
///     statement = {
///       size_constraint_statement = {
///         field_to_match = {
///           single_query_argument = {
///             name = "username"
///           }
///         }
///         text_transformations = [{
///           "priority" = 5
///           "type"     = "NONE"
///         }]
///         comparison_operator = "GT"
///         size                = 100
///       }
///     }
///     visibility_config = {
///       cloudwatch_metrics_enabled = false
///       metric_name                = "rule-3"
///       sampled_requests_enabled   = false
///     }
///     name     = "rule-3"
///     priority = 3
///   }
///   rules {
///     action = {
///       block = {}
///     }
///     statement = {
///       or_statement = {
///         statements = [{
///           "ipSetReferenceStatement" = {
///             "arn" = aws_wafv2_ipset.test.arn
///           }
///           }, {
///           "regexPatternSetReferenceStatement" = {
///             "fieldToMatch" = {
///               "singleHeader" = {
///                 "name" = "referer"
///               }
///             }
///             "textTransformations" = [{
///               "priority" = 2
///               "type"     = "NONE"
///             }]
///             "arn" = aws_wafv2_regexpatternset.test.arn
///           }
///         }]
///       }
///     }
///     visibility_config = {
///       cloudwatch_metrics_enabled = false
///       metric_name                = "rule-4"
///       sampled_requests_enabled   = false
///     }
///     name     = "rule-4"
///     priority = 4
///   }
///   name        = "complex-example"
///   description = "An rule group containing all statements"
///   scope       = "REGIONAL"
///   capacity    = 500
///   tags = {
///     "Name" = "example-and-statement"
///     "Code" = "123456"
///   }
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
/// import com.pulumi.aws.wafv2.RegexPatternSet;
/// import com.pulumi.aws.wafv2.RegexPatternSetArgs;
/// import com.pulumi.aws.wafv2.inputs.RegexPatternSetRegularExpressionArgs;
/// import com.pulumi.aws.wafv2.RuleGroup;
/// import com.pulumi.aws.wafv2.RuleGroupArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupVisibilityConfigArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleActionArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleActionBlockArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementNotStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementAndStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementGeoMatchStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementByteMatchStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementByteMatchStatementFieldToMatchArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementByteMatchStatementFieldToMatchAllQueryArgumentsArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementByteMatchStatementTextTransformationArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleVisibilityConfigArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleActionCountArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementOrStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementRegexMatchStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementRegexMatchStatementFieldToMatchArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementRegexMatchStatementFieldToMatchSingleHeaderArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementRegexMatchStatementTextTransformationArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementSqliMatchStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementSqliMatchStatementFieldToMatchArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementSqliMatchStatementFieldToMatchBodyArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementSqliMatchStatementTextTransformationArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementXssMatchStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementXssMatchStatementFieldToMatchArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementXssMatchStatementFieldToMatchMethodArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementXssMatchStatementTextTransformationArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleCaptchaConfigArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleCaptchaConfigImmunityTimePropertyArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementSizeConstraintStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementSizeConstraintStatementFieldToMatchArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementSizeConstraintStatementFieldToMatchSingleQueryArgumentArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementSizeConstraintStatementTextTransformationArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementIpSetReferenceStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementRegexPatternSetReferenceStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchSingleHeaderArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementRegexPatternSetReferenceStatementTextTransformationArgs;
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
///         var test = new IpSet("test", IpSetArgs.builder()
///             .name("test")
///             .scope("REGIONAL")
///             .ipAddressVersion("IPV4")
///             .addresses(
///                 "1.1.1.1/32",
///                 "2.2.2.2/32")
///             .build());
///
///         var testRegexPatternSet = new RegexPatternSet("testRegexPatternSet", RegexPatternSetArgs.builder()
///             .regularExpressions(RegexPatternSetRegularExpressionArgs.builder()
///                 .regexString("one")
///                 .build())
///             .name("test")
///             .scope("REGIONAL")
///             .build());
///
///         var example = new RuleGroup("example", RuleGroupArgs.builder()
///             .visibilityConfig(RuleGroupVisibilityConfigArgs.builder()
///                 .cloudwatchMetricsEnabled(false)
///                 .metricName("friendly-metric-name")
///                 .sampledRequestsEnabled(false)
///                 .build())
///             .captchaConfig(Arrays.asList(Map.of("immunityTimeProperty", Arrays.asList(Map.of("immunityTime", 120)))))
///             .rules(
///                 RuleGroupRuleArgs.builder()
///                     .action(RuleGroupRuleActionArgs.builder()
///                         .block(RuleGroupRuleActionBlockArgs.builder()
///                             .build())
///                         .build())
///                     .statement(Map.of("notStatement", RuleGroupRuleStatementNotStatementArgs.builder()
///                         .statements(Map.of("andStatement", Map.of("statements", Arrays.asList(
///                             RuleGroupRuleStatementArgs.builder()
///                                 .geoMatchStatement(RuleGroupRuleStatementGeoMatchStatementArgs.builder()
///                                     .countryCodes("US")
///                                     .build())
///                                 .build(),
///                             RuleGroupRuleStatementArgs.builder()
///                                 .byteMatchStatement(RuleGroupRuleStatementByteMatchStatementArgs.builder()
///                                     .fieldToMatch(RuleGroupRuleStatementByteMatchStatementFieldToMatchArgs.builder()
///                                         .allQueryArguments(RuleGroupRuleStatementByteMatchStatementFieldToMatchAllQueryArgumentsArgs.builder()
///                                             .build())
///                                         .build())
///                                     .textTransformations(
///                                         RuleGroupRuleStatementByteMatchStatementTextTransformationArgs.builder()
///                                             .priority(5)
///                                             .type("CMD_LINE")
///                                             .build(),
///                                         RuleGroupRuleStatementByteMatchStatementTextTransformationArgs.builder()
///                                             .priority(2)
///                                             .type("LOWERCASE")
///                                             .build())
///                                     .positionalConstraint("CONTAINS")
///                                     .searchString("word")
///                                     .build())
///                                 .build()))))
///                         .build()))
///                     .visibilityConfig(RuleGroupRuleVisibilityConfigArgs.builder()
///                         .cloudwatchMetricsEnabled(false)
///                         .metricName("rule-1")
///                         .sampledRequestsEnabled(false)
///                         .build())
///                     .name("rule-1")
///                     .priority(1)
///                     .build(),
///                 RuleGroupRuleArgs.builder()
///                     .action(RuleGroupRuleActionArgs.builder()
///                         .count(RuleGroupRuleActionCountArgs.builder()
///                             .build())
///                         .build())
///                     .statement(Map.of("orStatement", RuleGroupRuleStatementOrStatementArgs.builder()
///                         .statements(
///                             RuleGroupRuleStatementArgs.builder()
///                                 .regexMatchStatement(RuleGroupRuleStatementRegexMatchStatementArgs.builder()
///                                     .fieldToMatch(RuleGroupRuleStatementRegexMatchStatementFieldToMatchArgs.builder()
///                                         .singleHeader(RuleGroupRuleStatementRegexMatchStatementFieldToMatchSingleHeaderArgs.builder()
///                                             .name("user-agent")
///                                             .build())
///                                         .build())
///                                     .textTransformations(RuleGroupRuleStatementRegexMatchStatementTextTransformationArgs.builder()
///                                         .priority(6)
///                                         .type("NONE")
///                                         .build())
///                                     .regexString("a-z?")
///                                     .build())
///                                 .build(),
///                             RuleGroupRuleStatementArgs.builder()
///                                 .sqliMatchStatement(RuleGroupRuleStatementSqliMatchStatementArgs.builder()
///                                     .fieldToMatch(RuleGroupRuleStatementSqliMatchStatementFieldToMatchArgs.builder()
///                                         .body(RuleGroupRuleStatementSqliMatchStatementFieldToMatchBodyArgs.builder()
///                                             .build())
///                                         .build())
///                                     .textTransformations(
///                                         RuleGroupRuleStatementSqliMatchStatementTextTransformationArgs.builder()
///                                             .priority(5)
///                                             .type("URL_DECODE")
///                                             .build(),
///                                         RuleGroupRuleStatementSqliMatchStatementTextTransformationArgs.builder()
///                                             .priority(4)
///                                             .type("HTML_ENTITY_DECODE")
///                                             .build(),
///                                         RuleGroupRuleStatementSqliMatchStatementTextTransformationArgs.builder()
///                                             .priority(3)
///                                             .type("COMPRESS_WHITE_SPACE")
///                                             .build())
///                                     .build())
///                                 .build(),
///                             RuleGroupRuleStatementArgs.builder()
///                                 .xssMatchStatement(RuleGroupRuleStatementXssMatchStatementArgs.builder()
///                                     .fieldToMatch(RuleGroupRuleStatementXssMatchStatementFieldToMatchArgs.builder()
///                                         .method(RuleGroupRuleStatementXssMatchStatementFieldToMatchMethodArgs.builder()
///                                             .build())
///                                         .build())
///                                     .textTransformations(RuleGroupRuleStatementXssMatchStatementTextTransformationArgs.builder()
///                                         .priority(2)
///                                         .type("NONE")
///                                         .build())
///                                     .build())
///                                 .build())
///                         .build()))
///                     .visibilityConfig(RuleGroupRuleVisibilityConfigArgs.builder()
///                         .cloudwatchMetricsEnabled(false)
///                         .metricName("rule-2")
///                         .sampledRequestsEnabled(false)
///                         .build())
///                     .captchaConfig(RuleGroupRuleCaptchaConfigArgs.builder()
///                         .immunityTimeProperty(RuleGroupRuleCaptchaConfigImmunityTimePropertyArgs.builder()
///                             .immunityTime(240)
///                             .build())
///                         .build())
///                     .name("rule-2")
///                     .priority(2)
///                     .build(),
///                 RuleGroupRuleArgs.builder()
///                     .action(RuleGroupRuleActionArgs.builder()
///                         .block(RuleGroupRuleActionBlockArgs.builder()
///                             .build())
///                         .build())
///                     .statement(RuleGroupRuleStatementArgs.builder()
///                         .sizeConstraintStatement(RuleGroupRuleStatementSizeConstraintStatementArgs.builder()
///                             .fieldToMatch(RuleGroupRuleStatementSizeConstraintStatementFieldToMatchArgs.builder()
///                                 .singleQueryArgument(RuleGroupRuleStatementSizeConstraintStatementFieldToMatchSingleQueryArgumentArgs.builder()
///                                     .name("username")
///                                     .build())
///                                 .build())
///                             .textTransformations(RuleGroupRuleStatementSizeConstraintStatementTextTransformationArgs.builder()
///                                 .priority(5)
///                                 .type("NONE")
///                                 .build())
///                             .comparisonOperator("GT")
///                             .size(100)
///                             .build())
///                         .build())
///                     .visibilityConfig(RuleGroupRuleVisibilityConfigArgs.builder()
///                         .cloudwatchMetricsEnabled(false)
///                         .metricName("rule-3")
///                         .sampledRequestsEnabled(false)
///                         .build())
///                     .name("rule-3")
///                     .priority(3)
///                     .build(),
///                 RuleGroupRuleArgs.builder()
///                     .action(RuleGroupRuleActionArgs.builder()
///                         .block(RuleGroupRuleActionBlockArgs.builder()
///                             .build())
///                         .build())
///                     .statement(RuleGroupRuleStatementArgs.builder()
///                         .orStatement(Map.of("statements", Arrays.asList(
///                             RuleGroupRuleStatementArgs.builder()
///                                 .ipSetReferenceStatement(RuleGroupRuleStatementIpSetReferenceStatementArgs.builder()
///                                     .arn(test.arn())
///                                     .build())
///                                 .build(),
///                             RuleGroupRuleStatementArgs.builder()
///                                 .regexPatternSetReferenceStatement(RuleGroupRuleStatementRegexPatternSetReferenceStatementArgs.builder()
///                                     .fieldToMatch(RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchArgs.builder()
///                                         .singleHeader(RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchSingleHeaderArgs.builder()
///                                             .name("referer")
///                                             .build())
///                                         .build())
///                                     .textTransformations(RuleGroupRuleStatementRegexPatternSetReferenceStatementTextTransformationArgs.builder()
///                                         .priority(2)
///                                         .type("NONE")
///                                         .build())
///                                     .arn(testRegexPatternSet.arn())
///                                     .build())
///                                 .build())))
///                         .build())
///                     .visibilityConfig(RuleGroupRuleVisibilityConfigArgs.builder()
///                         .cloudwatchMetricsEnabled(false)
///                         .metricName("rule-4")
///                         .sampledRequestsEnabled(false)
///                         .build())
///                     .name("rule-4")
///                     .priority(4)
///                     .build())
///             .name("complex-example")
///             .description("An rule group containing all statements")
///             .scope("REGIONAL")
///             .capacity(500)
///             .tags(Map.ofEntries(
///                 Map.entry("Name", "example-and-statement"),
///                 Map.entry("Code", "123456")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:wafv2:IpSet
///     properties:
///       name: test
///       scope: REGIONAL
///       ipAddressVersion: IPV4
///       addresses:
///         - 1.1.1.1/32
///         - 2.2.2.2/32
///   testRegexPatternSet:
///     type: aws:wafv2:RegexPatternSet
///     name: test
///     properties:
///       regularExpressions:
///         - regexString: one
///       name: test
///       scope: REGIONAL
///   example:
///     type: aws:wafv2:RuleGroup
///     properties:
///       visibilityConfig:
///         cloudwatchMetricsEnabled: false
///         metricName: friendly-metric-name
///         sampledRequestsEnabled: false
///       captchaConfig:
///         - immunityTimeProperty:
///             - immunityTime: 120
///       rules:
///         - action:
///             block: {}
///           statement:
///             notStatement:
///               statements:
///                 - andStatement:
///                     statements:
///                       - geoMatchStatement:
///                           countryCodes:
///                             - US
///                       - byteMatchStatement:
///                           fieldToMatch:
///                             allQueryArguments: {}
///                           textTransformations:
///                             - priority: 5
///                               type: CMD_LINE
///                             - priority: 2
///                               type: LOWERCASE
///                           positionalConstraint: CONTAINS
///                           searchString: word
///           visibilityConfig:
///             cloudwatchMetricsEnabled: false
///             metricName: rule-1
///             sampledRequestsEnabled: false
///           name: rule-1
///           priority: 1
///         - action:
///             count: {}
///           statement:
///             orStatement:
///               statements:
///                 - regexMatchStatement:
///                     fieldToMatch:
///                       singleHeader:
///                         name: user-agent
///                     textTransformations:
///                       - priority: 6
///                         type: NONE
///                     regexString: a-z?
///                 - sqliMatchStatement:
///                     fieldToMatch:
///                       body: {}
///                     textTransformations:
///                       - priority: 5
///                         type: URL_DECODE
///                       - priority: 4
///                         type: HTML_ENTITY_DECODE
///                       - priority: 3
///                         type: COMPRESS_WHITE_SPACE
///                 - xssMatchStatement:
///                     fieldToMatch:
///                       method: {}
///                     textTransformations:
///                       - priority: 2
///                         type: NONE
///           visibilityConfig:
///             cloudwatchMetricsEnabled: false
///             metricName: rule-2
///             sampledRequestsEnabled: false
///           captchaConfig:
///             immunityTimeProperty:
///               immunityTime: 240
///           name: rule-2
///           priority: 2
///         - action:
///             block: {}
///           statement:
///             sizeConstraintStatement:
///               fieldToMatch:
///                 singleQueryArgument:
///                   name: username
///               textTransformations:
///                 - priority: 5
///                   type: NONE
///               comparisonOperator: GT
///               size: 100
///           visibilityConfig:
///             cloudwatchMetricsEnabled: false
///             metricName: rule-3
///             sampledRequestsEnabled: false
///           name: rule-3
///           priority: 3
///         - action:
///             block: {}
///           statement:
///             orStatement:
///               statements:
///                 - ipSetReferenceStatement:
///                     arn: ${test.arn}
///                 - regexPatternSetReferenceStatement:
///                     fieldToMatch:
///                       singleHeader:
///                         name: referer
///                     textTransformations:
///                       - priority: 2
///                         type: NONE
///                     arn: ${testRegexPatternSet.arn}
///           visibilityConfig:
///             cloudwatchMetricsEnabled: false
///             metricName: rule-4
///             sampledRequestsEnabled: false
///           name: rule-4
///           priority: 4
///       name: complex-example
///       description: An rule group containing all statements
///       scope: REGIONAL
///       capacity: 500
///       tags:
///         Name: example-and-statement
///         Code: '123456'
/// ```
///
///
/// ### Using rulesJson
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.wafv2.RuleGroup("example", {
///     visibilityConfig: {
///         cloudwatchMetricsEnabled: false,
///         metricName: "friendly-metric-name",
///         sampledRequestsEnabled: false,
///     },
///     name: "example-rule-group",
///     scope: "REGIONAL",
///     capacity: 100,
///     rulesJson: JSON.stringify([{
///         Name: "rule-1",
///         Priority: 1,
///         Action: {
///             Count: {},
///         },
///         Statement: {
///             ByteMatchStatement: {
///                 SearchString: "badbot",
///                 FieldToMatch: {
///                     UriPath: {},
///                 },
///                 TextTransformations: [{
///                     Priority: 1,
///                     Type: "NONE",
///                 }],
///                 PositionalConstraint: "CONTAINS",
///             },
///         },
///         VisibilityConfig: {
///             CloudwatchMetricsEnabled: false,
///             MetricName: "friendly-rule-metric-name",
///             SampledRequestsEnabled: false,
///         },
///     }]),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.wafv2.RuleGroup("example",
///     visibility_config={
///         "cloudwatch_metrics_enabled": False,
///         "metric_name": "friendly-metric-name",
///         "sampled_requests_enabled": False,
///     },
///     name="example-rule-group",
///     scope="REGIONAL",
///     capacity=100,
///     rules_json=json.dumps([{
///         "Name": "rule-1",
///         "Priority": 1,
///         "Action": {
///             "Count": {},
///         },
///         "Statement": {
///             "ByteMatchStatement": {
///                 "SearchString": "badbot",
///                 "FieldToMatch": {
///                     "UriPath": {},
///                 },
///                 "TextTransformations": [{
///                     "Priority": 1,
///                     "Type": "NONE",
///                 }],
///                 "PositionalConstraint": "CONTAINS",
///             },
///         },
///         "VisibilityConfig": {
///             "CloudwatchMetricsEnabled": False,
///             "MetricName": "friendly-rule-metric-name",
///             "SampledRequestsEnabled": False,
///         },
///     }]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.WafV2.RuleGroup("example", new()
///     {
///         VisibilityConfig = new Aws.WafV2.Inputs.RuleGroupVisibilityConfigArgs
///         {
///             CloudwatchMetricsEnabled = false,
///             MetricName = "friendly-metric-name",
///             SampledRequestsEnabled = false,
///         },
///         Name = "example-rule-group",
///         Scope = "REGIONAL",
///         Capacity = 100,
///         RulesJson = JsonSerializer.Serialize(new[]
///         {
///             new Dictionary<string, object?>
///             {
///                 ["Name"] = "rule-1",
///                 ["Priority"] = 1,
///                 ["Action"] = new Dictionary<string, object?>
///                 {
///                     ["Count"] = new Dictionary<string, object?>
///                     {
///                     },
///                 },
///                 ["Statement"] = new Dictionary<string, object?>
///                 {
///                     ["ByteMatchStatement"] = new Dictionary<string, object?>
///                     {
///                         ["SearchString"] = "badbot",
///                         ["FieldToMatch"] = new Dictionary<string, object?>
///                         {
///                             ["UriPath"] = new Dictionary<string, object?>
///                             {
///                             },
///                         },
///                         ["TextTransformations"] = new[]
///                         {
///                             new Dictionary<string, object?>
///                             {
///                                 ["Priority"] = 1,
///                                 ["Type"] = "NONE",
///                             },
///                         },
///                         ["PositionalConstraint"] = "CONTAINS",
///                     },
///                 },
///                 ["VisibilityConfig"] = new Dictionary<string, object?>
///                 {
///                     ["CloudwatchMetricsEnabled"] = false,
///                     ["MetricName"] = "friendly-rule-metric-name",
///                     ["SampledRequestsEnabled"] = false,
///                 },
///             },
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal([]map[string]interface{}{
/// 			map[string]interface{}{
/// 				"Name":     "rule-1",
/// 				"Priority": 1,
/// 				"Action": map[string]map[string]interface{}{
/// 					"Count": map[string]interface{}{},
/// 				},
/// 				"Statement": map[string]map[string]interface{}{
/// 					"ByteMatchStatement": map[string]interface{}{
/// 						"SearchString": "badbot",
/// 						"FieldToMatch": map[string]map[string]interface{}{
/// 							"UriPath": map[string]interface{}{},
/// 						},
/// 						"TextTransformations": []map[string]interface{}{
/// 							map[string]interface{}{
/// 								"Priority": 1,
/// 								"Type":     "NONE",
/// 							},
/// 						},
/// 						"PositionalConstraint": "CONTAINS",
/// 					},
/// 				},
/// 				"VisibilityConfig": map[string]interface{}{
/// 					"CloudwatchMetricsEnabled": false,
/// 					"MetricName":               "friendly-rule-metric-name",
/// 					"SampledRequestsEnabled":   false,
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = wafv2.NewRuleGroup(ctx, "example", &wafv2.RuleGroupArgs{
/// 			VisibilityConfig: &wafv2.RuleGroupVisibilityConfigArgs{
/// 				CloudwatchMetricsEnabled: pulumi.Bool(false),
/// 				MetricName:               pulumi.String("friendly-metric-name"),
/// 				SampledRequestsEnabled:   pulumi.Bool(false),
/// 			},
/// 			Name:      pulumi.String("example-rule-group"),
/// 			Scope:     pulumi.String("REGIONAL"),
/// 			Capacity:  pulumi.Int(100),
/// 			RulesJson: pulumi.String(json0),
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
/// resource "aws_wafv2_rulegroup" "example" {
///   visibility_config = {
///     cloudwatch_metrics_enabled = false
///     metric_name                = "friendly-metric-name"
///     sampled_requests_enabled   = false
///   }
///   name     = "example-rule-group"
///   scope    = "REGIONAL"
///   capacity = 100
///   rules_json = jsonencode([{
///     "Name"     = "rule-1"
///     "Priority" = 1
///     "Action" = {
///       "Count" = {}
///     }
///     "Statement" = {
///       "ByteMatchStatement" = {
///         "SearchString" = "badbot"
///         "FieldToMatch" = {
///           "UriPath" = {}
///         }
///         "TextTransformations" = [{
///           "Priority" = 1
///           "Type"     = "NONE"
///         }]
///         "PositionalConstraint" = "CONTAINS"
///       }
///     }
///     "VisibilityConfig" = {
///       "CloudwatchMetricsEnabled" = false
///       "MetricName"               = "friendly-rule-metric-name"
///       "SampledRequestsEnabled"   = false
///     }
///   }])
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
/// import com.pulumi.aws.wafv2.inputs.RuleGroupVisibilityConfigArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new RuleGroup("example", RuleGroupArgs.builder()
///             .visibilityConfig(RuleGroupVisibilityConfigArgs.builder()
///                 .cloudwatchMetricsEnabled(false)
///                 .metricName("friendly-metric-name")
///                 .sampledRequestsEnabled(false)
///                 .build())
///             .name("example-rule-group")
///             .scope("REGIONAL")
///             .capacity(100)
///             .rulesJson(serializeJson(
///                 jsonArray(jsonObject(
///                     jsonProperty("Name", "rule-1"),
///                     jsonProperty("Priority", 1),
///                     jsonProperty("Action", jsonObject(
///                         jsonProperty("Count", jsonObject(
///
///                         ))
///                     )),
///                     jsonProperty("Statement", jsonObject(
///                         jsonProperty("ByteMatchStatement", jsonObject(
///                             jsonProperty("SearchString", "badbot"),
///                             jsonProperty("FieldToMatch", jsonObject(
///                                 jsonProperty("UriPath", jsonObject(
///
///                                 ))
///                             )),
///                             jsonProperty("TextTransformations", jsonArray(jsonObject(
///                                 jsonProperty("Priority", 1),
///                                 jsonProperty("Type", "NONE")
///                             ))),
///                             jsonProperty("PositionalConstraint", "CONTAINS")
///                         ))
///                     )),
///                     jsonProperty("VisibilityConfig", jsonObject(
///                         jsonProperty("CloudwatchMetricsEnabled", false),
///                         jsonProperty("MetricName", "friendly-rule-metric-name"),
///                         jsonProperty("SampledRequestsEnabled", false)
///                     ))
///                 ))))
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
///       visibilityConfig:
///         cloudwatchMetricsEnabled: false
///         metricName: friendly-metric-name
///         sampledRequestsEnabled: false
///       name: example-rule-group
///       scope: REGIONAL
///       capacity: 100
///       rulesJson:
///         fn::toJSON:
///           - Name: rule-1
///             Priority: 1
///             Action:
///               Count: {}
///             Statement:
///               ByteMatchStatement:
///                 SearchString: badbot
///                 FieldToMatch:
///                   UriPath: {}
///                 TextTransformations:
///                   - Priority: 1
///                     Type: NONE
///                 PositionalConstraint: CONTAINS
///             VisibilityConfig:
///               CloudwatchMetricsEnabled: false
///               MetricName: friendly-rule-metric-name
///               SampledRequestsEnabled: false
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import WAFv2 Rule Group using `ID/name/scope`. For example:
///
/// ```sh
/// $ pulumi import aws:wafv2/ruleGroup:RuleGroup example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc/example/REGIONAL
/// ```
class RuleGroup extends pulumi.CustomResource {
  /// The ARN of the WAF rule group.
  late final pulumi.Output<String> arn;
  /// The web ACL capacity units (WCUs) required for this rule group. See [here](https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateRuleGroup.html#API_CreateRuleGroup_RequestSyntax) for general information and [here](https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-statements-list.html) for capacity specific information.
  late final pulumi.Output<int> capacity;
  /// Defines custom response bodies that can be referenced by `customResponse` actions. See Custom Response Body below for details.
  late final pulumi.Output<List<RuleGroupCustomResponseBody>?> customResponseBodies;
  /// A friendly description of the rule group.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<String> lockToken;
  /// A friendly name of the rule group.
  late final pulumi.Output<String> name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The rule blocks used to identify the web requests that you want to `allow`, `block`, or `count`. See Rules below for details.
  late final pulumi.Output<List<RuleGroupRule>?> rules;
  /// Raw JSON string to allow more than three nested statements. Conflicts with `rule` attribute. This is for advanced use cases where more than 3 levels of nested statements are required. **There is no drift detection at this time**. If you use this attribute instead of `rule`, you will be foregoing drift detection. Additionally, importing an existing rule group into a configuration with `rulesJson` set will result in a one time in-place update as the remote rule configuration is initially written to the `rule` attribute. See the AWS [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateRuleGroup.html) for the JSON structure.
  late final pulumi.Output<String?> rulesJson;
  /// Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the region `us-east-1` (N. Virginia) on the AWS provider.
  late final pulumi.Output<String> scope;
  /// An array of key:value pairs to associate with the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Defines and enables Amazon CloudWatch metrics and web request sample collection. See Visibility Configuration below for details.
  late final pulumi.Output<RuleGroupVisibilityConfig> visibilityConfig;

  /// Creates a new [RuleGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RuleGroup]. {@macro pulumi_wafv2_rule_group_rule_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RuleGroup(
    String name, {
    RuleGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafv2/ruleGroup:RuleGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    capacity = registerOutput<int>('capacity');
    customResponseBodies = registerOutput<List<RuleGroupCustomResponseBody>?>('customResponseBodies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RuleGroupCustomResponseBody>(guardedValue, (value) => RuleGroupCustomResponseBody.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    lockToken = registerOutput<String>('lockToken');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    rules = registerOutput<List<RuleGroupRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RuleGroupRule>(guardedValue, (value) => RuleGroupRule.fromMap((value as Map).cast<String, dynamic>())); });
    rulesJson = registerOutput<String?>('rulesJson');
    scope = registerOutput<String>('scope');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    visibilityConfig = registerOutput<RuleGroupVisibilityConfig>('visibilityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuleGroupVisibilityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [RuleGroup] resource's state with the given [name] and [id].
  static RuleGroup get(
    String name,
    pulumi.Input<String> id, {
    RuleGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RuleGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RuleGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafv2/ruleGroup:RuleGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    capacity = registerOutput<int>('capacity');
    customResponseBodies = registerOutput<List<RuleGroupCustomResponseBody>?>('customResponseBodies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RuleGroupCustomResponseBody>(guardedValue, (value) => RuleGroupCustomResponseBody.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    lockToken = registerOutput<String>('lockToken');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    rules = registerOutput<List<RuleGroupRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RuleGroupRule>(guardedValue, (value) => RuleGroupRule.fromMap((value as Map).cast<String, dynamic>())); });
    rulesJson = registerOutput<String?>('rulesJson');
    scope = registerOutput<String>('scope');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    visibilityConfig = registerOutput<RuleGroupVisibilityConfig>('visibilityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuleGroupVisibilityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [RuleGroup] resource.
  RuleGroup.reference(String urn)
    : super(
        'aws:wafv2/ruleGroup:RuleGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    capacity = registerOutput<int>('capacity');
    customResponseBodies = registerOutput<List<RuleGroupCustomResponseBody>?>('customResponseBodies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RuleGroupCustomResponseBody>(guardedValue, (value) => RuleGroupCustomResponseBody.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    lockToken = registerOutput<String>('lockToken');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    rules = registerOutput<List<RuleGroupRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RuleGroupRule>(guardedValue, (value) => RuleGroupRule.fromMap((value as Map).cast<String, dynamic>())); });
    rulesJson = registerOutput<String?>('rulesJson');
    scope = registerOutput<String>('scope');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    visibilityConfig = registerOutput<RuleGroupVisibilityConfig>('visibilityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuleGroupVisibilityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
