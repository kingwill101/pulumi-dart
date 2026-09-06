import 'package:pulumi/pulumi.dart' as pulumi;
import 'cdn_endpoint_response.dart';
import 'custom_rule_list_response.dart';
import 'managed_rule_set_list_response.dart';
import 'policy_args.dart';
import 'policy_settings_response.dart';
import 'rate_limit_rule_list_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Defines web application firewall policy for Azure CDN.
///
/// Uses Azure REST API version 2025-06-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2023-05-01, 2023-07-01-preview, 2024-02-01, 2024-05-01-preview, 2024-06-01-preview, 2024-09-01, 2025-01-01-preview, 2025-04-15, 2025-07-01-preview, 2025-09-01-preview, 2025-12-01, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates specific policy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = new AzureNative.Cdn.Policy("policy", new()
///     {
///         CustomRules = new AzureNative.Cdn.Inputs.CustomRuleListArgs
///         {
///             Rules = new[]
///             {
///                 new AzureNative.Cdn.Inputs.CustomRuleArgs
///                 {
///                     Action = AzureNative.Cdn.ActionType.Block,
///                     EnabledState = AzureNative.Cdn.CustomRuleEnabledState.Enabled,
///                     MatchConditions = new[]
///                     {
///                         new AzureNative.Cdn.Inputs.MatchConditionArgs
///                         {
///                             MatchValue = new[]
///                             {
///                                 "CH",
///                             },
///                             MatchVariable = AzureNative.Cdn.WafMatchVariable.RemoteAddr,
///                             NegateCondition = false,
///                             Operator = AzureNative.Cdn.Operator.GeoMatch,
///                             Transforms = new() { },
///                         },
///                         new AzureNative.Cdn.Inputs.MatchConditionArgs
///                         {
///                             MatchValue = new[]
///                             {
///                                 "windows",
///                             },
///                             MatchVariable = AzureNative.Cdn.WafMatchVariable.RequestHeader,
///                             NegateCondition = false,
///                             Operator = AzureNative.Cdn.Operator.Contains,
///                             Selector = "UserAgent",
///                             Transforms = new() { },
///                         },
///                         new AzureNative.Cdn.Inputs.MatchConditionArgs
///                         {
///                             MatchValue = new[]
///                             {
///                                 "<?php",
///                                 "?>",
///                             },
///                             MatchVariable = AzureNative.Cdn.WafMatchVariable.QueryString,
///                             NegateCondition = false,
///                             Operator = AzureNative.Cdn.Operator.Contains,
///                             Selector = "search",
///                             Transforms = new[]
///                             {
///                                 AzureNative.Cdn.TransformType.UrlDecode,
///                                 AzureNative.Cdn.TransformType.Lowercase,
///                             },
///                         },
///                     },
///                     Name = "CustomRule1",
///                     Priority = 2,
///                 },
///             },
///         },
///         Location = "WestUs",
///         ManagedRules = new AzureNative.Cdn.Inputs.ManagedRuleSetListArgs
///         {
///             ManagedRuleSets = new[]
///             {
///                 new AzureNative.Cdn.Inputs.ManagedRuleSetArgs
///                 {
///                     RuleGroupOverrides = new[]
///                     {
///                         new AzureNative.Cdn.Inputs.ManagedRuleGroupOverrideArgs
///                         {
///                             RuleGroupName = "Group1",
///                             Rules = new[]
///                             {
///                                 new AzureNative.Cdn.Inputs.ManagedRuleOverrideArgs
///                                 {
///                                     Action = AzureNative.Cdn.ActionType.Redirect,
///                                     EnabledState = AzureNative.Cdn.ManagedRuleEnabledState.Enabled,
///                                     RuleId = "GROUP1-0001",
///                                 },
///                                 new AzureNative.Cdn.Inputs.ManagedRuleOverrideArgs
///                                 {
///                                     EnabledState = AzureNative.Cdn.ManagedRuleEnabledState.Disabled,
///                                     RuleId = "GROUP1-0002",
///                                 },
///                             },
///                         },
///                     },
///                     RuleSetType = "DefaultRuleSet",
///                     RuleSetVersion = "preview-1.0",
///                 },
///             },
///         },
///         PolicyName = "MicrosoftCdnWafPolicy",
///         PolicySettings = new AzureNative.Cdn.Inputs.PolicySettingsArgs
///         {
///             DefaultCustomBlockResponseBody = "PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg==",
///             DefaultCustomBlockResponseStatusCode = 200,
///             DefaultRedirectUrl = "http://www.bing.com",
///         },
///         RateLimitRules = new AzureNative.Cdn.Inputs.RateLimitRuleListArgs
///         {
///             Rules = new[]
///             {
///                 new AzureNative.Cdn.Inputs.RateLimitRuleArgs
///                 {
///                     Action = AzureNative.Cdn.ActionType.Block,
///                     EnabledState = AzureNative.Cdn.CustomRuleEnabledState.Enabled,
///                     MatchConditions = new[]
///                     {
///                         new AzureNative.Cdn.Inputs.MatchConditionArgs
///                         {
///                             MatchValue = new[]
///                             {
///                                 "192.168.1.0/24",
///                                 "10.0.0.0/24",
///                             },
///                             MatchVariable = AzureNative.Cdn.WafMatchVariable.RemoteAddr,
///                             NegateCondition = false,
///                             Operator = AzureNative.Cdn.Operator.IPMatch,
///                             Transforms = new() { },
///                         },
///                     },
///                     Name = "RateLimitRule1",
///                     Priority = 1,
///                     RateLimitDurationInMinutes = 0,
///                     RateLimitThreshold = 1000,
///                 },
///             },
///         },
///         ResourceGroupName = "rg1",
///         Sku = new AzureNative.Cdn.Inputs.SkuArgs
///         {
///             Name = AzureNative.Cdn.SkuName.Standard_Microsoft,
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	cdn "github.com/pulumi/pulumi-azure-native-sdk/cdn/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.NewPolicy(ctx, "policy", &cdn.PolicyArgs{
/// 			CustomRules: &cdn.CustomRuleListArgs{
/// 				Rules: cdn.CustomRuleArray{
/// 					&cdn.CustomRuleArgs{
/// 						Action:       pulumi.String(cdn.ActionTypeBlock),
/// 						EnabledState: pulumi.String(cdn.CustomRuleEnabledStateEnabled),
/// 						MatchConditions: cdn.MatchConditionArray{
/// 							&cdn.MatchConditionArgs{
/// 								MatchValue: pulumi.StringArray{
/// 									pulumi.String("CH"),
/// 								},
/// 								MatchVariable:   pulumi.String(cdn.WafMatchVariableRemoteAddr),
/// 								NegateCondition: pulumi.Bool(false),
/// 								Operator:        pulumi.String(cdn.OperatorGeoMatch),
/// 								Transforms:      pulumi.StringArray{},
/// 							},
/// 							&cdn.MatchConditionArgs{
/// 								MatchValue: pulumi.StringArray{
/// 									pulumi.String("windows"),
/// 								},
/// 								MatchVariable:   pulumi.String(cdn.WafMatchVariableRequestHeader),
/// 								NegateCondition: pulumi.Bool(false),
/// 								Operator:        pulumi.String(cdn.OperatorContains),
/// 								Selector:        pulumi.String("UserAgent"),
/// 								Transforms:      pulumi.StringArray{},
/// 							},
/// 							&cdn.MatchConditionArgs{
/// 								MatchValue: pulumi.StringArray{
/// 									pulumi.String("<?php"),
/// 									pulumi.String("?>"),
/// 								},
/// 								MatchVariable:   pulumi.String(cdn.WafMatchVariableQueryString),
/// 								NegateCondition: pulumi.Bool(false),
/// 								Operator:        pulumi.String(cdn.OperatorContains),
/// 								Selector:        pulumi.String("search"),
/// 								Transforms: pulumi.StringArray{
/// 									pulumi.String(cdn.TransformTypeUrlDecode),
/// 									pulumi.String(cdn.TransformTypeLowercase),
/// 								},
/// 							},
/// 						},
/// 						Name:     pulumi.String("CustomRule1"),
/// 						Priority: pulumi.Int(2),
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("WestUs"),
/// 			ManagedRules: &cdn.ManagedRuleSetListArgs{
/// 				ManagedRuleSets: cdn.ManagedRuleSetArray{
/// 					&cdn.ManagedRuleSetArgs{
/// 						RuleGroupOverrides: cdn.ManagedRuleGroupOverrideArray{
/// 							&cdn.ManagedRuleGroupOverrideArgs{
/// 								RuleGroupName: pulumi.String("Group1"),
/// 								Rules: cdn.ManagedRuleOverrideArray{
/// 									&cdn.ManagedRuleOverrideArgs{
/// 										Action:       pulumi.String(cdn.ActionTypeRedirect),
/// 										EnabledState: pulumi.String(cdn.ManagedRuleEnabledStateEnabled),
/// 										RuleId:       pulumi.String("GROUP1-0001"),
/// 									},
/// 									&cdn.ManagedRuleOverrideArgs{
/// 										EnabledState: pulumi.String(cdn.ManagedRuleEnabledStateDisabled),
/// 										RuleId:       pulumi.String("GROUP1-0002"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						RuleSetType:    pulumi.String("DefaultRuleSet"),
/// 						RuleSetVersion: pulumi.String("preview-1.0"),
/// 					},
/// 				},
/// 			},
/// 			PolicyName: pulumi.String("MicrosoftCdnWafPolicy"),
/// 			PolicySettings: &cdn.PolicySettingsArgs{
/// 				DefaultCustomBlockResponseBody:       pulumi.String("PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg=="),
/// 				DefaultCustomBlockResponseStatusCode: pulumi.Float64(200),
/// 				DefaultRedirectUrl:                   pulumi.String("http://www.bing.com"),
/// 			},
/// 			RateLimitRules: &cdn.RateLimitRuleListArgs{
/// 				Rules: cdn.RateLimitRuleArray{
/// 					&cdn.RateLimitRuleArgs{
/// 						Action:       pulumi.String(cdn.ActionTypeBlock),
/// 						EnabledState: pulumi.String(cdn.CustomRuleEnabledStateEnabled),
/// 						MatchConditions: cdn.MatchConditionArray{
/// 							&cdn.MatchConditionArgs{
/// 								MatchValue: pulumi.StringArray{
/// 									pulumi.String("192.168.1.0/24"),
/// 									pulumi.String("10.0.0.0/24"),
/// 								},
/// 								MatchVariable:   pulumi.String(cdn.WafMatchVariableRemoteAddr),
/// 								NegateCondition: pulumi.Bool(false),
/// 								Operator:        pulumi.String(cdn.OperatorIPMatch),
/// 								Transforms:      pulumi.StringArray{},
/// 							},
/// 						},
/// 						Name:                       pulumi.String("RateLimitRule1"),
/// 						Priority:                   pulumi.Int(1),
/// 						RateLimitDurationInMinutes: pulumi.Int(0),
/// 						RateLimitThreshold:         pulumi.Int(1000),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Sku: &cdn.SkuArgs{
/// 				Name: pulumi.String(cdn.SkuName_Standard_Microsoft),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_cdn_policy" "policy" {
///   custom_rules = {
///     rules = [{
///       "action"       = "Block"
///       "enabledState" = "Enabled"
///       "matchConditions" = [{
///         "matchValue"      = ["CH"]
///         "matchVariable"   = "RemoteAddr"
///         "negateCondition" = false
///         "operator"        = "GeoMatch"
///         "transforms"      = []
///         }, {
///         "matchValue"      = ["windows"]
///         "matchVariable"   = "RequestHeader"
///         "negateCondition" = false
///         "operator"        = "Contains"
///         "selector"        = "UserAgent"
///         "transforms"      = []
///         }, {
///         "matchValue"      = ["<?php", "?>"]
///         "matchVariable"   = "QueryString"
///         "negateCondition" = false
///         "operator"        = "Contains"
///         "selector"        = "search"
///         "transforms"      = ["UrlDecode", "Lowercase"]
///       }]
///       "name"     = "CustomRule1"
///       "priority" = 2
///     }]
///   }
///   location = "WestUs"
///   managed_rules = {
///     managed_rule_sets = [{
///       "ruleGroupOverrides" = [{
///         "ruleGroupName" = "Group1"
///         "rules" = [{
///           "action"       = "Redirect"
///           "enabledState" = "Enabled"
///           "ruleId"       = "GROUP1-0001"
///           }, {
///           "enabledState" = "Disabled"
///           "ruleId"       = "GROUP1-0002"
///         }]
///       }]
///       "ruleSetType"    = "DefaultRuleSet"
///       "ruleSetVersion" = "preview-1.0"
///     }]
///   }
///   policy_name = "MicrosoftCdnWafPolicy"
///   policy_settings = {
///     default_custom_block_response_body        = "PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg=="
///     default_custom_block_response_status_code = 200
///     default_redirect_url                      = "http://www.bing.com"
///   }
///   rate_limit_rules = {
///     rules = [{
///       "action"       = "Block"
///       "enabledState" = "Enabled"
///       "matchConditions" = [{
///         "matchValue"      = ["192.168.1.0/24", "10.0.0.0/24"]
///         "matchVariable"   = "RemoteAddr"
///         "negateCondition" = false
///         "operator"        = "IPMatch"
///         "transforms"      = []
///       }]
///       "name"                       = "RateLimitRule1"
///       "priority"                   = 1
///       "rateLimitDurationInMinutes" = 0
///       "rateLimitThreshold"         = 1000
///     }]
///   }
///   resource_group_name = "rg1"
///   sku = {
///     name = "Standard_Microsoft"
///   }
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.cdn.Policy;
/// import com.pulumi.azurenative.cdn.PolicyArgs;
/// import com.pulumi.azurenative.cdn.inputs.CustomRuleListArgs;
/// import com.pulumi.azurenative.cdn.inputs.ManagedRuleSetListArgs;
/// import com.pulumi.azurenative.cdn.inputs.PolicySettingsArgs;
/// import com.pulumi.azurenative.cdn.inputs.RateLimitRuleListArgs;
/// import com.pulumi.azurenative.cdn.inputs.SkuArgs;
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
///         var policy = new Policy("policy", PolicyArgs.builder()
///             .customRules(CustomRuleListArgs.builder()
///                 .rules(CustomRuleArgs.builder()
///                     .action("Block")
///                     .enabledState("Enabled")
///                     .matchConditions(
///                         MatchConditionArgs.builder()
///                             .matchValue("CH")
///                             .matchVariable("RemoteAddr")
///                             .negateCondition(false)
///                             .operator("GeoMatch")
///                             .transforms()
///                             .build(),
///                         MatchConditionArgs.builder()
///                             .matchValue("windows")
///                             .matchVariable("RequestHeader")
///                             .negateCondition(false)
///                             .operator("Contains")
///                             .selector("UserAgent")
///                             .transforms()
///                             .build(),
///                         MatchConditionArgs.builder()
///                             .matchValue(
///                                 "<?php",
///                                 "?>")
///                             .matchVariable("QueryString")
///                             .negateCondition(false)
///                             .operator("Contains")
///                             .selector("search")
///                             .transforms(
///                                 "UrlDecode",
///                                 "Lowercase")
///                             .build())
///                     .name("CustomRule1")
///                     .priority(2)
///                     .build())
///                 .build())
///             .location("WestUs")
///             .managedRules(ManagedRuleSetListArgs.builder()
///                 .managedRuleSets(ManagedRuleSetArgs.builder()
///                     .ruleGroupOverrides(ManagedRuleGroupOverrideArgs.builder()
///                         .ruleGroupName("Group1")
///                         .rules(
///                             ManagedRuleOverrideArgs.builder()
///                                 .action("Redirect")
///                                 .enabledState("Enabled")
///                                 .ruleId("GROUP1-0001")
///                                 .build(),
///                             ManagedRuleOverrideArgs.builder()
///                                 .enabledState("Disabled")
///                                 .ruleId("GROUP1-0002")
///                                 .build())
///                         .build())
///                     .ruleSetType("DefaultRuleSet")
///                     .ruleSetVersion("preview-1.0")
///                     .build())
///                 .build())
///             .policyName("MicrosoftCdnWafPolicy")
///             .policySettings(PolicySettingsArgs.builder()
///                 .defaultCustomBlockResponseBody("PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg==")
///                 .defaultCustomBlockResponseStatusCode(200.0)
///                 .defaultRedirectUrl("http://www.bing.com")
///                 .build())
///             .rateLimitRules(RateLimitRuleListArgs.builder()
///                 .rules(RateLimitRuleArgs.builder()
///                     .action("Block")
///                     .enabledState("Enabled")
///                     .matchConditions(MatchConditionArgs.builder()
///                         .matchValue(
///                             "192.168.1.0/24",
///                             "10.0.0.0/24")
///                         .matchVariable("RemoteAddr")
///                         .negateCondition(false)
///                         .operator("IPMatch")
///                         .transforms()
///                         .build())
///                     .name("RateLimitRule1")
///                     .priority(1)
///                     .rateLimitDurationInMinutes(0)
///                     .rateLimitThreshold(1000)
///                     .build())
///                 .build())
///             .resourceGroupName("rg1")
///             .sku(SkuArgs.builder()
///                 .name("Standard_Microsoft")
///                 .build())
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const policy = new azure_native.cdn.Policy("policy", {
///     customRules: {
///         rules: [{
///             action: azure_native.cdn.ActionType.Block,
///             enabledState: azure_native.cdn.CustomRuleEnabledState.Enabled,
///             matchConditions: [
///                 {
///                     matchValue: ["CH"],
///                     matchVariable: azure_native.cdn.WafMatchVariable.RemoteAddr,
///                     negateCondition: false,
///                     operator: azure_native.cdn.Operator.GeoMatch,
///                     transforms: [],
///                 },
///                 {
///                     matchValue: ["windows"],
///                     matchVariable: azure_native.cdn.WafMatchVariable.RequestHeader,
///                     negateCondition: false,
///                     operator: azure_native.cdn.Operator.Contains,
///                     selector: "UserAgent",
///                     transforms: [],
///                 },
///                 {
///                     matchValue: [
///                         "<?php",
///                         "?>",
///                     ],
///                     matchVariable: azure_native.cdn.WafMatchVariable.QueryString,
///                     negateCondition: false,
///                     operator: azure_native.cdn.Operator.Contains,
///                     selector: "search",
///                     transforms: [
///                         azure_native.cdn.TransformType.UrlDecode,
///                         azure_native.cdn.TransformType.Lowercase,
///                     ],
///                 },
///             ],
///             name: "CustomRule1",
///             priority: 2,
///         }],
///     },
///     location: "WestUs",
///     managedRules: {
///         managedRuleSets: [{
///             ruleGroupOverrides: [{
///                 ruleGroupName: "Group1",
///                 rules: [
///                     {
///                         action: azure_native.cdn.ActionType.Redirect,
///                         enabledState: azure_native.cdn.ManagedRuleEnabledState.Enabled,
///                         ruleId: "GROUP1-0001",
///                     },
///                     {
///                         enabledState: azure_native.cdn.ManagedRuleEnabledState.Disabled,
///                         ruleId: "GROUP1-0002",
///                     },
///                 ],
///             }],
///             ruleSetType: "DefaultRuleSet",
///             ruleSetVersion: "preview-1.0",
///         }],
///     },
///     policyName: "MicrosoftCdnWafPolicy",
///     policySettings: {
///         defaultCustomBlockResponseBody: "PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg==",
///         defaultCustomBlockResponseStatusCode: 200,
///         defaultRedirectUrl: "http://www.bing.com",
///     },
///     rateLimitRules: {
///         rules: [{
///             action: azure_native.cdn.ActionType.Block,
///             enabledState: azure_native.cdn.CustomRuleEnabledState.Enabled,
///             matchConditions: [{
///                 matchValue: [
///                     "192.168.1.0/24",
///                     "10.0.0.0/24",
///                 ],
///                 matchVariable: azure_native.cdn.WafMatchVariable.RemoteAddr,
///                 negateCondition: false,
///                 operator: azure_native.cdn.Operator.IPMatch,
///                 transforms: [],
///             }],
///             name: "RateLimitRule1",
///             priority: 1,
///             rateLimitDurationInMinutes: 0,
///             rateLimitThreshold: 1000,
///         }],
///     },
///     resourceGroupName: "rg1",
///     sku: {
///         name: azure_native.cdn.SkuName.Standard_Microsoft,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// policy = azure_native.cdn.Policy("policy",
///     custom_rules={
///         "rules": [{
///             "action": azure_native.cdn.ActionType.BLOCK,
///             "enabled_state": azure_native.cdn.CustomRuleEnabledState.ENABLED,
///             "match_conditions": [
///                 {
///                     "match_value": ["CH"],
///                     "match_variable": azure_native.cdn.WafMatchVariable.REMOTE_ADDR,
///                     "negate_condition": False,
///                     "operator": azure_native.cdn.Operator.GEO_MATCH,
///                     "transforms": [],
///                 },
///                 {
///                     "match_value": ["windows"],
///                     "match_variable": azure_native.cdn.WafMatchVariable.REQUEST_HEADER,
///                     "negate_condition": False,
///                     "operator": azure_native.cdn.Operator.CONTAINS,
///                     "selector": "UserAgent",
///                     "transforms": [],
///                 },
///                 {
///                     "match_value": [
///                         "<?php",
///                         "?>",
///                     ],
///                     "match_variable": azure_native.cdn.WafMatchVariable.QUERY_STRING,
///                     "negate_condition": False,
///                     "operator": azure_native.cdn.Operator.CONTAINS,
///                     "selector": "search",
///                     "transforms": [
///                         azure_native.cdn.TransformType.URL_DECODE,
///                         azure_native.cdn.TransformType.LOWERCASE,
///                     ],
///                 },
///             ],
///             "name": "CustomRule1",
///             "priority": 2,
///         }],
///     },
///     location="WestUs",
///     managed_rules={
///         "managed_rule_sets": [{
///             "rule_group_overrides": [{
///                 "rule_group_name": "Group1",
///                 "rules": [
///                     {
///                         "action": azure_native.cdn.ActionType.REDIRECT,
///                         "enabled_state": azure_native.cdn.ManagedRuleEnabledState.ENABLED,
///                         "rule_id": "GROUP1-0001",
///                     },
///                     {
///                         "enabled_state": azure_native.cdn.ManagedRuleEnabledState.DISABLED,
///                         "rule_id": "GROUP1-0002",
///                     },
///                 ],
///             }],
///             "rule_set_type": "DefaultRuleSet",
///             "rule_set_version": "preview-1.0",
///         }],
///     },
///     policy_name="MicrosoftCdnWafPolicy",
///     policy_settings={
///         "default_custom_block_response_body": "PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg==",
///         "default_custom_block_response_status_code": float(200),
///         "default_redirect_url": "http://www.bing.com",
///     },
///     rate_limit_rules={
///         "rules": [{
///             "action": azure_native.cdn.ActionType.BLOCK,
///             "enabled_state": azure_native.cdn.CustomRuleEnabledState.ENABLED,
///             "match_conditions": [{
///                 "match_value": [
///                     "192.168.1.0/24",
///                     "10.0.0.0/24",
///                 ],
///                 "match_variable": azure_native.cdn.WafMatchVariable.REMOTE_ADDR,
///                 "negate_condition": False,
///                 "operator": azure_native.cdn.Operator.IP_MATCH,
///                 "transforms": [],
///             }],
///             "name": "RateLimitRule1",
///             "priority": 1,
///             "rate_limit_duration_in_minutes": 0,
///             "rate_limit_threshold": 1000,
///         }],
///     },
///     resource_group_name="rg1",
///     sku={
///         "name": azure_native.cdn.SkuName.STANDARD_MICROSOFT,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   policy:
///     type: azure-native:cdn:Policy
///     properties:
///       customRules:
///         rules:
///           - action: Block
///             enabledState: Enabled
///             matchConditions:
///               - matchValue:
///                   - CH
///                 matchVariable: RemoteAddr
///                 negateCondition: false
///                 operator: GeoMatch
///                 transforms: []
///               - matchValue:
///                   - windows
///                 matchVariable: RequestHeader
///                 negateCondition: false
///                 operator: Contains
///                 selector: UserAgent
///                 transforms: []
///               - matchValue:
///                   - <?php
///                   - ?>
///                 matchVariable: QueryString
///                 negateCondition: false
///                 operator: Contains
///                 selector: search
///                 transforms:
///                   - UrlDecode
///                   - Lowercase
///             name: CustomRule1
///             priority: 2
///       location: WestUs
///       managedRules:
///         managedRuleSets:
///           - ruleGroupOverrides:
///               - ruleGroupName: Group1
///                 rules:
///                   - action: Redirect
///                     enabledState: Enabled
///                     ruleId: GROUP1-0001
///                   - enabledState: Disabled
///                     ruleId: GROUP1-0002
///             ruleSetType: DefaultRuleSet
///             ruleSetVersion: preview-1.0
///       policyName: MicrosoftCdnWafPolicy
///       policySettings:
///         defaultCustomBlockResponseBody: PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg==
///         defaultCustomBlockResponseStatusCode: 200
///         defaultRedirectUrl: http://www.bing.com
///       rateLimitRules:
///         rules:
///           - action: Block
///             enabledState: Enabled
///             matchConditions:
///               - matchValue:
///                   - 192.168.1.0/24
///                   - 10.0.0.0/24
///                 matchVariable: RemoteAddr
///                 negateCondition: false
///                 operator: IPMatch
///                 transforms: []
///             name: RateLimitRule1
///             priority: 1
///             rateLimitDurationInMinutes: 0
///             rateLimitThreshold: 1000
///       resourceGroupName: rg1
///       sku:
///         name: Standard_Microsoft
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:cdn:Policy MicrosoftCdnWafPolicy /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/cdnWebApplicationFirewallPolicies/{policyName}
/// ```
class Policy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Describes custom rules inside the policy.
  late final pulumi.Output<CustomRuleListResponse?> customRules;
  /// Describes Azure CDN endpoints associated with this Web Application Firewall policy.
  late final pulumi.Output<List<CdnEndpointResponse>> endpointLinks;
  /// Gets a unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String?> etag;
  /// Key-Value pair representing additional properties for Web Application Firewall policy.
  late final pulumi.Output<Map<String, String>?> extendedProperties;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Describes managed rules inside the policy.
  late final pulumi.Output<ManagedRuleSetListResponse?> managedRules;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Describes  policySettings for policy
  late final pulumi.Output<PolicySettingsResponse?> policySettings;
  /// Provisioning state of the WebApplicationFirewallPolicy.
  late final pulumi.Output<String> provisioningState;
  /// Describes rate limit rules inside the policy.
  late final pulumi.Output<RateLimitRuleListResponse?> rateLimitRules;
  /// Resource status of the policy.
  late final pulumi.Output<String> resourceState;
  /// The pricing tier (defines a CDN provider, feature list and rate) of the CdnWebApplicationFirewallPolicy.
  late final pulumi.Output<SkuResponse> sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Policy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Policy]. {@macro pulumi_cdn_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Policy(
    String name, {
    PolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cdn:Policy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    customRules = registerOutput<CustomRuleListResponse?>('customRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomRuleListResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpointLinks = registerOutput<List<CdnEndpointResponse>>('endpointLinks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CdnEndpointResponse>(guardedValue, (value) => CdnEndpointResponse.fromMap((value as Map).cast<String, dynamic>())); });
    etag = registerOutput<String?>('etag');
    extendedProperties = registerOutput<Map<String, String>?>('extendedProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    managedRules = registerOutput<ManagedRuleSetListResponse?>('managedRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedRuleSetListResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    policySettings = registerOutput<PolicySettingsResponse?>('policySettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicySettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    rateLimitRules = registerOutput<RateLimitRuleListResponse?>('rateLimitRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RateLimitRuleListResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceState = registerOutput<String>('resourceState');
    sku = registerOutput<SkuResponse>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Policy] resource.
  Policy.reference(String urn)
    : super(
        'azure-native:cdn:Policy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    customRules = registerOutput<CustomRuleListResponse?>('customRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomRuleListResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpointLinks = registerOutput<List<CdnEndpointResponse>>('endpointLinks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CdnEndpointResponse>(guardedValue, (value) => CdnEndpointResponse.fromMap((value as Map).cast<String, dynamic>())); });
    etag = registerOutput<String?>('etag');
    extendedProperties = registerOutput<Map<String, String>?>('extendedProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    managedRules = registerOutput<ManagedRuleSetListResponse?>('managedRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedRuleSetListResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    policySettings = registerOutput<PolicySettingsResponse?>('policySettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicySettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    rateLimitRules = registerOutput<RateLimitRuleListResponse?>('rateLimitRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RateLimitRuleListResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceState = registerOutput<String>('resourceState');
    sku = registerOutput<SkuResponse>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
