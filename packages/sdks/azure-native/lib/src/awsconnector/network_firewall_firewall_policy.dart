import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_firewall_firewall_policy_args.dart';
import 'network_firewall_firewall_policy_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NetworkFirewallFirewallPolicies_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkFirewallFirewallPolicy = new AzureNative.AwsConnector.NetworkFirewallFirewallPolicy("networkFirewallFirewallPolicy", new()
///     {
///         Location = "jmirflesx",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.NetworkFirewallFirewallPolicyPropertiesArgs
///         {
///             Arn = "rwqxtqealkkjplaoauziyt",
///             AwsAccountId = "fvglwybfwcjydvshvpaqacdtncc",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsNetworkFirewallFirewallPolicyPropertiesArgs
///             {
///                 Description = "lgkmdcxkddlt",
///                 FirewallPolicy = new AzureNative.AwsConnector.Inputs.FirewallPolicyArgs
///                 {
///                     PolicyVariables = new AzureNative.AwsConnector.Inputs.RuleVariablesModelArgs
///                     {
///                         RuleVariables =
///                         {
///                             { "key6441", new AzureNative.AwsConnector.Inputs.IPSetArgs
///                             {
///                                 Definition = new[]
///                                 {
///                                     "nwcsmd",
///                                 },
///                             } },
///                         },
///                     },
///                     StatefulDefaultActions = new[]
///                     {
///                         "rhluwzzqiehteaka",
///                     },
///                     StatefulEngineOptions = new AzureNative.AwsConnector.Inputs.StatefulEngineOptionsArgs
///                     {
///                         RuleOrder = AzureNative.AwsConnector.StatefulEngineOptionsRuleOrder.DEFAULT_ACTION_ORDER,
///                         StreamExceptionPolicy = AzureNative.AwsConnector.StatefulEngineOptionsStreamExceptionPolicy.CONTINUE,
///                     },
///                     StatefulRuleGroupReferences = new[]
///                     {
///                         new AzureNative.AwsConnector.Inputs.StatefulRuleGroupReferenceArgs
///                         {
///                             Override = new AzureNative.AwsConnector.Inputs.StatefulRuleGroupOverrideArgs
///                             {
///                                 Action = AzureNative.AwsConnector.StatefulRuleGroupOverrideAction.DROP_TO_ALERT,
///                             },
///                             Priority = 24,
///                             ResourceArn = "mjmcihwfckvrmkqo",
///                         },
///                     },
///                     StatelessCustomActions = new[]
///                     {
///                         new AzureNative.AwsConnector.Inputs.CustomActionArgs
///                         {
///                             ActionDefinition = new AzureNative.AwsConnector.Inputs.ActionDefinitionArgs
///                             {
///                                 PublishMetricAction = new AzureNative.AwsConnector.Inputs.PublishMetricActionArgs
///                                 {
///                                     Dimensions = new[]
///                                     {
///                                         new AzureNative.AwsConnector.Inputs.DimensionArgs
///                                         {
///                                             Value = "kpelhvywxyvfwbkxeepdvujwrlywy",
///                                         },
///                                     },
///                                 },
///                             },
///                             ActionName = "vzrqjgluyejlinwxxhuljye",
///                         },
///                     },
///                     StatelessDefaultActions = new[]
///                     {
///                         "bhojbxqneam",
///                     },
///                     StatelessFragmentDefaultActions = new[]
///                     {
///                         "lnpufwfpveptbxocevsbt",
///                     },
///                     StatelessRuleGroupReferences = new[]
///                     {
///                         new AzureNative.AwsConnector.Inputs.StatelessRuleGroupReferenceArgs
///                         {
///                             Priority = 11,
///                             ResourceArn = "kjggnkcabwynhgqkoryqzbkwz",
///                         },
///                     },
///                     TlsInspectionConfigurationArn = "qrdcssdykfcsxjdimv",
///                 },
///                 FirewallPolicyArn = "xpoahy",
///                 FirewallPolicyId = "ofrzbmefsngq",
///                 FirewallPolicyName = "xasgbvm",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "njlfcpwz",
///                         Value = "lrpynqejzy",
///                     },
///                 },
///             },
///             AwsRegion = "ujnhepy",
///             AwsSourceSchema = "tupxubxwdvvlcxhmjn",
///             AwsTags =
///             {
///                 { "key2264", "v" },
///             },
///             PublicCloudConnectorsResourceId = "jgglyugkzlbqyphcmiuchfpzd",
///             PublicCloudResourceName = "txlbnhchqhqamo",
///         },
///         ResourceGroupName = "rgnetworkFirewallFirewallPolicy",
///         Tags =
///         {
///             { "key2040", "rrw" },
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
/// 	awsconnector "github.com/pulumi/pulumi-azure-native-sdk/awsconnector/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := awsconnector.NewNetworkFirewallFirewallPolicy(ctx, "networkFirewallFirewallPolicy", &awsconnector.NetworkFirewallFirewallPolicyArgs{
/// 			Location: pulumi.String("jmirflesx"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.NetworkFirewallFirewallPolicyPropertiesArgs{
/// 				Arn:          pulumi.String("rwqxtqealkkjplaoauziyt"),
/// 				AwsAccountId: pulumi.String("fvglwybfwcjydvshvpaqacdtncc"),
/// 				AwsProperties: &awsconnector.AwsNetworkFirewallFirewallPolicyPropertiesArgs{
/// 					Description: pulumi.String("lgkmdcxkddlt"),
/// 					FirewallPolicy: &awsconnector.FirewallPolicyArgs{
/// 						PolicyVariables: &awsconnector.RuleVariablesModelArgs{
/// 							RuleVariables: awsconnector.IPSetMap{
/// 								"key6441": &awsconnector.IPSetArgs{
/// 									Definition: pulumi.StringArray{
/// 										pulumi.String("nwcsmd"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						StatefulDefaultActions: pulumi.StringArray{
/// 							pulumi.String("rhluwzzqiehteaka"),
/// 						},
/// 						StatefulEngineOptions: &awsconnector.StatefulEngineOptionsArgs{
/// 							RuleOrder:             pulumi.String(awsconnector.StatefulEngineOptionsRuleOrder_DEFAULT_ACTION_ORDER),
/// 							StreamExceptionPolicy: pulumi.String(awsconnector.StatefulEngineOptionsStreamExceptionPolicyCONTINUE),
/// 						},
/// 						StatefulRuleGroupReferences: awsconnector.StatefulRuleGroupReferenceArray{
/// 							&awsconnector.StatefulRuleGroupReferenceArgs{
/// 								Override: &awsconnector.StatefulRuleGroupOverrideArgs{
/// 									Action: pulumi.String(awsconnector.StatefulRuleGroupOverrideAction_DROP_TO_ALERT),
/// 								},
/// 								Priority:    pulumi.Int(24),
/// 								ResourceArn: pulumi.String("mjmcihwfckvrmkqo"),
/// 							},
/// 						},
/// 						StatelessCustomActions: awsconnector.CustomActionArray{
/// 							&awsconnector.CustomActionArgs{
/// 								ActionDefinition: &awsconnector.ActionDefinitionArgs{
/// 									PublishMetricAction: &awsconnector.PublishMetricActionArgs{
/// 										Dimensions: awsconnector.DimensionArray{
/// 											&awsconnector.DimensionArgs{
/// 												Value: pulumi.String("kpelhvywxyvfwbkxeepdvujwrlywy"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 								ActionName: pulumi.String("vzrqjgluyejlinwxxhuljye"),
/// 							},
/// 						},
/// 						StatelessDefaultActions: pulumi.StringArray{
/// 							pulumi.String("bhojbxqneam"),
/// 						},
/// 						StatelessFragmentDefaultActions: pulumi.StringArray{
/// 							pulumi.String("lnpufwfpveptbxocevsbt"),
/// 						},
/// 						StatelessRuleGroupReferences: awsconnector.StatelessRuleGroupReferenceArray{
/// 							&awsconnector.StatelessRuleGroupReferenceArgs{
/// 								Priority:    pulumi.Int(11),
/// 								ResourceArn: pulumi.String("kjggnkcabwynhgqkoryqzbkwz"),
/// 							},
/// 						},
/// 						TlsInspectionConfigurationArn: pulumi.String("qrdcssdykfcsxjdimv"),
/// 					},
/// 					FirewallPolicyArn:  pulumi.String("xpoahy"),
/// 					FirewallPolicyId:   pulumi.String("ofrzbmefsngq"),
/// 					FirewallPolicyName: pulumi.String("xasgbvm"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("njlfcpwz"),
/// 							Value: pulumi.String("lrpynqejzy"),
/// 						},
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("ujnhepy"),
/// 				AwsSourceSchema: pulumi.String("tupxubxwdvvlcxhmjn"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key2264": pulumi.String("v"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("jgglyugkzlbqyphcmiuchfpzd"),
/// 				PublicCloudResourceName:         pulumi.String("txlbnhchqhqamo"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgnetworkFirewallFirewallPolicy"),
/// 			Tags: pulumi.StringMap{
/// 				"key2040": pulumi.String("rrw"),
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
/// resource "azure-native_awsconnector_networkfirewallfirewallpolicy" "networkFirewallFirewallPolicy" {
///   location = "jmirflesx"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "rwqxtqealkkjplaoauziyt"
///     aws_account_id = "fvglwybfwcjydvshvpaqacdtncc"
///     aws_properties = {
///       description = "lgkmdcxkddlt"
///       firewall_policy = {
///         policy_variables = {
///           rule_variables = {
///             "key6441" = {
///               definition = ["nwcsmd"]
///             }
///           }
///         }
///         stateful_default_actions = ["rhluwzzqiehteaka"]
///         stateful_engine_options = {
///           rule_order              = "DEFAULT_ACTION_ORDER"
///           stream_exception_policy = "CONTINUE"
///         }
///         stateful_rule_group_references = [{
///           "override" = {
///             "action" = "DROP_TO_ALERT"
///           }
///           "priority"    = 24
///           "resourceArn" = "mjmcihwfckvrmkqo"
///         }]
///         stateless_custom_actions = [{
///           "actionDefinition" = {
///             "publishMetricAction" = {
///               "dimensions" = [{
///                 "value" = "kpelhvywxyvfwbkxeepdvujwrlywy"
///               }]
///             }
///           }
///           "actionName" = "vzrqjgluyejlinwxxhuljye"
///         }]
///         stateless_default_actions          = ["bhojbxqneam"]
///         stateless_fragment_default_actions = ["lnpufwfpveptbxocevsbt"]
///         stateless_rule_group_references = [{
///           "priority"    = 11
///           "resourceArn" = "kjggnkcabwynhgqkoryqzbkwz"
///         }]
///         tls_inspection_configuration_arn = "qrdcssdykfcsxjdimv"
///       }
///       firewall_policy_arn  = "xpoahy"
///       firewall_policy_id   = "ofrzbmefsngq"
///       firewall_policy_name = "xasgbvm"
///       tags = [{
///         "key"   = "njlfcpwz"
///         "value" = "lrpynqejzy"
///       }]
///     }
///     aws_region        = "ujnhepy"
///     aws_source_schema = "tupxubxwdvvlcxhmjn"
///     aws_tags = {
///       "key2264" = "v"
///     }
///     public_cloud_connectors_resource_id = "jgglyugkzlbqyphcmiuchfpzd"
///     public_cloud_resource_name          = "txlbnhchqhqamo"
///   }
///   resource_group_name = "rgnetworkFirewallFirewallPolicy"
///   tags = {
///     "key2040" = "rrw"
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
/// import com.pulumi.azurenative.awsconnector.NetworkFirewallFirewallPolicy;
/// import com.pulumi.azurenative.awsconnector.NetworkFirewallFirewallPolicyArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.NetworkFirewallFirewallPolicyPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsNetworkFirewallFirewallPolicyPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.FirewallPolicyArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.RuleVariablesModelArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.StatefulEngineOptionsArgs;
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
///         var networkFirewallFirewallPolicy = new NetworkFirewallFirewallPolicy("networkFirewallFirewallPolicy", NetworkFirewallFirewallPolicyArgs.builder()
///             .location("jmirflesx")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(NetworkFirewallFirewallPolicyPropertiesArgs.builder()
///                 .arn("rwqxtqealkkjplaoauziyt")
///                 .awsAccountId("fvglwybfwcjydvshvpaqacdtncc")
///                 .awsProperties(AwsNetworkFirewallFirewallPolicyPropertiesArgs.builder()
///                     .description("lgkmdcxkddlt")
///                     .firewallPolicy(FirewallPolicyArgs.builder()
///                         .policyVariables(RuleVariablesModelArgs.builder()
///                             .ruleVariables(Map.of("key6441", IPSetArgs.builder()
///                                 .definition("nwcsmd")
///                                 .build()))
///                             .build())
///                         .statefulDefaultActions("rhluwzzqiehteaka")
///                         .statefulEngineOptions(StatefulEngineOptionsArgs.builder()
///                             .ruleOrder("DEFAULT_ACTION_ORDER")
///                             .streamExceptionPolicy("CONTINUE")
///                             .build())
///                         .statefulRuleGroupReferences(StatefulRuleGroupReferenceArgs.builder()
///                             .override(StatefulRuleGroupOverrideArgs.builder()
///                                 .action("DROP_TO_ALERT")
///                                 .build())
///                             .priority(24)
///                             .resourceArn("mjmcihwfckvrmkqo")
///                             .build())
///                         .statelessCustomActions(CustomActionArgs.builder()
///                             .actionDefinition(ActionDefinitionArgs.builder()
///                                 .publishMetricAction(PublishMetricActionArgs.builder()
///                                     .dimensions(DimensionArgs.builder()
///                                         .value("kpelhvywxyvfwbkxeepdvujwrlywy")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .actionName("vzrqjgluyejlinwxxhuljye")
///                             .build())
///                         .statelessDefaultActions("bhojbxqneam")
///                         .statelessFragmentDefaultActions("lnpufwfpveptbxocevsbt")
///                         .statelessRuleGroupReferences(StatelessRuleGroupReferenceArgs.builder()
///                             .priority(11)
///                             .resourceArn("kjggnkcabwynhgqkoryqzbkwz")
///                             .build())
///                         .tlsInspectionConfigurationArn("qrdcssdykfcsxjdimv")
///                         .build())
///                     .firewallPolicyArn("xpoahy")
///                     .firewallPolicyId("ofrzbmefsngq")
///                     .firewallPolicyName("xasgbvm")
///                     .tags(TagArgs.builder()
///                         .key("njlfcpwz")
///                         .value("lrpynqejzy")
///                         .build())
///                     .build())
///                 .awsRegion("ujnhepy")
///                 .awsSourceSchema("tupxubxwdvvlcxhmjn")
///                 .awsTags(Map.of("key2264", "v"))
///                 .publicCloudConnectorsResourceId("jgglyugkzlbqyphcmiuchfpzd")
///                 .publicCloudResourceName("txlbnhchqhqamo")
///                 .build())
///             .resourceGroupName("rgnetworkFirewallFirewallPolicy")
///             .tags(Map.of("key2040", "rrw"))
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
/// const networkFirewallFirewallPolicy = new azure_native.awsconnector.NetworkFirewallFirewallPolicy("networkFirewallFirewallPolicy", {
///     location: "jmirflesx",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "rwqxtqealkkjplaoauziyt",
///         awsAccountId: "fvglwybfwcjydvshvpaqacdtncc",
///         awsProperties: {
///             description: "lgkmdcxkddlt",
///             firewallPolicy: {
///                 policyVariables: {
///                     ruleVariables: {
///                         key6441: {
///                             definition: ["nwcsmd"],
///                         },
///                     },
///                 },
///                 statefulDefaultActions: ["rhluwzzqiehteaka"],
///                 statefulEngineOptions: {
///                     ruleOrder: azure_native.awsconnector.StatefulEngineOptionsRuleOrder.DEFAULT_ACTION_ORDER,
///                     streamExceptionPolicy: azure_native.awsconnector.StatefulEngineOptionsStreamExceptionPolicy.CONTINUE,
///                 },
///                 statefulRuleGroupReferences: [{
///                     override: {
///                         action: azure_native.awsconnector.StatefulRuleGroupOverrideAction.DROP_TO_ALERT,
///                     },
///                     priority: 24,
///                     resourceArn: "mjmcihwfckvrmkqo",
///                 }],
///                 statelessCustomActions: [{
///                     actionDefinition: {
///                         publishMetricAction: {
///                             dimensions: [{
///                                 value: "kpelhvywxyvfwbkxeepdvujwrlywy",
///                             }],
///                         },
///                     },
///                     actionName: "vzrqjgluyejlinwxxhuljye",
///                 }],
///                 statelessDefaultActions: ["bhojbxqneam"],
///                 statelessFragmentDefaultActions: ["lnpufwfpveptbxocevsbt"],
///                 statelessRuleGroupReferences: [{
///                     priority: 11,
///                     resourceArn: "kjggnkcabwynhgqkoryqzbkwz",
///                 }],
///                 tlsInspectionConfigurationArn: "qrdcssdykfcsxjdimv",
///             },
///             firewallPolicyArn: "xpoahy",
///             firewallPolicyId: "ofrzbmefsngq",
///             firewallPolicyName: "xasgbvm",
///             tags: [{
///                 key: "njlfcpwz",
///                 value: "lrpynqejzy",
///             }],
///         },
///         awsRegion: "ujnhepy",
///         awsSourceSchema: "tupxubxwdvvlcxhmjn",
///         awsTags: {
///             key2264: "v",
///         },
///         publicCloudConnectorsResourceId: "jgglyugkzlbqyphcmiuchfpzd",
///         publicCloudResourceName: "txlbnhchqhqamo",
///     },
///     resourceGroupName: "rgnetworkFirewallFirewallPolicy",
///     tags: {
///         key2040: "rrw",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_firewall_firewall_policy = azure_native.awsconnector.NetworkFirewallFirewallPolicy("networkFirewallFirewallPolicy",
///     location="jmirflesx",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "rwqxtqealkkjplaoauziyt",
///         "aws_account_id": "fvglwybfwcjydvshvpaqacdtncc",
///         "aws_properties": {
///             "description": "lgkmdcxkddlt",
///             "firewall_policy": {
///                 "policy_variables": {
///                     "rule_variables": {
///                         "key6441": {
///                             "definition": ["nwcsmd"],
///                         },
///                     },
///                 },
///                 "stateful_default_actions": ["rhluwzzqiehteaka"],
///                 "stateful_engine_options": {
///                     "rule_order": azure_native.awsconnector.StatefulEngineOptionsRuleOrder.DEFAUL_T_ACTIO_N_ORDER,
///                     "stream_exception_policy": azure_native.awsconnector.StatefulEngineOptionsStreamExceptionPolicy.CONTINUE_,
///                 },
///                 "stateful_rule_group_references": [{
///                     "override": {
///                         "action": azure_native.awsconnector.StatefulRuleGroupOverrideAction.DRO_P_T_O_ALERT,
///                     },
///                     "priority": 24,
///                     "resource_arn": "mjmcihwfckvrmkqo",
///                 }],
///                 "stateless_custom_actions": [{
///                     "action_definition": {
///                         "publish_metric_action": {
///                             "dimensions": [{
///                                 "value": "kpelhvywxyvfwbkxeepdvujwrlywy",
///                             }],
///                         },
///                     },
///                     "action_name": "vzrqjgluyejlinwxxhuljye",
///                 }],
///                 "stateless_default_actions": ["bhojbxqneam"],
///                 "stateless_fragment_default_actions": ["lnpufwfpveptbxocevsbt"],
///                 "stateless_rule_group_references": [{
///                     "priority": 11,
///                     "resource_arn": "kjggnkcabwynhgqkoryqzbkwz",
///                 }],
///                 "tls_inspection_configuration_arn": "qrdcssdykfcsxjdimv",
///             },
///             "firewall_policy_arn": "xpoahy",
///             "firewall_policy_id": "ofrzbmefsngq",
///             "firewall_policy_name": "xasgbvm",
///             "tags": [{
///                 "key": "njlfcpwz",
///                 "value": "lrpynqejzy",
///             }],
///         },
///         "aws_region": "ujnhepy",
///         "aws_source_schema": "tupxubxwdvvlcxhmjn",
///         "aws_tags": {
///             "key2264": "v",
///         },
///         "public_cloud_connectors_resource_id": "jgglyugkzlbqyphcmiuchfpzd",
///         "public_cloud_resource_name": "txlbnhchqhqamo",
///     },
///     resource_group_name="rgnetworkFirewallFirewallPolicy",
///     tags={
///         "key2040": "rrw",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   networkFirewallFirewallPolicy:
///     type: azure-native:awsconnector:NetworkFirewallFirewallPolicy
///     properties:
///       location: jmirflesx
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: rwqxtqealkkjplaoauziyt
///         awsAccountId: fvglwybfwcjydvshvpaqacdtncc
///         awsProperties:
///           description: lgkmdcxkddlt
///           firewallPolicy:
///             policyVariables:
///               ruleVariables:
///                 key6441:
///                   definition:
///                     - nwcsmd
///             statefulDefaultActions:
///               - rhluwzzqiehteaka
///             statefulEngineOptions:
///               ruleOrder: DEFAULT_ACTION_ORDER
///               streamExceptionPolicy: CONTINUE
///             statefulRuleGroupReferences:
///               - override:
///                   action: DROP_TO_ALERT
///                 priority: 24
///                 resourceArn: mjmcihwfckvrmkqo
///             statelessCustomActions:
///               - actionDefinition:
///                   publishMetricAction:
///                     dimensions:
///                       - value: kpelhvywxyvfwbkxeepdvujwrlywy
///                 actionName: vzrqjgluyejlinwxxhuljye
///             statelessDefaultActions:
///               - bhojbxqneam
///             statelessFragmentDefaultActions:
///               - lnpufwfpveptbxocevsbt
///             statelessRuleGroupReferences:
///               - priority: 11
///                 resourceArn: kjggnkcabwynhgqkoryqzbkwz
///             tlsInspectionConfigurationArn: qrdcssdykfcsxjdimv
///           firewallPolicyArn: xpoahy
///           firewallPolicyId: ofrzbmefsngq
///           firewallPolicyName: xasgbvm
///           tags:
///             - key: njlfcpwz
///               value: lrpynqejzy
///         awsRegion: ujnhepy
///         awsSourceSchema: tupxubxwdvvlcxhmjn
///         awsTags:
///           key2264: v
///         publicCloudConnectorsResourceId: jgglyugkzlbqyphcmiuchfpzd
///         publicCloudResourceName: txlbnhchqhqamo
///       resourceGroupName: rgnetworkFirewallFirewallPolicy
///       tags:
///         key2040: rrw
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
/// $ pulumi import azure-native:awsconnector:NetworkFirewallFirewallPolicy fqdrydmfxo /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/networkFirewallFirewallPolicies/{name}
/// ```
class NetworkFirewallFirewallPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<NetworkFirewallFirewallPolicyPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [NetworkFirewallFirewallPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkFirewallFirewallPolicy]. {@macro pulumi_awsconnector_network_firewall_firewall_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkFirewallFirewallPolicy(
    String name, {
    NetworkFirewallFirewallPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:NetworkFirewallFirewallPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<NetworkFirewallFirewallPolicyPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkFirewallFirewallPolicyPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [NetworkFirewallFirewallPolicy] resource.
  NetworkFirewallFirewallPolicy.reference(String urn)
    : super(
        'azure-native:awsconnector:NetworkFirewallFirewallPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<NetworkFirewallFirewallPolicyPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkFirewallFirewallPolicyPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
