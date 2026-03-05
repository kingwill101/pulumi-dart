import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_tap_rule_args.dart';
import 'system_data_response.dart';

/// The NetworkTapRule resource definition.
///
/// Uses Azure REST API version 2023-06-15. In version 2.x of the Azure Native provider, it used API version 2023-06-15.
///
/// Other available API versions: 2024-02-15-preview, 2024-06-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NetworkTapRules_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkTapRule = new AzureNative.ManagedNetworkFabric.NetworkTapRule("networkTapRule", new()
///     {
///         Annotation = "annotation",
///         ConfigurationType = AzureNative.ManagedNetworkFabric.ConfigurationType.File,
///         DynamicMatchConfigurations = new[]
///         {
///             new AzureNative.ManagedNetworkFabric.Inputs.CommonDynamicMatchConfigurationArgs
///             {
///                 IpGroups = new[]
///                 {
///                     new AzureNative.ManagedNetworkFabric.Inputs.IpGroupPropertiesArgs
///                     {
///                         IpAddressType = AzureNative.ManagedNetworkFabric.IPAddressType.IPv4,
///                         IpPrefixes = new[]
///                         {
///                             "10.10.10.10/30",
///                         },
///                         Name = "example-ipGroup1",
///                     },
///                 },
///                 PortGroups = new[]
///                 {
///                     new AzureNative.ManagedNetworkFabric.Inputs.PortGroupPropertiesArgs
///                     {
///                         Name = "example-portGroup1",
///                         Ports = new[]
///                         {
///                             "100-200",
///                         },
///                     },
///                     new AzureNative.ManagedNetworkFabric.Inputs.PortGroupPropertiesArgs
///                     {
///                         Name = "example-portGroup2",
///                         Ports = new[]
///                         {
///                             "900",
///                             "1000-2000",
///                         },
///                     },
///                 },
///                 VlanGroups = new[]
///                 {
///                     new AzureNative.ManagedNetworkFabric.Inputs.VlanGroupPropertiesArgs
///                     {
///                         Name = "exmaple-vlanGroup",
///                         Vlans = new[]
///                         {
///                             "10",
///                             "100-200",
///                         },
///                     },
///                 },
///             },
///         },
///         Location = "eastus",
///         MatchConfigurations = new[]
///         {
///             new AzureNative.ManagedNetworkFabric.Inputs.NetworkTapRuleMatchConfigurationArgs
///             {
///                 Actions = new[]
///                 {
///                     new AzureNative.ManagedNetworkFabric.Inputs.NetworkTapRuleActionArgs
///                     {
///                         DestinationId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/neighborGroups/example-neighborGroup",
///                         IsTimestampEnabled = AzureNative.ManagedNetworkFabric.BooleanEnumProperty.True,
///                         MatchConfigurationName = "match1",
///                         Truncate = "100",
///                         Type = AzureNative.ManagedNetworkFabric.TapRuleActionType.Drop,
///                     },
///                 },
///                 IpAddressType = AzureNative.ManagedNetworkFabric.IPAddressType.IPv4,
///                 MatchConditions = new[]
///                 {
///                     new AzureNative.ManagedNetworkFabric.Inputs.NetworkTapRuleMatchConditionArgs
///                     {
///                         EncapsulationType = AzureNative.ManagedNetworkFabric.EncapsulationType.None,
///                         IpCondition = new AzureNative.ManagedNetworkFabric.Inputs.IpMatchConditionArgs
///                         {
///                             IpGroupNames = new[]
///                             {
///                                 "example-ipGroup",
///                             },
///                             IpPrefixValues = new[]
///                             {
///                                 "10.10.10.10/20",
///                             },
///                             PrefixType = AzureNative.ManagedNetworkFabric.PrefixType.Prefix,
///                             Type = AzureNative.ManagedNetworkFabric.SourceDestinationType.SourceIP,
///                         },
///                         PortCondition = new AzureNative.ManagedNetworkFabric.Inputs.PortConditionArgs
///                         {
///                             Layer4Protocol = AzureNative.ManagedNetworkFabric.Layer4Protocol.TCP,
///                             PortGroupNames = new[]
///                             {
///                                 "example-portGroup1",
///                             },
///                             PortType = AzureNative.ManagedNetworkFabric.PortType.SourcePort,
///                             Ports = new[]
///                             {
///                                 "100",
///                             },
///                         },
///                         ProtocolTypes = new[]
///                         {
///                             "TCP",
///                         },
///                         VlanMatchCondition = new AzureNative.ManagedNetworkFabric.Inputs.VlanMatchConditionArgs
///                         {
///                             InnerVlans = new[]
///                             {
///                                 "11-20",
///                             },
///                             VlanGroupNames = new[]
///                             {
///                                 "exmaple-vlanGroup",
///                             },
///                             Vlans = new[]
///                             {
///                                 "10",
///                             },
///                         },
///                     },
///                 },
///                 MatchConfigurationName = "config1",
///                 SequenceNumber = 10,
///             },
///         },
///         NetworkTapRuleName = "example-tapRule",
///         PollingIntervalInSeconds = 30,
///         ResourceGroupName = "example-rg",
///         Tags =
///         {
///             { "keyID", "keyValue" },
///         },
///         TapRulesUrl = "https://microsoft.com/a",
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
/// 	managednetworkfabric "github.com/pulumi/pulumi-azure-native-sdk/managednetworkfabric/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := managednetworkfabric.NewNetworkTapRule(ctx, "networkTapRule", &managednetworkfabric.NetworkTapRuleArgs{
/// 			Annotation:        pulumi.String("annotation"),
/// 			ConfigurationType: pulumi.String(managednetworkfabric.ConfigurationTypeFile),
/// 			DynamicMatchConfigurations: managednetworkfabric.CommonDynamicMatchConfigurationArray{
/// 				&managednetworkfabric.CommonDynamicMatchConfigurationArgs{
/// 					IpGroups: managednetworkfabric.IpGroupPropertiesArray{
/// 						&managednetworkfabric.IpGroupPropertiesArgs{
/// 							IpAddressType: pulumi.String(managednetworkfabric.IPAddressTypeIPv4),
/// 							IpPrefixes: pulumi.StringArray{
/// 								pulumi.String("10.10.10.10/30"),
/// 							},
/// 							Name: pulumi.String("example-ipGroup1"),
/// 						},
/// 					},
/// 					PortGroups: managednetworkfabric.PortGroupPropertiesArray{
/// 						&managednetworkfabric.PortGroupPropertiesArgs{
/// 							Name: pulumi.String("example-portGroup1"),
/// 							Ports: pulumi.StringArray{
/// 								pulumi.String("100-200"),
/// 							},
/// 						},
/// 						&managednetworkfabric.PortGroupPropertiesArgs{
/// 							Name: pulumi.String("example-portGroup2"),
/// 							Ports: pulumi.StringArray{
/// 								pulumi.String("900"),
/// 								pulumi.String("1000-2000"),
/// 							},
/// 						},
/// 					},
/// 					VlanGroups: managednetworkfabric.VlanGroupPropertiesArray{
/// 						&managednetworkfabric.VlanGroupPropertiesArgs{
/// 							Name: pulumi.String("exmaple-vlanGroup"),
/// 							Vlans: pulumi.StringArray{
/// 								pulumi.String("10"),
/// 								pulumi.String("100-200"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("eastus"),
/// 			MatchConfigurations: managednetworkfabric.NetworkTapRuleMatchConfigurationArray{
/// 				&managednetworkfabric.NetworkTapRuleMatchConfigurationArgs{
/// 					Actions: managednetworkfabric.NetworkTapRuleActionArray{
/// 						&managednetworkfabric.NetworkTapRuleActionArgs{
/// 							DestinationId:          pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/neighborGroups/example-neighborGroup"),
/// 							IsTimestampEnabled:     pulumi.String(managednetworkfabric.BooleanEnumPropertyTrue),
/// 							MatchConfigurationName: pulumi.String("match1"),
/// 							Truncate:               pulumi.String("100"),
/// 							Type:                   pulumi.String(managednetworkfabric.TapRuleActionTypeDrop),
/// 						},
/// 					},
/// 					IpAddressType: pulumi.String(managednetworkfabric.IPAddressTypeIPv4),
/// 					MatchConditions: managednetworkfabric.NetworkTapRuleMatchConditionArray{
/// 						&managednetworkfabric.NetworkTapRuleMatchConditionArgs{
/// 							EncapsulationType: pulumi.String(managednetworkfabric.EncapsulationTypeNone),
/// 							IpCondition: &managednetworkfabric.IpMatchConditionArgs{
/// 								IpGroupNames: pulumi.StringArray{
/// 									pulumi.String("example-ipGroup"),
/// 								},
/// 								IpPrefixValues: pulumi.StringArray{
/// 									pulumi.String("10.10.10.10/20"),
/// 								},
/// 								PrefixType: pulumi.String(managednetworkfabric.PrefixTypePrefix),
/// 								Type:       pulumi.String(managednetworkfabric.SourceDestinationTypeSourceIP),
/// 							},
/// 							PortCondition: &managednetworkfabric.PortConditionArgs{
/// 								Layer4Protocol: pulumi.String(managednetworkfabric.Layer4ProtocolTCP),
/// 								PortGroupNames: pulumi.StringArray{
/// 									pulumi.String("example-portGroup1"),
/// 								},
/// 								PortType: pulumi.String(managednetworkfabric.PortTypeSourcePort),
/// 								Ports: pulumi.StringArray{
/// 									pulumi.String("100"),
/// 								},
/// 							},
/// 							ProtocolTypes: pulumi.StringArray{
/// 								pulumi.String("TCP"),
/// 							},
/// 							VlanMatchCondition: &managednetworkfabric.VlanMatchConditionArgs{
/// 								InnerVlans: pulumi.StringArray{
/// 									pulumi.String("11-20"),
/// 								},
/// 								VlanGroupNames: pulumi.StringArray{
/// 									pulumi.String("exmaple-vlanGroup"),
/// 								},
/// 								Vlans: pulumi.StringArray{
/// 									pulumi.String("10"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					MatchConfigurationName: pulumi.String("config1"),
/// 					SequenceNumber:         pulumi.Float64(10),
/// 				},
/// 			},
/// 			NetworkTapRuleName:       pulumi.String("example-tapRule"),
/// 			PollingIntervalInSeconds: pulumi.Int(30),
/// 			ResourceGroupName:        pulumi.String("example-rg"),
/// 			Tags: pulumi.StringMap{
/// 				"keyID": pulumi.String("keyValue"),
/// 			},
/// 			TapRulesUrl: pulumi.String("https://microsoft.com/a"),
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
/// import com.pulumi.azurenative.managednetworkfabric.NetworkTapRule;
/// import com.pulumi.azurenative.managednetworkfabric.NetworkTapRuleArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.CommonDynamicMatchConfigurationArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.NetworkTapRuleMatchConfigurationArgs;
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
///         var networkTapRule = new NetworkTapRule("networkTapRule", NetworkTapRuleArgs.builder()
///             .annotation("annotation")
///             .configurationType("File")
///             .dynamicMatchConfigurations(CommonDynamicMatchConfigurationArgs.builder()
///                 .ipGroups(IpGroupPropertiesArgs.builder()
///                     .ipAddressType("IPv4")
///                     .ipPrefixes("10.10.10.10/30")
///                     .name("example-ipGroup1")
///                     .build())
///                 .portGroups(
///                     PortGroupPropertiesArgs.builder()
///                         .name("example-portGroup1")
///                         .ports("100-200")
///                         .build(),
///                     PortGroupPropertiesArgs.builder()
///                         .name("example-portGroup2")
///                         .ports(
///                             "900",
///                             "1000-2000")
///                         .build())
///                 .vlanGroups(VlanGroupPropertiesArgs.builder()
///                     .name("exmaple-vlanGroup")
///                     .vlans(
///                         "10",
///                         "100-200")
///                     .build())
///                 .build())
///             .location("eastus")
///             .matchConfigurations(NetworkTapRuleMatchConfigurationArgs.builder()
///                 .actions(NetworkTapRuleActionArgs.builder()
///                     .destinationId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/neighborGroups/example-neighborGroup")
///                     .isTimestampEnabled("True")
///                     .matchConfigurationName("match1")
///                     .truncate("100")
///                     .type("Drop")
///                     .build())
///                 .ipAddressType("IPv4")
///                 .matchConditions(NetworkTapRuleMatchConditionArgs.builder()
///                     .encapsulationType("None")
///                     .ipCondition(IpMatchConditionArgs.builder()
///                         .ipGroupNames("example-ipGroup")
///                         .ipPrefixValues("10.10.10.10/20")
///                         .prefixType("Prefix")
///                         .type("SourceIP")
///                         .build())
///                     .portCondition(PortConditionArgs.builder()
///                         .layer4Protocol("TCP")
///                         .portGroupNames("example-portGroup1")
///                         .portType("SourcePort")
///                         .ports("100")
///                         .build())
///                     .protocolTypes("TCP")
///                     .vlanMatchCondition(VlanMatchConditionArgs.builder()
///                         .innerVlans("11-20")
///                         .vlanGroupNames("exmaple-vlanGroup")
///                         .vlans("10")
///                         .build())
///                     .build())
///                 .matchConfigurationName("config1")
///                 .sequenceNumber(10.0)
///                 .build())
///             .networkTapRuleName("example-tapRule")
///             .pollingIntervalInSeconds(30)
///             .resourceGroupName("example-rg")
///             .tags(Map.of("keyID", "keyValue"))
///             .tapRulesUrl("https://microsoft.com/a")
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
/// const networkTapRule = new azure_native.managednetworkfabric.NetworkTapRule("networkTapRule", {
///     annotation: "annotation",
///     configurationType: azure_native.managednetworkfabric.ConfigurationType.File,
///     dynamicMatchConfigurations: [{
///         ipGroups: [{
///             ipAddressType: azure_native.managednetworkfabric.IPAddressType.IPv4,
///             ipPrefixes: ["10.10.10.10/30"],
///             name: "example-ipGroup1",
///         }],
///         portGroups: [
///             {
///                 name: "example-portGroup1",
///                 ports: ["100-200"],
///             },
///             {
///                 name: "example-portGroup2",
///                 ports: [
///                     "900",
///                     "1000-2000",
///                 ],
///             },
///         ],
///         vlanGroups: [{
///             name: "exmaple-vlanGroup",
///             vlans: [
///                 "10",
///                 "100-200",
///             ],
///         }],
///     }],
///     location: "eastus",
///     matchConfigurations: [{
///         actions: [{
///             destinationId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/neighborGroups/example-neighborGroup",
///             isTimestampEnabled: azure_native.managednetworkfabric.BooleanEnumProperty.True,
///             matchConfigurationName: "match1",
///             truncate: "100",
///             type: azure_native.managednetworkfabric.TapRuleActionType.Drop,
///         }],
///         ipAddressType: azure_native.managednetworkfabric.IPAddressType.IPv4,
///         matchConditions: [{
///             encapsulationType: azure_native.managednetworkfabric.EncapsulationType.None,
///             ipCondition: {
///                 ipGroupNames: ["example-ipGroup"],
///                 ipPrefixValues: ["10.10.10.10/20"],
///                 prefixType: azure_native.managednetworkfabric.PrefixType.Prefix,
///                 type: azure_native.managednetworkfabric.SourceDestinationType.SourceIP,
///             },
///             portCondition: {
///                 layer4Protocol: azure_native.managednetworkfabric.Layer4Protocol.TCP,
///                 portGroupNames: ["example-portGroup1"],
///                 portType: azure_native.managednetworkfabric.PortType.SourcePort,
///                 ports: ["100"],
///             },
///             protocolTypes: ["TCP"],
///             vlanMatchCondition: {
///                 innerVlans: ["11-20"],
///                 vlanGroupNames: ["exmaple-vlanGroup"],
///                 vlans: ["10"],
///             },
///         }],
///         matchConfigurationName: "config1",
///         sequenceNumber: 10,
///     }],
///     networkTapRuleName: "example-tapRule",
///     pollingIntervalInSeconds: 30,
///     resourceGroupName: "example-rg",
///     tags: {
///         keyID: "keyValue",
///     },
///     tapRulesUrl: "https://microsoft.com/a",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_tap_rule = azure_native.managednetworkfabric.NetworkTapRule("networkTapRule",
///     annotation="annotation",
///     configuration_type=azure_native.managednetworkfabric.ConfigurationType.FILE,
///     dynamic_match_configurations=[{
///         "ip_groups": [{
///             "ip_address_type": azure_native.managednetworkfabric.IPAddressType.I_PV4,
///             "ip_prefixes": ["10.10.10.10/30"],
///             "name": "example-ipGroup1",
///         }],
///         "port_groups": [
///             {
///                 "name": "example-portGroup1",
///                 "ports": ["100-200"],
///             },
///             {
///                 "name": "example-portGroup2",
///                 "ports": [
///                     "900",
///                     "1000-2000",
///                 ],
///             },
///         ],
///         "vlan_groups": [{
///             "name": "exmaple-vlanGroup",
///             "vlans": [
///                 "10",
///                 "100-200",
///             ],
///         }],
///     }],
///     location="eastus",
///     match_configurations=[{
///         "actions": [{
///             "destination_id": "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/neighborGroups/example-neighborGroup",
///             "is_timestamp_enabled": azure_native.managednetworkfabric.BooleanEnumProperty.TRUE,
///             "match_configuration_name": "match1",
///             "truncate": "100",
///             "type": azure_native.managednetworkfabric.TapRuleActionType.DROP,
///         }],
///         "ip_address_type": azure_native.managednetworkfabric.IPAddressType.I_PV4,
///         "match_conditions": [{
///             "encapsulation_type": azure_native.managednetworkfabric.EncapsulationType.NONE,
///             "ip_condition": {
///                 "ip_group_names": ["example-ipGroup"],
///                 "ip_prefix_values": ["10.10.10.10/20"],
///                 "prefix_type": azure_native.managednetworkfabric.PrefixType.PREFIX,
///                 "type": azure_native.managednetworkfabric.SourceDestinationType.SOURCE_IP,
///             },
///             "port_condition": {
///                 "layer4_protocol": azure_native.managednetworkfabric.Layer4Protocol.TCP,
///                 "port_group_names": ["example-portGroup1"],
///                 "port_type": azure_native.managednetworkfabric.PortType.SOURCE_PORT,
///                 "ports": ["100"],
///             },
///             "protocol_types": ["TCP"],
///             "vlan_match_condition": {
///                 "inner_vlans": ["11-20"],
///                 "vlan_group_names": ["exmaple-vlanGroup"],
///                 "vlans": ["10"],
///             },
///         }],
///         "match_configuration_name": "config1",
///         "sequence_number": 10,
///     }],
///     network_tap_rule_name="example-tapRule",
///     polling_interval_in_seconds=30,
///     resource_group_name="example-rg",
///     tags={
///         "keyID": "keyValue",
///     },
///     tap_rules_url="https://microsoft.com/a")
///
/// ```
///
/// ```yaml
/// resources:
///   networkTapRule:
///     type: azure-native:managednetworkfabric:NetworkTapRule
///     properties:
///       annotation: annotation
///       configurationType: File
///       dynamicMatchConfigurations:
///         - ipGroups:
///             - ipAddressType: IPv4
///               ipPrefixes:
///                 - 10.10.10.10/30
///               name: example-ipGroup1
///           portGroups:
///             - name: example-portGroup1
///               ports:
///                 - 100-200
///             - name: example-portGroup2
///               ports:
///                 - '900'
///                 - 1000-2000
///           vlanGroups:
///             - name: exmaple-vlanGroup
///               vlans:
///                 - '10'
///                 - 100-200
///       location: eastus
///       matchConfigurations:
///         - actions:
///             - destinationId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/neighborGroups/example-neighborGroup
///               isTimestampEnabled: True
///               matchConfigurationName: match1
///               truncate: '100'
///               type: Drop
///           ipAddressType: IPv4
///           matchConditions:
///             - encapsulationType: None
///               ipCondition:
///                 ipGroupNames:
///                   - example-ipGroup
///                 ipPrefixValues:
///                   - 10.10.10.10/20
///                 prefixType: Prefix
///                 type: SourceIP
///               portCondition:
///                 layer4Protocol: TCP
///                 portGroupNames:
///                   - example-portGroup1
///                 portType: SourcePort
///                 ports:
///                   - '100'
///               protocolTypes:
///                 - TCP
///               vlanMatchCondition:
///                 innerVlans:
///                   - 11-20
///                 vlanGroupNames:
///                   - exmaple-vlanGroup
///                 vlans:
///                   - '10'
///           matchConfigurationName: config1
///           sequenceNumber: 10
///       networkTapRuleName: example-tapRule
///       pollingIntervalInSeconds: 30
///       resourceGroupName: example-rg
///       tags:
///         keyID: keyValue
///       tapRulesUrl: https://microsoft.com/a
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
/// $ pulumi import azure-native:managednetworkfabric:NetworkTapRule example-tapRule /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedNetworkFabric/networkTapRules/{networkTapRuleName}
/// ```
class NetworkTapRule extends pulumi.CustomResource {
  /// Administrative state of the resource.
  late final pulumi.Output<String> administrativeState;

