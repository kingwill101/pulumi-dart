import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_firewall_args.dart';
import 'azure_firewall_autoscale_configuration_response.dart';
import 'azure_firewall_ipconfiguration_response.dart';
import 'azure_firewall_sku_response.dart';
import 'hub_ipaddresses_response.dart';
import 'sub_resource_response.dart';

/// Azure Firewall resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Azure Firewall
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var azureFirewall = new AzureNative.Network.AzureFirewall("azureFirewall", new()
///     {
///         ApplicationRuleCollections = new[]
///         {
///             new AzureNative.Network.Inputs.AzureFirewallApplicationRuleCollectionArgs
///             {
///                 Action = new AzureNative.Network.Inputs.AzureFirewallRCActionArgs
///                 {
///                     Type = AzureNative.Network.AzureFirewallRCActionType.Deny,
///                 },
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/applicationRuleCollections/apprulecoll",
///                 Name = "apprulecoll",
///                 Priority = 110,
///                 Rules = new[]
///                 {
///                     new AzureNative.Network.Inputs.AzureFirewallApplicationRuleArgs
///                     {
///                         Description = "Deny inbound rule",
///                         Name = "rule1",
///                         Protocols = new[]
///                         {
///                             new AzureNative.Network.Inputs.AzureFirewallApplicationRuleProtocolArgs
///                             {
///                                 Port = 443,
///                                 ProtocolType = AzureNative.Network.AzureFirewallApplicationRuleProtocolType.Https,
///                             },
///                         },
///                         SourceAddresses = new[]
///                         {
///                             "216.58.216.164",
///                             "10.0.0.0/24",
///                         },
///                         TargetFqdns = new[]
///                         {
///                             "www.test.com",
///                         },
///                     },
///                 },
///             },
///         },
///         AzureFirewallName = "azurefirewall",
///         IpConfigurations = new[]
///         {
///             new AzureNative.Network.Inputs.AzureFirewallIPConfigurationArgs
///             {
///                 Name = "azureFirewallIpConfiguration",
///                 PublicIPAddress = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName",
///                 },
///                 Subnet = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallSubnet",
///                 },
///             },
///         },
///         Location = "West US",
///         NatRuleCollections = new[]
///         {
///             new AzureNative.Network.Inputs.AzureFirewallNatRuleCollectionArgs
///             {
///                 Action = new AzureNative.Network.Inputs.AzureFirewallNatRCActionArgs
///                 {
///                     Type = AzureNative.Network.AzureFirewallNatRCActionType.Dnat,
///                 },
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/natRuleCollections/natrulecoll",
///                 Name = "natrulecoll",
///                 Priority = 112,
///                 Rules = new[]
///                 {
///                     new AzureNative.Network.Inputs.AzureFirewallNatRuleArgs
///                     {
///                         Description = "D-NAT all outbound web traffic for inspection",
///                         DestinationAddresses = new[]
///                         {
///                             "1.2.3.4",
///                         },
///                         DestinationPorts = new[]
///                         {
///                             "443",
///                         },
///                         Name = "DNAT-HTTPS-traffic",
///                         Protocols = new[]
///                         {
///                             AzureNative.Network.AzureFirewallNetworkRuleProtocol.TCP,
///                         },
///                         SourceAddresses = new[]
///                         {
///                             "*",
///                         },
///                         TranslatedAddress = "1.2.3.5",
///                         TranslatedPort = "8443",
///                     },
///                     new AzureNative.Network.Inputs.AzureFirewallNatRuleArgs
///                     {
///                         Description = "D-NAT all inbound web traffic for inspection",
///                         DestinationAddresses = new[]
///                         {
///                             "1.2.3.4",
///                         },
///                         DestinationPorts = new[]
///                         {
///                             "80",
///                         },
///                         Name = "DNAT-HTTP-traffic-With-FQDN",
///                         Protocols = new[]
///                         {
///                             AzureNative.Network.AzureFirewallNetworkRuleProtocol.TCP,
///                         },
///                         SourceAddresses = new[]
///                         {
///                             "*",
///                         },
///                         TranslatedFqdn = "internalhttpserver",
///                         TranslatedPort = "880",
///                     },
///                 },
///             },
///         },
///         NetworkRuleCollections = new[]
///         {
///             new AzureNative.Network.Inputs.AzureFirewallNetworkRuleCollectionArgs
///             {
///                 Action = new AzureNative.Network.Inputs.AzureFirewallRCActionArgs
///                 {
///                     Type = AzureNative.Network.AzureFirewallRCActionType.Deny,
///                 },
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/networkRuleCollections/netrulecoll",
///                 Name = "netrulecoll",
///                 Priority = 112,
///                 Rules = new[]
///                 {
///                     new AzureNative.Network.Inputs.AzureFirewallNetworkRuleArgs
///                     {
///                         Description = "Block traffic based on source IPs and ports",
///                         DestinationAddresses = new[]
///                         {
///                             "*",
///                         },
///                         DestinationPorts = new[]
///                         {
///                             "443-444",
///                             "8443",
///                         },
///                         Name = "L4-traffic",
///                         Protocols = new[]
///                         {
///                             AzureNative.Network.AzureFirewallNetworkRuleProtocol.TCP,
///                         },
///                         SourceAddresses = new[]
///                         {
///                             "192.168.1.1-192.168.1.12",
///                             "10.1.4.12-10.1.4.255",
///                         },
///                     },
///                     new AzureNative.Network.Inputs.AzureFirewallNetworkRuleArgs
///                     {
///                         Description = "Block traffic based on source IPs and ports to amazon",
///                         DestinationFqdns = new[]
///                         {
///                             "www.amazon.com",
///                         },
///                         DestinationPorts = new[]
///                         {
///                             "443-444",
///                             "8443",
///                         },
///                         Name = "L4-traffic-with-FQDN",
///                         Protocols = new[]
///                         {
///                             AzureNative.Network.AzureFirewallNetworkRuleProtocol.TCP,
///                         },
///                         SourceAddresses = new[]
///                         {
///                             "10.2.4.12-10.2.4.255",
///                         },
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "rg1",
///         Sku = new AzureNative.Network.Inputs.AzureFirewallSkuArgs
///         {
///             Name = AzureNative.Network.AzureFirewallSkuName.AZFW_VNet,
///             Tier = AzureNative.Network.AzureFirewallSkuTier.Standard,
///         },
///         Tags =
///         {
///             { "key1", "value1" },
///         },
///         ThreatIntelMode = AzureNative.Network.AzureFirewallThreatIntelMode.Alert,
///         Zones = new[] {},
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewAzureFirewall(ctx, "azureFirewall", &network.AzureFirewallArgs{
/// 			ApplicationRuleCollections: network.AzureFirewallApplicationRuleCollectionArray{
/// 				&network.AzureFirewallApplicationRuleCollectionArgs{
/// 					Action: &network.AzureFirewallRCActionArgs{
/// 						Type: pulumi.String(network.AzureFirewallRCActionTypeDeny),
/// 					},
/// 					Id:       pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/applicationRuleCollections/apprulecoll"),
/// 					Name:     pulumi.String("apprulecoll"),
/// 					Priority: pulumi.Int(110),
/// 					Rules: network.AzureFirewallApplicationRuleArray{
/// 						&network.AzureFirewallApplicationRuleArgs{
/// 							Description: pulumi.String("Deny inbound rule"),
/// 							Name:        pulumi.String("rule1"),
/// 							Protocols: network.AzureFirewallApplicationRuleProtocolArray{
/// 								&network.AzureFirewallApplicationRuleProtocolArgs{
/// 									Port:         pulumi.Int(443),
/// 									ProtocolType: pulumi.String(network.AzureFirewallApplicationRuleProtocolTypeHttps),
/// 								},
/// 							},
/// 							SourceAddresses: pulumi.StringArray{
/// 								pulumi.String("216.58.216.164"),
/// 								pulumi.String("10.0.0.0/24"),
/// 							},
/// 							TargetFqdns: pulumi.StringArray{
/// 								pulumi.String("www.test.com"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			AzureFirewallName: pulumi.String("azurefirewall"),
/// 			IpConfigurations: network.AzureFirewallIPConfigurationArray{
/// 				&network.AzureFirewallIPConfigurationArgs{
/// 					Name: pulumi.String("azureFirewallIpConfiguration"),
/// 					PublicIPAddress: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName"),
/// 					},
/// 					Subnet: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallSubnet"),
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("West US"),
/// 			NatRuleCollections: network.AzureFirewallNatRuleCollectionArray{
/// 				&network.AzureFirewallNatRuleCollectionArgs{
/// 					Action: &network.AzureFirewallNatRCActionArgs{
/// 						Type: pulumi.String(network.AzureFirewallNatRCActionTypeDnat),
/// 					},
/// 					Id:       pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/natRuleCollections/natrulecoll"),
/// 					Name:     pulumi.String("natrulecoll"),
/// 					Priority: pulumi.Int(112),
/// 					Rules: network.AzureFirewallNatRuleArray{
/// 						&network.AzureFirewallNatRuleArgs{
/// 							Description: pulumi.String("D-NAT all outbound web traffic for inspection"),
/// 							DestinationAddresses: pulumi.StringArray{
/// 								pulumi.String("1.2.3.4"),
/// 							},
/// 							DestinationPorts: pulumi.StringArray{
/// 								pulumi.String("443"),
/// 							},
/// 							Name: pulumi.String("DNAT-HTTPS-traffic"),
/// 							Protocols: pulumi.StringArray{
/// 								pulumi.String(network.AzureFirewallNetworkRuleProtocolTCP),
/// 							},
/// 							SourceAddresses: pulumi.StringArray{
/// 								pulumi.String("*"),
/// 							},
/// 							TranslatedAddress: pulumi.String("1.2.3.5"),
/// 							TranslatedPort:    pulumi.String("8443"),
/// 						},
/// 						&network.AzureFirewallNatRuleArgs{
/// 							Description: pulumi.String("D-NAT all inbound web traffic for inspection"),
/// 							DestinationAddresses: pulumi.StringArray{
/// 								pulumi.String("1.2.3.4"),
/// 							},
/// 							DestinationPorts: pulumi.StringArray{
/// 								pulumi.String("80"),
/// 							},
/// 							Name: pulumi.String("DNAT-HTTP-traffic-With-FQDN"),
/// 							Protocols: pulumi.StringArray{
/// 								pulumi.String(network.AzureFirewallNetworkRuleProtocolTCP),
/// 							},
/// 							SourceAddresses: pulumi.StringArray{
/// 								pulumi.String("*"),
/// 							},
/// 							TranslatedFqdn: pulumi.String("internalhttpserver"),
/// 							TranslatedPort: pulumi.String("880"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			NetworkRuleCollections: network.AzureFirewallNetworkRuleCollectionArray{
/// 				&network.AzureFirewallNetworkRuleCollectionArgs{
/// 					Action: &network.AzureFirewallRCActionArgs{
/// 						Type: pulumi.String(network.AzureFirewallRCActionTypeDeny),
/// 					},
/// 					Id:       pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/networkRuleCollections/netrulecoll"),
/// 					Name:     pulumi.String("netrulecoll"),
/// 					Priority: pulumi.Int(112),
/// 					Rules: network.AzureFirewallNetworkRuleArray{
/// 						&network.AzureFirewallNetworkRuleArgs{
/// 							Description: pulumi.String("Block traffic based on source IPs and ports"),
/// 							DestinationAddresses: pulumi.StringArray{
/// 								pulumi.String("*"),
/// 							},
/// 							DestinationPorts: pulumi.StringArray{
/// 								pulumi.String("443-444"),
/// 								pulumi.String("8443"),
/// 							},
/// 							Name: pulumi.String("L4-traffic"),
/// 							Protocols: pulumi.StringArray{
/// 								pulumi.String(network.AzureFirewallNetworkRuleProtocolTCP),
/// 							},
/// 							SourceAddresses: pulumi.StringArray{
/// 								pulumi.String("192.168.1.1-192.168.1.12"),
/// 								pulumi.String("10.1.4.12-10.1.4.255"),
/// 							},
/// 						},
/// 						&network.AzureFirewallNetworkRuleArgs{
/// 							Description: pulumi.String("Block traffic based on source IPs and ports to amazon"),
/// 							DestinationFqdns: pulumi.StringArray{
/// 								pulumi.String("www.amazon.com"),
/// 							},
/// 							DestinationPorts: pulumi.StringArray{
/// 								pulumi.String("443-444"),
/// 								pulumi.String("8443"),
/// 							},
/// 							Name: pulumi.String("L4-traffic-with-FQDN"),
/// 							Protocols: pulumi.StringArray{
/// 								pulumi.String(network.AzureFirewallNetworkRuleProtocolTCP),
/// 							},
/// 							SourceAddresses: pulumi.StringArray{
/// 								pulumi.String("10.2.4.12-10.2.4.255"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Sku: &network.AzureFirewallSkuArgs{
/// 				Name: pulumi.String(network.AzureFirewallSkuName_AZFW_VNet),
/// 				Tier: pulumi.String(network.AzureFirewallSkuTierStandard),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			ThreatIntelMode: pulumi.String(network.AzureFirewallThreatIntelModeAlert),
/// 			Zones:           pulumi.StringArray{},
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
/// import com.pulumi.azurenative.network.AzureFirewall;
/// import com.pulumi.azurenative.network.AzureFirewallArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallApplicationRuleCollectionArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallRCActionArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallIPConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallNatRuleCollectionArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallNatRCActionArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallNetworkRuleCollectionArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallSkuArgs;
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
///         var azureFirewall = new AzureFirewall("azureFirewall", AzureFirewallArgs.builder()
///             .applicationRuleCollections(AzureFirewallApplicationRuleCollectionArgs.builder()
///                 .action(AzureFirewallRCActionArgs.builder()
///                     .type("Deny")
///                     .build())
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/applicationRuleCollections/apprulecoll")
///                 .name("apprulecoll")
///                 .priority(110)
///                 .rules(AzureFirewallApplicationRuleArgs.builder()
///                     .description("Deny inbound rule")
///                     .name("rule1")
///                     .protocols(AzureFirewallApplicationRuleProtocolArgs.builder()
///                         .port(443)
///                         .protocolType("Https")
///                         .build())
///                     .sourceAddresses(
///                         "216.58.216.164",
///                         "10.0.0.0/24")
///                     .targetFqdns("www.test.com")
///                     .build())
///                 .build())
///             .azureFirewallName("azurefirewall")
///             .ipConfigurations(AzureFirewallIPConfigurationArgs.builder()
///                 .name("azureFirewallIpConfiguration")
///                 .publicIPAddress(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName")
///                     .build())
///                 .subnet(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallSubnet")
///                     .build())
///                 .build())
///             .location("West US")
///             .natRuleCollections(AzureFirewallNatRuleCollectionArgs.builder()
///                 .action(AzureFirewallNatRCActionArgs.builder()
///                     .type("Dnat")
///                     .build())
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/natRuleCollections/natrulecoll")
///                 .name("natrulecoll")
///                 .priority(112)
///                 .rules(
///                     AzureFirewallNatRuleArgs.builder()
///                         .description("D-NAT all outbound web traffic for inspection")
///                         .destinationAddresses("1.2.3.4")
///                         .destinationPorts("443")
///                         .name("DNAT-HTTPS-traffic")
///                         .protocols("TCP")
///                         .sourceAddresses("*")
///                         .translatedAddress("1.2.3.5")
///                         .translatedPort("8443")
///                         .build(),
///                     AzureFirewallNatRuleArgs.builder()
///                         .description("D-NAT all inbound web traffic for inspection")
///                         .destinationAddresses("1.2.3.4")
///                         .destinationPorts("80")
///                         .name("DNAT-HTTP-traffic-With-FQDN")
///                         .protocols("TCP")
///                         .sourceAddresses("*")
///                         .translatedFqdn("internalhttpserver")
///                         .translatedPort("880")
///                         .build())
///                 .build())
///             .networkRuleCollections(AzureFirewallNetworkRuleCollectionArgs.builder()
///                 .action(AzureFirewallRCActionArgs.builder()
///                     .type("Deny")
///                     .build())
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/networkRuleCollections/netrulecoll")
///                 .name("netrulecoll")
///                 .priority(112)
///                 .rules(
///                     AzureFirewallNetworkRuleArgs.builder()
///                         .description("Block traffic based on source IPs and ports")
///                         .destinationAddresses("*")
///                         .destinationPorts(
///                             "443-444",
///                             "8443")
///                         .name("L4-traffic")
///                         .protocols("TCP")
///                         .sourceAddresses(
///                             "192.168.1.1-192.168.1.12",
///                             "10.1.4.12-10.1.4.255")
///                         .build(),
///                     AzureFirewallNetworkRuleArgs.builder()
///                         .description("Block traffic based on source IPs and ports to amazon")
///                         .destinationFqdns("www.amazon.com")
///                         .destinationPorts(
///                             "443-444",
///                             "8443")
///                         .name("L4-traffic-with-FQDN")
///                         .protocols("TCP")
///                         .sourceAddresses("10.2.4.12-10.2.4.255")
///                         .build())
///                 .build())
///             .resourceGroupName("rg1")
///             .sku(AzureFirewallSkuArgs.builder()
///                 .name("AZFW_VNet")
///                 .tier("Standard")
///                 .build())
///             .tags(Map.of("key1", "value1"))
///             .threatIntelMode("Alert")
///             .zones()
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
/// const azureFirewall = new azure_native.network.AzureFirewall("azureFirewall", {
///     applicationRuleCollections: [{
///         action: {
///             type: azure_native.network.AzureFirewallRCActionType.Deny,
///         },
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/applicationRuleCollections/apprulecoll",
///         name: "apprulecoll",
///         priority: 110,
///         rules: [{
///             description: "Deny inbound rule",
///             name: "rule1",
///             protocols: [{
///                 port: 443,
///                 protocolType: azure_native.network.AzureFirewallApplicationRuleProtocolType.Https,
///             }],
///             sourceAddresses: [
///                 "216.58.216.164",
///                 "10.0.0.0/24",
///             ],
///             targetFqdns: ["www.test.com"],
///         }],
///     }],
///     azureFirewallName: "azurefirewall",
///     ipConfigurations: [{
///         name: "azureFirewallIpConfiguration",
///         publicIPAddress: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName",
///         },
///         subnet: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallSubnet",
///         },
///     }],
///     location: "West US",
///     natRuleCollections: [{
///         action: {
///             type: azure_native.network.AzureFirewallNatRCActionType.Dnat,
///         },
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/natRuleCollections/natrulecoll",
///         name: "natrulecoll",
///         priority: 112,
///         rules: [
///             {
///                 description: "D-NAT all outbound web traffic for inspection",
///                 destinationAddresses: ["1.2.3.4"],
///                 destinationPorts: ["443"],
///                 name: "DNAT-HTTPS-traffic",
///                 protocols: [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 sourceAddresses: ["*"],
///                 translatedAddress: "1.2.3.5",
///                 translatedPort: "8443",
///             },
///             {
///                 description: "D-NAT all inbound web traffic for inspection",
///                 destinationAddresses: ["1.2.3.4"],
///                 destinationPorts: ["80"],
///                 name: "DNAT-HTTP-traffic-With-FQDN",
///                 protocols: [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 sourceAddresses: ["*"],
///                 translatedFqdn: "internalhttpserver",
///                 translatedPort: "880",
///             },
///         ],
///     }],
///     networkRuleCollections: [{
///         action: {
///             type: azure_native.network.AzureFirewallRCActionType.Deny,
///         },
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/networkRuleCollections/netrulecoll",
///         name: "netrulecoll",
///         priority: 112,
///         rules: [
///             {
///                 description: "Block traffic based on source IPs and ports",
///                 destinationAddresses: ["*"],
///                 destinationPorts: [
///                     "443-444",
///                     "8443",
///                 ],
///                 name: "L4-traffic",
///                 protocols: [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 sourceAddresses: [
///                     "192.168.1.1-192.168.1.12",
///                     "10.1.4.12-10.1.4.255",
///                 ],
///             },
///             {
///                 description: "Block traffic based on source IPs and ports to amazon",
///                 destinationFqdns: ["www.amazon.com"],
///                 destinationPorts: [
///                     "443-444",
///                     "8443",
///                 ],
///                 name: "L4-traffic-with-FQDN",
///                 protocols: [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 sourceAddresses: ["10.2.4.12-10.2.4.255"],
///             },
///         ],
///     }],
///     resourceGroupName: "rg1",
///     sku: {
///         name: azure_native.network.AzureFirewallSkuName.AZFW_VNet,
///         tier: azure_native.network.AzureFirewallSkuTier.Standard,
///     },
///     tags: {
///         key1: "value1",
///     },
///     threatIntelMode: azure_native.network.AzureFirewallThreatIntelMode.Alert,
///     zones: [],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// azure_firewall = azure_native.network.AzureFirewall("azureFirewall",
///     application_rule_collections=[{
///         "action": {
///             "type": azure_native.network.AzureFirewallRCActionType.DENY,
///         },
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/applicationRuleCollections/apprulecoll",
///         "name": "apprulecoll",
///         "priority": 110,
///         "rules": [{
///             "description": "Deny inbound rule",
///             "name": "rule1",
///             "protocols": [{
///                 "port": 443,
///                 "protocol_type": azure_native.network.AzureFirewallApplicationRuleProtocolType.HTTPS,
///             }],
///             "source_addresses": [
///                 "216.58.216.164",
///                 "10.0.0.0/24",
///             ],
///             "target_fqdns": ["www.test.com"],
///         }],
///     }],
///     azure_firewall_name="azurefirewall",
///     ip_configurations=[{
///         "name": "azureFirewallIpConfiguration",
///         "public_ip_address": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName",
///         },
///         "subnet": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallSubnet",
///         },
///     }],
///     location="West US",
///     nat_rule_collections=[{
///         "action": {
///             "type": azure_native.network.AzureFirewallNatRCActionType.DNAT,
///         },
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/natRuleCollections/natrulecoll",
///         "name": "natrulecoll",
///         "priority": 112,
///         "rules": [
///             {
///                 "description": "D-NAT all outbound web traffic for inspection",
///                 "destination_addresses": ["1.2.3.4"],
///                 "destination_ports": ["443"],
///                 "name": "DNAT-HTTPS-traffic",
///                 "protocols": [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 "source_addresses": ["*"],
///                 "translated_address": "1.2.3.5",
///                 "translated_port": "8443",
///             },
///             {
///                 "description": "D-NAT all inbound web traffic for inspection",
///                 "destination_addresses": ["1.2.3.4"],
///                 "destination_ports": ["80"],
///                 "name": "DNAT-HTTP-traffic-With-FQDN",
///                 "protocols": [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 "source_addresses": ["*"],
///                 "translated_fqdn": "internalhttpserver",
///                 "translated_port": "880",
///             },
///         ],
///     }],
///     network_rule_collections=[{
///         "action": {
///             "type": azure_native.network.AzureFirewallRCActionType.DENY,
///         },
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/networkRuleCollections/netrulecoll",
///         "name": "netrulecoll",
///         "priority": 112,
///         "rules": [
///             {
///                 "description": "Block traffic based on source IPs and ports",
///                 "destination_addresses": ["*"],
///                 "destination_ports": [
///                     "443-444",
///                     "8443",
///                 ],
///                 "name": "L4-traffic",
///                 "protocols": [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 "source_addresses": [
///                     "192.168.1.1-192.168.1.12",
///                     "10.1.4.12-10.1.4.255",
///                 ],
///             },
///             {
///                 "description": "Block traffic based on source IPs and ports to amazon",
///                 "destination_fqdns": ["www.amazon.com"],
///                 "destination_ports": [
///                     "443-444",
///                     "8443",
///                 ],
///                 "name": "L4-traffic-with-FQDN",
///                 "protocols": [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 "source_addresses": ["10.2.4.12-10.2.4.255"],
///             },
///         ],
///     }],
///     resource_group_name="rg1",
///     sku={
///         "name": azure_native.network.AzureFirewallSkuName.AZF_W_V_NET,
///         "tier": azure_native.network.AzureFirewallSkuTier.STANDARD,
///     },
///     tags={
///         "key1": "value1",
///     },
///     threat_intel_mode=azure_native.network.AzureFirewallThreatIntelMode.ALERT,
///     zones=[])
///
/// ```
///
/// ```yaml
/// resources:
///   azureFirewall:
///     type: azure-native:network:AzureFirewall
///     properties:
///       applicationRuleCollections:
///         - action:
///             type: Deny
///           id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/applicationRuleCollections/apprulecoll
///           name: apprulecoll
///           priority: 110
///           rules:
///             - description: Deny inbound rule
///               name: rule1
///               protocols:
///                 - port: 443
///                   protocolType: Https
///               sourceAddresses:
///                 - 216.58.216.164
///                 - 10.0.0.0/24
///               targetFqdns:
///                 - www.test.com
///       azureFirewallName: azurefirewall
///       ipConfigurations:
///         - name: azureFirewallIpConfiguration
///           publicIPAddress:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName
///           subnet:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallSubnet
///       location: West US
///       natRuleCollections:
///         - action:
///             type: Dnat
///           id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/natRuleCollections/natrulecoll
///           name: natrulecoll
///           priority: 112
///           rules:
///             - description: D-NAT all outbound web traffic for inspection
///               destinationAddresses:
///                 - 1.2.3.4
///               destinationPorts:
///                 - '443'
///               name: DNAT-HTTPS-traffic
///               protocols:
///                 - TCP
///               sourceAddresses:
///                 - '*'
///               translatedAddress: 1.2.3.5
///               translatedPort: '8443'
///             - description: D-NAT all inbound web traffic for inspection
///               destinationAddresses:
///                 - 1.2.3.4
///               destinationPorts:
///                 - '80'
///               name: DNAT-HTTP-traffic-With-FQDN
///               protocols:
///                 - TCP
///               sourceAddresses:
///                 - '*'
///               translatedFqdn: internalhttpserver
///               translatedPort: '880'
///       networkRuleCollections:
///         - action:
///             type: Deny
///           id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/networkRuleCollections/netrulecoll
///           name: netrulecoll
///           priority: 112
///           rules:
///             - description: Block traffic based on source IPs and ports
///               destinationAddresses:
///                 - '*'
///               destinationPorts:
///                 - 443-444
///                 - '8443'
///               name: L4-traffic
///               protocols:
///                 - TCP
///               sourceAddresses:
///                 - 192.168.1.1-192.168.1.12
///                 - 10.1.4.12-10.1.4.255
///             - description: Block traffic based on source IPs and ports to amazon
///               destinationFqdns:
///                 - www.amazon.com
///               destinationPorts:
///                 - 443-444
///                 - '8443'
///               name: L4-traffic-with-FQDN
///               protocols:
///                 - TCP
///               sourceAddresses:
///                 - 10.2.4.12-10.2.4.255
///       resourceGroupName: rg1
///       sku:
///         name: AZFW_VNet
///         tier: Standard
///       tags:
///         key1: value1
///       threatIntelMode: Alert
///       zones: []
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Azure Firewall With Additional Properties
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var azureFirewall = new AzureNative.Network.AzureFirewall("azureFirewall", new()
///     {
///         AdditionalProperties =
///         {
///             { "key1", "value1" },
///             { "key2", "value2" },
///         },
///         ApplicationRuleCollections = new[]
///         {
///             new AzureNative.Network.Inputs.AzureFirewallApplicationRuleCollectionArgs
///             {
///                 Action = new AzureNative.Network.Inputs.AzureFirewallRCActionArgs
///                 {
///                     Type = AzureNative.Network.AzureFirewallRCActionType.Deny,
///                 },
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/applicationRuleCollections/apprulecoll",
///                 Name = "apprulecoll",
///                 Priority = 110,
///                 Rules = new[]
///                 {
///                     new AzureNative.Network.Inputs.AzureFirewallApplicationRuleArgs
///                     {
///                         Description = "Deny inbound rule",
///                         Name = "rule1",
///                         Protocols = new[]
///                         {
///                             new AzureNative.Network.Inputs.AzureFirewallApplicationRuleProtocolArgs
///                             {
///                                 Port = 443,
///                                 ProtocolType = AzureNative.Network.AzureFirewallApplicationRuleProtocolType.Https,
///                             },
///                         },
///                         SourceAddresses = new[]
///                         {
///                             "216.58.216.164",
///                             "10.0.0.0/24",
///                         },
///                         TargetFqdns = new[]
///                         {
///                             "www.test.com",
///                         },
///                     },
///                 },
///             },
///         },
///         AzureFirewallName = "azurefirewall",
///         IpConfigurations = new[]
///         {
///             new AzureNative.Network.Inputs.AzureFirewallIPConfigurationArgs
///             {
///                 Name = "azureFirewallIpConfiguration",
///                 PublicIPAddress = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName",
///                 },
///                 Subnet = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallSubnet",
///                 },
///             },
///         },
///         Location = "West US",
///         NatRuleCollections = new[]
///         {
///             new AzureNative.Network.Inputs.AzureFirewallNatRuleCollectionArgs
///             {
///                 Action = new AzureNative.Network.Inputs.AzureFirewallNatRCActionArgs
///                 {
///                     Type = AzureNative.Network.AzureFirewallNatRCActionType.Dnat,
///                 },
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/natRuleCollections/natrulecoll",
///                 Name = "natrulecoll",
///                 Priority = 112,
///                 Rules = new[]
///                 {
///                     new AzureNative.Network.Inputs.AzureFirewallNatRuleArgs
///                     {
///                         Description = "D-NAT all outbound web traffic for inspection",
///                         DestinationAddresses = new[]
///                         {
///                             "1.2.3.4",
///                         },
///                         DestinationPorts = new[]
///                         {
///                             "443",
///                         },
///                         Name = "DNAT-HTTPS-traffic",
///                         Protocols = new[]
///                         {
///                             AzureNative.Network.AzureFirewallNetworkRuleProtocol.TCP,
///                         },
///                         SourceAddresses = new[]
///                         {
///                             "*",
///                         },
///                         TranslatedAddress = "1.2.3.5",
///                         TranslatedPort = "8443",
///                     },
///                     new AzureNative.Network.Inputs.AzureFirewallNatRuleArgs
///                     {
///                         Description = "D-NAT all inbound web traffic for inspection",
///                         DestinationAddresses = new[]
///                         {
///                             "1.2.3.4",
///                         },
///                         DestinationPorts = new[]
///                         {
///                             "80",
///                         },
///                         Name = "DNAT-HTTP-traffic-With-FQDN",
///                         Protocols = new[]
///                         {
///                             AzureNative.Network.AzureFirewallNetworkRuleProtocol.TCP,
///                         },
///                         SourceAddresses = new[]
///                         {
///                             "*",
///                         },
///                         TranslatedFqdn = "internalhttpserver",
///                         TranslatedPort = "880",
///                     },
///                 },
///             },
///         },
///         NetworkRuleCollections = new[]
///         {
///             new AzureNative.Network.Inputs.AzureFirewallNetworkRuleCollectionArgs
///             {
///                 Action = new AzureNative.Network.Inputs.AzureFirewallRCActionArgs
///                 {
///                     Type = AzureNative.Network.AzureFirewallRCActionType.Deny,
///                 },
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/networkRuleCollections/netrulecoll",
///                 Name = "netrulecoll",
///                 Priority = 112,
///                 Rules = new[]
///                 {
///                     new AzureNative.Network.Inputs.AzureFirewallNetworkRuleArgs
///                     {
///                         Description = "Block traffic based on source IPs and ports",
///                         DestinationAddresses = new[]
///                         {
///                             "*",
///                         },
///                         DestinationPorts = new[]
///                         {
///                             "443-444",
///                             "8443",
///                         },
///                         Name = "L4-traffic",
///                         Protocols = new[]
///                         {
///                             AzureNative.Network.AzureFirewallNetworkRuleProtocol.TCP,
///                         },
///                         SourceAddresses = new[]
///                         {
///                             "192.168.1.1-192.168.1.12",
///                             "10.1.4.12-10.1.4.255",
///                         },
///                     },
///                     new AzureNative.Network.Inputs.AzureFirewallNetworkRuleArgs
///                     {
///                         Description = "Block traffic based on source IPs and ports to amazon",
///                         DestinationFqdns = new[]
///                         {
///                             "www.amazon.com",
///                         },
///                         DestinationPorts = new[]
///                         {
///                             "443-444",
///                             "8443",
///                         },
///                         Name = "L4-traffic-with-FQDN",
///                         Protocols = new[]
///                         {
///                             AzureNative.Network.AzureFirewallNetworkRuleProtocol.TCP,
///                         },
///                         SourceAddresses = new[]
///                         {
///                             "10.2.4.12-10.2.4.255",
///                         },
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "rg1",
///         Sku = new AzureNative.Network.Inputs.AzureFirewallSkuArgs
///         {
///             Name = AzureNative.Network.AzureFirewallSkuName.AZFW_VNet,
///             Tier = AzureNative.Network.AzureFirewallSkuTier.Standard,
///         },
///         Tags =
///         {
///             { "key1", "value1" },
///         },
///         ThreatIntelMode = AzureNative.Network.AzureFirewallThreatIntelMode.Alert,
///         Zones = new[] {},
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewAzureFirewall(ctx, "azureFirewall", &network.AzureFirewallArgs{
/// 			AdditionalProperties: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 				"key2": pulumi.String("value2"),
/// 			},
/// 			ApplicationRuleCollections: network.AzureFirewallApplicationRuleCollectionArray{
/// 				&network.AzureFirewallApplicationRuleCollectionArgs{
/// 					Action: &network.AzureFirewallRCActionArgs{
/// 						Type: pulumi.String(network.AzureFirewallRCActionTypeDeny),
/// 					},
/// 					Id:       pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/applicationRuleCollections/apprulecoll"),
/// 					Name:     pulumi.String("apprulecoll"),
/// 					Priority: pulumi.Int(110),
/// 					Rules: network.AzureFirewallApplicationRuleArray{
/// 						&network.AzureFirewallApplicationRuleArgs{
/// 							Description: pulumi.String("Deny inbound rule"),
/// 							Name:        pulumi.String("rule1"),
/// 							Protocols: network.AzureFirewallApplicationRuleProtocolArray{
/// 								&network.AzureFirewallApplicationRuleProtocolArgs{
/// 									Port:         pulumi.Int(443),
/// 									ProtocolType: pulumi.String(network.AzureFirewallApplicationRuleProtocolTypeHttps),
/// 								},
/// 							},
/// 							SourceAddresses: pulumi.StringArray{
/// 								pulumi.String("216.58.216.164"),
/// 								pulumi.String("10.0.0.0/24"),
/// 							},
/// 							TargetFqdns: pulumi.StringArray{
/// 								pulumi.String("www.test.com"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			AzureFirewallName: pulumi.String("azurefirewall"),
/// 			IpConfigurations: network.AzureFirewallIPConfigurationArray{
/// 				&network.AzureFirewallIPConfigurationArgs{
/// 					Name: pulumi.String("azureFirewallIpConfiguration"),
/// 					PublicIPAddress: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName"),
/// 					},
/// 					Subnet: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallSubnet"),
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("West US"),
/// 			NatRuleCollections: network.AzureFirewallNatRuleCollectionArray{
/// 				&network.AzureFirewallNatRuleCollectionArgs{
/// 					Action: &network.AzureFirewallNatRCActionArgs{
/// 						Type: pulumi.String(network.AzureFirewallNatRCActionTypeDnat),
/// 					},
/// 					Id:       pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/natRuleCollections/natrulecoll"),
/// 					Name:     pulumi.String("natrulecoll"),
/// 					Priority: pulumi.Int(112),
/// 					Rules: network.AzureFirewallNatRuleArray{
/// 						&network.AzureFirewallNatRuleArgs{
/// 							Description: pulumi.String("D-NAT all outbound web traffic for inspection"),
/// 							DestinationAddresses: pulumi.StringArray{
/// 								pulumi.String("1.2.3.4"),
/// 							},
/// 							DestinationPorts: pulumi.StringArray{
/// 								pulumi.String("443"),
/// 							},
/// 							Name: pulumi.String("DNAT-HTTPS-traffic"),
/// 							Protocols: pulumi.StringArray{
/// 								pulumi.String(network.AzureFirewallNetworkRuleProtocolTCP),
/// 							},
/// 							SourceAddresses: pulumi.StringArray{
/// 								pulumi.String("*"),
/// 							},
/// 							TranslatedAddress: pulumi.String("1.2.3.5"),
/// 							TranslatedPort:    pulumi.String("8443"),
/// 						},
/// 						&network.AzureFirewallNatRuleArgs{
/// 							Description: pulumi.String("D-NAT all inbound web traffic for inspection"),
/// 							DestinationAddresses: pulumi.StringArray{
/// 								pulumi.String("1.2.3.4"),
/// 							},
/// 							DestinationPorts: pulumi.StringArray{
/// 								pulumi.String("80"),
/// 							},
/// 							Name: pulumi.String("DNAT-HTTP-traffic-With-FQDN"),
/// 							Protocols: pulumi.StringArray{
/// 								pulumi.String(network.AzureFirewallNetworkRuleProtocolTCP),
/// 							},
/// 							SourceAddresses: pulumi.StringArray{
/// 								pulumi.String("*"),
/// 							},
/// 							TranslatedFqdn: pulumi.String("internalhttpserver"),
/// 							TranslatedPort: pulumi.String("880"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			NetworkRuleCollections: network.AzureFirewallNetworkRuleCollectionArray{
/// 				&network.AzureFirewallNetworkRuleCollectionArgs{
/// 					Action: &network.AzureFirewallRCActionArgs{
/// 						Type: pulumi.String(network.AzureFirewallRCActionTypeDeny),
/// 					},
/// 					Id:       pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/networkRuleCollections/netrulecoll"),
/// 					Name:     pulumi.String("netrulecoll"),
/// 					Priority: pulumi.Int(112),
/// 					Rules: network.AzureFirewallNetworkRuleArray{
/// 						&network.AzureFirewallNetworkRuleArgs{
/// 							Description: pulumi.String("Block traffic based on source IPs and ports"),
/// 							DestinationAddresses: pulumi.StringArray{
/// 								pulumi.String("*"),
/// 							},
/// 							DestinationPorts: pulumi.StringArray{
/// 								pulumi.String("443-444"),
/// 								pulumi.String("8443"),
/// 							},
/// 							Name: pulumi.String("L4-traffic"),
/// 							Protocols: pulumi.StringArray{
/// 								pulumi.String(network.AzureFirewallNetworkRuleProtocolTCP),
/// 							},
/// 							SourceAddresses: pulumi.StringArray{
/// 								pulumi.String("192.168.1.1-192.168.1.12"),
/// 								pulumi.String("10.1.4.12-10.1.4.255"),
/// 							},
/// 						},
/// 						&network.AzureFirewallNetworkRuleArgs{
/// 							Description: pulumi.String("Block traffic based on source IPs and ports to amazon"),
/// 							DestinationFqdns: pulumi.StringArray{
/// 								pulumi.String("www.amazon.com"),
/// 							},
/// 							DestinationPorts: pulumi.StringArray{
/// 								pulumi.String("443-444"),
/// 								pulumi.String("8443"),
/// 							},
/// 							Name: pulumi.String("L4-traffic-with-FQDN"),
/// 							Protocols: pulumi.StringArray{
/// 								pulumi.String(network.AzureFirewallNetworkRuleProtocolTCP),
/// 							},
/// 							SourceAddresses: pulumi.StringArray{
/// 								pulumi.String("10.2.4.12-10.2.4.255"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Sku: &network.AzureFirewallSkuArgs{
/// 				Name: pulumi.String(network.AzureFirewallSkuName_AZFW_VNet),
/// 				Tier: pulumi.String(network.AzureFirewallSkuTierStandard),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			ThreatIntelMode: pulumi.String(network.AzureFirewallThreatIntelModeAlert),
/// 			Zones:           pulumi.StringArray{},
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
/// import com.pulumi.azurenative.network.AzureFirewall;
/// import com.pulumi.azurenative.network.AzureFirewallArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallApplicationRuleCollectionArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallRCActionArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallIPConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallNatRuleCollectionArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallNatRCActionArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallNetworkRuleCollectionArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallSkuArgs;
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
///         var azureFirewall = new AzureFirewall("azureFirewall", AzureFirewallArgs.builder()
///             .additionalProperties(Map.ofEntries(
///                 Map.entry("key1", "value1"),
///                 Map.entry("key2", "value2")
///             ))
///             .applicationRuleCollections(AzureFirewallApplicationRuleCollectionArgs.builder()
///                 .action(AzureFirewallRCActionArgs.builder()
///                     .type("Deny")
///                     .build())
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/applicationRuleCollections/apprulecoll")
///                 .name("apprulecoll")
///                 .priority(110)
///                 .rules(AzureFirewallApplicationRuleArgs.builder()
///                     .description("Deny inbound rule")
///                     .name("rule1")
///                     .protocols(AzureFirewallApplicationRuleProtocolArgs.builder()
///                         .port(443)
///                         .protocolType("Https")
///                         .build())
///                     .sourceAddresses(
///                         "216.58.216.164",
///                         "10.0.0.0/24")
///                     .targetFqdns("www.test.com")
///                     .build())
///                 .build())
///             .azureFirewallName("azurefirewall")
///             .ipConfigurations(AzureFirewallIPConfigurationArgs.builder()
///                 .name("azureFirewallIpConfiguration")
///                 .publicIPAddress(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName")
///                     .build())
///                 .subnet(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallSubnet")
///                     .build())
///                 .build())
///             .location("West US")
///             .natRuleCollections(AzureFirewallNatRuleCollectionArgs.builder()
///                 .action(AzureFirewallNatRCActionArgs.builder()
///                     .type("Dnat")
///                     .build())
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/natRuleCollections/natrulecoll")
///                 .name("natrulecoll")
///                 .priority(112)
///                 .rules(
///                     AzureFirewallNatRuleArgs.builder()
///                         .description("D-NAT all outbound web traffic for inspection")
///                         .destinationAddresses("1.2.3.4")
///                         .destinationPorts("443")
///                         .name("DNAT-HTTPS-traffic")
///                         .protocols("TCP")
///                         .sourceAddresses("*")
///                         .translatedAddress("1.2.3.5")
///                         .translatedPort("8443")
///                         .build(),
///                     AzureFirewallNatRuleArgs.builder()
///                         .description("D-NAT all inbound web traffic for inspection")
///                         .destinationAddresses("1.2.3.4")
///                         .destinationPorts("80")
///                         .name("DNAT-HTTP-traffic-With-FQDN")
///                         .protocols("TCP")
///                         .sourceAddresses("*")
///                         .translatedFqdn("internalhttpserver")
///                         .translatedPort("880")
///                         .build())
///                 .build())
///             .networkRuleCollections(AzureFirewallNetworkRuleCollectionArgs.builder()
///                 .action(AzureFirewallRCActionArgs.builder()
///                     .type("Deny")
///                     .build())
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/networkRuleCollections/netrulecoll")
///                 .name("netrulecoll")
///                 .priority(112)
///                 .rules(
///                     AzureFirewallNetworkRuleArgs.builder()
///                         .description("Block traffic based on source IPs and ports")
///                         .destinationAddresses("*")
///                         .destinationPorts(
///                             "443-444",
///                             "8443")
///                         .name("L4-traffic")
///                         .protocols("TCP")
///                         .sourceAddresses(
///                             "192.168.1.1-192.168.1.12",
///                             "10.1.4.12-10.1.4.255")
///                         .build(),
///                     AzureFirewallNetworkRuleArgs.builder()
///                         .description("Block traffic based on source IPs and ports to amazon")
///                         .destinationFqdns("www.amazon.com")
///                         .destinationPorts(
///                             "443-444",
///                             "8443")
///                         .name("L4-traffic-with-FQDN")
///                         .protocols("TCP")
///                         .sourceAddresses("10.2.4.12-10.2.4.255")
///                         .build())
///                 .build())
///             .resourceGroupName("rg1")
///             .sku(AzureFirewallSkuArgs.builder()
///                 .name("AZFW_VNet")
///                 .tier("Standard")
///                 .build())
///             .tags(Map.of("key1", "value1"))
///             .threatIntelMode("Alert")
///             .zones()
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
/// const azureFirewall = new azure_native.network.AzureFirewall("azureFirewall", {
///     additionalProperties: {
///         key1: "value1",
///         key2: "value2",
///     },
///     applicationRuleCollections: [{
///         action: {
///             type: azure_native.network.AzureFirewallRCActionType.Deny,
///         },
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/applicationRuleCollections/apprulecoll",
///         name: "apprulecoll",
///         priority: 110,
///         rules: [{
///             description: "Deny inbound rule",
///             name: "rule1",
///             protocols: [{
///                 port: 443,
///                 protocolType: azure_native.network.AzureFirewallApplicationRuleProtocolType.Https,
///             }],
///             sourceAddresses: [
///                 "216.58.216.164",
///                 "10.0.0.0/24",
///             ],
///             targetFqdns: ["www.test.com"],
///         }],
///     }],
///     azureFirewallName: "azurefirewall",
///     ipConfigurations: [{
///         name: "azureFirewallIpConfiguration",
///         publicIPAddress: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName",
///         },
///         subnet: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallSubnet",
///         },
///     }],
///     location: "West US",
///     natRuleCollections: [{
///         action: {
///             type: azure_native.network.AzureFirewallNatRCActionType.Dnat,
///         },
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/natRuleCollections/natrulecoll",
///         name: "natrulecoll",
///         priority: 112,
///         rules: [
///             {
///                 description: "D-NAT all outbound web traffic for inspection",
///                 destinationAddresses: ["1.2.3.4"],
///                 destinationPorts: ["443"],
///                 name: "DNAT-HTTPS-traffic",
///                 protocols: [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 sourceAddresses: ["*"],
///                 translatedAddress: "1.2.3.5",
///                 translatedPort: "8443",
///             },
///             {
///                 description: "D-NAT all inbound web traffic for inspection",
///                 destinationAddresses: ["1.2.3.4"],
///                 destinationPorts: ["80"],
///                 name: "DNAT-HTTP-traffic-With-FQDN",
///                 protocols: [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 sourceAddresses: ["*"],
///                 translatedFqdn: "internalhttpserver",
///                 translatedPort: "880",
///             },
///         ],
///     }],
///     networkRuleCollections: [{
///         action: {
///             type: azure_native.network.AzureFirewallRCActionType.Deny,
///         },
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/networkRuleCollections/netrulecoll",
///         name: "netrulecoll",
///         priority: 112,
///         rules: [
///             {
///                 description: "Block traffic based on source IPs and ports",
///                 destinationAddresses: ["*"],
///                 destinationPorts: [
///                     "443-444",
///                     "8443",
///                 ],
///                 name: "L4-traffic",
///                 protocols: [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 sourceAddresses: [
///                     "192.168.1.1-192.168.1.12",
///                     "10.1.4.12-10.1.4.255",
///                 ],
///             },
///             {
///                 description: "Block traffic based on source IPs and ports to amazon",
///                 destinationFqdns: ["www.amazon.com"],
///                 destinationPorts: [
///                     "443-444",
///                     "8443",
///                 ],
///                 name: "L4-traffic-with-FQDN",
///                 protocols: [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 sourceAddresses: ["10.2.4.12-10.2.4.255"],
///             },
///         ],
///     }],
///     resourceGroupName: "rg1",
///     sku: {
///         name: azure_native.network.AzureFirewallSkuName.AZFW_VNet,
///         tier: azure_native.network.AzureFirewallSkuTier.Standard,
///     },
///     tags: {
///         key1: "value1",
///     },
///     threatIntelMode: azure_native.network.AzureFirewallThreatIntelMode.Alert,
///     zones: [],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// azure_firewall = azure_native.network.AzureFirewall("azureFirewall",
///     additional_properties={
///         "key1": "value1",
///         "key2": "value2",
///     },
///     application_rule_collections=[{
///         "action": {
///             "type": azure_native.network.AzureFirewallRCActionType.DENY,
///         },
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/applicationRuleCollections/apprulecoll",
///         "name": "apprulecoll",
///         "priority": 110,
///         "rules": [{
///             "description": "Deny inbound rule",
///             "name": "rule1",
///             "protocols": [{
///                 "port": 443,
///                 "protocol_type": azure_native.network.AzureFirewallApplicationRuleProtocolType.HTTPS,
///             }],
///             "source_addresses": [
///                 "216.58.216.164",
///                 "10.0.0.0/24",
///             ],
///             "target_fqdns": ["www.test.com"],
///         }],
///     }],
///     azure_firewall_name="azurefirewall",
///     ip_configurations=[{
///         "name": "azureFirewallIpConfiguration",
///         "public_ip_address": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName",
///         },
///         "subnet": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallSubnet",
///         },
///     }],
///     location="West US",
///     nat_rule_collections=[{
///         "action": {
///             "type": azure_native.network.AzureFirewallNatRCActionType.DNAT,
///         },
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/natRuleCollections/natrulecoll",
///         "name": "natrulecoll",
///         "priority": 112,
///         "rules": [
///             {
///                 "description": "D-NAT all outbound web traffic for inspection",
///                 "destination_addresses": ["1.2.3.4"],
///                 "destination_ports": ["443"],
///                 "name": "DNAT-HTTPS-traffic",
///                 "protocols": [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 "source_addresses": ["*"],
///                 "translated_address": "1.2.3.5",
///                 "translated_port": "8443",
///             },
///             {
///                 "description": "D-NAT all inbound web traffic for inspection",
///                 "destination_addresses": ["1.2.3.4"],
///                 "destination_ports": ["80"],
///                 "name": "DNAT-HTTP-traffic-With-FQDN",
///                 "protocols": [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 "source_addresses": ["*"],
///                 "translated_fqdn": "internalhttpserver",
///                 "translated_port": "880",
///             },
///         ],
///     }],
///     network_rule_collections=[{
///         "action": {
///             "type": azure_native.network.AzureFirewallRCActionType.DENY,
///         },
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/networkRuleCollections/netrulecoll",
///         "name": "netrulecoll",
///         "priority": 112,
///         "rules": [
///             {
///                 "description": "Block traffic based on source IPs and ports",
///                 "destination_addresses": ["*"],
///                 "destination_ports": [
///                     "443-444",
///                     "8443",
///                 ],
///                 "name": "L4-traffic",
///                 "protocols": [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 "source_addresses": [
///                     "192.168.1.1-192.168.1.12",
///                     "10.1.4.12-10.1.4.255",
///                 ],
///             },
///             {
///                 "description": "Block traffic based on source IPs and ports to amazon",
///                 "destination_fqdns": ["www.amazon.com"],
///                 "destination_ports": [
///                     "443-444",
///                     "8443",
///                 ],
///                 "name": "L4-traffic-with-FQDN",
///                 "protocols": [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 "source_addresses": ["10.2.4.12-10.2.4.255"],
///             },
///         ],
///     }],
///     resource_group_name="rg1",
///     sku={
///         "name": azure_native.network.AzureFirewallSkuName.AZF_W_V_NET,
///         "tier": azure_native.network.AzureFirewallSkuTier.STANDARD,
///     },
///     tags={
///         "key1": "value1",
///     },
///     threat_intel_mode=azure_native.network.AzureFirewallThreatIntelMode.ALERT,
///     zones=[])
///
/// ```
///
/// ```yaml
/// resources:
///   azureFirewall:
///     type: azure-native:network:AzureFirewall
///     properties:
///       additionalProperties:
///         key1: value1
///         key2: value2
///       applicationRuleCollections:
///         - action:
///             type: Deny
///           id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/applicationRuleCollections/apprulecoll
///           name: apprulecoll
///           priority: 110
///           rules:
///             - description: Deny inbound rule
///               name: rule1
///               protocols:
///                 - port: 443
///                   protocolType: Https
///               sourceAddresses:
///                 - 216.58.216.164
///                 - 10.0.0.0/24
///               targetFqdns:
///                 - www.test.com
///       azureFirewallName: azurefirewall
///       ipConfigurations:
///         - name: azureFirewallIpConfiguration
///           publicIPAddress:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName
///           subnet:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallSubnet
///       location: West US
///       natRuleCollections:
///         - action:
///             type: Dnat
///           id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/natRuleCollections/natrulecoll
///           name: natrulecoll
///           priority: 112
///           rules:
///             - description: D-NAT all outbound web traffic for inspection
///               destinationAddresses:
///                 - 1.2.3.4
///               destinationPorts:
///                 - '443'
///               name: DNAT-HTTPS-traffic
///               protocols:
///                 - TCP
///               sourceAddresses:
///                 - '*'
///               translatedAddress: 1.2.3.5
///               translatedPort: '8443'
///             - description: D-NAT all inbound web traffic for inspection
///               destinationAddresses:
///                 - 1.2.3.4
///               destinationPorts:
///                 - '80'
///               name: DNAT-HTTP-traffic-With-FQDN
///               protocols:
///                 - TCP
///               sourceAddresses:
///                 - '*'
///               translatedFqdn: internalhttpserver
///               translatedPort: '880'
///       networkRuleCollections:
///         - action:
///             type: Deny
///           id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/networkRuleCollections/netrulecoll
///           name: netrulecoll
///           priority: 112
///           rules:
///             - description: Block traffic based on source IPs and ports
///               destinationAddresses:
///                 - '*'
///               destinationPorts:
///                 - 443-444
///                 - '8443'
///               name: L4-traffic
///               protocols:
///                 - TCP
///               sourceAddresses:
///                 - 192.168.1.1-192.168.1.12
///                 - 10.1.4.12-10.1.4.255
///             - description: Block traffic based on source IPs and ports to amazon
///               destinationFqdns:
///                 - www.amazon.com
///               destinationPorts:
///                 - 443-444
///                 - '8443'
///               name: L4-traffic-with-FQDN
///               protocols:
///                 - TCP
///               sourceAddresses:
///                 - 10.2.4.12-10.2.4.255
///       resourceGroupName: rg1
///       sku:
///         name: AZFW_VNet
///         tier: Standard
///       tags:
///         key1: value1
///       threatIntelMode: Alert
///       zones: []
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Azure Firewall With IpGroups
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var azureFirewall = new AzureNative.Network.AzureFirewall("azureFirewall", new()
///     {
///         ApplicationRuleCollections = new[]
///         {
///             new AzureNative.Network.Inputs.AzureFirewallApplicationRuleCollectionArgs
///             {
///                 Action = new AzureNative.Network.Inputs.AzureFirewallRCActionArgs
///                 {
///                     Type = AzureNative.Network.AzureFirewallRCActionType.Deny,
///                 },
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/applicationRuleCollections/apprulecoll",
///                 Name = "apprulecoll",
///                 Priority = 110,
///                 Rules = new[]
///                 {
///                     new AzureNative.Network.Inputs.AzureFirewallApplicationRuleArgs
///                     {
///                         Description = "Deny inbound rule",
///                         Name = "rule1",
///                         Protocols = new[]
///                         {
///                             new AzureNative.Network.Inputs.AzureFirewallApplicationRuleProtocolArgs
///                             {
///                                 Port = 443,
///                                 ProtocolType = AzureNative.Network.AzureFirewallApplicationRuleProtocolType.Https,
///                             },
///                         },
///                         SourceAddresses = new[]
///                         {
///                             "216.58.216.164",
///                             "10.0.0.0/24",
///                         },
///                         TargetFqdns = new[]
///                         {
///                             "www.test.com",
///                         },
///                     },
///                 },
///             },
///         },
///         AzureFirewallName = "azurefirewall",
///         IpConfigurations = new[]
///         {
///             new AzureNative.Network.Inputs.AzureFirewallIPConfigurationArgs
///             {
///                 Name = "azureFirewallIpConfiguration",
///                 PublicIPAddress = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName",
///                 },
///                 Subnet = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallSubnet",
///                 },
///             },
///         },
///         Location = "West US",
///         NatRuleCollections = new[]
///         {
///             new AzureNative.Network.Inputs.AzureFirewallNatRuleCollectionArgs
///             {
///                 Action = new AzureNative.Network.Inputs.AzureFirewallNatRCActionArgs
///                 {
///                     Type = AzureNative.Network.AzureFirewallNatRCActionType.Dnat,
///                 },
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/natRuleCollections/natrulecoll",
///                 Name = "natrulecoll",
///                 Priority = 112,
///                 Rules = new[]
///                 {
///                     new AzureNative.Network.Inputs.AzureFirewallNatRuleArgs
///                     {
///                         Description = "D-NAT all outbound web traffic for inspection",
///                         DestinationAddresses = new[]
///                         {
///                             "1.2.3.4",
///                         },
///                         DestinationPorts = new[]
///                         {
///                             "443",
///                         },
///                         Name = "DNAT-HTTPS-traffic",
///                         Protocols = new[]
///                         {
///                             AzureNative.Network.AzureFirewallNetworkRuleProtocol.TCP,
///                         },
///                         SourceAddresses = new[]
///                         {
///                             "*",
///                         },
///                         TranslatedAddress = "1.2.3.5",
///                         TranslatedPort = "8443",
///                     },
///                     new AzureNative.Network.Inputs.AzureFirewallNatRuleArgs
///                     {
///                         Description = "D-NAT all inbound web traffic for inspection",
///                         DestinationAddresses = new[]
///                         {
///                             "1.2.3.4",
///                         },
///                         DestinationPorts = new[]
///                         {
///                             "80",
///                         },
///                         Name = "DNAT-HTTP-traffic-With-FQDN",
///                         Protocols = new[]
///                         {
///                             AzureNative.Network.AzureFirewallNetworkRuleProtocol.TCP,
///                         },
///                         SourceAddresses = new[]
///                         {
///                             "*",
///                         },
///                         TranslatedFqdn = "internalhttpserver",
///                         TranslatedPort = "880",
///                     },
///                 },
///             },
///         },
///         NetworkRuleCollections = new[]
///         {
///             new AzureNative.Network.Inputs.AzureFirewallNetworkRuleCollectionArgs
///             {
///                 Action = new AzureNative.Network.Inputs.AzureFirewallRCActionArgs
///                 {
///                     Type = AzureNative.Network.AzureFirewallRCActionType.Deny,
///                 },
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/networkRuleCollections/netrulecoll",
///                 Name = "netrulecoll",
///                 Priority = 112,
///                 Rules = new[]
///                 {
///                     new AzureNative.Network.Inputs.AzureFirewallNetworkRuleArgs
///                     {
///                         Description = "Block traffic based on source IPs and ports",
///                         DestinationAddresses = new[]
///                         {
///                             "*",
///                         },
///                         DestinationPorts = new[]
///                         {
///                             "443-444",
///                             "8443",
///                         },
///                         Name = "L4-traffic",
///                         Protocols = new[]
///                         {
///                             AzureNative.Network.AzureFirewallNetworkRuleProtocol.TCP,
///                         },
///                         SourceAddresses = new[]
///                         {
///                             "192.168.1.1-192.168.1.12",
///                             "10.1.4.12-10.1.4.255",
///                         },
///                     },
///                     new AzureNative.Network.Inputs.AzureFirewallNetworkRuleArgs
///                     {
///                         Description = "Block traffic based on source IPs and ports to amazon",
///                         DestinationFqdns = new[]
///                         {
///                             "www.amazon.com",
///                         },
///                         DestinationPorts = new[]
///                         {
///                             "443-444",
///                             "8443",
///                         },
///                         Name = "L4-traffic-with-FQDN",
///                         Protocols = new[]
///                         {
///                             AzureNative.Network.AzureFirewallNetworkRuleProtocol.TCP,
///                         },
///                         SourceAddresses = new[]
///                         {
///                             "10.2.4.12-10.2.4.255",
///                         },
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "rg1",
///         Sku = new AzureNative.Network.Inputs.AzureFirewallSkuArgs
///         {
///             Name = AzureNative.Network.AzureFirewallSkuName.AZFW_VNet,
///             Tier = AzureNative.Network.AzureFirewallSkuTier.Standard,
///         },
///         Tags =
///         {
///             { "key1", "value1" },
///         },
///         ThreatIntelMode = AzureNative.Network.AzureFirewallThreatIntelMode.Alert,
///         Zones = new[] {},
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewAzureFirewall(ctx, "azureFirewall", &network.AzureFirewallArgs{
/// 			ApplicationRuleCollections: network.AzureFirewallApplicationRuleCollectionArray{
/// 				&network.AzureFirewallApplicationRuleCollectionArgs{
/// 					Action: &network.AzureFirewallRCActionArgs{
/// 						Type: pulumi.String(network.AzureFirewallRCActionTypeDeny),
/// 					},
/// 					Id:       pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/applicationRuleCollections/apprulecoll"),
/// 					Name:     pulumi.String("apprulecoll"),
/// 					Priority: pulumi.Int(110),
/// 					Rules: network.AzureFirewallApplicationRuleArray{
/// 						&network.AzureFirewallApplicationRuleArgs{
/// 							Description: pulumi.String("Deny inbound rule"),
/// 							Name:        pulumi.String("rule1"),
/// 							Protocols: network.AzureFirewallApplicationRuleProtocolArray{
/// 								&network.AzureFirewallApplicationRuleProtocolArgs{
/// 									Port:         pulumi.Int(443),
/// 									ProtocolType: pulumi.String(network.AzureFirewallApplicationRuleProtocolTypeHttps),
/// 								},
/// 							},
/// 							SourceAddresses: pulumi.StringArray{
/// 								pulumi.String("216.58.216.164"),
/// 								pulumi.String("10.0.0.0/24"),
/// 							},
/// 							TargetFqdns: pulumi.StringArray{
/// 								pulumi.String("www.test.com"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			AzureFirewallName: pulumi.String("azurefirewall"),
/// 			IpConfigurations: network.AzureFirewallIPConfigurationArray{
/// 				&network.AzureFirewallIPConfigurationArgs{
/// 					Name: pulumi.String("azureFirewallIpConfiguration"),
/// 					PublicIPAddress: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName"),
/// 					},
/// 					Subnet: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallSubnet"),
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("West US"),
/// 			NatRuleCollections: network.AzureFirewallNatRuleCollectionArray{
/// 				&network.AzureFirewallNatRuleCollectionArgs{
/// 					Action: &network.AzureFirewallNatRCActionArgs{
/// 						Type: pulumi.String(network.AzureFirewallNatRCActionTypeDnat),
/// 					},
/// 					Id:       pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/natRuleCollections/natrulecoll"),
/// 					Name:     pulumi.String("natrulecoll"),
/// 					Priority: pulumi.Int(112),
/// 					Rules: network.AzureFirewallNatRuleArray{
/// 						&network.AzureFirewallNatRuleArgs{
/// 							Description: pulumi.String("D-NAT all outbound web traffic for inspection"),
/// 							DestinationAddresses: pulumi.StringArray{
/// 								pulumi.String("1.2.3.4"),
/// 							},
/// 							DestinationPorts: pulumi.StringArray{
/// 								pulumi.String("443"),
/// 							},
/// 							Name: pulumi.String("DNAT-HTTPS-traffic"),
/// 							Protocols: pulumi.StringArray{
/// 								pulumi.String(network.AzureFirewallNetworkRuleProtocolTCP),
/// 							},
/// 							SourceAddresses: pulumi.StringArray{
/// 								pulumi.String("*"),
/// 							},
/// 							TranslatedAddress: pulumi.String("1.2.3.5"),
/// 							TranslatedPort:    pulumi.String("8443"),
/// 						},
/// 						&network.AzureFirewallNatRuleArgs{
/// 							Description: pulumi.String("D-NAT all inbound web traffic for inspection"),
/// 							DestinationAddresses: pulumi.StringArray{
/// 								pulumi.String("1.2.3.4"),
/// 							},
/// 							DestinationPorts: pulumi.StringArray{
/// 								pulumi.String("80"),
/// 							},
/// 							Name: pulumi.String("DNAT-HTTP-traffic-With-FQDN"),
/// 							Protocols: pulumi.StringArray{
/// 								pulumi.String(network.AzureFirewallNetworkRuleProtocolTCP),
/// 							},
/// 							SourceAddresses: pulumi.StringArray{
/// 								pulumi.String("*"),
/// 							},
/// 							TranslatedFqdn: pulumi.String("internalhttpserver"),
/// 							TranslatedPort: pulumi.String("880"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			NetworkRuleCollections: network.AzureFirewallNetworkRuleCollectionArray{
/// 				&network.AzureFirewallNetworkRuleCollectionArgs{
/// 					Action: &network.AzureFirewallRCActionArgs{
/// 						Type: pulumi.String(network.AzureFirewallRCActionTypeDeny),
/// 					},
/// 					Id:       pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/networkRuleCollections/netrulecoll"),
/// 					Name:     pulumi.String("netrulecoll"),
/// 					Priority: pulumi.Int(112),
/// 					Rules: network.AzureFirewallNetworkRuleArray{
/// 						&network.AzureFirewallNetworkRuleArgs{
/// 							Description: pulumi.String("Block traffic based on source IPs and ports"),
/// 							DestinationAddresses: pulumi.StringArray{
/// 								pulumi.String("*"),
/// 							},
/// 							DestinationPorts: pulumi.StringArray{
/// 								pulumi.String("443-444"),
/// 								pulumi.String("8443"),
/// 							},
/// 							Name: pulumi.String("L4-traffic"),
/// 							Protocols: pulumi.StringArray{
/// 								pulumi.String(network.AzureFirewallNetworkRuleProtocolTCP),
/// 							},
/// 							SourceAddresses: pulumi.StringArray{
/// 								pulumi.String("192.168.1.1-192.168.1.12"),
/// 								pulumi.String("10.1.4.12-10.1.4.255"),
/// 							},
/// 						},
/// 						&network.AzureFirewallNetworkRuleArgs{
/// 							Description: pulumi.String("Block traffic based on source IPs and ports to amazon"),
/// 							DestinationFqdns: pulumi.StringArray{
/// 								pulumi.String("www.amazon.com"),
/// 							},
/// 							DestinationPorts: pulumi.StringArray{
/// 								pulumi.String("443-444"),
/// 								pulumi.String("8443"),
/// 							},
/// 							Name: pulumi.String("L4-traffic-with-FQDN"),
/// 							Protocols: pulumi.StringArray{
/// 								pulumi.String(network.AzureFirewallNetworkRuleProtocolTCP),
/// 							},
/// 							SourceAddresses: pulumi.StringArray{
/// 								pulumi.String("10.2.4.12-10.2.4.255"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Sku: &network.AzureFirewallSkuArgs{
/// 				Name: pulumi.String(network.AzureFirewallSkuName_AZFW_VNet),
/// 				Tier: pulumi.String(network.AzureFirewallSkuTierStandard),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			ThreatIntelMode: pulumi.String(network.AzureFirewallThreatIntelModeAlert),
/// 			Zones:           pulumi.StringArray{},
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
/// import com.pulumi.azurenative.network.AzureFirewall;
/// import com.pulumi.azurenative.network.AzureFirewallArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallApplicationRuleCollectionArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallRCActionArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallIPConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallNatRuleCollectionArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallNatRCActionArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallNetworkRuleCollectionArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallSkuArgs;
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
///         var azureFirewall = new AzureFirewall("azureFirewall", AzureFirewallArgs.builder()
///             .applicationRuleCollections(AzureFirewallApplicationRuleCollectionArgs.builder()
///                 .action(AzureFirewallRCActionArgs.builder()
///                     .type("Deny")
///                     .build())
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/applicationRuleCollections/apprulecoll")
///                 .name("apprulecoll")
///                 .priority(110)
///                 .rules(AzureFirewallApplicationRuleArgs.builder()
///                     .description("Deny inbound rule")
///                     .name("rule1")
///                     .protocols(AzureFirewallApplicationRuleProtocolArgs.builder()
///                         .port(443)
///                         .protocolType("Https")
///                         .build())
///                     .sourceAddresses(
///                         "216.58.216.164",
///                         "10.0.0.0/24")
///                     .targetFqdns("www.test.com")
///                     .build())
///                 .build())
///             .azureFirewallName("azurefirewall")
///             .ipConfigurations(AzureFirewallIPConfigurationArgs.builder()
///                 .name("azureFirewallIpConfiguration")
///                 .publicIPAddress(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName")
///                     .build())
///                 .subnet(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallSubnet")
///                     .build())
///                 .build())
///             .location("West US")
///             .natRuleCollections(AzureFirewallNatRuleCollectionArgs.builder()
///                 .action(AzureFirewallNatRCActionArgs.builder()
///                     .type("Dnat")
///                     .build())
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/natRuleCollections/natrulecoll")
///                 .name("natrulecoll")
///                 .priority(112)
///                 .rules(
///                     AzureFirewallNatRuleArgs.builder()
///                         .description("D-NAT all outbound web traffic for inspection")
///                         .destinationAddresses("1.2.3.4")
///                         .destinationPorts("443")
///                         .name("DNAT-HTTPS-traffic")
///                         .protocols("TCP")
///                         .sourceAddresses("*")
///                         .translatedAddress("1.2.3.5")
///                         .translatedPort("8443")
///                         .build(),
///                     AzureFirewallNatRuleArgs.builder()
///                         .description("D-NAT all inbound web traffic for inspection")
///                         .destinationAddresses("1.2.3.4")
///                         .destinationPorts("80")
///                         .name("DNAT-HTTP-traffic-With-FQDN")
///                         .protocols("TCP")
///                         .sourceAddresses("*")
///                         .translatedFqdn("internalhttpserver")
///                         .translatedPort("880")
///                         .build())
///                 .build())
///             .networkRuleCollections(AzureFirewallNetworkRuleCollectionArgs.builder()
///                 .action(AzureFirewallRCActionArgs.builder()
///                     .type("Deny")
///                     .build())
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/networkRuleCollections/netrulecoll")
///                 .name("netrulecoll")
///                 .priority(112)
///                 .rules(
///                     AzureFirewallNetworkRuleArgs.builder()
///                         .description("Block traffic based on source IPs and ports")
///                         .destinationAddresses("*")
///                         .destinationPorts(
///                             "443-444",
///                             "8443")
///                         .name("L4-traffic")
///                         .protocols("TCP")
///                         .sourceAddresses(
///                             "192.168.1.1-192.168.1.12",
///                             "10.1.4.12-10.1.4.255")
///                         .build(),
///                     AzureFirewallNetworkRuleArgs.builder()
///                         .description("Block traffic based on source IPs and ports to amazon")
///                         .destinationFqdns("www.amazon.com")
///                         .destinationPorts(
///                             "443-444",
///                             "8443")
///                         .name("L4-traffic-with-FQDN")
///                         .protocols("TCP")
///                         .sourceAddresses("10.2.4.12-10.2.4.255")
///                         .build())
///                 .build())
///             .resourceGroupName("rg1")
///             .sku(AzureFirewallSkuArgs.builder()
///                 .name("AZFW_VNet")
///                 .tier("Standard")
///                 .build())
///             .tags(Map.of("key1", "value1"))
///             .threatIntelMode("Alert")
///             .zones()
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
/// const azureFirewall = new azure_native.network.AzureFirewall("azureFirewall", {
///     applicationRuleCollections: [{
///         action: {
///             type: azure_native.network.AzureFirewallRCActionType.Deny,
///         },
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/applicationRuleCollections/apprulecoll",
///         name: "apprulecoll",
///         priority: 110,
///         rules: [{
///             description: "Deny inbound rule",
///             name: "rule1",
///             protocols: [{
///                 port: 443,
///                 protocolType: azure_native.network.AzureFirewallApplicationRuleProtocolType.Https,
///             }],
///             sourceAddresses: [
///                 "216.58.216.164",
///                 "10.0.0.0/24",
///             ],
///             targetFqdns: ["www.test.com"],
///         }],
///     }],
///     azureFirewallName: "azurefirewall",
///     ipConfigurations: [{
///         name: "azureFirewallIpConfiguration",
///         publicIPAddress: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName",
///         },
///         subnet: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallSubnet",
///         },
///     }],
///     location: "West US",
///     natRuleCollections: [{
///         action: {
///             type: azure_native.network.AzureFirewallNatRCActionType.Dnat,
///         },
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/natRuleCollections/natrulecoll",
///         name: "natrulecoll",
///         priority: 112,
///         rules: [
///             {
///                 description: "D-NAT all outbound web traffic for inspection",
///                 destinationAddresses: ["1.2.3.4"],
///                 destinationPorts: ["443"],
///                 name: "DNAT-HTTPS-traffic",
///                 protocols: [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 sourceAddresses: ["*"],
///                 translatedAddress: "1.2.3.5",
///                 translatedPort: "8443",
///             },
///             {
///                 description: "D-NAT all inbound web traffic for inspection",
///                 destinationAddresses: ["1.2.3.4"],
///                 destinationPorts: ["80"],
///                 name: "DNAT-HTTP-traffic-With-FQDN",
///                 protocols: [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 sourceAddresses: ["*"],
///                 translatedFqdn: "internalhttpserver",
///                 translatedPort: "880",
///             },
///         ],
///     }],
///     networkRuleCollections: [{
///         action: {
///             type: azure_native.network.AzureFirewallRCActionType.Deny,
///         },
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/networkRuleCollections/netrulecoll",
///         name: "netrulecoll",
///         priority: 112,
///         rules: [
///             {
///                 description: "Block traffic based on source IPs and ports",
///                 destinationAddresses: ["*"],
///                 destinationPorts: [
///                     "443-444",
///                     "8443",
///                 ],
///                 name: "L4-traffic",
///                 protocols: [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 sourceAddresses: [
///                     "192.168.1.1-192.168.1.12",
///                     "10.1.4.12-10.1.4.255",
///                 ],
///             },
///             {
///                 description: "Block traffic based on source IPs and ports to amazon",
///                 destinationFqdns: ["www.amazon.com"],
///                 destinationPorts: [
///                     "443-444",
///                     "8443",
///                 ],
///                 name: "L4-traffic-with-FQDN",
///                 protocols: [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 sourceAddresses: ["10.2.4.12-10.2.4.255"],
///             },
///         ],
///     }],
///     resourceGroupName: "rg1",
///     sku: {
///         name: azure_native.network.AzureFirewallSkuName.AZFW_VNet,
///         tier: azure_native.network.AzureFirewallSkuTier.Standard,
///     },
///     tags: {
///         key1: "value1",
///     },
///     threatIntelMode: azure_native.network.AzureFirewallThreatIntelMode.Alert,
///     zones: [],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// azure_firewall = azure_native.network.AzureFirewall("azureFirewall",
///     application_rule_collections=[{
///         "action": {
///             "type": azure_native.network.AzureFirewallRCActionType.DENY,
///         },
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/applicationRuleCollections/apprulecoll",
///         "name": "apprulecoll",
///         "priority": 110,
///         "rules": [{
///             "description": "Deny inbound rule",
///             "name": "rule1",
///             "protocols": [{
///                 "port": 443,
///                 "protocol_type": azure_native.network.AzureFirewallApplicationRuleProtocolType.HTTPS,
///             }],
///             "source_addresses": [
///                 "216.58.216.164",
///                 "10.0.0.0/24",
///             ],
///             "target_fqdns": ["www.test.com"],
///         }],
///     }],
///     azure_firewall_name="azurefirewall",
///     ip_configurations=[{
///         "name": "azureFirewallIpConfiguration",
///         "public_ip_address": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName",
///         },
///         "subnet": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallSubnet",
///         },
///     }],
///     location="West US",
///     nat_rule_collections=[{
///         "action": {
///             "type": azure_native.network.AzureFirewallNatRCActionType.DNAT,
///         },
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/natRuleCollections/natrulecoll",
///         "name": "natrulecoll",
///         "priority": 112,
///         "rules": [
///             {
///                 "description": "D-NAT all outbound web traffic for inspection",
///                 "destination_addresses": ["1.2.3.4"],
///                 "destination_ports": ["443"],
///                 "name": "DNAT-HTTPS-traffic",
///                 "protocols": [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 "source_addresses": ["*"],
///                 "translated_address": "1.2.3.5",
///                 "translated_port": "8443",
///             },
///             {
///                 "description": "D-NAT all inbound web traffic for inspection",
///                 "destination_addresses": ["1.2.3.4"],
///                 "destination_ports": ["80"],
///                 "name": "DNAT-HTTP-traffic-With-FQDN",
///                 "protocols": [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 "source_addresses": ["*"],
///                 "translated_fqdn": "internalhttpserver",
///                 "translated_port": "880",
///             },
///         ],
///     }],
///     network_rule_collections=[{
///         "action": {
///             "type": azure_native.network.AzureFirewallRCActionType.DENY,
///         },
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/networkRuleCollections/netrulecoll",
///         "name": "netrulecoll",
///         "priority": 112,
///         "rules": [
///             {
///                 "description": "Block traffic based on source IPs and ports",
///                 "destination_addresses": ["*"],
///                 "destination_ports": [
///                     "443-444",
///                     "8443",
///                 ],
///                 "name": "L4-traffic",
///                 "protocols": [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 "source_addresses": [
///                     "192.168.1.1-192.168.1.12",
///                     "10.1.4.12-10.1.4.255",
///                 ],
///             },
///             {
///                 "description": "Block traffic based on source IPs and ports to amazon",
///                 "destination_fqdns": ["www.amazon.com"],
///                 "destination_ports": [
///                     "443-444",
///                     "8443",
///                 ],
///                 "name": "L4-traffic-with-FQDN",
///                 "protocols": [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 "source_addresses": ["10.2.4.12-10.2.4.255"],
///             },
///         ],
///     }],
///     resource_group_name="rg1",
///     sku={
///         "name": azure_native.network.AzureFirewallSkuName.AZF_W_V_NET,
///         "tier": azure_native.network.AzureFirewallSkuTier.STANDARD,
///     },
///     tags={
///         "key1": "value1",
///     },
///     threat_intel_mode=azure_native.network.AzureFirewallThreatIntelMode.ALERT,
///     zones=[])
///
/// ```
///
/// ```yaml
/// resources:
///   azureFirewall:
///     type: azure-native:network:AzureFirewall
///     properties:
///       applicationRuleCollections:
///         - action:
///             type: Deny
///           id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/applicationRuleCollections/apprulecoll
///           name: apprulecoll
///           priority: 110
///           rules:
///             - description: Deny inbound rule
///               name: rule1
///               protocols:
///                 - port: 443
///                   protocolType: Https
///               sourceAddresses:
///                 - 216.58.216.164
///                 - 10.0.0.0/24
///               targetFqdns:
///                 - www.test.com
///       azureFirewallName: azurefirewall
///       ipConfigurations:
///         - name: azureFirewallIpConfiguration
///           publicIPAddress:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName
///           subnet:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallSubnet
///       location: West US
///       natRuleCollections:
///         - action:
///             type: Dnat
///           id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/natRuleCollections/natrulecoll
///           name: natrulecoll
///           priority: 112
///           rules:
///             - description: D-NAT all outbound web traffic for inspection
///               destinationAddresses:
///                 - 1.2.3.4
///               destinationPorts:
///                 - '443'
///               name: DNAT-HTTPS-traffic
///               protocols:
///                 - TCP
///               sourceAddresses:
///                 - '*'
///               translatedAddress: 1.2.3.5
///               translatedPort: '8443'
///             - description: D-NAT all inbound web traffic for inspection
///               destinationAddresses:
///                 - 1.2.3.4
///               destinationPorts:
///                 - '80'
///               name: DNAT-HTTP-traffic-With-FQDN
///               protocols:
///                 - TCP
///               sourceAddresses:
///                 - '*'
///               translatedFqdn: internalhttpserver
///               translatedPort: '880'
///       networkRuleCollections:
///         - action:
///             type: Deny
///           id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/networkRuleCollections/netrulecoll
///           name: netrulecoll
///           priority: 112
///           rules:
///             - description: Block traffic based on source IPs and ports
///               destinationAddresses:
///                 - '*'
///               destinationPorts:
///                 - 443-444
///                 - '8443'
///               name: L4-traffic
///               protocols:
///                 - TCP
///               sourceAddresses:
///                 - 192.168.1.1-192.168.1.12
///                 - 10.1.4.12-10.1.4.255
///             - description: Block traffic based on source IPs and ports to amazon
///               destinationFqdns:
///                 - www.amazon.com
///               destinationPorts:
///                 - 443-444
///                 - '8443'
///               name: L4-traffic-with-FQDN
///               protocols:
///                 - TCP
///               sourceAddresses:
///                 - 10.2.4.12-10.2.4.255
///       resourceGroupName: rg1
///       sku:
///         name: AZFW_VNet
///         tier: Standard
///       tags:
///         key1: value1
///       threatIntelMode: Alert
///       zones: []
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Azure Firewall With Zones
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var azureFirewall = new AzureNative.Network.AzureFirewall("azureFirewall", new()
///     {
///         ApplicationRuleCollections = new[]
///         {
///             new AzureNative.Network.Inputs.AzureFirewallApplicationRuleCollectionArgs
///             {
///                 Action = new AzureNative.Network.Inputs.AzureFirewallRCActionArgs
///                 {
///                     Type = AzureNative.Network.AzureFirewallRCActionType.Deny,
///                 },
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/applicationRuleCollections/apprulecoll",
///                 Name = "apprulecoll",
///                 Priority = 110,
///                 Rules = new[]
///                 {
///                     new AzureNative.Network.Inputs.AzureFirewallApplicationRuleArgs
///                     {
///                         Description = "Deny inbound rule",
///                         Name = "rule1",
///                         Protocols = new[]
///                         {
///                             new AzureNative.Network.Inputs.AzureFirewallApplicationRuleProtocolArgs
///                             {
///                                 Port = 443,
///                                 ProtocolType = AzureNative.Network.AzureFirewallApplicationRuleProtocolType.Https,
///                             },
///                         },
///                         SourceAddresses = new[]
///                         {
///                             "216.58.216.164",
///                             "10.0.0.0/24",
///                         },
///                         TargetFqdns = new[]
///                         {
///                             "www.test.com",
///                         },
///                     },
///                 },
///             },
///         },
///         AzureFirewallName = "azurefirewall",
///         IpConfigurations = new[]
///         {
///             new AzureNative.Network.Inputs.AzureFirewallIPConfigurationArgs
///             {
///                 Name = "azureFirewallIpConfiguration",
///                 PublicIPAddress = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName",
///                 },
///                 Subnet = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallSubnet",
///                 },
///             },
///         },
///         Location = "West US 2",
///         NatRuleCollections = new[]
///         {
///             new AzureNative.Network.Inputs.AzureFirewallNatRuleCollectionArgs
///             {
///                 Action = new AzureNative.Network.Inputs.AzureFirewallNatRCActionArgs
///                 {
///                     Type = AzureNative.Network.AzureFirewallNatRCActionType.Dnat,
///                 },
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/natRuleCollections/natrulecoll",
///                 Name = "natrulecoll",
///                 Priority = 112,
///                 Rules = new[]
///                 {
///                     new AzureNative.Network.Inputs.AzureFirewallNatRuleArgs
///                     {
///                         Description = "D-NAT all outbound web traffic for inspection",
///                         DestinationAddresses = new[]
///                         {
///                             "1.2.3.4",
///                         },
///                         DestinationPorts = new[]
///                         {
///                             "443",
///                         },
///                         Name = "DNAT-HTTPS-traffic",
///                         Protocols = new[]
///                         {
///                             AzureNative.Network.AzureFirewallNetworkRuleProtocol.TCP,
///                         },
///                         SourceAddresses = new[]
///                         {
///                             "*",
///                         },
///                         TranslatedAddress = "1.2.3.5",
///                         TranslatedPort = "8443",
///                     },
///                     new AzureNative.Network.Inputs.AzureFirewallNatRuleArgs
///                     {
///                         Description = "D-NAT all inbound web traffic for inspection",
///                         DestinationAddresses = new[]
///                         {
///                             "1.2.3.4",
///                         },
///                         DestinationPorts = new[]
///                         {
///                             "80",
///                         },
///                         Name = "DNAT-HTTP-traffic-With-FQDN",
///                         Protocols = new[]
///                         {
///                             AzureNative.Network.AzureFirewallNetworkRuleProtocol.TCP,
///                         },
///                         SourceAddresses = new[]
///                         {
///                             "*",
///                         },
///                         TranslatedFqdn = "internalhttpserver",
///                         TranslatedPort = "880",
///                     },
///                 },
///             },
///         },
///         NetworkRuleCollections = new[]
///         {
///             new AzureNative.Network.Inputs.AzureFirewallNetworkRuleCollectionArgs
///             {
///                 Action = new AzureNative.Network.Inputs.AzureFirewallRCActionArgs
///                 {
///                     Type = AzureNative.Network.AzureFirewallRCActionType.Deny,
///                 },
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/networkRuleCollections/netrulecoll",
///                 Name = "netrulecoll",
///                 Priority = 112,
///                 Rules = new[]
///                 {
///                     new AzureNative.Network.Inputs.AzureFirewallNetworkRuleArgs
///                     {
///                         Description = "Block traffic based on source IPs and ports",
///                         DestinationAddresses = new[]
///                         {
///                             "*",
///                         },
///                         DestinationPorts = new[]
///                         {
///                             "443-444",
///                             "8443",
///                         },
///                         Name = "L4-traffic",
///                         Protocols = new[]
///                         {
///                             AzureNative.Network.AzureFirewallNetworkRuleProtocol.TCP,
///                         },
///                         SourceAddresses = new[]
///                         {
///                             "192.168.1.1-192.168.1.12",
///                             "10.1.4.12-10.1.4.255",
///                         },
///                     },
///                     new AzureNative.Network.Inputs.AzureFirewallNetworkRuleArgs
///                     {
///                         Description = "Block traffic based on source IPs and ports to amazon",
///                         DestinationFqdns = new[]
///                         {
///                             "www.amazon.com",
///                         },
///                         DestinationPorts = new[]
///                         {
///                             "443-444",
///                             "8443",
///                         },
///                         Name = "L4-traffic-with-FQDN",
///                         Protocols = new[]
///                         {
///                             AzureNative.Network.AzureFirewallNetworkRuleProtocol.TCP,
///                         },
///                         SourceAddresses = new[]
///                         {
///                             "10.2.4.12-10.2.4.255",
///                         },
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "rg1",
///         Sku = new AzureNative.Network.Inputs.AzureFirewallSkuArgs
///         {
///             Name = AzureNative.Network.AzureFirewallSkuName.AZFW_VNet,
///             Tier = AzureNative.Network.AzureFirewallSkuTier.Standard,
///         },
///         Tags =
///         {
///             { "key1", "value1" },
///         },
///         ThreatIntelMode = AzureNative.Network.AzureFirewallThreatIntelMode.Alert,
///         Zones = new[]
///         {
///             "1",
///             "2",
///             "3",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewAzureFirewall(ctx, "azureFirewall", &network.AzureFirewallArgs{
/// 			ApplicationRuleCollections: network.AzureFirewallApplicationRuleCollectionArray{
/// 				&network.AzureFirewallApplicationRuleCollectionArgs{
/// 					Action: &network.AzureFirewallRCActionArgs{
/// 						Type: pulumi.String(network.AzureFirewallRCActionTypeDeny),
/// 					},
/// 					Id:       pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/applicationRuleCollections/apprulecoll"),
/// 					Name:     pulumi.String("apprulecoll"),
/// 					Priority: pulumi.Int(110),
/// 					Rules: network.AzureFirewallApplicationRuleArray{
/// 						&network.AzureFirewallApplicationRuleArgs{
/// 							Description: pulumi.String("Deny inbound rule"),
/// 							Name:        pulumi.String("rule1"),
/// 							Protocols: network.AzureFirewallApplicationRuleProtocolArray{
/// 								&network.AzureFirewallApplicationRuleProtocolArgs{
/// 									Port:         pulumi.Int(443),
/// 									ProtocolType: pulumi.String(network.AzureFirewallApplicationRuleProtocolTypeHttps),
/// 								},
/// 							},
/// 							SourceAddresses: pulumi.StringArray{
/// 								pulumi.String("216.58.216.164"),
/// 								pulumi.String("10.0.0.0/24"),
/// 							},
/// 							TargetFqdns: pulumi.StringArray{
/// 								pulumi.String("www.test.com"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			AzureFirewallName: pulumi.String("azurefirewall"),
/// 			IpConfigurations: network.AzureFirewallIPConfigurationArray{
/// 				&network.AzureFirewallIPConfigurationArgs{
/// 					Name: pulumi.String("azureFirewallIpConfiguration"),
/// 					PublicIPAddress: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName"),
/// 					},
/// 					Subnet: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallSubnet"),
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("West US 2"),
/// 			NatRuleCollections: network.AzureFirewallNatRuleCollectionArray{
/// 				&network.AzureFirewallNatRuleCollectionArgs{
/// 					Action: &network.AzureFirewallNatRCActionArgs{
/// 						Type: pulumi.String(network.AzureFirewallNatRCActionTypeDnat),
/// 					},
/// 					Id:       pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/natRuleCollections/natrulecoll"),
/// 					Name:     pulumi.String("natrulecoll"),
/// 					Priority: pulumi.Int(112),
/// 					Rules: network.AzureFirewallNatRuleArray{
/// 						&network.AzureFirewallNatRuleArgs{
/// 							Description: pulumi.String("D-NAT all outbound web traffic for inspection"),
/// 							DestinationAddresses: pulumi.StringArray{
/// 								pulumi.String("1.2.3.4"),
/// 							},
/// 							DestinationPorts: pulumi.StringArray{
/// 								pulumi.String("443"),
/// 							},
/// 							Name: pulumi.String("DNAT-HTTPS-traffic"),
/// 							Protocols: pulumi.StringArray{
/// 								pulumi.String(network.AzureFirewallNetworkRuleProtocolTCP),
/// 							},
/// 							SourceAddresses: pulumi.StringArray{
/// 								pulumi.String("*"),
/// 							},
/// 							TranslatedAddress: pulumi.String("1.2.3.5"),
/// 							TranslatedPort:    pulumi.String("8443"),
/// 						},
/// 						&network.AzureFirewallNatRuleArgs{
/// 							Description: pulumi.String("D-NAT all inbound web traffic for inspection"),
/// 							DestinationAddresses: pulumi.StringArray{
/// 								pulumi.String("1.2.3.4"),
/// 							},
/// 							DestinationPorts: pulumi.StringArray{
/// 								pulumi.String("80"),
/// 							},
/// 							Name: pulumi.String("DNAT-HTTP-traffic-With-FQDN"),
/// 							Protocols: pulumi.StringArray{
/// 								pulumi.String(network.AzureFirewallNetworkRuleProtocolTCP),
/// 							},
/// 							SourceAddresses: pulumi.StringArray{
/// 								pulumi.String("*"),
/// 							},
/// 							TranslatedFqdn: pulumi.String("internalhttpserver"),
/// 							TranslatedPort: pulumi.String("880"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			NetworkRuleCollections: network.AzureFirewallNetworkRuleCollectionArray{
/// 				&network.AzureFirewallNetworkRuleCollectionArgs{
/// 					Action: &network.AzureFirewallRCActionArgs{
/// 						Type: pulumi.String(network.AzureFirewallRCActionTypeDeny),
/// 					},
/// 					Id:       pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/networkRuleCollections/netrulecoll"),
/// 					Name:     pulumi.String("netrulecoll"),
/// 					Priority: pulumi.Int(112),
/// 					Rules: network.AzureFirewallNetworkRuleArray{
/// 						&network.AzureFirewallNetworkRuleArgs{
/// 							Description: pulumi.String("Block traffic based on source IPs and ports"),
/// 							DestinationAddresses: pulumi.StringArray{
/// 								pulumi.String("*"),
/// 							},
/// 							DestinationPorts: pulumi.StringArray{
/// 								pulumi.String("443-444"),
/// 								pulumi.String("8443"),
/// 							},
/// 							Name: pulumi.String("L4-traffic"),
/// 							Protocols: pulumi.StringArray{
/// 								pulumi.String(network.AzureFirewallNetworkRuleProtocolTCP),
/// 							},
/// 							SourceAddresses: pulumi.StringArray{
/// 								pulumi.String("192.168.1.1-192.168.1.12"),
/// 								pulumi.String("10.1.4.12-10.1.4.255"),
/// 							},
/// 						},
/// 						&network.AzureFirewallNetworkRuleArgs{
/// 							Description: pulumi.String("Block traffic based on source IPs and ports to amazon"),
/// 							DestinationFqdns: pulumi.StringArray{
/// 								pulumi.String("www.amazon.com"),
/// 							},
/// 							DestinationPorts: pulumi.StringArray{
/// 								pulumi.String("443-444"),
/// 								pulumi.String("8443"),
/// 							},
/// 							Name: pulumi.String("L4-traffic-with-FQDN"),
/// 							Protocols: pulumi.StringArray{
/// 								pulumi.String(network.AzureFirewallNetworkRuleProtocolTCP),
/// 							},
/// 							SourceAddresses: pulumi.StringArray{
/// 								pulumi.String("10.2.4.12-10.2.4.255"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Sku: &network.AzureFirewallSkuArgs{
/// 				Name: pulumi.String(network.AzureFirewallSkuName_AZFW_VNet),
/// 				Tier: pulumi.String(network.AzureFirewallSkuTierStandard),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			ThreatIntelMode: pulumi.String(network.AzureFirewallThreatIntelModeAlert),
/// 			Zones: pulumi.StringArray{
/// 				pulumi.String("1"),
/// 				pulumi.String("2"),
/// 				pulumi.String("3"),
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
/// import com.pulumi.azurenative.network.AzureFirewall;
/// import com.pulumi.azurenative.network.AzureFirewallArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallApplicationRuleCollectionArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallRCActionArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallIPConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallNatRuleCollectionArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallNatRCActionArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallNetworkRuleCollectionArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallSkuArgs;
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
///         var azureFirewall = new AzureFirewall("azureFirewall", AzureFirewallArgs.builder()
///             .applicationRuleCollections(AzureFirewallApplicationRuleCollectionArgs.builder()
///                 .action(AzureFirewallRCActionArgs.builder()
///                     .type("Deny")
///                     .build())
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/applicationRuleCollections/apprulecoll")
///                 .name("apprulecoll")
///                 .priority(110)
///                 .rules(AzureFirewallApplicationRuleArgs.builder()
///                     .description("Deny inbound rule")
///                     .name("rule1")
///                     .protocols(AzureFirewallApplicationRuleProtocolArgs.builder()
///                         .port(443)
///                         .protocolType("Https")
///                         .build())
///                     .sourceAddresses(
///                         "216.58.216.164",
///                         "10.0.0.0/24")
///                     .targetFqdns("www.test.com")
///                     .build())
///                 .build())
///             .azureFirewallName("azurefirewall")
///             .ipConfigurations(AzureFirewallIPConfigurationArgs.builder()
///                 .name("azureFirewallIpConfiguration")
///                 .publicIPAddress(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName")
///                     .build())
///                 .subnet(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallSubnet")
///                     .build())
///                 .build())
///             .location("West US 2")
///             .natRuleCollections(AzureFirewallNatRuleCollectionArgs.builder()
///                 .action(AzureFirewallNatRCActionArgs.builder()
///                     .type("Dnat")
///                     .build())
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/natRuleCollections/natrulecoll")
///                 .name("natrulecoll")
///                 .priority(112)
///                 .rules(
///                     AzureFirewallNatRuleArgs.builder()
///                         .description("D-NAT all outbound web traffic for inspection")
///                         .destinationAddresses("1.2.3.4")
///                         .destinationPorts("443")
///                         .name("DNAT-HTTPS-traffic")
///                         .protocols("TCP")
///                         .sourceAddresses("*")
///                         .translatedAddress("1.2.3.5")
///                         .translatedPort("8443")
///                         .build(),
///                     AzureFirewallNatRuleArgs.builder()
///                         .description("D-NAT all inbound web traffic for inspection")
///                         .destinationAddresses("1.2.3.4")
///                         .destinationPorts("80")
///                         .name("DNAT-HTTP-traffic-With-FQDN")
///                         .protocols("TCP")
///                         .sourceAddresses("*")
///                         .translatedFqdn("internalhttpserver")
///                         .translatedPort("880")
///                         .build())
///                 .build())
///             .networkRuleCollections(AzureFirewallNetworkRuleCollectionArgs.builder()
///                 .action(AzureFirewallRCActionArgs.builder()
///                     .type("Deny")
///                     .build())
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/networkRuleCollections/netrulecoll")
///                 .name("netrulecoll")
///                 .priority(112)
///                 .rules(
///                     AzureFirewallNetworkRuleArgs.builder()
///                         .description("Block traffic based on source IPs and ports")
///                         .destinationAddresses("*")
///                         .destinationPorts(
///                             "443-444",
///                             "8443")
///                         .name("L4-traffic")
///                         .protocols("TCP")
///                         .sourceAddresses(
///                             "192.168.1.1-192.168.1.12",
///                             "10.1.4.12-10.1.4.255")
///                         .build(),
///                     AzureFirewallNetworkRuleArgs.builder()
///                         .description("Block traffic based on source IPs and ports to amazon")
///                         .destinationFqdns("www.amazon.com")
///                         .destinationPorts(
///                             "443-444",
///                             "8443")
///                         .name("L4-traffic-with-FQDN")
///                         .protocols("TCP")
///                         .sourceAddresses("10.2.4.12-10.2.4.255")
///                         .build())
///                 .build())
///             .resourceGroupName("rg1")
///             .sku(AzureFirewallSkuArgs.builder()
///                 .name("AZFW_VNet")
///                 .tier("Standard")
///                 .build())
///             .tags(Map.of("key1", "value1"))
///             .threatIntelMode("Alert")
///             .zones(
///                 "1",
///                 "2",
///                 "3")
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
/// const azureFirewall = new azure_native.network.AzureFirewall("azureFirewall", {
///     applicationRuleCollections: [{
///         action: {
///             type: azure_native.network.AzureFirewallRCActionType.Deny,
///         },
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/applicationRuleCollections/apprulecoll",
///         name: "apprulecoll",
///         priority: 110,
///         rules: [{
///             description: "Deny inbound rule",
///             name: "rule1",
///             protocols: [{
///                 port: 443,
///                 protocolType: azure_native.network.AzureFirewallApplicationRuleProtocolType.Https,
///             }],
///             sourceAddresses: [
///                 "216.58.216.164",
///                 "10.0.0.0/24",
///             ],
///             targetFqdns: ["www.test.com"],
///         }],
///     }],
///     azureFirewallName: "azurefirewall",
///     ipConfigurations: [{
///         name: "azureFirewallIpConfiguration",
///         publicIPAddress: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName",
///         },
///         subnet: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallSubnet",
///         },
///     }],
///     location: "West US 2",
///     natRuleCollections: [{
///         action: {
///             type: azure_native.network.AzureFirewallNatRCActionType.Dnat,
///         },
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/natRuleCollections/natrulecoll",
///         name: "natrulecoll",
///         priority: 112,
///         rules: [
///             {
///                 description: "D-NAT all outbound web traffic for inspection",
///                 destinationAddresses: ["1.2.3.4"],
///                 destinationPorts: ["443"],
///                 name: "DNAT-HTTPS-traffic",
///                 protocols: [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 sourceAddresses: ["*"],
///                 translatedAddress: "1.2.3.5",
///                 translatedPort: "8443",
///             },
///             {
///                 description: "D-NAT all inbound web traffic for inspection",
///                 destinationAddresses: ["1.2.3.4"],
///                 destinationPorts: ["80"],
///                 name: "DNAT-HTTP-traffic-With-FQDN",
///                 protocols: [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 sourceAddresses: ["*"],
///                 translatedFqdn: "internalhttpserver",
///                 translatedPort: "880",
///             },
///         ],
///     }],
///     networkRuleCollections: [{
///         action: {
///             type: azure_native.network.AzureFirewallRCActionType.Deny,
///         },
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/networkRuleCollections/netrulecoll",
///         name: "netrulecoll",
///         priority: 112,
///         rules: [
///             {
///                 description: "Block traffic based on source IPs and ports",
///                 destinationAddresses: ["*"],
///                 destinationPorts: [
///                     "443-444",
///                     "8443",
///                 ],
///                 name: "L4-traffic",
///                 protocols: [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 sourceAddresses: [
///                     "192.168.1.1-192.168.1.12",
///                     "10.1.4.12-10.1.4.255",
///                 ],
///             },
///             {
///                 description: "Block traffic based on source IPs and ports to amazon",
///                 destinationFqdns: ["www.amazon.com"],
///                 destinationPorts: [
///                     "443-444",
///                     "8443",
///                 ],
///                 name: "L4-traffic-with-FQDN",
///                 protocols: [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 sourceAddresses: ["10.2.4.12-10.2.4.255"],
///             },
///         ],
///     }],
///     resourceGroupName: "rg1",
///     sku: {
///         name: azure_native.network.AzureFirewallSkuName.AZFW_VNet,
///         tier: azure_native.network.AzureFirewallSkuTier.Standard,
///     },
///     tags: {
///         key1: "value1",
///     },
///     threatIntelMode: azure_native.network.AzureFirewallThreatIntelMode.Alert,
///     zones: [
///         "1",
///         "2",
///         "3",
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// azure_firewall = azure_native.network.AzureFirewall("azureFirewall",
///     application_rule_collections=[{
///         "action": {
///             "type": azure_native.network.AzureFirewallRCActionType.DENY,
///         },
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/applicationRuleCollections/apprulecoll",
///         "name": "apprulecoll",
///         "priority": 110,
///         "rules": [{
///             "description": "Deny inbound rule",
///             "name": "rule1",
///             "protocols": [{
///                 "port": 443,
///                 "protocol_type": azure_native.network.AzureFirewallApplicationRuleProtocolType.HTTPS,
///             }],
///             "source_addresses": [
///                 "216.58.216.164",
///                 "10.0.0.0/24",
///             ],
///             "target_fqdns": ["www.test.com"],
///         }],
///     }],
///     azure_firewall_name="azurefirewall",
///     ip_configurations=[{
///         "name": "azureFirewallIpConfiguration",
///         "public_ip_address": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName",
///         },
///         "subnet": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallSubnet",
///         },
///     }],
///     location="West US 2",
///     nat_rule_collections=[{
///         "action": {
///             "type": azure_native.network.AzureFirewallNatRCActionType.DNAT,
///         },
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/natRuleCollections/natrulecoll",
///         "name": "natrulecoll",
///         "priority": 112,
///         "rules": [
///             {
///                 "description": "D-NAT all outbound web traffic for inspection",
///                 "destination_addresses": ["1.2.3.4"],
///                 "destination_ports": ["443"],
///                 "name": "DNAT-HTTPS-traffic",
///                 "protocols": [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 "source_addresses": ["*"],
///                 "translated_address": "1.2.3.5",
///                 "translated_port": "8443",
///             },
///             {
///                 "description": "D-NAT all inbound web traffic for inspection",
///                 "destination_addresses": ["1.2.3.4"],
///                 "destination_ports": ["80"],
///                 "name": "DNAT-HTTP-traffic-With-FQDN",
///                 "protocols": [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 "source_addresses": ["*"],
///                 "translated_fqdn": "internalhttpserver",
///                 "translated_port": "880",
///             },
///         ],
///     }],
///     network_rule_collections=[{
///         "action": {
///             "type": azure_native.network.AzureFirewallRCActionType.DENY,
///         },
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/networkRuleCollections/netrulecoll",
///         "name": "netrulecoll",
///         "priority": 112,
///         "rules": [
///             {
///                 "description": "Block traffic based on source IPs and ports",
///                 "destination_addresses": ["*"],
///                 "destination_ports": [
///                     "443-444",
///                     "8443",
///                 ],
///                 "name": "L4-traffic",
///                 "protocols": [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 "source_addresses": [
///                     "192.168.1.1-192.168.1.12",
///                     "10.1.4.12-10.1.4.255",
///                 ],
///             },
///             {
///                 "description": "Block traffic based on source IPs and ports to amazon",
///                 "destination_fqdns": ["www.amazon.com"],
///                 "destination_ports": [
///                     "443-444",
///                     "8443",
///                 ],
///                 "name": "L4-traffic-with-FQDN",
///                 "protocols": [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 "source_addresses": ["10.2.4.12-10.2.4.255"],
///             },
///         ],
///     }],
///     resource_group_name="rg1",
///     sku={
///         "name": azure_native.network.AzureFirewallSkuName.AZF_W_V_NET,
///         "tier": azure_native.network.AzureFirewallSkuTier.STANDARD,
///     },
///     tags={
///         "key1": "value1",
///     },
///     threat_intel_mode=azure_native.network.AzureFirewallThreatIntelMode.ALERT,
///     zones=[
///         "1",
///         "2",
///         "3",
///     ])
///
/// ```
///
/// ```yaml
/// resources:
///   azureFirewall:
///     type: azure-native:network:AzureFirewall
///     properties:
///       applicationRuleCollections:
///         - action:
///             type: Deny
///           id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/applicationRuleCollections/apprulecoll
///           name: apprulecoll
///           priority: 110
///           rules:
///             - description: Deny inbound rule
///               name: rule1
///               protocols:
///                 - port: 443
///                   protocolType: Https
///               sourceAddresses:
///                 - 216.58.216.164
///                 - 10.0.0.0/24
///               targetFqdns:
///                 - www.test.com
///       azureFirewallName: azurefirewall
///       ipConfigurations:
///         - name: azureFirewallIpConfiguration
///           publicIPAddress:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName
///           subnet:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallSubnet
///       location: West US 2
///       natRuleCollections:
///         - action:
///             type: Dnat
///           id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/natRuleCollections/natrulecoll
///           name: natrulecoll
///           priority: 112
///           rules:
///             - description: D-NAT all outbound web traffic for inspection
///               destinationAddresses:
///                 - 1.2.3.4
///               destinationPorts:
///                 - '443'
///               name: DNAT-HTTPS-traffic
///               protocols:
///                 - TCP
///               sourceAddresses:
///                 - '*'
///               translatedAddress: 1.2.3.5
///               translatedPort: '8443'
///             - description: D-NAT all inbound web traffic for inspection
///               destinationAddresses:
///                 - 1.2.3.4
///               destinationPorts:
///                 - '80'
///               name: DNAT-HTTP-traffic-With-FQDN
///               protocols:
///                 - TCP
///               sourceAddresses:
///                 - '*'
///               translatedFqdn: internalhttpserver
///               translatedPort: '880'
///       networkRuleCollections:
///         - action:
///             type: Deny
///           id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/networkRuleCollections/netrulecoll
///           name: netrulecoll
///           priority: 112
///           rules:
///             - description: Block traffic based on source IPs and ports
///               destinationAddresses:
///                 - '*'
///               destinationPorts:
///                 - 443-444
///                 - '8443'
///               name: L4-traffic
///               protocols:
///                 - TCP
///               sourceAddresses:
///                 - 192.168.1.1-192.168.1.12
///                 - 10.1.4.12-10.1.4.255
///             - description: Block traffic based on source IPs and ports to amazon
///               destinationFqdns:
///                 - www.amazon.com
///               destinationPorts:
///                 - 443-444
///                 - '8443'
///               name: L4-traffic-with-FQDN
///               protocols:
///                 - TCP
///               sourceAddresses:
///                 - 10.2.4.12-10.2.4.255
///       resourceGroupName: rg1
///       sku:
///         name: AZFW_VNet
///         tier: Standard
///       tags:
///         key1: value1
///       threatIntelMode: Alert
///       zones:
///         - '1'
///         - '2'
///         - '3'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Azure Firewall With management subnet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var azureFirewall = new AzureNative.Network.AzureFirewall("azureFirewall", new()
///     {
///         ApplicationRuleCollections = new[]
///         {
///             new AzureNative.Network.Inputs.AzureFirewallApplicationRuleCollectionArgs
///             {
///                 Action = new AzureNative.Network.Inputs.AzureFirewallRCActionArgs
///                 {
///                     Type = AzureNative.Network.AzureFirewallRCActionType.Deny,
///                 },
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/applicationRuleCollections/apprulecoll",
///                 Name = "apprulecoll",
///                 Priority = 110,
///                 Rules = new[]
///                 {
///                     new AzureNative.Network.Inputs.AzureFirewallApplicationRuleArgs
///                     {
///                         Description = "Deny inbound rule",
///                         Name = "rule1",
///                         Protocols = new[]
///                         {
///                             new AzureNative.Network.Inputs.AzureFirewallApplicationRuleProtocolArgs
///                             {
///                                 Port = 443,
///                                 ProtocolType = AzureNative.Network.AzureFirewallApplicationRuleProtocolType.Https,
///                             },
///                         },
///                         SourceAddresses = new[]
///                         {
///                             "216.58.216.164",
///                             "10.0.0.0/24",
///                         },
///                         TargetFqdns = new[]
///                         {
///                             "www.test.com",
///                         },
///                     },
///                 },
///             },
///         },
///         AzureFirewallName = "azurefirewall",
///         IpConfigurations = new[]
///         {
///             new AzureNative.Network.Inputs.AzureFirewallIPConfigurationArgs
///             {
///                 Name = "azureFirewallIpConfiguration",
///                 PublicIPAddress = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName",
///                 },
///                 Subnet = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallSubnet",
///                 },
///             },
///         },
///         Location = "West US",
///         ManagementIpConfiguration = new AzureNative.Network.Inputs.AzureFirewallIPConfigurationArgs
///         {
///             Name = "azureFirewallMgmtIpConfiguration",
///             PublicIPAddress = new AzureNative.Network.Inputs.SubResourceArgs
///             {
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/managementPipName",
///             },
///             Subnet = new AzureNative.Network.Inputs.SubResourceArgs
///             {
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallManagementSubnet",
///             },
///         },
///         NatRuleCollections = new[]
///         {
///             new AzureNative.Network.Inputs.AzureFirewallNatRuleCollectionArgs
///             {
///                 Action = new AzureNative.Network.Inputs.AzureFirewallNatRCActionArgs
///                 {
///                     Type = AzureNative.Network.AzureFirewallNatRCActionType.Dnat,
///                 },
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/natRuleCollections/natrulecoll",
///                 Name = "natrulecoll",
///                 Priority = 112,
///                 Rules = new[]
///                 {
///                     new AzureNative.Network.Inputs.AzureFirewallNatRuleArgs
///                     {
///                         Description = "D-NAT all outbound web traffic for inspection",
///                         DestinationAddresses = new[]
///                         {
///                             "1.2.3.4",
///                         },
///                         DestinationPorts = new[]
///                         {
///                             "443",
///                         },
///                         Name = "DNAT-HTTPS-traffic",
///                         Protocols = new[]
///                         {
///                             AzureNative.Network.AzureFirewallNetworkRuleProtocol.TCP,
///                         },
///                         SourceAddresses = new[]
///                         {
///                             "*",
///                         },
///                         TranslatedAddress = "1.2.3.5",
///                         TranslatedPort = "8443",
///                     },
///                     new AzureNative.Network.Inputs.AzureFirewallNatRuleArgs
///                     {
///                         Description = "D-NAT all inbound web traffic for inspection",
///                         DestinationAddresses = new[]
///                         {
///                             "1.2.3.4",
///                         },
///                         DestinationPorts = new[]
///                         {
///                             "80",
///                         },
///                         Name = "DNAT-HTTP-traffic-With-FQDN",
///                         Protocols = new[]
///                         {
///                             AzureNative.Network.AzureFirewallNetworkRuleProtocol.TCP,
///                         },
///                         SourceAddresses = new[]
///                         {
///                             "*",
///                         },
///                         TranslatedFqdn = "internalhttpserver",
///                         TranslatedPort = "880",
///                     },
///                 },
///             },
///         },
///         NetworkRuleCollections = new[]
///         {
///             new AzureNative.Network.Inputs.AzureFirewallNetworkRuleCollectionArgs
///             {
///                 Action = new AzureNative.Network.Inputs.AzureFirewallRCActionArgs
///                 {
///                     Type = AzureNative.Network.AzureFirewallRCActionType.Deny,
///                 },
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/networkRuleCollections/netrulecoll",
///                 Name = "netrulecoll",
///                 Priority = 112,
///                 Rules = new[]
///                 {
///                     new AzureNative.Network.Inputs.AzureFirewallNetworkRuleArgs
///                     {
///                         Description = "Block traffic based on source IPs and ports",
///                         DestinationAddresses = new[]
///                         {
///                             "*",
///                         },
///                         DestinationPorts = new[]
///                         {
///                             "443-444",
///                             "8443",
///                         },
///                         Name = "L4-traffic",
///                         Protocols = new[]
///                         {
///                             AzureNative.Network.AzureFirewallNetworkRuleProtocol.TCP,
///                         },
///                         SourceAddresses = new[]
///                         {
///                             "192.168.1.1-192.168.1.12",
///                             "10.1.4.12-10.1.4.255",
///                         },
///                     },
///                     new AzureNative.Network.Inputs.AzureFirewallNetworkRuleArgs
///                     {
///                         Description = "Block traffic based on source IPs and ports to amazon",
///                         DestinationFqdns = new[]
///                         {
///                             "www.amazon.com",
///                         },
///                         DestinationPorts = new[]
///                         {
///                             "443-444",
///                             "8443",
///                         },
///                         Name = "L4-traffic-with-FQDN",
///                         Protocols = new[]
///                         {
///                             AzureNative.Network.AzureFirewallNetworkRuleProtocol.TCP,
///                         },
///                         SourceAddresses = new[]
///                         {
///                             "10.2.4.12-10.2.4.255",
///                         },
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "rg1",
///         Sku = new AzureNative.Network.Inputs.AzureFirewallSkuArgs
///         {
///             Name = AzureNative.Network.AzureFirewallSkuName.AZFW_VNet,
///             Tier = AzureNative.Network.AzureFirewallSkuTier.Standard,
///         },
///         Tags =
///         {
///             { "key1", "value1" },
///         },
///         ThreatIntelMode = AzureNative.Network.AzureFirewallThreatIntelMode.Alert,
///         Zones = new[] {},
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewAzureFirewall(ctx, "azureFirewall", &network.AzureFirewallArgs{
/// 			ApplicationRuleCollections: network.AzureFirewallApplicationRuleCollectionArray{
/// 				&network.AzureFirewallApplicationRuleCollectionArgs{
/// 					Action: &network.AzureFirewallRCActionArgs{
/// 						Type: pulumi.String(network.AzureFirewallRCActionTypeDeny),
/// 					},
/// 					Id:       pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/applicationRuleCollections/apprulecoll"),
/// 					Name:     pulumi.String("apprulecoll"),
/// 					Priority: pulumi.Int(110),
/// 					Rules: network.AzureFirewallApplicationRuleArray{
/// 						&network.AzureFirewallApplicationRuleArgs{
/// 							Description: pulumi.String("Deny inbound rule"),
/// 							Name:        pulumi.String("rule1"),
/// 							Protocols: network.AzureFirewallApplicationRuleProtocolArray{
/// 								&network.AzureFirewallApplicationRuleProtocolArgs{
/// 									Port:         pulumi.Int(443),
/// 									ProtocolType: pulumi.String(network.AzureFirewallApplicationRuleProtocolTypeHttps),
/// 								},
/// 							},
/// 							SourceAddresses: pulumi.StringArray{
/// 								pulumi.String("216.58.216.164"),
/// 								pulumi.String("10.0.0.0/24"),
/// 							},
/// 							TargetFqdns: pulumi.StringArray{
/// 								pulumi.String("www.test.com"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			AzureFirewallName: pulumi.String("azurefirewall"),
/// 			IpConfigurations: network.AzureFirewallIPConfigurationArray{
/// 				&network.AzureFirewallIPConfigurationArgs{
/// 					Name: pulumi.String("azureFirewallIpConfiguration"),
/// 					PublicIPAddress: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName"),
/// 					},
/// 					Subnet: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallSubnet"),
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("West US"),
/// 			ManagementIpConfiguration: &network.AzureFirewallIPConfigurationArgs{
/// 				Name: pulumi.String("azureFirewallMgmtIpConfiguration"),
/// 				PublicIPAddress: &network.SubResourceArgs{
/// 					Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/managementPipName"),
/// 				},
/// 				Subnet: &network.SubResourceArgs{
/// 					Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallManagementSubnet"),
/// 				},
/// 			},
/// 			NatRuleCollections: network.AzureFirewallNatRuleCollectionArray{
/// 				&network.AzureFirewallNatRuleCollectionArgs{
/// 					Action: &network.AzureFirewallNatRCActionArgs{
/// 						Type: pulumi.String(network.AzureFirewallNatRCActionTypeDnat),
/// 					},
/// 					Id:       pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/natRuleCollections/natrulecoll"),
/// 					Name:     pulumi.String("natrulecoll"),
/// 					Priority: pulumi.Int(112),
/// 					Rules: network.AzureFirewallNatRuleArray{
/// 						&network.AzureFirewallNatRuleArgs{
/// 							Description: pulumi.String("D-NAT all outbound web traffic for inspection"),
/// 							DestinationAddresses: pulumi.StringArray{
/// 								pulumi.String("1.2.3.4"),
/// 							},
/// 							DestinationPorts: pulumi.StringArray{
/// 								pulumi.String("443"),
/// 							},
/// 							Name: pulumi.String("DNAT-HTTPS-traffic"),
/// 							Protocols: pulumi.StringArray{
/// 								pulumi.String(network.AzureFirewallNetworkRuleProtocolTCP),
/// 							},
/// 							SourceAddresses: pulumi.StringArray{
/// 								pulumi.String("*"),
/// 							},
/// 							TranslatedAddress: pulumi.String("1.2.3.5"),
/// 							TranslatedPort:    pulumi.String("8443"),
/// 						},
/// 						&network.AzureFirewallNatRuleArgs{
/// 							Description: pulumi.String("D-NAT all inbound web traffic for inspection"),
/// 							DestinationAddresses: pulumi.StringArray{
/// 								pulumi.String("1.2.3.4"),
/// 							},
/// 							DestinationPorts: pulumi.StringArray{
/// 								pulumi.String("80"),
/// 							},
/// 							Name: pulumi.String("DNAT-HTTP-traffic-With-FQDN"),
/// 							Protocols: pulumi.StringArray{
/// 								pulumi.String(network.AzureFirewallNetworkRuleProtocolTCP),
/// 							},
/// 							SourceAddresses: pulumi.StringArray{
/// 								pulumi.String("*"),
/// 							},
/// 							TranslatedFqdn: pulumi.String("internalhttpserver"),
/// 							TranslatedPort: pulumi.String("880"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			NetworkRuleCollections: network.AzureFirewallNetworkRuleCollectionArray{
/// 				&network.AzureFirewallNetworkRuleCollectionArgs{
/// 					Action: &network.AzureFirewallRCActionArgs{
/// 						Type: pulumi.String(network.AzureFirewallRCActionTypeDeny),
/// 					},
/// 					Id:       pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/networkRuleCollections/netrulecoll"),
/// 					Name:     pulumi.String("netrulecoll"),
/// 					Priority: pulumi.Int(112),
/// 					Rules: network.AzureFirewallNetworkRuleArray{
/// 						&network.AzureFirewallNetworkRuleArgs{
/// 							Description: pulumi.String("Block traffic based on source IPs and ports"),
/// 							DestinationAddresses: pulumi.StringArray{
/// 								pulumi.String("*"),
/// 							},
/// 							DestinationPorts: pulumi.StringArray{
/// 								pulumi.String("443-444"),
/// 								pulumi.String("8443"),
/// 							},
/// 							Name: pulumi.String("L4-traffic"),
/// 							Protocols: pulumi.StringArray{
/// 								pulumi.String(network.AzureFirewallNetworkRuleProtocolTCP),
/// 							},
/// 							SourceAddresses: pulumi.StringArray{
/// 								pulumi.String("192.168.1.1-192.168.1.12"),
/// 								pulumi.String("10.1.4.12-10.1.4.255"),
/// 							},
/// 						},
/// 						&network.AzureFirewallNetworkRuleArgs{
/// 							Description: pulumi.String("Block traffic based on source IPs and ports to amazon"),
/// 							DestinationFqdns: pulumi.StringArray{
/// 								pulumi.String("www.amazon.com"),
/// 							},
/// 							DestinationPorts: pulumi.StringArray{
/// 								pulumi.String("443-444"),
/// 								pulumi.String("8443"),
/// 							},
/// 							Name: pulumi.String("L4-traffic-with-FQDN"),
/// 							Protocols: pulumi.StringArray{
/// 								pulumi.String(network.AzureFirewallNetworkRuleProtocolTCP),
/// 							},
/// 							SourceAddresses: pulumi.StringArray{
/// 								pulumi.String("10.2.4.12-10.2.4.255"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Sku: &network.AzureFirewallSkuArgs{
/// 				Name: pulumi.String(network.AzureFirewallSkuName_AZFW_VNet),
/// 				Tier: pulumi.String(network.AzureFirewallSkuTierStandard),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			ThreatIntelMode: pulumi.String(network.AzureFirewallThreatIntelModeAlert),
/// 			Zones:           pulumi.StringArray{},
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
/// import com.pulumi.azurenative.network.AzureFirewall;
/// import com.pulumi.azurenative.network.AzureFirewallArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallApplicationRuleCollectionArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallRCActionArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallIPConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallNatRuleCollectionArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallNatRCActionArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallNetworkRuleCollectionArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallSkuArgs;
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
///         var azureFirewall = new AzureFirewall("azureFirewall", AzureFirewallArgs.builder()
///             .applicationRuleCollections(AzureFirewallApplicationRuleCollectionArgs.builder()
///                 .action(AzureFirewallRCActionArgs.builder()
///                     .type("Deny")
///                     .build())
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/applicationRuleCollections/apprulecoll")
///                 .name("apprulecoll")
///                 .priority(110)
///                 .rules(AzureFirewallApplicationRuleArgs.builder()
///                     .description("Deny inbound rule")
///                     .name("rule1")
///                     .protocols(AzureFirewallApplicationRuleProtocolArgs.builder()
///                         .port(443)
///                         .protocolType("Https")
///                         .build())
///                     .sourceAddresses(
///                         "216.58.216.164",
///                         "10.0.0.0/24")
///                     .targetFqdns("www.test.com")
///                     .build())
///                 .build())
///             .azureFirewallName("azurefirewall")
///             .ipConfigurations(AzureFirewallIPConfigurationArgs.builder()
///                 .name("azureFirewallIpConfiguration")
///                 .publicIPAddress(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName")
///                     .build())
///                 .subnet(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallSubnet")
///                     .build())
///                 .build())
///             .location("West US")
///             .managementIpConfiguration(AzureFirewallIPConfigurationArgs.builder()
///                 .name("azureFirewallMgmtIpConfiguration")
///                 .publicIPAddress(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/managementPipName")
///                     .build())
///                 .subnet(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallManagementSubnet")
///                     .build())
///                 .build())
///             .natRuleCollections(AzureFirewallNatRuleCollectionArgs.builder()
///                 .action(AzureFirewallNatRCActionArgs.builder()
///                     .type("Dnat")
///                     .build())
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/natRuleCollections/natrulecoll")
///                 .name("natrulecoll")
///                 .priority(112)
///                 .rules(
///                     AzureFirewallNatRuleArgs.builder()
///                         .description("D-NAT all outbound web traffic for inspection")
///                         .destinationAddresses("1.2.3.4")
///                         .destinationPorts("443")
///                         .name("DNAT-HTTPS-traffic")
///                         .protocols("TCP")
///                         .sourceAddresses("*")
///                         .translatedAddress("1.2.3.5")
///                         .translatedPort("8443")
///                         .build(),
///                     AzureFirewallNatRuleArgs.builder()
///                         .description("D-NAT all inbound web traffic for inspection")
///                         .destinationAddresses("1.2.3.4")
///                         .destinationPorts("80")
///                         .name("DNAT-HTTP-traffic-With-FQDN")
///                         .protocols("TCP")
///                         .sourceAddresses("*")
///                         .translatedFqdn("internalhttpserver")
///                         .translatedPort("880")
///                         .build())
///                 .build())
///             .networkRuleCollections(AzureFirewallNetworkRuleCollectionArgs.builder()
///                 .action(AzureFirewallRCActionArgs.builder()
///                     .type("Deny")
///                     .build())
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/networkRuleCollections/netrulecoll")
///                 .name("netrulecoll")
///                 .priority(112)
///                 .rules(
///                     AzureFirewallNetworkRuleArgs.builder()
///                         .description("Block traffic based on source IPs and ports")
///                         .destinationAddresses("*")
///                         .destinationPorts(
///                             "443-444",
///                             "8443")
///                         .name("L4-traffic")
///                         .protocols("TCP")
///                         .sourceAddresses(
///                             "192.168.1.1-192.168.1.12",
///                             "10.1.4.12-10.1.4.255")
///                         .build(),
///                     AzureFirewallNetworkRuleArgs.builder()
///                         .description("Block traffic based on source IPs and ports to amazon")
///                         .destinationFqdns("www.amazon.com")
///                         .destinationPorts(
///                             "443-444",
///                             "8443")
///                         .name("L4-traffic-with-FQDN")
///                         .protocols("TCP")
///                         .sourceAddresses("10.2.4.12-10.2.4.255")
///                         .build())
///                 .build())
///             .resourceGroupName("rg1")
///             .sku(AzureFirewallSkuArgs.builder()
///                 .name("AZFW_VNet")
///                 .tier("Standard")
///                 .build())
///             .tags(Map.of("key1", "value1"))
///             .threatIntelMode("Alert")
///             .zones()
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
/// const azureFirewall = new azure_native.network.AzureFirewall("azureFirewall", {
///     applicationRuleCollections: [{
///         action: {
///             type: azure_native.network.AzureFirewallRCActionType.Deny,
///         },
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/applicationRuleCollections/apprulecoll",
///         name: "apprulecoll",
///         priority: 110,
///         rules: [{
///             description: "Deny inbound rule",
///             name: "rule1",
///             protocols: [{
///                 port: 443,
///                 protocolType: azure_native.network.AzureFirewallApplicationRuleProtocolType.Https,
///             }],
///             sourceAddresses: [
///                 "216.58.216.164",
///                 "10.0.0.0/24",
///             ],
///             targetFqdns: ["www.test.com"],
///         }],
///     }],
///     azureFirewallName: "azurefirewall",
///     ipConfigurations: [{
///         name: "azureFirewallIpConfiguration",
///         publicIPAddress: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName",
///         },
///         subnet: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallSubnet",
///         },
///     }],
///     location: "West US",
///     managementIpConfiguration: {
///         name: "azureFirewallMgmtIpConfiguration",
///         publicIPAddress: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/managementPipName",
///         },
///         subnet: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallManagementSubnet",
///         },
///     },
///     natRuleCollections: [{
///         action: {
///             type: azure_native.network.AzureFirewallNatRCActionType.Dnat,
///         },
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/natRuleCollections/natrulecoll",
///         name: "natrulecoll",
///         priority: 112,
///         rules: [
///             {
///                 description: "D-NAT all outbound web traffic for inspection",
///                 destinationAddresses: ["1.2.3.4"],
///                 destinationPorts: ["443"],
///                 name: "DNAT-HTTPS-traffic",
///                 protocols: [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 sourceAddresses: ["*"],
///                 translatedAddress: "1.2.3.5",
///                 translatedPort: "8443",
///             },
///             {
///                 description: "D-NAT all inbound web traffic for inspection",
///                 destinationAddresses: ["1.2.3.4"],
///                 destinationPorts: ["80"],
///                 name: "DNAT-HTTP-traffic-With-FQDN",
///                 protocols: [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 sourceAddresses: ["*"],
///                 translatedFqdn: "internalhttpserver",
///                 translatedPort: "880",
///             },
///         ],
///     }],
///     networkRuleCollections: [{
///         action: {
///             type: azure_native.network.AzureFirewallRCActionType.Deny,
///         },
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/networkRuleCollections/netrulecoll",
///         name: "netrulecoll",
///         priority: 112,
///         rules: [
///             {
///                 description: "Block traffic based on source IPs and ports",
///                 destinationAddresses: ["*"],
///                 destinationPorts: [
///                     "443-444",
///                     "8443",
///                 ],
///                 name: "L4-traffic",
///                 protocols: [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 sourceAddresses: [
///                     "192.168.1.1-192.168.1.12",
///                     "10.1.4.12-10.1.4.255",
///                 ],
///             },
///             {
///                 description: "Block traffic based on source IPs and ports to amazon",
///                 destinationFqdns: ["www.amazon.com"],
///                 destinationPorts: [
///                     "443-444",
///                     "8443",
///                 ],
///                 name: "L4-traffic-with-FQDN",
///                 protocols: [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 sourceAddresses: ["10.2.4.12-10.2.4.255"],
///             },
///         ],
///     }],
///     resourceGroupName: "rg1",
///     sku: {
///         name: azure_native.network.AzureFirewallSkuName.AZFW_VNet,
///         tier: azure_native.network.AzureFirewallSkuTier.Standard,
///     },
///     tags: {
///         key1: "value1",
///     },
///     threatIntelMode: azure_native.network.AzureFirewallThreatIntelMode.Alert,
///     zones: [],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// azure_firewall = azure_native.network.AzureFirewall("azureFirewall",
///     application_rule_collections=[{
///         "action": {
///             "type": azure_native.network.AzureFirewallRCActionType.DENY,
///         },
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/applicationRuleCollections/apprulecoll",
///         "name": "apprulecoll",
///         "priority": 110,
///         "rules": [{
///             "description": "Deny inbound rule",
///             "name": "rule1",
///             "protocols": [{
///                 "port": 443,
///                 "protocol_type": azure_native.network.AzureFirewallApplicationRuleProtocolType.HTTPS,
///             }],
///             "source_addresses": [
///                 "216.58.216.164",
///                 "10.0.0.0/24",
///             ],
///             "target_fqdns": ["www.test.com"],
///         }],
///     }],
///     azure_firewall_name="azurefirewall",
///     ip_configurations=[{
///         "name": "azureFirewallIpConfiguration",
///         "public_ip_address": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName",
///         },
///         "subnet": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallSubnet",
///         },
///     }],
///     location="West US",
///     management_ip_configuration={
///         "name": "azureFirewallMgmtIpConfiguration",
///         "public_ip_address": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/managementPipName",
///         },
///         "subnet": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallManagementSubnet",
///         },
///     },
///     nat_rule_collections=[{
///         "action": {
///             "type": azure_native.network.AzureFirewallNatRCActionType.DNAT,
///         },
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/natRuleCollections/natrulecoll",
///         "name": "natrulecoll",
///         "priority": 112,
///         "rules": [
///             {
///                 "description": "D-NAT all outbound web traffic for inspection",
///                 "destination_addresses": ["1.2.3.4"],
///                 "destination_ports": ["443"],
///                 "name": "DNAT-HTTPS-traffic",
///                 "protocols": [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 "source_addresses": ["*"],
///                 "translated_address": "1.2.3.5",
///                 "translated_port": "8443",
///             },
///             {
///                 "description": "D-NAT all inbound web traffic for inspection",
///                 "destination_addresses": ["1.2.3.4"],
///                 "destination_ports": ["80"],
///                 "name": "DNAT-HTTP-traffic-With-FQDN",
///                 "protocols": [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 "source_addresses": ["*"],
///                 "translated_fqdn": "internalhttpserver",
///                 "translated_port": "880",
///             },
///         ],
///     }],
///     network_rule_collections=[{
///         "action": {
///             "type": azure_native.network.AzureFirewallRCActionType.DENY,
///         },
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/networkRuleCollections/netrulecoll",
///         "name": "netrulecoll",
///         "priority": 112,
///         "rules": [
///             {
///                 "description": "Block traffic based on source IPs and ports",
///                 "destination_addresses": ["*"],
///                 "destination_ports": [
///                     "443-444",
///                     "8443",
///                 ],
///                 "name": "L4-traffic",
///                 "protocols": [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 "source_addresses": [
///                     "192.168.1.1-192.168.1.12",
///                     "10.1.4.12-10.1.4.255",
///                 ],
///             },
///             {
///                 "description": "Block traffic based on source IPs and ports to amazon",
///                 "destination_fqdns": ["www.amazon.com"],
///                 "destination_ports": [
///                     "443-444",
///                     "8443",
///                 ],
///                 "name": "L4-traffic-with-FQDN",
///                 "protocols": [azure_native.network.AzureFirewallNetworkRuleProtocol.TCP],
///                 "source_addresses": ["10.2.4.12-10.2.4.255"],
///             },
///         ],
///     }],
///     resource_group_name="rg1",
///     sku={
///         "name": azure_native.network.AzureFirewallSkuName.AZF_W_V_NET,
///         "tier": azure_native.network.AzureFirewallSkuTier.STANDARD,
///     },
///     tags={
///         "key1": "value1",
///     },
///     threat_intel_mode=azure_native.network.AzureFirewallThreatIntelMode.ALERT,
///     zones=[])
///
/// ```
///
/// ```yaml
/// resources:
///   azureFirewall:
///     type: azure-native:network:AzureFirewall
///     properties:
///       applicationRuleCollections:
///         - action:
///             type: Deny
///           id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/applicationRuleCollections/apprulecoll
///           name: apprulecoll
///           priority: 110
///           rules:
///             - description: Deny inbound rule
///               name: rule1
///               protocols:
///                 - port: 443
///                   protocolType: Https
///               sourceAddresses:
///                 - 216.58.216.164
///                 - 10.0.0.0/24
///               targetFqdns:
///                 - www.test.com
///       azureFirewallName: azurefirewall
///       ipConfigurations:
///         - name: azureFirewallIpConfiguration
///           publicIPAddress:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName
///           subnet:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallSubnet
///       location: West US
///       managementIpConfiguration:
///         name: azureFirewallMgmtIpConfiguration
///         publicIPAddress:
///           id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/managementPipName
///         subnet:
///           id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureFirewallManagementSubnet
///       natRuleCollections:
///         - action:
///             type: Dnat
///           id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/natRuleCollections/natrulecoll
///           name: natrulecoll
///           priority: 112
///           rules:
///             - description: D-NAT all outbound web traffic for inspection
///               destinationAddresses:
///                 - 1.2.3.4
///               destinationPorts:
///                 - '443'
///               name: DNAT-HTTPS-traffic
///               protocols:
///                 - TCP
///               sourceAddresses:
///                 - '*'
///               translatedAddress: 1.2.3.5
///               translatedPort: '8443'
///             - description: D-NAT all inbound web traffic for inspection
///               destinationAddresses:
///                 - 1.2.3.4
///               destinationPorts:
///                 - '80'
///               name: DNAT-HTTP-traffic-With-FQDN
///               protocols:
///                 - TCP
///               sourceAddresses:
///                 - '*'
///               translatedFqdn: internalhttpserver
///               translatedPort: '880'
///       networkRuleCollections:
///         - action:
///             type: Deny
///           id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azurefirewall/networkRuleCollections/netrulecoll
///           name: netrulecoll
///           priority: 112
///           rules:
///             - description: Block traffic based on source IPs and ports
///               destinationAddresses:
///                 - '*'
///               destinationPorts:
///                 - 443-444
///                 - '8443'
///               name: L4-traffic
///               protocols:
///                 - TCP
///               sourceAddresses:
///                 - 192.168.1.1-192.168.1.12
///                 - 10.1.4.12-10.1.4.255
///             - description: Block traffic based on source IPs and ports to amazon
///               destinationFqdns:
///                 - www.amazon.com
///               destinationPorts:
///                 - 443-444
///                 - '8443'
///               name: L4-traffic-with-FQDN
///               protocols:
///                 - TCP
///               sourceAddresses:
///                 - 10.2.4.12-10.2.4.255
///       resourceGroupName: rg1
///       sku:
///         name: AZFW_VNet
///         tier: Standard
///       tags:
///         key1: value1
///       threatIntelMode: Alert
///       zones: []
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Azure Firewall in virtual Hub
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var azureFirewall = new AzureNative.Network.AzureFirewall("azureFirewall", new()
///     {
///         AzureFirewallName = "azurefirewall",
///         FirewallPolicy = new AzureNative.Network.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/firewallPolicies/policy1",
///         },
///         HubIPAddresses = new AzureNative.Network.Inputs.HubIPAddressesArgs
///         {
///             PublicIPs = new AzureNative.Network.Inputs.HubPublicIPAddressesArgs
///             {
///                 Addresses = new() { },
///                 Count = 1,
///             },
///         },
///         Location = "West US",
///         ResourceGroupName = "rg1",
///         Sku = new AzureNative.Network.Inputs.AzureFirewallSkuArgs
///         {
///             Name = AzureNative.Network.AzureFirewallSkuName.AZFW_Hub,
///             Tier = AzureNative.Network.AzureFirewallSkuTier.Standard,
///         },
///         Tags =
///         {
///             { "key1", "value1" },
///         },
///         ThreatIntelMode = AzureNative.Network.AzureFirewallThreatIntelMode.Alert,
///         VirtualHub = new AzureNative.Network.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1",
///         },
///         Zones = new[] {},
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewAzureFirewall(ctx, "azureFirewall", &network.AzureFirewallArgs{
/// 			AzureFirewallName: pulumi.String("azurefirewall"),
/// 			FirewallPolicy: &network.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/firewallPolicies/policy1"),
/// 			},
/// 			HubIPAddresses: &network.HubIPAddressesArgs{
/// 				PublicIPs: &network.HubPublicIPAddressesArgs{
/// 					Addresses: network.AzureFirewallPublicIPAddressArray{},
/// 					Count:     pulumi.Int(1),
/// 				},
/// 			},
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Sku: &network.AzureFirewallSkuArgs{
/// 				Name: pulumi.String(network.AzureFirewallSkuName_AZFW_Hub),
/// 				Tier: pulumi.String(network.AzureFirewallSkuTierStandard),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			ThreatIntelMode: pulumi.String(network.AzureFirewallThreatIntelModeAlert),
/// 			VirtualHub: &network.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1"),
/// 			},
/// 			Zones: pulumi.StringArray{},
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
/// import com.pulumi.azurenative.network.AzureFirewall;
/// import com.pulumi.azurenative.network.AzureFirewallArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.network.inputs.HubIPAddressesArgs;
/// import com.pulumi.azurenative.network.inputs.HubPublicIPAddressesArgs;
/// import com.pulumi.azurenative.network.inputs.AzureFirewallSkuArgs;
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
///         var azureFirewall = new AzureFirewall("azureFirewall", AzureFirewallArgs.builder()
///             .azureFirewallName("azurefirewall")
///             .firewallPolicy(SubResourceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/firewallPolicies/policy1")
///                 .build())
///             .hubIPAddresses(HubIPAddressesArgs.builder()
///                 .publicIPs(HubPublicIPAddressesArgs.builder()
///                     .addresses()
///                     .count(1)
///                     .build())
///                 .build())
///             .location("West US")
///             .resourceGroupName("rg1")
///             .sku(AzureFirewallSkuArgs.builder()
///                 .name("AZFW_Hub")
///                 .tier("Standard")
///                 .build())
///             .tags(Map.of("key1", "value1"))
///             .threatIntelMode("Alert")
///             .virtualHub(SubResourceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1")
///                 .build())
///             .zones()
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
/// const azureFirewall = new azure_native.network.AzureFirewall("azureFirewall", {
///     azureFirewallName: "azurefirewall",
///     firewallPolicy: {
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/firewallPolicies/policy1",
///     },
///     hubIPAddresses: {
///         publicIPs: {
///             addresses: [],
///             count: 1,
///         },
///     },
///     location: "West US",
///     resourceGroupName: "rg1",
///     sku: {
///         name: azure_native.network.AzureFirewallSkuName.AZFW_Hub,
///         tier: azure_native.network.AzureFirewallSkuTier.Standard,
///     },
///     tags: {
///         key1: "value1",
///     },
///     threatIntelMode: azure_native.network.AzureFirewallThreatIntelMode.Alert,
///     virtualHub: {
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1",
///     },
///     zones: [],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// azure_firewall = azure_native.network.AzureFirewall("azureFirewall",
///     azure_firewall_name="azurefirewall",
///     firewall_policy={
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/firewallPolicies/policy1",
///     },
///     hub_ip_addresses={
///         "public_ips": {
///             "addresses": [],
///             "count": 1,
///         },
///     },
///     location="West US",
///     resource_group_name="rg1",
///     sku={
///         "name": azure_native.network.AzureFirewallSkuName.AZF_W_HUB,
///         "tier": azure_native.network.AzureFirewallSkuTier.STANDARD,
///     },
///     tags={
///         "key1": "value1",
///     },
///     threat_intel_mode=azure_native.network.AzureFirewallThreatIntelMode.ALERT,
///     virtual_hub={
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1",
///     },
///     zones=[])
///
/// ```
///
/// ```yaml
/// resources:
///   azureFirewall:
///     type: azure-native:network:AzureFirewall
///     properties:
///       azureFirewallName: azurefirewall
///       firewallPolicy:
///         id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/firewallPolicies/policy1
///       hubIPAddresses:
///         publicIPs:
///           addresses: []
///           count: 1
///       location: West US
///       resourceGroupName: rg1
///       sku:
///         name: AZFW_Hub
///         tier: Standard
///       tags:
///         key1: value1
///       threatIntelMode: Alert
///       virtualHub:
///         id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1
///       zones: []
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
/// $ pulumi import azure-native:network:AzureFirewall azurefirewall /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/azureFirewalls/{azureFirewallName}
/// ```
class AzureFirewall extends pulumi.CustomResource {
  /// The additional properties used to further config this azure firewall.
  late final pulumi.Output<Map<String, String>?> additionalProperties;
  /// Collection of application rule collections used by Azure Firewall.
  late final pulumi.Output<List<Map<String, dynamic>>?> applicationRuleCollections;
  /// Properties to provide a custom autoscale configuration to this azure firewall.
  late final pulumi.Output<AzureFirewallAutoscaleConfigurationResponse?> autoscaleConfiguration;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// The firewallPolicy associated with this azure firewall.
  late final pulumi.Output<SubResourceResponse?> firewallPolicy;
  /// IP addresses associated with AzureFirewall.
  late final pulumi.Output<HubIPAddressesResponse?> hubIPAddresses;
  /// IP configuration of the Azure Firewall resource.
  late final pulumi.Output<List<Map<String, dynamic>>?> ipConfigurations;
  /// IpGroups associated with AzureFirewall.
  late final pulumi.Output<List<Map<String, dynamic>>> ipGroups;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// IP configuration of the Azure Firewall used for management traffic.
  late final pulumi.Output<AzureFirewallIPConfigurationResponse?> managementIpConfiguration;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Collection of NAT rule collections used by Azure Firewall.
  late final pulumi.Output<List<Map<String, dynamic>>?> natRuleCollections;
  /// Collection of network rule collections used by Azure Firewall.
  late final pulumi.Output<List<Map<String, dynamic>>?> networkRuleCollections;
  /// The provisioning state of the Azure firewall resource.
  late final pulumi.Output<String> provisioningState;
  /// The Azure Firewall Resource SKU.
  late final pulumi.Output<AzureFirewallSkuResponse?> sku;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The operation mode for Threat Intelligence.
  late final pulumi.Output<String?> threatIntelMode;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// The virtualHub to which the firewall belongs.
  late final pulumi.Output<SubResourceResponse?> virtualHub;
  /// A list of availability zones denoting where the resource needs to come from.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [AzureFirewall].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AzureFirewall]. {@macro pulumi_network_azure_firewall_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AzureFirewall(
    String name, {
    AzureFirewallArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:AzureFirewall',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    applicationRuleCollections = registerOutput<List<Map<String, dynamic>>?>('applicationRuleCollections');
    autoscaleConfiguration = registerOutput<AzureFirewallAutoscaleConfigurationResponse?>('autoscaleConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureFirewallAutoscaleConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    firewallPolicy = registerOutput<SubResourceResponse?>('firewallPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hubIPAddresses = registerOutput<HubIPAddressesResponse?>('hubIPAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HubIPAddressesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ipConfigurations = registerOutput<List<Map<String, dynamic>>?>('ipConfigurations');
    ipGroups = registerOutput<List<Map<String, dynamic>>>('ipGroups');
    location = registerOutput<String?>('location');
    managementIpConfiguration = registerOutput<AzureFirewallIPConfigurationResponse?>('managementIpConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureFirewallIPConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    natRuleCollections = registerOutput<List<Map<String, dynamic>>?>('natRuleCollections');
    networkRuleCollections = registerOutput<List<Map<String, dynamic>>?>('networkRuleCollections');
    provisioningState = registerOutput<String>('provisioningState');
    sku = registerOutput<AzureFirewallSkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureFirewallSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    threatIntelMode = registerOutput<String?>('threatIntelMode');
    type = registerOutput<String>('type');
    virtualHub = registerOutput<SubResourceResponse?>('virtualHub', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zones = registerOutput<List<String>?>('zones');
  }
}
