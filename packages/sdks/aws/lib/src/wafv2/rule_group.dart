import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_args.dart';
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
///     name: "example-rule",
///     scope: "REGIONAL",
///     capacity: 2,
///     rules: [{
///         name: "rule-1",
///         priority: 1,
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
///     }],
///     visibilityConfig: {
///         cloudwatchMetricsEnabled: false,
///         metricName: "friendly-metric-name",
///         sampledRequestsEnabled: false,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafv2.RuleGroup("example",
///     name="example-rule",
///     scope="REGIONAL",
///     capacity=2,
///     rules=[{
///         "name": "rule-1",
///         "priority": 1,
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
///     }],
///     visibility_config={
///         "cloudwatch_metrics_enabled": False,
///         "metric_name": "friendly-metric-name",
///         "sampled_requests_enabled": False,
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
///         Name = "example-rule",
///         Scope = "REGIONAL",
///         Capacity = 2,
///         Rules = new[]
///         {
///             new Aws.WafV2.Inputs.RuleGroupRuleArgs
///             {
///                 Name = "rule-1",
///                 Priority = 1,
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
///             },
///         },
///         VisibilityConfig = new Aws.WafV2.Inputs.RuleGroupVisibilityConfigArgs
///         {
///             CloudwatchMetricsEnabled = false,
///             MetricName = "friendly-metric-name",
///             SampledRequestsEnabled = false,
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
/// 		_, err := wafv2.NewRuleGroup(ctx, "example", &wafv2.RuleGroupArgs{
/// 			Name:     pulumi.String("example-rule"),
/// 			Scope:    pulumi.String("REGIONAL"),
/// 			Capacity: pulumi.Int(2),
/// 			Rules: wafv2.RuleGroupRuleArray{
/// 				&wafv2.RuleGroupRuleArgs{
/// 					Name:     pulumi.String("rule-1"),
/// 					Priority: pulumi.Int(1),
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
/// 				},
/// 			},
/// 			VisibilityConfig: &wafv2.RuleGroupVisibilityConfigArgs{
/// 				CloudwatchMetricsEnabled: pulumi.Bool(false),
/// 				MetricName:               pulumi.String("friendly-metric-name"),
/// 				SampledRequestsEnabled:   pulumi.Bool(false),
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
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleActionAllowArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementGeoMatchStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleVisibilityConfigArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupVisibilityConfigArgs;
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
///             .name("example-rule")
///             .scope("REGIONAL")
///             .capacity(2)
///             .rules(RuleGroupRuleArgs.builder()
///                 .name("rule-1")
///                 .priority(1)
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
///                 .build())
///             .visibilityConfig(RuleGroupVisibilityConfigArgs.builder()
///                 .cloudwatchMetricsEnabled(false)
///                 .metricName("friendly-metric-name")
///                 .sampledRequestsEnabled(false)
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
///       name: example-rule
///       scope: REGIONAL
///       capacity: 2
///       rules:
///         - name: rule-1
///           priority: 1
///           action:
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
///       visibilityConfig:
///         cloudwatchMetricsEnabled: false
///         metricName: friendly-metric-name
///         sampledRequestsEnabled: false
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
///     name: "test",
///     scope: "REGIONAL",
///     regularExpressions: [{
///         regexString: "one",
///     }],
/// });
/// const example = new aws.wafv2.RuleGroup("example", {
///     name: "complex-example",
///     description: "An rule group containing all statements",
///     scope: "REGIONAL",
///     capacity: 500,
///     rules: [
///         {
///             name: "rule-1",
///             priority: 1,
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
///                                         positionalConstraint: "CONTAINS",
///                                         searchString: "word",
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
///         },
///         {
///             name: "rule-2",
///             priority: 2,
///             action: {
///                 count: {},
///             },
///             statement: {
///                 orStatement: {
///                     statements: [
///                         {
///                             regexMatchStatement: {
///                                 regexString: "a-z?",
///                                 fieldToMatch: {
///                                     singleHeader: {
///                                         name: "user-agent",
///                                     },
///                                 },
///                                 textTransformations: [{
///                                     priority: 6,
///                                     type: "NONE",
///                                 }],
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
///         },
///         {
///             name: "rule-3",
///             priority: 3,
///             action: {
///                 block: {},
///             },
///             statement: {
///                 sizeConstraintStatement: {
///                     comparisonOperator: "GT",
///                     size: 100,
///                     fieldToMatch: {
///                         singleQueryArgument: {
///                             name: "username",
///                         },
///                     },
///                     textTransformations: [{
///                         priority: 5,
///                         type: "NONE",
///                     }],
///                 },
///             },
///             visibilityConfig: {
///                 cloudwatchMetricsEnabled: false,
///                 metricName: "rule-3",
///                 sampledRequestsEnabled: false,
///             },
///         },
///         {
///             name: "rule-4",
///             priority: 4,
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
///                                 arn: testRegexPatternSet.arn,
///                                 fieldToMatch: {
///                                     singleHeader: {
///                                         name: "referer",
///                                     },
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
///                 metricName: "rule-4",
///                 sampledRequestsEnabled: false,
///             },
///         },
///     ],
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
///     name="test",
///     scope="REGIONAL",
///     regular_expressions=[{
///         "regex_string": "one",
///     }])
/// example = aws.wafv2.RuleGroup("example",
///     name="complex-example",
///     description="An rule group containing all statements",
///     scope="REGIONAL",
///     capacity=500,
///     rules=[
///         {
///             "name": "rule-1",
///             "priority": 1,
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
///                                         "positional_constraint": "CONTAINS",
///                                         "search_string": "word",
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
///         },
///         {
///             "name": "rule-2",
///             "priority": 2,
///             "action": {
///                 "count": {},
///             },
///             "statement": {
///                 "or_statement": {
///                     "statements": [
///                         {
///                             "regex_match_statement": {
///                                 "regex_string": "a-z?",
///                                 "field_to_match": {
///                                     "single_header": {
///                                         "name": "user-agent",
///                                     },
///                                 },
///                                 "text_transformations": [{
///                                     "priority": 6,
///                                     "type": "NONE",
///                                 }],
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
///         },
///         {
///             "name": "rule-3",
///             "priority": 3,
///             "action": {
///                 "block": {},
///             },
///             "statement": {
///                 "size_constraint_statement": {
///                     "comparison_operator": "GT",
///                     "size": 100,
///                     "field_to_match": {
///                         "single_query_argument": {
///                             "name": "username",
///                         },
///                     },
///                     "text_transformations": [{
///                         "priority": 5,
///                         "type": "NONE",
///                     }],
///                 },
///             },
///             "visibility_config": {
///                 "cloudwatch_metrics_enabled": False,
///                 "metric_name": "rule-3",
///                 "sampled_requests_enabled": False,
///             },
///         },
///         {
///             "name": "rule-4",
///             "priority": 4,
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
///                                 "arn": test_regex_pattern_set.arn,
///                                 "field_to_match": {
///                                     "single_header": {
///                                         "name": "referer",
///                                     },
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
///                 "metric_name": "rule-4",
///                 "sampled_requests_enabled": False,
///             },
///         },
///     ],
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
///         Name = "test",
///         Scope = "REGIONAL",
///         RegularExpressions = new[]
///         {
///             new Aws.WafV2.Inputs.RegexPatternSetRegularExpressionArgs
///             {
///                 RegexString = "one",
///             },
///         },
///     });
///
///     var example = new Aws.WafV2.RuleGroup("example", new()
///     {
///         Name = "complex-example",
///         Description = "An rule group containing all statements",
///         Scope = "REGIONAL",
///         Capacity = 500,
///         Rules = new[]
///         {
///             new Aws.WafV2.Inputs.RuleGroupRuleArgs
///             {
///                 Name = "rule-1",
///                 Priority = 1,
///                 Action = new Aws.WafV2.Inputs.RuleGroupRuleActionArgs
///                 {
///                     Block = null,
///                 },
///                 Statement = new Aws.WafV2.Inputs.RuleGroupRuleStatementArgs
///                 {
///                     NotStatement = new Aws.WafV2.Inputs.RuleGroupRuleStatementNotStatementArgs
///                     {
///                         Statements = new[]
///                         {
///                             new Aws.WafV2.Inputs.RuleGroupRuleStatementArgs
///                             {
///                                 AndStatement = new Aws.WafV2.Inputs.RuleGroupRuleStatementAndStatementArgs
///                                 {
///                                     Statements = new[]
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
///                                                 PositionalConstraint = "CONTAINS",
///                                                 SearchString = "word",
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
///             },
///             new Aws.WafV2.Inputs.RuleGroupRuleArgs
///             {
///                 Name = "rule-2",
///                 Priority = 2,
///                 Action = new Aws.WafV2.Inputs.RuleGroupRuleActionArgs
///                 {
///                     Count = null,
///                 },
///                 Statement = new Aws.WafV2.Inputs.RuleGroupRuleStatementArgs
///                 {
///                     OrStatement = new Aws.WafV2.Inputs.RuleGroupRuleStatementOrStatementArgs
///                     {
///                         Statements = new[]
///                         {
///                             new Aws.WafV2.Inputs.RuleGroupRuleStatementArgs
///                             {
///                                 RegexMatchStatement = new Aws.WafV2.Inputs.RuleGroupRuleStatementRegexMatchStatementArgs
///                                 {
///                                     RegexString = "a-z?",
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
///             },
///             new Aws.WafV2.Inputs.RuleGroupRuleArgs
///             {
///                 Name = "rule-3",
///                 Priority = 3,
///                 Action = new Aws.WafV2.Inputs.RuleGroupRuleActionArgs
///                 {
///                     Block = null,
///                 },
///                 Statement = new Aws.WafV2.Inputs.RuleGroupRuleStatementArgs
///                 {
///                     SizeConstraintStatement = new Aws.WafV2.Inputs.RuleGroupRuleStatementSizeConstraintStatementArgs
///                     {
///                         ComparisonOperator = "GT",
///                         Size = 100,
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
///                     },
///                 },
///                 VisibilityConfig = new Aws.WafV2.Inputs.RuleGroupRuleVisibilityConfigArgs
///                 {
///                     CloudwatchMetricsEnabled = false,
///                     MetricName = "rule-3",
///                     SampledRequestsEnabled = false,
///                 },
///             },
///             new Aws.WafV2.Inputs.RuleGroupRuleArgs
///             {
///                 Name = "rule-4",
///                 Priority = 4,
///                 Action = new Aws.WafV2.Inputs.RuleGroupRuleActionArgs
///                 {
///                     Block = null,
///                 },
///                 Statement = new Aws.WafV2.Inputs.RuleGroupRuleStatementArgs
///                 {
///                     OrStatement = new Aws.WafV2.Inputs.RuleGroupRuleStatementOrStatementArgs
///                     {
///                         Statements = new[]
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
///                                     Arn = testRegexPatternSet.Arn,
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
///             },
///         },
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
/// 			Name:  pulumi.String("test"),
/// 			Scope: pulumi.String("REGIONAL"),
/// 			RegularExpressions: wafv2.RegexPatternSetRegularExpressionArray{
/// 				&wafv2.RegexPatternSetRegularExpressionArgs{
/// 					RegexString: pulumi.String("one"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = wafv2.NewRuleGroup(ctx, "example", &wafv2.RuleGroupArgs{
/// 			Name:        pulumi.String("complex-example"),
/// 			Description: pulumi.String("An rule group containing all statements"),
/// 			Scope:       pulumi.String("REGIONAL"),
/// 			Capacity:    pulumi.Int(500),
/// 			Rules: wafv2.RuleGroupRuleArray{
/// 				&wafv2.RuleGroupRuleArgs{
/// 					Name:     pulumi.String("rule-1"),
/// 					Priority: pulumi.Int(1),
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
/// 													PositionalConstraint: pulumi.String("CONTAINS"),
/// 													SearchString:         pulumi.String("word"),
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
/// 				},
/// 				&wafv2.RuleGroupRuleArgs{
/// 					Name:     pulumi.String("rule-2"),
/// 					Priority: pulumi.Int(2),
/// 					Action: &wafv2.RuleGroupRuleActionArgs{
/// 						Count: &wafv2.RuleGroupRuleActionCountArgs{},
/// 					},
/// 					Statement: &wafv2.RuleGroupRuleStatementArgs{
/// 						OrStatement: &wafv2.RuleGroupRuleStatementOrStatementArgs{
/// 							Statements: wafv2.RuleGroupRuleStatementArray{
/// 								&wafv2.RuleGroupRuleStatementArgs{
/// 									RegexMatchStatement: &wafv2.RuleGroupRuleStatementRegexMatchStatementArgs{
/// 										RegexString: pulumi.String("a-z?"),
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
/// 				},
/// 				&wafv2.RuleGroupRuleArgs{
/// 					Name:     pulumi.String("rule-3"),
/// 					Priority: pulumi.Int(3),
/// 					Action: &wafv2.RuleGroupRuleActionArgs{
/// 						Block: &wafv2.RuleGroupRuleActionBlockArgs{},
/// 					},
/// 					Statement: &wafv2.RuleGroupRuleStatementArgs{
/// 						SizeConstraintStatement: &wafv2.RuleGroupRuleStatementSizeConstraintStatementArgs{
/// 							ComparisonOperator: pulumi.String("GT"),
/// 							Size:               pulumi.Int(100),
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
/// 						},
/// 					},
/// 					VisibilityConfig: &wafv2.RuleGroupRuleVisibilityConfigArgs{
/// 						CloudwatchMetricsEnabled: pulumi.Bool(false),
/// 						MetricName:               pulumi.String("rule-3"),
/// 						SampledRequestsEnabled:   pulumi.Bool(false),
/// 					},
/// 				},
/// 				&wafv2.RuleGroupRuleArgs{
/// 					Name:     pulumi.String("rule-4"),
/// 					Priority: pulumi.Int(4),
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
/// 										Arn: testRegexPatternSet.Arn,
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
/// 				},
/// 			},
/// 			VisibilityConfig: &wafv2.RuleGroupVisibilityConfigArgs{
/// 				CloudwatchMetricsEnabled: pulumi.Bool(false),
/// 				MetricName:               pulumi.String("friendly-metric-name"),
/// 				SampledRequestsEnabled:   pulumi.Bool(false),
/// 			},
/// 			CaptchaConfig: []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"immunityTimeProperty": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"immunityTime": 120,
/// 						},
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleActionArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleActionBlockArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementNotStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleVisibilityConfigArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleActionCountArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementOrStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleCaptchaConfigArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleCaptchaConfigImmunityTimePropertyArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementSizeConstraintStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementSizeConstraintStatementFieldToMatchArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupRuleStatementSizeConstraintStatementFieldToMatchSingleQueryArgumentArgs;
/// import com.pulumi.aws.wafv2.inputs.RuleGroupVisibilityConfigArgs;
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
///             .name("test")
///             .scope("REGIONAL")
///             .regularExpressions(RegexPatternSetRegularExpressionArgs.builder()
///                 .regexString("one")
///                 .build())
///             .build());
///
///         var example = new RuleGroup("example", RuleGroupArgs.builder()
///             .name("complex-example")
///             .description("An rule group containing all statements")
///             .scope("REGIONAL")
///             .capacity(500)
///             .rules(
///                 RuleGroupRuleArgs.builder()
///                     .name("rule-1")
///                     .priority(1)
///                     .action(RuleGroupRuleActionArgs.builder()
///                         .block(RuleGroupRuleActionBlockArgs.builder()
///                             .build())
///                         .build())
///                     .statement(Map.of("notStatement", Map.of("statements", Map.of("andStatement", Map.of("statements",
///                         RuleGroupRuleStatementArgs.builder()
///                             .geoMatchStatement(RuleGroupRuleStatementGeoMatchStatementArgs.builder()
///                                 .countryCodes("US")
///                                 .build())
///                             .build(),
///                         RuleGroupRuleStatementArgs.builder()
///                             .byteMatchStatement(RuleGroupRuleStatementByteMatchStatementArgs.builder()
///                                 .positionalConstraint("CONTAINS")
///                                 .searchString("word")
///                                 .fieldToMatch(RuleGroupRuleStatementByteMatchStatementFieldToMatchArgs.builder()
///                                     .allQueryArguments(RuleGroupRuleStatementByteMatchStatementFieldToMatchAllQueryArgumentsArgs.builder()
///                                         .build())
///                                     .build())
///                                 .textTransformations(
///                                     RuleGroupRuleStatementByteMatchStatementTextTransformationArgs.builder()
///                                         .priority(5)
///                                         .type("CMD_LINE")
///                                         .build(),
///                                     RuleGroupRuleStatementByteMatchStatementTextTransformationArgs.builder()
///                                         .priority(2)
///                                         .type("LOWERCASE")
///                                         .build())
///                                 .build())
///                             .build())))))
///                     .visibilityConfig(RuleGroupRuleVisibilityConfigArgs.builder()
///                         .cloudwatchMetricsEnabled(false)
///                         .metricName("rule-1")
///                         .sampledRequestsEnabled(false)
///                         .build())
///                     .build(),
///                 RuleGroupRuleArgs.builder()
///                     .name("rule-2")
///                     .priority(2)
///                     .action(RuleGroupRuleActionArgs.builder()
///                         .count(RuleGroupRuleActionCountArgs.builder()
///                             .build())
///                         .build())
///                     .statement(Map.of("orStatement", RuleGroupRuleStatementOrStatementArgs.builder()
///                         .statements(
///                             RuleGroupRuleStatementArgs.builder()
///                                 .regexMatchStatement(RuleGroupRuleStatementRegexMatchStatementArgs.builder()
///                                     .regexString("a-z?")
///                                     .fieldToMatch(RuleGroupRuleStatementRegexMatchStatementFieldToMatchArgs.builder()
///                                         .singleHeader(RuleGroupRuleStatementRegexMatchStatementFieldToMatchSingleHeaderArgs.builder()
///                                             .name("user-agent")
///                                             .build())
///                                         .build())
///                                     .textTransformations(RuleGroupRuleStatementRegexMatchStatementTextTransformationArgs.builder()
///                                         .priority(6)
///                                         .type("NONE")
///                                         .build())
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
///                     .build(),
///                 RuleGroupRuleArgs.builder()
///                     .name("rule-3")
///                     .priority(3)
///                     .action(RuleGroupRuleActionArgs.builder()
///                         .block(RuleGroupRuleActionBlockArgs.builder()
///                             .build())
///                         .build())
///                     .statement(RuleGroupRuleStatementArgs.builder()
///                         .sizeConstraintStatement(RuleGroupRuleStatementSizeConstraintStatementArgs.builder()
///                             .comparisonOperator("GT")
///                             .size(100)
///                             .fieldToMatch(RuleGroupRuleStatementSizeConstraintStatementFieldToMatchArgs.builder()
///                                 .singleQueryArgument(RuleGroupRuleStatementSizeConstraintStatementFieldToMatchSingleQueryArgumentArgs.builder()
///                                     .name("username")
///                                     .build())
///                                 .build())
///                             .textTransformations(RuleGroupRuleStatementSizeConstraintStatementTextTransformationArgs.builder()
///                                 .priority(5)
///                                 .type("NONE")
///                                 .build())
///                             .build())
///                         .build())
///                     .visibilityConfig(RuleGroupRuleVisibilityConfigArgs.builder()
///                         .cloudwatchMetricsEnabled(false)
///                         .metricName("rule-3")
///                         .sampledRequestsEnabled(false)
///                         .build())
///                     .build(),
///                 RuleGroupRuleArgs.builder()
///                     .name("rule-4")
///                     .priority(4)
///                     .action(RuleGroupRuleActionArgs.builder()
///                         .block(RuleGroupRuleActionBlockArgs.builder()
///                             .build())
///                         .build())
///                     .statement(Map.of("orStatement", RuleGroupRuleStatementOrStatementArgs.builder()
///                         .statements(
///                             RuleGroupRuleStatementArgs.builder()
///                                 .ipSetReferenceStatement(RuleGroupRuleStatementIpSetReferenceStatementArgs.builder()
///                                     .arn(test.arn())
///                                     .build())
///                                 .build(),
///                             RuleGroupRuleStatementArgs.builder()
///                                 .regexPatternSetReferenceStatement(RuleGroupRuleStatementRegexPatternSetReferenceStatementArgs.builder()
///                                     .arn(testRegexPatternSet.arn())
///                                     .fieldToMatch(RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchArgs.builder()
///                                         .singleHeader(RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchSingleHeaderArgs.builder()
///                                             .name("referer")
///                                             .build())
///                                         .build())
///                                     .textTransformations(RuleGroupRuleStatementRegexPatternSetReferenceStatementTextTransformationArgs.builder()
///                                         .priority(2)
///                                         .type("NONE")
///                                         .build())
///                                     .build())
///                                 .build())
///                         .build()))
///                     .visibilityConfig(RuleGroupRuleVisibilityConfigArgs.builder()
///                         .cloudwatchMetricsEnabled(false)
///                         .metricName("rule-4")
///                         .sampledRequestsEnabled(false)
///                         .build())
///                     .build())
///             .visibilityConfig(RuleGroupVisibilityConfigArgs.builder()
///                 .cloudwatchMetricsEnabled(false)
///                 .metricName("friendly-metric-name")
///                 .sampledRequestsEnabled(false)
///                 .build())
///             .captchaConfig(List.of(Map.of("immunityTimeProperty", List.of(Map.of("immunityTime", 120)))))
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
///       name: test
///       scope: REGIONAL
///       regularExpressions:
///         - regexString: one
///   example:
///     type: aws:wafv2:RuleGroup
///     properties:
///       name: complex-example
///       description: An rule group containing all statements
///       scope: REGIONAL
///       capacity: 500
///       rules:
///         - name: rule-1
///           priority: 1
///           action:
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
///                           positionalConstraint: CONTAINS
///                           searchString: word
///                           fieldToMatch:
///                             allQueryArguments: {}
///                           textTransformations:
///                             - priority: 5
///                               type: CMD_LINE
///                             - priority: 2
///                               type: LOWERCASE
///           visibilityConfig:
///             cloudwatchMetricsEnabled: false
///             metricName: rule-1
///             sampledRequestsEnabled: false
///         - name: rule-2
///           priority: 2
///           action:
///             count: {}
///           statement:
///             orStatement:
///               statements:
///                 - regexMatchStatement:
///                     regexString: a-z?
///                     fieldToMatch:
///                       singleHeader:
///                         name: user-agent
///                     textTransformations:
///                       - priority: 6
///                         type: NONE
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
///         - name: rule-3
///           priority: 3
///           action:
///             block: {}
///           statement:
///             sizeConstraintStatement:
///               comparisonOperator: GT
///               size: 100
///               fieldToMatch:
///                 singleQueryArgument:
///                   name: username
///               textTransformations:
///                 - priority: 5
///                   type: NONE
///           visibilityConfig:
///             cloudwatchMetricsEnabled: false
///             metricName: rule-3
///             sampledRequestsEnabled: false
///         - name: rule-4
///           priority: 4
///           action:
///             block: {}
///           statement:
///             orStatement:
///               statements:
///                 - ipSetReferenceStatement:
///                     arn: ${test.arn}
///                 - regexPatternSetReferenceStatement:
///                     arn: ${testRegexPatternSet.arn}
///                     fieldToMatch:
///                       singleHeader:
///                         name: referer
///                     textTransformations:
///                       - priority: 2
///                         type: NONE
///           visibilityConfig:
///             cloudwatchMetricsEnabled: false
///             metricName: rule-4
///             sampledRequestsEnabled: false
///       visibilityConfig:
///         cloudwatchMetricsEnabled: false
///         metricName: friendly-metric-name
///         sampledRequestsEnabled: false
///       captchaConfig:
///         - immunityTimeProperty:
///             - immunityTime: 120
///       tags:
///         Name: example-and-statement
///         Code: '123456'
/// ```
///
///
/// ### Using rules_json
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.wafv2.RuleGroup("example", {
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
///     visibilityConfig: {
///         cloudwatchMetricsEnabled: false,
///         metricName: "friendly-metric-name",
///         sampledRequestsEnabled: false,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.wafv2.RuleGroup("example",
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
///     }]),
///     visibility_config={
///         "cloudwatch_metrics_enabled": False,
///         "metric_name": "friendly-metric-name",
///         "sampled_requests_enabled": False,
///     })
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
///         VisibilityConfig = new Aws.WafV2.Inputs.RuleGroupVisibilityConfigArgs
///         {
///             CloudwatchMetricsEnabled = false,
///             MetricName = "friendly-metric-name",
///             SampledRequestsEnabled = false,
///         },
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
/// 				"Action": map[string]interface{}{
/// 					"Count": map[string]interface{}{},
/// 				},
/// 				"Statement": map[string]interface{}{
/// 					"ByteMatchStatement": map[string]interface{}{
/// 						"SearchString": "badbot",
/// 						"FieldToMatch": map[string]interface{}{
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
/// 			Name:      pulumi.String("example-rule-group"),
/// 			Scope:     pulumi.String("REGIONAL"),
/// 			Capacity:  pulumi.Int(100),
/// 			RulesJson: pulumi.String(json0),
/// 			VisibilityConfig: &wafv2.RuleGroupVisibilityConfigArgs{
/// 				CloudwatchMetricsEnabled: pulumi.Bool(false),
/// 				MetricName:               pulumi.String("friendly-metric-name"),
/// 				SampledRequestsEnabled:   pulumi.Bool(false),
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
/// import com.pulumi.aws.wafv2.inputs.RuleGroupVisibilityConfigArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///             .visibilityConfig(RuleGroupVisibilityConfigArgs.builder()
///                 .cloudwatchMetricsEnabled(false)
///                 .metricName("friendly-metric-name")
///                 .sampledRequestsEnabled(false)
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
///       visibilityConfig:
///         cloudwatchMetricsEnabled: false
///         metricName: friendly-metric-name
///         sampledRequestsEnabled: false
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

  /// Defines custom response bodies that can be referenced by `custom_response` actions. See Custom Response Body below for details.
  late final pulumi.Output<List<Map<String, dynamic>>?> customResponseBodies;

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
  late final pulumi.Output<List<Map<String, dynamic>>?> rules;

  /// Raw JSON string to allow more than three nested statements. Conflicts with `rule` attribute. This is for advanced use cases where more than 3 levels of nested statements are required. **There is no drift detection at this time**. If you use this attribute instead of `rule`, you will be foregoing drift detection. Additionally, importing an existing rule group into a configuration with `rules_json` set will result in a one time in-place update as the remote rule configuration is initially written to the `rule` attribute. See the AWS [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateRuleGroup.html) for the JSON structure.
  late final pulumi.Output<String?> rulesJson;

  /// Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the region `us-east-1` (N. Virginia) on the AWS provider.
  late final pulumi.Output<String> scope;

  /// An array of key:value pairs to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
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
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    capacity = registerOutput<int>('capacity');
    customResponseBodies = registerOutput<List<Map<String, dynamic>>?>(
      'customResponseBodies',
    );
    description = registerOutput<String?>('description');
    lockToken = registerOutput<String>('lockToken');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    rules = registerOutput<List<Map<String, dynamic>>?>('rules');
    rulesJson = registerOutput<String?>('rulesJson');
    scope = registerOutput<String>('scope');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    visibilityConfig = registerOutput<RuleGroupVisibilityConfig>(
      'visibilityConfig',
    );
  }

  /// Gets an existing [RuleGroup] resource's state with the given [name] and [id].
  static RuleGroup get(
    String name,
    pulumi.Input<String> id, {
    RuleGroupState? state,
  }) {
    return RuleGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    customResponseBodies = registerOutput<List<Map<String, dynamic>>?>(
      'customResponseBodies',
    );
    description = registerOutput<String?>('description');
    lockToken = registerOutput<String>('lockToken');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    rules = registerOutput<List<Map<String, dynamic>>?>('rules');
    rulesJson = registerOutput<String?>('rulesJson');
    scope = registerOutput<String>('scope');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    visibilityConfig = registerOutput<RuleGroupVisibilityConfig>(
      'visibilityConfig',
    );
  }
}
