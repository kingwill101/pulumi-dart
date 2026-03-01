import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_firewall_rule_group_args.dart';
import 'network_firewall_rule_group_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NetworkFirewallRuleGroups_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkFirewallRuleGroup = new AzureNative.AwsConnector.NetworkFirewallRuleGroup("networkFirewallRuleGroup", new()
///     {
///         Location = "npjhzlsmeqnuoj",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.NetworkFirewallRuleGroupPropertiesArgs
///         {
///             Arn = "uzwseilcphanlymsepokkjnzich",
///             AwsAccountId = "lbmcidte",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsNetworkFirewallRuleGroupPropertiesArgs
///             {
///                 Capacity = 13,
///                 Description = "zlkovsdkoamizsf",
///                 RuleGroup = new AzureNative.AwsConnector.Inputs.RuleGroupArgs
///                 {
///                     ReferenceSets = new AzureNative.AwsConnector.Inputs.ReferenceSetsArgs
///                     {
///                         IpSetReferences =
///                         {
///                             { "key2227", new AzureNative.AwsConnector.Inputs.IPSetReferenceArgs
///                             {
///                                 ReferenceArn = "oytryvxnweahmshhucxpblpuc",
///                             } },
///                         },
///                     },
///                     RuleVariables = new AzureNative.AwsConnector.Inputs.RuleVariablesArgs
///                     {
///                         IpSets =
///                         {
///                             { "key2970", new AzureNative.AwsConnector.Inputs.IPSetArgs
///                             {
///                                 Definition = new[]
///                                 {
///                                     "aizprahgi",
///                                 },
///                             } },
///                         },
///                         PortSets =
///                         {
///                             { "key1199", new AzureNative.AwsConnector.Inputs.PortSetArgs
///                             {
///                                 Definition = new[]
///                                 {
///                                     "wwayyzoztulbvq",
///                                 },
///                             } },
///                         },
///                     },
///                     RulesSource = new AzureNative.AwsConnector.Inputs.RulesSourceArgs
///                     {
///                         RulesSourceList = new AzureNative.AwsConnector.Inputs.RulesSourceListArgs
///                         {
///                             GeneratedRulesType = AzureNative.AwsConnector.RulesSourceListGeneratedRulesType.ALLOWLIST,
///                             TargetTypes = new[]
///                             {
///                                 "efuuy",
///                             },
///                             Targets = new[]
///                             {
///                                 "pnecsfopd",
///                             },
///                         },
///                         RulesString = "xujqqtutwcprdqudsnalep",
///                         StatefulRules = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.StatefulRuleArgs
///                             {
///                                 Action = AzureNative.AwsConnector.StatefulRuleAction.ALERT,
///                                 Header = new AzureNative.AwsConnector.Inputs.HeaderArgs
///                                 {
///                                     Destination = "monehvupaofeakgppr",
///                                     DestinationPort = "qlhyfsewpdlrpkxbdwfojdz",
///                                     Direction = AzureNative.AwsConnector.HeaderDirection.ANY,
///                                     Protocol = AzureNative.AwsConnector.HeaderProtocol.DCERPC,
///                                     Source = "bmxmxcbelcmrkaigfwwbtbakerp",
///                                     SourcePort = "ieimsyntk",
///                                 },
///                                 RuleOptions = new[]
///                                 {
///                                     new AzureNative.AwsConnector.Inputs.RuleOptionArgs
///                                     {
///                                         Keyword = "obxwkhfbshjufmmrpjtskldelzb",
///                                         Settings = new[]
///                                         {
///                                             "xflxrtoyhczflnevdftw",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                         StatelessRulesAndCustomActions = new AzureNative.AwsConnector.Inputs.StatelessRulesAndCustomActionsArgs
///                         {
///                             CustomActions = new[]
///                             {
///                                 new AzureNative.AwsConnector.Inputs.CustomActionArgs
///                                 {
///                                     ActionDefinition = new AzureNative.AwsConnector.Inputs.ActionDefinitionArgs
///                                     {
///                                         PublishMetricAction = new AzureNative.AwsConnector.Inputs.PublishMetricActionArgs
///                                         {
///                                             Dimensions = new[]
///                                             {
///                                                 new AzureNative.AwsConnector.Inputs.DimensionArgs
///                                                 {
///                                                     Value = "wninrpqzvmeovspprohpjge",
///                                                 },
///                                             },
///                                         },
///                                     },
///                                     ActionName = "kcfqhtt",
///                                 },
///                             },
///                             StatelessRules = new[]
///                             {
///                                 new AzureNative.AwsConnector.Inputs.StatelessRuleArgs
///                                 {
///                                     Priority = 11,
///                                     RuleDefinition = new AzureNative.AwsConnector.Inputs.RuleDefinitionArgs
///                                     {
///                                         Actions = new[]
///                                         {
///                                             "ofwytyaxwaoxjuhfror",
///                                         },
///                                         MatchAttributes = new AzureNative.AwsConnector.Inputs.MatchAttributesArgs
///                                         {
///                                             DestinationPorts = new[]
///                                             {
///                                                 new AzureNative.AwsConnector.Inputs.PortRangeArgs
///                                                 {
///                                                     FromPort = 15,
///                                                     ToPort = 3,
///                                                 },
///                                             },
///                                             Destinations = new[]
///                                             {
///                                                 new AzureNative.AwsConnector.Inputs.AddressArgs
///                                                 {
///                                                     AddressDefinition = "upxiaznlcwpjgrahrg",
///                                                 },
///                                             },
///                                             Protocols = new[]
///                                             {
///                                                 27,
///                                             },
///                                             SourcePorts = new[]
///                                             {
///                                                 new AzureNative.AwsConnector.Inputs.PortRangeArgs
///                                                 {
///                                                     FromPort = 15,
///                                                     ToPort = 3,
///                                                 },
///                                             },
///                                             Sources = new[]
///                                             {
///                                                 new AzureNative.AwsConnector.Inputs.AddressArgs
///                                                 {
///                                                     AddressDefinition = "upxiaznlcwpjgrahrg",
///                                                 },
///                                             },
///                                             TcpFlags = new[]
///                                             {
///                                                 new AzureNative.AwsConnector.Inputs.TCPFlagFieldArgs
///                                                 {
///                                                     Flags = new[]
///                                                     {
///                                                         "hc",
///                                                     },
///                                                     Masks = new[]
///                                                     {
///                                                         "yycdx",
///                                                     },
///                                                 },
///                                             },
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                     StatefulRuleOptions = new AzureNative.AwsConnector.Inputs.StatefulRuleOptionsArgs
///                     {
///                         RuleOrder = AzureNative.AwsConnector.StatefulRuleOptionsRuleOrder.DEFAULT_ACTION_ORDER,
///                     },
///                 },
///                 RuleGroupArn = "ncyehiokafjeadkrhonngdvqgtmdm",
///                 RuleGroupId = "qfdxbisrqddn",
///                 RuleGroupName = "dypivpjvrdiecto",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "wuuykkzufgvvtcpdohiydsnqvutq",
///                         Value = "pbppqwfrbdysivibwbk",
///                     },
///                 },
///                 Type = "STATEFUL",
///             },
///             AwsRegion = "vnwwozbuhjsi",
///             AwsSourceSchema = "ymsi",
///             AwsTags =
///             {
///                 { "key4273", "swpshhbiotzowyypprwmbrjpyhyqbf" },
///             },
///             PublicCloudConnectorsResourceId = "zholufsqpqkxgirpxvvr",
///             PublicCloudResourceName = "gpndbetnqj",
///         },
///         ResourceGroupName = "rgnetworkFirewallRuleGroup",
///         Tags =
///         {
///             { "key4955", "zqpelqnmwqzqrenv" },
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
/// 		_, err := awsconnector.NewNetworkFirewallRuleGroup(ctx, "networkFirewallRuleGroup", &awsconnector.NetworkFirewallRuleGroupArgs{
/// 			Location: pulumi.String("npjhzlsmeqnuoj"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.NetworkFirewallRuleGroupPropertiesArgs{
/// 				Arn:          pulumi.String("uzwseilcphanlymsepokkjnzich"),
/// 				AwsAccountId: pulumi.String("lbmcidte"),
/// 				AwsProperties: &awsconnector.AwsNetworkFirewallRuleGroupPropertiesArgs{
/// 					Capacity:    pulumi.Int(13),
/// 					Description: pulumi.String("zlkovsdkoamizsf"),
/// 					RuleGroup: &awsconnector.RuleGroupArgs{
/// 						ReferenceSets: &awsconnector.ReferenceSetsArgs{
/// 							IpSetReferences: awsconnector.IPSetReferenceMap{
/// 								"key2227": &awsconnector.IPSetReferenceArgs{
/// 									ReferenceArn: pulumi.String("oytryvxnweahmshhucxpblpuc"),
/// 								},
/// 							},
/// 						},
/// 						RuleVariables: &awsconnector.RuleVariablesArgs{
/// 							IpSets: awsconnector.IPSetMap{
/// 								"key2970": &awsconnector.IPSetArgs{
/// 									Definition: pulumi.StringArray{
/// 										pulumi.String("aizprahgi"),
/// 									},
/// 								},
/// 							},
/// 							PortSets: awsconnector.PortSetMap{
/// 								"key1199": &awsconnector.PortSetArgs{
/// 									Definition: pulumi.StringArray{
/// 										pulumi.String("wwayyzoztulbvq"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						RulesSource: &awsconnector.RulesSourceArgs{
/// 							RulesSourceList: &awsconnector.RulesSourceListArgs{
/// 								GeneratedRulesType: pulumi.String(awsconnector.RulesSourceListGeneratedRulesTypeALLOWLIST),
/// 								TargetTypes: pulumi.StringArray{
/// 									pulumi.String("efuuy"),
/// 								},
/// 								Targets: pulumi.StringArray{
/// 									pulumi.String("pnecsfopd"),
/// 								},
/// 							},
/// 							RulesString: pulumi.String("xujqqtutwcprdqudsnalep"),
/// 							StatefulRules: awsconnector.StatefulRuleArray{
/// 								&awsconnector.StatefulRuleArgs{
/// 									Action: pulumi.String(awsconnector.StatefulRuleActionALERT),
/// 									Header: &awsconnector.HeaderArgs{
/// 										Destination:     pulumi.String("monehvupaofeakgppr"),
/// 										DestinationPort: pulumi.String("qlhyfsewpdlrpkxbdwfojdz"),
/// 										Direction:       pulumi.String(awsconnector.HeaderDirectionANY),
/// 										Protocol:        pulumi.String(awsconnector.HeaderProtocolDCERPC),
/// 										Source:          pulumi.String("bmxmxcbelcmrkaigfwwbtbakerp"),
/// 										SourcePort:      pulumi.String("ieimsyntk"),
/// 									},
/// 									RuleOptions: awsconnector.RuleOptionArray{
/// 										&awsconnector.RuleOptionArgs{
/// 											Keyword: pulumi.String("obxwkhfbshjufmmrpjtskldelzb"),
/// 											Settings: pulumi.StringArray{
/// 												pulumi.String("xflxrtoyhczflnevdftw"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 							StatelessRulesAndCustomActions: &awsconnector.StatelessRulesAndCustomActionsArgs{
/// 								CustomActions: awsconnector.CustomActionArray{
/// 									&awsconnector.CustomActionArgs{
/// 										ActionDefinition: &awsconnector.ActionDefinitionArgs{
/// 											PublishMetricAction: &awsconnector.PublishMetricActionArgs{
/// 												Dimensions: awsconnector.DimensionArray{
/// 													&awsconnector.DimensionArgs{
/// 														Value: pulumi.String("wninrpqzvmeovspprohpjge"),
/// 													},
/// 												},
/// 											},
/// 										},
/// 										ActionName: pulumi.String("kcfqhtt"),
/// 									},
/// 								},
/// 								StatelessRules: awsconnector.StatelessRuleArray{
/// 									&awsconnector.StatelessRuleArgs{
/// 										Priority: pulumi.Int(11),
/// 										RuleDefinition: &awsconnector.RuleDefinitionArgs{
/// 											Actions: pulumi.StringArray{
/// 												pulumi.String("ofwytyaxwaoxjuhfror"),
/// 											},
/// 											MatchAttributes: &awsconnector.MatchAttributesArgs{
/// 												DestinationPorts: awsconnector.PortRangeArray{
/// 													&awsconnector.PortRangeArgs{
/// 														FromPort: pulumi.Int(15),
/// 														ToPort:   pulumi.Int(3),
/// 													},
/// 												},
/// 												Destinations: awsconnector.AddressArray{
/// 													&awsconnector.AddressArgs{
/// 														AddressDefinition: pulumi.String("upxiaznlcwpjgrahrg"),
/// 													},
/// 												},
/// 												Protocols: pulumi.IntArray{
/// 													pulumi.Int(27),
/// 												},
/// 												SourcePorts: awsconnector.PortRangeArray{
/// 													&awsconnector.PortRangeArgs{
/// 														FromPort: pulumi.Int(15),
/// 														ToPort:   pulumi.Int(3),
/// 													},
/// 												},
/// 												Sources: awsconnector.AddressArray{
/// 													&awsconnector.AddressArgs{
/// 														AddressDefinition: pulumi.String("upxiaznlcwpjgrahrg"),
/// 													},
/// 												},
/// 												TcpFlags: awsconnector.TCPFlagFieldArray{
/// 													&awsconnector.TCPFlagFieldArgs{
/// 														Flags: pulumi.StringArray{
/// 															pulumi.String("hc"),
/// 														},
/// 														Masks: pulumi.StringArray{
/// 															pulumi.String("yycdx"),
/// 														},
/// 													},
/// 												},
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 						StatefulRuleOptions: &awsconnector.StatefulRuleOptionsArgs{
/// 							RuleOrder: pulumi.String(awsconnector.StatefulRuleOptionsRuleOrder_DEFAULT_ACTION_ORDER),
/// 						},
/// 					},
/// 					RuleGroupArn:  pulumi.String("ncyehiokafjeadkrhonngdvqgtmdm"),
/// 					RuleGroupId:   pulumi.String("qfdxbisrqddn"),
/// 					RuleGroupName: pulumi.String("dypivpjvrdiecto"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("wuuykkzufgvvtcpdohiydsnqvutq"),
/// 							Value: pulumi.String("pbppqwfrbdysivibwbk"),
/// 						},
/// 					},
/// 					Type: pulumi.String("STATEFUL"),
/// 				},
/// 				AwsRegion:       pulumi.String("vnwwozbuhjsi"),
/// 				AwsSourceSchema: pulumi.String("ymsi"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key4273": pulumi.String("swpshhbiotzowyypprwmbrjpyhyqbf"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("zholufsqpqkxgirpxvvr"),
/// 				PublicCloudResourceName:         pulumi.String("gpndbetnqj"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgnetworkFirewallRuleGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"key4955": pulumi.String("zqpelqnmwqzqrenv"),
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
/// import com.pulumi.azurenative.awsconnector.NetworkFirewallRuleGroup;
/// import com.pulumi.azurenative.awsconnector.NetworkFirewallRuleGroupArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.NetworkFirewallRuleGroupPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsNetworkFirewallRuleGroupPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.RuleGroupArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ReferenceSetsArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.RuleVariablesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.RulesSourceArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.RulesSourceListArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.StatelessRulesAndCustomActionsArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.StatefulRuleOptionsArgs;
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
///         var networkFirewallRuleGroup = new NetworkFirewallRuleGroup("networkFirewallRuleGroup", NetworkFirewallRuleGroupArgs.builder()
///             .location("npjhzlsmeqnuoj")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(NetworkFirewallRuleGroupPropertiesArgs.builder()
///                 .arn("uzwseilcphanlymsepokkjnzich")
///                 .awsAccountId("lbmcidte")
///                 .awsProperties(AwsNetworkFirewallRuleGroupPropertiesArgs.builder()
///                     .capacity(13)
///                     .description("zlkovsdkoamizsf")
///                     .ruleGroup(RuleGroupArgs.builder()
///                         .referenceSets(ReferenceSetsArgs.builder()
///                             .ipSetReferences(Map.of("key2227", IPSetReferenceArgs.builder()
///                                 .referenceArn("oytryvxnweahmshhucxpblpuc")
///                                 .build()))
///                             .build())
///                         .ruleVariables(RuleVariablesArgs.builder()
///                             .ipSets(Map.of("key2970", IPSetArgs.builder()
///                                 .definition("aizprahgi")
///                                 .build()))
///                             .portSets(Map.of("key1199", PortSetArgs.builder()
///                                 .definition("wwayyzoztulbvq")
///                                 .build()))
///                             .build())
///                         .rulesSource(RulesSourceArgs.builder()
///                             .rulesSourceList(RulesSourceListArgs.builder()
///                                 .generatedRulesType("ALLOWLIST")
///                                 .targetTypes("efuuy")
///                                 .targets("pnecsfopd")
///                                 .build())
///                             .rulesString("xujqqtutwcprdqudsnalep")
///                             .statefulRules(StatefulRuleArgs.builder()
///                                 .action("ALERT")
///                                 .header(HeaderArgs.builder()
///                                     .destination("monehvupaofeakgppr")
///                                     .destinationPort("qlhyfsewpdlrpkxbdwfojdz")
///                                     .direction("ANY")
///                                     .protocol("DCERPC")
///                                     .source("bmxmxcbelcmrkaigfwwbtbakerp")
///                                     .sourcePort("ieimsyntk")
///                                     .build())
///                                 .ruleOptions(RuleOptionArgs.builder()
///                                     .keyword("obxwkhfbshjufmmrpjtskldelzb")
///                                     .settings("xflxrtoyhczflnevdftw")
///                                     .build())
///                                 .build())
///                             .statelessRulesAndCustomActions(StatelessRulesAndCustomActionsArgs.builder()
///                                 .customActions(CustomActionArgs.builder()
///                                     .actionDefinition(ActionDefinitionArgs.builder()
///                                         .publishMetricAction(PublishMetricActionArgs.builder()
///                                             .dimensions(DimensionArgs.builder()
///                                                 .value("wninrpqzvmeovspprohpjge")
///                                                 .build())
///                                             .build())
///                                         .build())
///                                     .actionName("kcfqhtt")
///                                     .build())
///                                 .statelessRules(StatelessRuleArgs.builder()
///                                     .priority(11)
///                                     .ruleDefinition(RuleDefinitionArgs.builder()
///                                         .actions("ofwytyaxwaoxjuhfror")
///                                         .matchAttributes(MatchAttributesArgs.builder()
///                                             .destinationPorts(PortRangeArgs.builder()
///                                                 .fromPort(15)
///                                                 .toPort(3)
///                                                 .build())
///                                             .destinations(AddressArgs.builder()
///                                                 .addressDefinition("upxiaznlcwpjgrahrg")
///                                                 .build())
///                                             .protocols(27)
///                                             .sourcePorts(PortRangeArgs.builder()
///                                                 .fromPort(15)
///                                                 .toPort(3)
///                                                 .build())
///                                             .sources(AddressArgs.builder()
///                                                 .addressDefinition("upxiaznlcwpjgrahrg")
///                                                 .build())
///                                             .tcpFlags(TCPFlagFieldArgs.builder()
///                                                 .flags("hc")
///                                                 .masks("yycdx")
///                                                 .build())
///                                             .build())
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build())
///                         .statefulRuleOptions(StatefulRuleOptionsArgs.builder()
///                             .ruleOrder("DEFAULT_ACTION_ORDER")
///                             .build())
///                         .build())
///                     .ruleGroupArn("ncyehiokafjeadkrhonngdvqgtmdm")
///                     .ruleGroupId("qfdxbisrqddn")
///                     .ruleGroupName("dypivpjvrdiecto")
///                     .tags(TagArgs.builder()
///                         .key("wuuykkzufgvvtcpdohiydsnqvutq")
///                         .value("pbppqwfrbdysivibwbk")
///                         .build())
///                     .type("STATEFUL")
///                     .build())
///                 .awsRegion("vnwwozbuhjsi")
///                 .awsSourceSchema("ymsi")
///                 .awsTags(Map.of("key4273", "swpshhbiotzowyypprwmbrjpyhyqbf"))
///                 .publicCloudConnectorsResourceId("zholufsqpqkxgirpxvvr")
///                 .publicCloudResourceName("gpndbetnqj")
///                 .build())
///             .resourceGroupName("rgnetworkFirewallRuleGroup")
///             .tags(Map.of("key4955", "zqpelqnmwqzqrenv"))
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
/// const networkFirewallRuleGroup = new azure_native.awsconnector.NetworkFirewallRuleGroup("networkFirewallRuleGroup", {
///     location: "npjhzlsmeqnuoj",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "uzwseilcphanlymsepokkjnzich",
///         awsAccountId: "lbmcidte",
///         awsProperties: {
///             capacity: 13,
///             description: "zlkovsdkoamizsf",
///             ruleGroup: {
///                 referenceSets: {
///                     ipSetReferences: {
///                         key2227: {
///                             referenceArn: "oytryvxnweahmshhucxpblpuc",
///                         },
///                     },
///                 },
///                 ruleVariables: {
///                     ipSets: {
///                         key2970: {
///                             definition: ["aizprahgi"],
///                         },
///                     },
///                     portSets: {
///                         key1199: {
///                             definition: ["wwayyzoztulbvq"],
///                         },
///                     },
///                 },
///                 rulesSource: {
///                     rulesSourceList: {
///                         generatedRulesType: azure_native.awsconnector.RulesSourceListGeneratedRulesType.ALLOWLIST,
///                         targetTypes: ["efuuy"],
///                         targets: ["pnecsfopd"],
///                     },
///                     rulesString: "xujqqtutwcprdqudsnalep",
///                     statefulRules: [{
///                         action: azure_native.awsconnector.StatefulRuleAction.ALERT,
///                         header: {
///                             destination: "monehvupaofeakgppr",
///                             destinationPort: "qlhyfsewpdlrpkxbdwfojdz",
///                             direction: azure_native.awsconnector.HeaderDirection.ANY,
///                             protocol: azure_native.awsconnector.HeaderProtocol.DCERPC,
///                             source: "bmxmxcbelcmrkaigfwwbtbakerp",
///                             sourcePort: "ieimsyntk",
///                         },
///                         ruleOptions: [{
///                             keyword: "obxwkhfbshjufmmrpjtskldelzb",
///                             settings: ["xflxrtoyhczflnevdftw"],
///                         }],
///                     }],
///                     statelessRulesAndCustomActions: {
///                         customActions: [{
///                             actionDefinition: {
///                                 publishMetricAction: {
///                                     dimensions: [{
///                                         value: "wninrpqzvmeovspprohpjge",
///                                     }],
///                                 },
///                             },
///                             actionName: "kcfqhtt",
///                         }],
///                         statelessRules: [{
///                             priority: 11,
///                             ruleDefinition: {
///                                 actions: ["ofwytyaxwaoxjuhfror"],
///                                 matchAttributes: {
///                                     destinationPorts: [{
///                                         fromPort: 15,
///                                         toPort: 3,
///                                     }],
///                                     destinations: [{
///                                         addressDefinition: "upxiaznlcwpjgrahrg",
///                                     }],
///                                     protocols: [27],
///                                     sourcePorts: [{
///                                         fromPort: 15,
///                                         toPort: 3,
///                                     }],
///                                     sources: [{
///                                         addressDefinition: "upxiaznlcwpjgrahrg",
///                                     }],
///                                     tcpFlags: [{
///                                         flags: ["hc"],
///                                         masks: ["yycdx"],
///                                     }],
///                                 },
///                             },
///                         }],
///                     },
///                 },
///                 statefulRuleOptions: {
///                     ruleOrder: azure_native.awsconnector.StatefulRuleOptionsRuleOrder.DEFAULT_ACTION_ORDER,
///                 },
///             },
///             ruleGroupArn: "ncyehiokafjeadkrhonngdvqgtmdm",
///             ruleGroupId: "qfdxbisrqddn",
///             ruleGroupName: "dypivpjvrdiecto",
///             tags: [{
///                 key: "wuuykkzufgvvtcpdohiydsnqvutq",
///                 value: "pbppqwfrbdysivibwbk",
///             }],
///             type: "STATEFUL",
///         },
///         awsRegion: "vnwwozbuhjsi",
///         awsSourceSchema: "ymsi",
///         awsTags: {
///             key4273: "swpshhbiotzowyypprwmbrjpyhyqbf",
///         },
///         publicCloudConnectorsResourceId: "zholufsqpqkxgirpxvvr",
///         publicCloudResourceName: "gpndbetnqj",
///     },
///     resourceGroupName: "rgnetworkFirewallRuleGroup",
///     tags: {
///         key4955: "zqpelqnmwqzqrenv",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_firewall_rule_group = azure_native.awsconnector.NetworkFirewallRuleGroup("networkFirewallRuleGroup",
///     location="npjhzlsmeqnuoj",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "uzwseilcphanlymsepokkjnzich",
///         "aws_account_id": "lbmcidte",
///         "aws_properties": {
///             "capacity": 13,
///             "description": "zlkovsdkoamizsf",
///             "rule_group": {
///                 "reference_sets": {
///                     "ip_set_references": {
///                         "key2227": {
///                             "reference_arn": "oytryvxnweahmshhucxpblpuc",
///                         },
///                     },
///                 },
///                 "rule_variables": {
///                     "ip_sets": {
///                         "key2970": {
///                             "definition": ["aizprahgi"],
///                         },
///                     },
///                     "port_sets": {
///                         "key1199": {
///                             "definition": ["wwayyzoztulbvq"],
///                         },
///                     },
///                 },
///                 "rules_source": {
///                     "rules_source_list": {
///                         "generated_rules_type": azure_native.awsconnector.RulesSourceListGeneratedRulesType.ALLOWLIST,
///                         "target_types": ["efuuy"],
///                         "targets": ["pnecsfopd"],
///                     },
///                     "rules_string": "xujqqtutwcprdqudsnalep",
///                     "stateful_rules": [{
///                         "action": azure_native.awsconnector.StatefulRuleAction.ALERT,
///                         "header": {
///                             "destination": "monehvupaofeakgppr",
///                             "destination_port": "qlhyfsewpdlrpkxbdwfojdz",
///                             "direction": azure_native.awsconnector.HeaderDirection.ANY,
///                             "protocol": azure_native.awsconnector.HeaderProtocol.DCERPC,
///                             "source": "bmxmxcbelcmrkaigfwwbtbakerp",
///                             "source_port": "ieimsyntk",
///                         },
///                         "rule_options": [{
///                             "keyword": "obxwkhfbshjufmmrpjtskldelzb",
///                             "settings": ["xflxrtoyhczflnevdftw"],
///                         }],
///                     }],
///                     "stateless_rules_and_custom_actions": {
///                         "custom_actions": [{
///                             "action_definition": {
///                                 "publish_metric_action": {
///                                     "dimensions": [{
///                                         "value": "wninrpqzvmeovspprohpjge",
///                                     }],
///                                 },
///                             },
///                             "action_name": "kcfqhtt",
///                         }],
///                         "stateless_rules": [{
///                             "priority": 11,
///                             "rule_definition": {
///                                 "actions": ["ofwytyaxwaoxjuhfror"],
///                                 "match_attributes": {
///                                     "destination_ports": [{
///                                         "from_port": 15,
///                                         "to_port": 3,
///                                     }],
///                                     "destinations": [{
///                                         "address_definition": "upxiaznlcwpjgrahrg",
///                                     }],
///                                     "protocols": [27],
///                                     "source_ports": [{
///                                         "from_port": 15,
///                                         "to_port": 3,
///                                     }],
///                                     "sources": [{
///                                         "address_definition": "upxiaznlcwpjgrahrg",
///                                     }],
///                                     "tcp_flags": [{
///                                         "flags": ["hc"],
///                                         "masks": ["yycdx"],
///                                     }],
///                                 },
///                             },
///                         }],
///                     },
///                 },
///                 "stateful_rule_options": {
///                     "rule_order": azure_native.awsconnector.StatefulRuleOptionsRuleOrder.DEFAUL_T_ACTIO_N_ORDER,
///                 },
///             },
///             "rule_group_arn": "ncyehiokafjeadkrhonngdvqgtmdm",
///             "rule_group_id": "qfdxbisrqddn",
///             "rule_group_name": "dypivpjvrdiecto",
///             "tags": [{
///                 "key": "wuuykkzufgvvtcpdohiydsnqvutq",
///                 "value": "pbppqwfrbdysivibwbk",
///             }],
///             "type": "STATEFUL",
///         },
///         "aws_region": "vnwwozbuhjsi",
///         "aws_source_schema": "ymsi",
///         "aws_tags": {
///             "key4273": "swpshhbiotzowyypprwmbrjpyhyqbf",
///         },
///         "public_cloud_connectors_resource_id": "zholufsqpqkxgirpxvvr",
///         "public_cloud_resource_name": "gpndbetnqj",
///     },
///     resource_group_name="rgnetworkFirewallRuleGroup",
///     tags={
///         "key4955": "zqpelqnmwqzqrenv",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   networkFirewallRuleGroup:
///     type: azure-native:awsconnector:NetworkFirewallRuleGroup
///     properties:
///       location: npjhzlsmeqnuoj
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: uzwseilcphanlymsepokkjnzich
///         awsAccountId: lbmcidte
///         awsProperties:
///           capacity: 13
///           description: zlkovsdkoamizsf
///           ruleGroup:
///             referenceSets:
///               ipSetReferences:
///                 key2227:
///                   referenceArn: oytryvxnweahmshhucxpblpuc
///             ruleVariables:
///               ipSets:
///                 key2970:
///                   definition:
///                     - aizprahgi
///               portSets:
///                 key1199:
///                   definition:
///                     - wwayyzoztulbvq
///             rulesSource:
///               rulesSourceList:
///                 generatedRulesType: ALLOWLIST
///                 targetTypes:
///                   - efuuy
///                 targets:
///                   - pnecsfopd
///               rulesString: xujqqtutwcprdqudsnalep
///               statefulRules:
///                 - action: ALERT
///                   header:
///                     destination: monehvupaofeakgppr
///                     destinationPort: qlhyfsewpdlrpkxbdwfojdz
///                     direction: ANY
///                     protocol: DCERPC
///                     source: bmxmxcbelcmrkaigfwwbtbakerp
///                     sourcePort: ieimsyntk
///                   ruleOptions:
///                     - keyword: obxwkhfbshjufmmrpjtskldelzb
///                       settings:
///                         - xflxrtoyhczflnevdftw
///               statelessRulesAndCustomActions:
///                 customActions:
///                   - actionDefinition:
///                       publishMetricAction:
///                         dimensions:
///                           - value: wninrpqzvmeovspprohpjge
///                     actionName: kcfqhtt
///                 statelessRules:
///                   - priority: 11
///                     ruleDefinition:
///                       actions:
///                         - ofwytyaxwaoxjuhfror
///                       matchAttributes:
///                         destinationPorts:
///                           - fromPort: 15
///                             toPort: 3
///                         destinations:
///                           - addressDefinition: upxiaznlcwpjgrahrg
///                         protocols:
///                           - 27
///                         sourcePorts:
///                           - fromPort: 15
///                             toPort: 3
///                         sources:
///                           - addressDefinition: upxiaznlcwpjgrahrg
///                         tcpFlags:
///                           - flags:
///                               - hc
///                             masks:
///                               - yycdx
///             statefulRuleOptions:
///               ruleOrder: DEFAULT_ACTION_ORDER
///           ruleGroupArn: ncyehiokafjeadkrhonngdvqgtmdm
///           ruleGroupId: qfdxbisrqddn
///           ruleGroupName: dypivpjvrdiecto
///           tags:
///             - key: wuuykkzufgvvtcpdohiydsnqvutq
///               value: pbppqwfrbdysivibwbk
///           type: STATEFUL
///         awsRegion: vnwwozbuhjsi
///         awsSourceSchema: ymsi
///         awsTags:
///           key4273: swpshhbiotzowyypprwmbrjpyhyqbf
///         publicCloudConnectorsResourceId: zholufsqpqkxgirpxvvr
///         publicCloudResourceName: gpndbetnqj
///       resourceGroupName: rgnetworkFirewallRuleGroup
///       tags:
///         key4955: zqpelqnmwqzqrenv
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
/// $ pulumi import azure-native:awsconnector:NetworkFirewallRuleGroup uzcrmvzepwuehycywssojadsor /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/networkFirewallRuleGroups/{name}
/// ```
class NetworkFirewallRuleGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<NetworkFirewallRuleGroupPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [NetworkFirewallRuleGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkFirewallRuleGroup]. {@macro pulumi_awsconnector_network_firewall_rule_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkFirewallRuleGroup(
    String name, {
    NetworkFirewallRuleGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:NetworkFirewallRuleGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<NetworkFirewallRuleGroupPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
