import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_rule_list_response.dart';
import 'frontend_endpoint_link_response.dart';
import 'managed_rule_set_list_response.dart';
import 'policy_args.dart';
import 'policy_settings_response.dart';
import 'routing_rule_link_response.dart';
import 'security_policy_link_response.dart';
import 'sku_response.dart';

/// Defines web application firewall policy.
///
/// Uses Azure REST API version 2024-02-01.
///
/// Other available API versions: 2019-03-01, 2019-10-01, 2020-04-01, 2020-11-01, 2021-06-01, 2022-05-01, 2025-03-01, 2025-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native frontdoor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var policy = new AzureNative.FrontDoor.Policy("policy", new()
///     {
///         CustomRules = new AzureNative.FrontDoor.Inputs.CustomRuleListArgs
///         {
///             Rules = new[]
///             {
///                 new AzureNative.FrontDoor.Inputs.CustomRuleArgs
///                 {
///                     Action = AzureNative.FrontDoor.ActionType.Block,
///                     MatchConditions = new[]
///                     {
///                         new AzureNative.FrontDoor.Inputs.MatchConditionArgs
///                         {
///                             MatchValue = new[]
///                             {
///                                 "192.168.1.0/24",
///                                 "10.0.0.0/24",
///                             },
///                             MatchVariable = AzureNative.FrontDoor.MatchVariable.RemoteAddr,
///                             Operator = AzureNative.FrontDoor.Operator.IPMatch,
///                         },
///                     },
///                     Name = "Rule1",
///                     Priority = 1,
///                     RateLimitThreshold = 1000,
///                     RuleType = AzureNative.FrontDoor.RuleType.RateLimitRule,
///                 },
///                 new AzureNative.FrontDoor.Inputs.CustomRuleArgs
///                 {
///                     Action = AzureNative.FrontDoor.ActionType.Block,
///                     MatchConditions = new[]
///                     {
///                         new AzureNative.FrontDoor.Inputs.MatchConditionArgs
///                         {
///                             MatchValue = new[]
///                             {
///                                 "CH",
///                             },
///                             MatchVariable = AzureNative.FrontDoor.MatchVariable.RemoteAddr,
///                             Operator = AzureNative.FrontDoor.Operator.GeoMatch,
///                         },
///                         new AzureNative.FrontDoor.Inputs.MatchConditionArgs
///                         {
///                             MatchValue = new[]
///                             {
///                                 "windows",
///                             },
///                             MatchVariable = AzureNative.FrontDoor.MatchVariable.RequestHeader,
///                             Operator = AzureNative.FrontDoor.Operator.Contains,
///                             Selector = "UserAgent",
///                             Transforms = new[]
///                             {
///                                 AzureNative.FrontDoor.TransformType.Lowercase,
///                             },
///                         },
///                     },
///                     Name = "Rule2",
///                     Priority = 2,
///                     RuleType = AzureNative.FrontDoor.RuleType.MatchRule,
///                 },
///             },
///         },
///         Location = "WestUs",
///         ManagedRules = new AzureNative.FrontDoor.Inputs.ManagedRuleSetListArgs
///         {
///             ManagedRuleSets = new[]
///             {
///                 new AzureNative.FrontDoor.Inputs.ManagedRuleSetArgs
///                 {
///                     Exclusions = new[]
///                     {
///                         new AzureNative.FrontDoor.Inputs.ManagedRuleExclusionArgs
///                         {
///                             MatchVariable = AzureNative.FrontDoor.ManagedRuleExclusionMatchVariable.RequestHeaderNames,
///                             Selector = "User-Agent",
///                             SelectorMatchOperator = AzureNative.FrontDoor.ManagedRuleExclusionSelectorMatchOperator.EqualsValue,
///                         },
///                     },
///                     RuleGroupOverrides = new[]
///                     {
///                         new AzureNative.FrontDoor.Inputs.ManagedRuleGroupOverrideArgs
///                         {
///                             Exclusions = new[]
///                             {
///                                 new AzureNative.FrontDoor.Inputs.ManagedRuleExclusionArgs
///                                 {
///                                     MatchVariable = AzureNative.FrontDoor.ManagedRuleExclusionMatchVariable.RequestCookieNames,
///                                     Selector = "token",
///                                     SelectorMatchOperator = AzureNative.FrontDoor.ManagedRuleExclusionSelectorMatchOperator.StartsWith,
///                                 },
///                             },
///                             RuleGroupName = "SQLI",
///                             Rules = new[]
///                             {
///                                 new AzureNative.FrontDoor.Inputs.ManagedRuleOverrideArgs
///                                 {
///                                     Action = AzureNative.FrontDoor.ActionType.Redirect,
///                                     EnabledState = AzureNative.FrontDoor.ManagedRuleEnabledState.Enabled,
///                                     Exclusions = new[]
///                                     {
///                                         new AzureNative.FrontDoor.Inputs.ManagedRuleExclusionArgs
///                                         {
///                                             MatchVariable = AzureNative.FrontDoor.ManagedRuleExclusionMatchVariable.QueryStringArgNames,
///                                             Selector = "query",
///                                             SelectorMatchOperator = AzureNative.FrontDoor.ManagedRuleExclusionSelectorMatchOperator.EqualsValue,
///                                         },
///                                     },
///                                     RuleId = "942100",
///                                 },
///                                 new AzureNative.FrontDoor.Inputs.ManagedRuleOverrideArgs
///                                 {
///                                     EnabledState = AzureNative.FrontDoor.ManagedRuleEnabledState.Disabled,
///                                     RuleId = "942110",
///                                 },
///                             },
///                         },
///                     },
///                     RuleSetAction = AzureNative.FrontDoor.ManagedRuleSetActionType.Block,
///                     RuleSetType = "DefaultRuleSet",
///                     RuleSetVersion = "1.0",
///                 },
///             },
///         },
///         PolicyName = "Policy1",
///         PolicySettings = new AzureNative.FrontDoor.Inputs.PolicySettingsArgs
///         {
///             CustomBlockResponseBody = "PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg==",
///             CustomBlockResponseStatusCode = 429,
///             EnabledState = AzureNative.FrontDoor.PolicyEnabledState.Enabled,
///             JavascriptChallengeExpirationInMinutes = 30,
///             Mode = AzureNative.FrontDoor.PolicyMode.Prevention,
///             RedirectUrl = "http://www.bing.com",
///             RequestBodyCheck = AzureNative.FrontDoor.PolicyRequestBodyCheck.Disabled,
///             ScrubbingRules = new[]
///             {
///                 new AzureNative.FrontDoor.Inputs.WebApplicationFirewallScrubbingRulesArgs
///                 {
///                     MatchVariable = AzureNative.FrontDoor.ScrubbingRuleEntryMatchVariable.RequestIPAddress,
///                     SelectorMatchOperator = AzureNative.FrontDoor.ScrubbingRuleEntryMatchOperator.EqualsAny,
///                     State = AzureNative.FrontDoor.ScrubbingRuleEntryState.Enabled,
///                 },
///             },
///             State = AzureNative.FrontDoor.WebApplicationFirewallScrubbingState.Enabled,
///         },
///         ResourceGroupName = "rg1",
///         Sku = new AzureNative.FrontDoor.Inputs.SkuArgs
///         {
///             Name = AzureNative.FrontDoor.SkuName.Premium_AzureFrontDoor,
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
/// 	frontdoor "github.com/pulumi/pulumi-azure-native-sdk/frontdoor/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := frontdoor.NewPolicy(ctx, "policy", &frontdoor.PolicyArgs{
/// 			CustomRules: &frontdoor.CustomRuleListArgs{
/// 				Rules: frontdoor.CustomRuleArray{
/// 					&frontdoor.CustomRuleArgs{
/// 						Action: pulumi.String(frontdoor.ActionTypeBlock),
/// 						MatchConditions: frontdoor.MatchConditionArray{
/// 							&frontdoor.MatchConditionArgs{
/// 								MatchValue: pulumi.StringArray{
/// 									pulumi.String("192.168.1.0/24"),
/// 									pulumi.String("10.0.0.0/24"),
/// 								},
/// 								MatchVariable: pulumi.String(frontdoor.MatchVariableRemoteAddr),
/// 								Operator:      pulumi.String(frontdoor.OperatorIPMatch),
/// 							},
/// 						},
/// 						Name:               pulumi.String("Rule1"),
/// 						Priority:           pulumi.Int(1),
/// 						RateLimitThreshold: pulumi.Int(1000),
/// 						RuleType:           pulumi.String(frontdoor.RuleTypeRateLimitRule),
/// 					},
/// 					&frontdoor.CustomRuleArgs{
/// 						Action: pulumi.String(frontdoor.ActionTypeBlock),
/// 						MatchConditions: frontdoor.MatchConditionArray{
/// 							&frontdoor.MatchConditionArgs{
/// 								MatchValue: pulumi.StringArray{
/// 									pulumi.String("CH"),
/// 								},
/// 								MatchVariable: pulumi.String(frontdoor.MatchVariableRemoteAddr),
/// 								Operator:      pulumi.String(frontdoor.OperatorGeoMatch),
/// 							},
/// 							&frontdoor.MatchConditionArgs{
/// 								MatchValue: pulumi.StringArray{
/// 									pulumi.String("windows"),
/// 								},
/// 								MatchVariable: pulumi.String(frontdoor.MatchVariableRequestHeader),
/// 								Operator:      pulumi.String(frontdoor.OperatorContains),
/// 								Selector:      pulumi.String("UserAgent"),
/// 								Transforms: pulumi.StringArray{
/// 									pulumi.String(frontdoor.TransformTypeLowercase),
/// 								},
/// 							},
/// 						},
/// 						Name:     pulumi.String("Rule2"),
/// 						Priority: pulumi.Int(2),
/// 						RuleType: pulumi.String(frontdoor.RuleTypeMatchRule),
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("WestUs"),
/// 			ManagedRules: &frontdoor.ManagedRuleSetListArgs{
/// 				ManagedRuleSets: frontdoor.ManagedRuleSetArray{
/// 					&frontdoor.ManagedRuleSetArgs{
/// 						Exclusions: frontdoor.ManagedRuleExclusionArray{
/// 							&frontdoor.ManagedRuleExclusionArgs{
/// 								MatchVariable:         pulumi.String(frontdoor.ManagedRuleExclusionMatchVariableRequestHeaderNames),
/// 								Selector:              pulumi.String("User-Agent"),
/// 								SelectorMatchOperator: pulumi.String(frontdoor.ManagedRuleExclusionSelectorMatchOperatorEquals),
/// 							},
/// 						},
/// 						RuleGroupOverrides: frontdoor.ManagedRuleGroupOverrideArray{
/// 							&frontdoor.ManagedRuleGroupOverrideArgs{
/// 								Exclusions: frontdoor.ManagedRuleExclusionArray{
/// 									&frontdoor.ManagedRuleExclusionArgs{
/// 										MatchVariable:         pulumi.String(frontdoor.ManagedRuleExclusionMatchVariableRequestCookieNames),
/// 										Selector:              pulumi.String("token"),
/// 										SelectorMatchOperator: pulumi.String(frontdoor.ManagedRuleExclusionSelectorMatchOperatorStartsWith),
/// 									},
/// 								},
/// 								RuleGroupName: pulumi.String("SQLI"),
/// 								Rules: frontdoor.ManagedRuleOverrideArray{
/// 									&frontdoor.ManagedRuleOverrideArgs{
/// 										Action:       pulumi.String(frontdoor.ActionTypeRedirect),
/// 										EnabledState: pulumi.String(frontdoor.ManagedRuleEnabledStateEnabled),
/// 										Exclusions: frontdoor.ManagedRuleExclusionArray{
/// 											&frontdoor.ManagedRuleExclusionArgs{
/// 												MatchVariable:         pulumi.String(frontdoor.ManagedRuleExclusionMatchVariableQueryStringArgNames),
/// 												Selector:              pulumi.String("query"),
/// 												SelectorMatchOperator: pulumi.String(frontdoor.ManagedRuleExclusionSelectorMatchOperatorEquals),
/// 											},
/// 										},
/// 										RuleId: pulumi.String("942100"),
/// 									},
/// 									&frontdoor.ManagedRuleOverrideArgs{
/// 										EnabledState: pulumi.String(frontdoor.ManagedRuleEnabledStateDisabled),
/// 										RuleId:       pulumi.String("942110"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						RuleSetAction:  pulumi.String(frontdoor.ManagedRuleSetActionTypeBlock),
/// 						RuleSetType:    pulumi.String("DefaultRuleSet"),
/// 						RuleSetVersion: pulumi.String("1.0"),
/// 					},
/// 				},
/// 			},
/// 			PolicyName: pulumi.String("Policy1"),
/// 			PolicySettings: &frontdoor.PolicySettingsArgs{
/// 				CustomBlockResponseBody:                pulumi.String("PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg=="),
/// 				CustomBlockResponseStatusCode:          pulumi.Int(429),
/// 				EnabledState:                           pulumi.String(frontdoor.PolicyEnabledStateEnabled),
/// 				JavascriptChallengeExpirationInMinutes: pulumi.Int(30),
/// 				Mode:                                   pulumi.String(frontdoor.PolicyModePrevention),
/// 				RedirectUrl:                            pulumi.String("http://www.bing.com"),
/// 				RequestBodyCheck:                       pulumi.String(frontdoor.PolicyRequestBodyCheckDisabled),
/// 				ScrubbingRules: frontdoor.WebApplicationFirewallScrubbingRulesArray{
/// 					&frontdoor.WebApplicationFirewallScrubbingRulesArgs{
/// 						MatchVariable:         pulumi.String(frontdoor.ScrubbingRuleEntryMatchVariableRequestIPAddress),
/// 						SelectorMatchOperator: pulumi.String(frontdoor.ScrubbingRuleEntryMatchOperatorEqualsAny),
/// 						State:                 pulumi.String(frontdoor.ScrubbingRuleEntryStateEnabled),
/// 					},
/// 				},
/// 				State: pulumi.String(frontdoor.WebApplicationFirewallScrubbingStateEnabled),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Sku: &frontdoor.SkuArgs{
/// 				Name: pulumi.String(frontdoor.SkuName_Premium_AzureFrontDoor),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.frontdoor.Policy;
/// import com.pulumi.azurenative.frontdoor.PolicyArgs;
/// import com.pulumi.azurenative.frontdoor.inputs.CustomRuleListArgs;
/// import com.pulumi.azurenative.frontdoor.inputs.ManagedRuleSetListArgs;
/// import com.pulumi.azurenative.frontdoor.inputs.PolicySettingsArgs;
/// import com.pulumi.azurenative.frontdoor.inputs.SkuArgs;
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
///         var policy = new Policy("policy", PolicyArgs.builder()
///             .customRules(CustomRuleListArgs.builder()
///                 .rules(
///                     CustomRuleArgs.builder()
///                         .action("Block")
///                         .matchConditions(MatchConditionArgs.builder()
///                             .matchValue(
///                                 "192.168.1.0/24",
///                                 "10.0.0.0/24")
///                             .matchVariable("RemoteAddr")
///                             .operator("IPMatch")
///                             .build())
///                         .name("Rule1")
///                         .priority(1)
///                         .rateLimitThreshold(1000)
///                         .ruleType("RateLimitRule")
///                         .build(),
///                     CustomRuleArgs.builder()
///                         .action("Block")
///                         .matchConditions(
///                             MatchConditionArgs.builder()
///                                 .matchValue("CH")
///                                 .matchVariable("RemoteAddr")
///                                 .operator("GeoMatch")
///                                 .build(),
///                             MatchConditionArgs.builder()
///                                 .matchValue("windows")
///                                 .matchVariable("RequestHeader")
///                                 .operator("Contains")
///                                 .selector("UserAgent")
///                                 .transforms("Lowercase")
///                                 .build())
///                         .name("Rule2")
///                         .priority(2)
///                         .ruleType("MatchRule")
///                         .build())
///                 .build())
///             .location("WestUs")
///             .managedRules(ManagedRuleSetListArgs.builder()
///                 .managedRuleSets(ManagedRuleSetArgs.builder()
///                     .exclusions(ManagedRuleExclusionArgs.builder()
///                         .matchVariable("RequestHeaderNames")
///                         .selector("User-Agent")
///                         .selectorMatchOperator("Equals")
///                         .build())
///                     .ruleGroupOverrides(ManagedRuleGroupOverrideArgs.builder()
///                         .exclusions(ManagedRuleExclusionArgs.builder()
///                             .matchVariable("RequestCookieNames")
///                             .selector("token")
///                             .selectorMatchOperator("StartsWith")
///                             .build())
///                         .ruleGroupName("SQLI")
///                         .rules(
///                             ManagedRuleOverrideArgs.builder()
///                                 .action("Redirect")
///                                 .enabledState("Enabled")
///                                 .exclusions(ManagedRuleExclusionArgs.builder()
///                                     .matchVariable("QueryStringArgNames")
///                                     .selector("query")
///                                     .selectorMatchOperator("Equals")
///                                     .build())
///                                 .ruleId("942100")
///                                 .build(),
///                             ManagedRuleOverrideArgs.builder()
///                                 .enabledState("Disabled")
///                                 .ruleId("942110")
///                                 .build())
///                         .build())
///                     .ruleSetAction("Block")
///                     .ruleSetType("DefaultRuleSet")
///                     .ruleSetVersion("1.0")
///                     .build())
///                 .build())
///             .policyName("Policy1")
///             .policySettings(PolicySettingsArgs.builder()
///                 .customBlockResponseBody("PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg==")
///                 .customBlockResponseStatusCode(429)
///                 .enabledState("Enabled")
///                 .javascriptChallengeExpirationInMinutes(30)
///                 .mode("Prevention")
///                 .redirectUrl("http://www.bing.com")
///                 .requestBodyCheck("Disabled")
///                 .scrubbingRules(WebApplicationFirewallScrubbingRulesArgs.builder()
///                     .matchVariable("RequestIPAddress")
///                     .selectorMatchOperator("EqualsAny")
///                     .state("Enabled")
///                     .build())
///                 .state("Enabled")
///                 .build())
///             .resourceGroupName("rg1")
///             .sku(SkuArgs.builder()
///                 .name("Premium_AzureFrontDoor")
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
/// const policy = new azure_native.frontdoor.Policy("policy", {
///     customRules: {
///         rules: [
///             {
///                 action: azure_native.frontdoor.ActionType.Block,
///                 matchConditions: [{
///                     matchValue: [
///                         "192.168.1.0/24",
///                         "10.0.0.0/24",
///                     ],
///                     matchVariable: azure_native.frontdoor.MatchVariable.RemoteAddr,
///                     operator: azure_native.frontdoor.Operator.IPMatch,
///                 }],
///                 name: "Rule1",
///                 priority: 1,
///                 rateLimitThreshold: 1000,
///                 ruleType: azure_native.frontdoor.RuleType.RateLimitRule,
///             },
///             {
///                 action: azure_native.frontdoor.ActionType.Block,
///                 matchConditions: [
///                     {
///                         matchValue: ["CH"],
///                         matchVariable: azure_native.frontdoor.MatchVariable.RemoteAddr,
///                         operator: azure_native.frontdoor.Operator.GeoMatch,
///                     },
///                     {
///                         matchValue: ["windows"],
///                         matchVariable: azure_native.frontdoor.MatchVariable.RequestHeader,
///                         operator: azure_native.frontdoor.Operator.Contains,
///                         selector: "UserAgent",
///                         transforms: [azure_native.frontdoor.TransformType.Lowercase],
///                     },
///                 ],
///                 name: "Rule2",
///                 priority: 2,
///                 ruleType: azure_native.frontdoor.RuleType.MatchRule,
///             },
///         ],
///     },
///     location: "WestUs",
///     managedRules: {
///         managedRuleSets: [{
///             exclusions: [{
///                 matchVariable: azure_native.frontdoor.ManagedRuleExclusionMatchVariable.RequestHeaderNames,
///                 selector: "User-Agent",
///                 selectorMatchOperator: azure_native.frontdoor.ManagedRuleExclusionSelectorMatchOperator.Equals,
///             }],
///             ruleGroupOverrides: [{
///                 exclusions: [{
///                     matchVariable: azure_native.frontdoor.ManagedRuleExclusionMatchVariable.RequestCookieNames,
///                     selector: "token",
///                     selectorMatchOperator: azure_native.frontdoor.ManagedRuleExclusionSelectorMatchOperator.StartsWith,
///                 }],
///                 ruleGroupName: "SQLI",
///                 rules: [
///                     {
///                         action: azure_native.frontdoor.ActionType.Redirect,
///                         enabledState: azure_native.frontdoor.ManagedRuleEnabledState.Enabled,
///                         exclusions: [{
///                             matchVariable: azure_native.frontdoor.ManagedRuleExclusionMatchVariable.QueryStringArgNames,
///                             selector: "query",
///                             selectorMatchOperator: azure_native.frontdoor.ManagedRuleExclusionSelectorMatchOperator.Equals,
///                         }],
///                         ruleId: "942100",
///                     },
///                     {
///                         enabledState: azure_native.frontdoor.ManagedRuleEnabledState.Disabled,
///                         ruleId: "942110",
///                     },
///                 ],
///             }],
///             ruleSetAction: azure_native.frontdoor.ManagedRuleSetActionType.Block,
///             ruleSetType: "DefaultRuleSet",
///             ruleSetVersion: "1.0",
///         }],
///     },
///     policyName: "Policy1",
///     policySettings: {
///         customBlockResponseBody: "PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg==",
///         customBlockResponseStatusCode: 429,
///         enabledState: azure_native.frontdoor.PolicyEnabledState.Enabled,
///         javascriptChallengeExpirationInMinutes: 30,
///         mode: azure_native.frontdoor.PolicyMode.Prevention,
///         redirectUrl: "http://www.bing.com",
///         requestBodyCheck: azure_native.frontdoor.PolicyRequestBodyCheck.Disabled,
///         scrubbingRules: [{
///             matchVariable: azure_native.frontdoor.ScrubbingRuleEntryMatchVariable.RequestIPAddress,
///             selectorMatchOperator: azure_native.frontdoor.ScrubbingRuleEntryMatchOperator.EqualsAny,
///             state: azure_native.frontdoor.ScrubbingRuleEntryState.Enabled,
///         }],
///         state: azure_native.frontdoor.WebApplicationFirewallScrubbingState.Enabled,
///     },
///     resourceGroupName: "rg1",
///     sku: {
///         name: azure_native.frontdoor.SkuName.Premium_AzureFrontDoor,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// policy = azure_native.frontdoor.Policy("policy",
///     custom_rules={
///         "rules": [
///             {
///                 "action": azure_native.frontdoor.ActionType.BLOCK,
///                 "match_conditions": [{
///                     "match_value": [
///                         "192.168.1.0/24",
///                         "10.0.0.0/24",
///                     ],
///                     "match_variable": azure_native.frontdoor.MatchVariable.REMOTE_ADDR,
///                     "operator": azure_native.frontdoor.Operator.IP_MATCH,
///                 }],
///                 "name": "Rule1",
///                 "priority": 1,
///                 "rate_limit_threshold": 1000,
///                 "rule_type": azure_native.frontdoor.RuleType.RATE_LIMIT_RULE,
///             },
///             {
///                 "action": azure_native.frontdoor.ActionType.BLOCK,
///                 "match_conditions": [
///                     {
///                         "match_value": ["CH"],
///                         "match_variable": azure_native.frontdoor.MatchVariable.REMOTE_ADDR,
///                         "operator": azure_native.frontdoor.Operator.GEO_MATCH,
///                     },
///                     {
///                         "match_value": ["windows"],
///                         "match_variable": azure_native.frontdoor.MatchVariable.REQUEST_HEADER,
///                         "operator": azure_native.frontdoor.Operator.CONTAINS,
///                         "selector": "UserAgent",
///                         "transforms": [azure_native.frontdoor.TransformType.LOWERCASE],
///                     },
///                 ],
///                 "name": "Rule2",
///                 "priority": 2,
///                 "rule_type": azure_native.frontdoor.RuleType.MATCH_RULE,
///             },
///         ],
///     },
///     location="WestUs",
///     managed_rules={
///         "managed_rule_sets": [{
///             "exclusions": [{
///                 "match_variable": azure_native.frontdoor.ManagedRuleExclusionMatchVariable.REQUEST_HEADER_NAMES,
///                 "selector": "User-Agent",
///                 "selector_match_operator": azure_native.frontdoor.ManagedRuleExclusionSelectorMatchOperator.EQUALS,
///             }],
///             "rule_group_overrides": [{
///                 "exclusions": [{
///                     "match_variable": azure_native.frontdoor.ManagedRuleExclusionMatchVariable.REQUEST_COOKIE_NAMES,
///                     "selector": "token",
///                     "selector_match_operator": azure_native.frontdoor.ManagedRuleExclusionSelectorMatchOperator.STARTS_WITH,
///                 }],
///                 "rule_group_name": "SQLI",
///                 "rules": [
///                     {
///                         "action": azure_native.frontdoor.ActionType.REDIRECT,
///                         "enabled_state": azure_native.frontdoor.ManagedRuleEnabledState.ENABLED,
///                         "exclusions": [{
///                             "match_variable": azure_native.frontdoor.ManagedRuleExclusionMatchVariable.QUERY_STRING_ARG_NAMES,
///                             "selector": "query",
///                             "selector_match_operator": azure_native.frontdoor.ManagedRuleExclusionSelectorMatchOperator.EQUALS,
///                         }],
///                         "rule_id": "942100",
///                     },
///                     {
///                         "enabled_state": azure_native.frontdoor.ManagedRuleEnabledState.DISABLED,
///                         "rule_id": "942110",
///                     },
///                 ],
///             }],
///             "rule_set_action": azure_native.frontdoor.ManagedRuleSetActionType.BLOCK,
///             "rule_set_type": "DefaultRuleSet",
///             "rule_set_version": "1.0",
///         }],
///     },
///     policy_name="Policy1",
///     policy_settings={
///         "custom_block_response_body": "PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg==",
///         "custom_block_response_status_code": 429,
///         "enabled_state": azure_native.frontdoor.PolicyEnabledState.ENABLED,
///         "javascript_challenge_expiration_in_minutes": 30,
///         "mode": azure_native.frontdoor.PolicyMode.PREVENTION,
///         "redirect_url": "http://www.bing.com",
///         "request_body_check": azure_native.frontdoor.PolicyRequestBodyCheck.DISABLED,
///         "scrubbing_rules": [{
///             "match_variable": azure_native.frontdoor.ScrubbingRuleEntryMatchVariable.REQUEST_IP_ADDRESS,
///             "selector_match_operator": azure_native.frontdoor.ScrubbingRuleEntryMatchOperator.EQUALS_ANY,
///             "state": azure_native.frontdoor.ScrubbingRuleEntryState.ENABLED,
///         }],
///         "state": azure_native.frontdoor.WebApplicationFirewallScrubbingState.ENABLED,
///     },
///     resource_group_name="rg1",
///     sku={
///         "name": azure_native.frontdoor.SkuName.PREMIUM_AZURE_FRONT_DOOR,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   policy:
///     type: azure-native:frontdoor:Policy
///     properties:
///       customRules:
///         rules:
///           - action: Block
///             matchConditions:
///               - matchValue:
///                   - 192.168.1.0/24
///                   - 10.0.0.0/24
///                 matchVariable: RemoteAddr
///                 operator: IPMatch
///             name: Rule1
///             priority: 1
///             rateLimitThreshold: 1000
///             ruleType: RateLimitRule
///           - action: Block
///             matchConditions:
///               - matchValue:
///                   - CH
///                 matchVariable: RemoteAddr
///                 operator: GeoMatch
///               - matchValue:
///                   - windows
///                 matchVariable: RequestHeader
///                 operator: Contains
///                 selector: UserAgent
///                 transforms:
///                   - Lowercase
///             name: Rule2
///             priority: 2
///             ruleType: MatchRule
///       location: WestUs
///       managedRules:
///         managedRuleSets:
///           - exclusions:
///               - matchVariable: RequestHeaderNames
///                 selector: User-Agent
///                 selectorMatchOperator: Equals
///             ruleGroupOverrides:
///               - exclusions:
///                   - matchVariable: RequestCookieNames
///                     selector: token
///                     selectorMatchOperator: StartsWith
///                 ruleGroupName: SQLI
///                 rules:
///                   - action: Redirect
///                     enabledState: Enabled
///                     exclusions:
///                       - matchVariable: QueryStringArgNames
///                         selector: query
///                         selectorMatchOperator: Equals
///                     ruleId: '942100'
///                   - enabledState: Disabled
///                     ruleId: '942110'
///             ruleSetAction: Block
///             ruleSetType: DefaultRuleSet
///             ruleSetVersion: '1.0'
///       policyName: Policy1
///       policySettings:
///         customBlockResponseBody: PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg==
///         customBlockResponseStatusCode: 429
///         enabledState: Enabled
///         javascriptChallengeExpirationInMinutes: 30
///         mode: Prevention
///         redirectUrl: http://www.bing.com
///         requestBodyCheck: Disabled
///         scrubbingRules:
///           - matchVariable: RequestIPAddress
///             selectorMatchOperator: EqualsAny
///             state: Enabled
///         state: Enabled
///       resourceGroupName: rg1
///       sku:
///         name: Premium_AzureFrontDoor
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
/// $ pulumi import azure-native:frontdoor:Policy Policy1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/FrontDoorWebApplicationFirewallPolicies/{policyName}
/// ```
class Policy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Describes custom rules inside the policy.
  late final pulumi.Output<CustomRuleListResponse?> customRules;
  /// Gets a unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String?> etag;
  /// Describes Frontend Endpoints associated with this Web Application Firewall policy.
  late final pulumi.Output<List<FrontendEndpointLinkResponse>> frontendEndpointLinks;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Describes managed rules inside the policy.
  late final pulumi.Output<ManagedRuleSetListResponse?> managedRules;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Describes settings for the policy.
  late final pulumi.Output<PolicySettingsResponse?> policySettings;
  /// Provisioning state of the policy.
  late final pulumi.Output<String> provisioningState;
  late final pulumi.Output<String> resourceState;
  /// Describes Routing Rules associated with this Web Application Firewall policy.
  late final pulumi.Output<List<RoutingRuleLinkResponse>> routingRuleLinks;
  /// Describes Security Policy associated with this Web Application Firewall policy.
  late final pulumi.Output<List<SecurityPolicyLinkResponse>> securityPolicyLinks;
  /// The pricing tier of web application firewall policy. Defaults to Classic_AzureFrontDoor if not specified.
  late final pulumi.Output<SkuResponse?> sku;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [Policy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Policy]. {@macro pulumi_frontdoor_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Policy(
    String name, {
    PolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:frontdoor:Policy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.customRules = registerOutput<CustomRuleListResponse?>('customRules');
    this.etag = registerOutput<String?>('etag');
    this.frontendEndpointLinks = registerOutput<List<FrontendEndpointLinkResponse>>('frontendEndpointLinks');
    this.location = registerOutput<String?>('location');
    this.managedRules = registerOutput<ManagedRuleSetListResponse?>('managedRules');
    this.name = registerOutput<String>('name');
    this.policySettings = registerOutput<PolicySettingsResponse?>('policySettings');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.resourceState = registerOutput<String>('resourceState');
    this.routingRuleLinks = registerOutput<List<RoutingRuleLinkResponse>>('routingRuleLinks');
    this.securityPolicyLinks = registerOutput<List<SecurityPolicyLinkResponse>>('securityPolicyLinks');
    this.sku = registerOutput<SkuResponse?>('sku');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