  /// Switch configuration description.
  late final pulumi.Output<String?> annotation;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Configuration state of the resource.
  late final pulumi.Output<String> configurationState;

  /// Input method to configure Network Tap Rule.
  late final pulumi.Output<String> configurationType;

  /// List of dynamic match configurations.
  late final pulumi.Output<List<Map<String, dynamic>>?>
  dynamicMatchConfigurations;

  /// The last sync timestamp.
  late final pulumi.Output<String> lastSyncedTime;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// List of match configurations.
  late final pulumi.Output<List<Map<String, dynamic>>?> matchConfigurations;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The ARM resource Id of the NetworkTap.
  late final pulumi.Output<String> networkTapId;

  /// Polling interval in seconds.
  late final pulumi.Output<int?> pollingIntervalInSeconds;

  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Network Tap Rules file URL.
  late final pulumi.Output<String?> tapRulesUrl;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [NetworkTapRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkTapRule]. {@macro pulumi_managednetworkfabric_network_tap_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkTapRule(
    String name, {
    NetworkTapRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:managednetworkfabric:NetworkTapRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    administrativeState = registerOutput<String>('administrativeState');
    annotation = registerOutput<String?>('annotation');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    configurationState = registerOutput<String>('configurationState');
    configurationType = registerOutput<String>('configurationType');
    dynamicMatchConfigurations = registerOutput<List<Map<String, dynamic>>?>(
      'dynamicMatchConfigurations',
    );
    lastSyncedTime = registerOutput<String>('lastSyncedTime');
    location = registerOutput<String>('location');
    matchConfigurations = registerOutput<List<Map<String, dynamic>>?>(
      'matchConfigurations',
    );
    this.name = registerOutput<String>('name');
    networkTapId = registerOutput<String>('networkTapId');
    pollingIntervalInSeconds = registerOutput<int?>('pollingIntervalInSeconds');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    tapRulesUrl = registerOutput<String?>('tapRulesUrl');
    type = registerOutput<String>('type');
  }
}
