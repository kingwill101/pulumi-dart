import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_network_configuration_properties_response.dart';
import 'network_fabric_args.dart';
import 'system_data_response.dart';
import 'terminal_server_configuration_response.dart';

/// The Network Fabric resource definition.
///
/// Uses Azure REST API version 2023-06-15. In version 2.x of the Azure Native provider, it used API version 2023-02-01-preview.
///
/// Other available API versions: 2023-02-01-preview, 2024-02-15-preview, 2024-06-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NetworkFabrics_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkFabric = new AzureNative.ManagedNetworkFabric.NetworkFabric("networkFabric", new()
///     {
///         Annotation = "annotation",
///         FabricASN = 29249,
///         FabricVersion = "1.x.x",
///         Ipv4Prefix = "10.18.0.0/19",
///         Ipv6Prefix = "3FFE:FFFF:0:CD40::/59",
///         Location = "eastuseuap",
///         ManagementNetworkConfiguration = new AzureNative.ManagedNetworkFabric.Inputs.ManagementNetworkConfigurationPropertiesArgs
///         {
///             InfrastructureVpnConfiguration = new AzureNative.ManagedNetworkFabric.Inputs.VpnConfigurationPropertiesArgs
///             {
///                 NetworkToNetworkInterconnectId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric/networkToNetworkInterconnects/example-nni",
///                 OptionAProperties = new AzureNative.ManagedNetworkFabric.Inputs.VpnConfigurationPropertiesOptionAPropertiesArgs
///                 {
///                     BfdConfiguration = new AzureNative.ManagedNetworkFabric.Inputs.BfdConfigurationArgs
///                     {
///                         IntervalInMilliSeconds = 300,
///                         Multiplier = 10,
///                     },
///                     Mtu = 1501,
///                     PeerASN = 1235,
///                     PrimaryIpv4Prefix = "10.0.0.12/30",
///                     PrimaryIpv6Prefix = "4FFE:FFFF:0:CD30::a8/127",
///                     SecondaryIpv4Prefix = "20.0.0.13/30",
///                     SecondaryIpv6Prefix = "6FFE:FFFF:0:CD30::ac/127",
///                     VlanId = 3001,
///                 },
///                 OptionBProperties = new AzureNative.ManagedNetworkFabric.Inputs.FabricOptionBPropertiesArgs
///                 {
///                     ExportRouteTargets = new[]
///                     {
///                         "65046:10050",
///                     },
///                     ImportRouteTargets = new[]
///                     {
///                         "65046:10050",
///                     },
///                     RouteTargets = new AzureNative.ManagedNetworkFabric.Inputs.RouteTargetInformationArgs
///                     {
///                         ExportIpv4RouteTargets = new[]
///                         {
///                             "65046:10039",
///                         },
///                         ExportIpv6RouteTargets = new[]
///                         {
///                             "65046:10039",
///                         },
///                         ImportIpv4RouteTargets = new[]
///                         {
///                             "65046:10039",
///                         },
///                         ImportIpv6RouteTargets = new[]
///                         {
///                             "65046:10039",
///                         },
///                     },
///                 },
///                 PeeringOption = AzureNative.ManagedNetworkFabric.PeeringOption.OptionA,
///             },
///             WorkloadVpnConfiguration = new AzureNative.ManagedNetworkFabric.Inputs.VpnConfigurationPropertiesArgs
///             {
///                 NetworkToNetworkInterconnectId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric/networkToNetworkInterconnects/example-nni",
///                 OptionAProperties = new AzureNative.ManagedNetworkFabric.Inputs.VpnConfigurationPropertiesOptionAPropertiesArgs
///                 {
///                     BfdConfiguration = new AzureNative.ManagedNetworkFabric.Inputs.BfdConfigurationArgs
///                     {
///                         IntervalInMilliSeconds = 300,
///                         Multiplier = 5,
///                     },
///                     Mtu = 1500,
///                     PeerASN = 61234,
///                     PrimaryIpv4Prefix = "10.0.0.14/30",
///                     PrimaryIpv6Prefix = "2FFE:FFFF:0:CD30::a7/126",
///                     SecondaryIpv4Prefix = "10.0.0.15/30",
///                     SecondaryIpv6Prefix = "2FFE:FFFF:0:CD30::ac/126",
///                     VlanId = 3000,
///                 },
///                 OptionBProperties = new AzureNative.ManagedNetworkFabric.Inputs.FabricOptionBPropertiesArgs
///                 {
///                     ExportRouteTargets = new[]
///                     {
///                         "65046:10050",
///                     },
///                     ImportRouteTargets = new[]
///                     {
///                         "65046:10050",
///                     },
///                     RouteTargets = new AzureNative.ManagedNetworkFabric.Inputs.RouteTargetInformationArgs
///                     {
///                         ExportIpv4RouteTargets = new[]
///                         {
///                             "65046:10039",
///                         },
///                         ExportIpv6RouteTargets = new[]
///                         {
///                             "65046:10039",
///                         },
///                         ImportIpv4RouteTargets = new[]
///                         {
///                             "65046:10039",
///                         },
///                         ImportIpv6RouteTargets = new[]
///                         {
///                             "65046:10039",
///                         },
///                     },
///                 },
///                 PeeringOption = AzureNative.ManagedNetworkFabric.PeeringOption.OptionA,
///             },
///         },
///         NetworkFabricControllerId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabricControllers/example-fabricController",
///         NetworkFabricName = "example-fabric",
///         NetworkFabricSku = "M4-A400-A100-C16-aa",
///         RackCount = 4,
///         ResourceGroupName = "example-rg",
///         ServerCountPerRack = 8,
///         Tags =
///         {
///             { "keyID", "keyValue" },
///         },
///         TerminalServerConfiguration = new AzureNative.ManagedNetworkFabric.Inputs.TerminalServerConfigurationArgs
///         {
///             Password = "xxxx",
///             PrimaryIpv4Prefix = "10.0.0.12/30",
///             PrimaryIpv6Prefix = "4FFE:FFFF:0:CD30::a8/127",
///             SecondaryIpv4Prefix = "20.0.0.13/30",
///             SecondaryIpv6Prefix = "6FFE:FFFF:0:CD30::ac/127",
///             SerialNumber = "123456",
///             Username = "username",
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
/// 	managednetworkfabric "github.com/pulumi/pulumi-azure-native-sdk/managednetworkfabric/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := managednetworkfabric.NewNetworkFabric(ctx, "networkFabric", &managednetworkfabric.NetworkFabricArgs{
/// 			Annotation:    pulumi.String("annotation"),
/// 			FabricASN:     pulumi.Float64(29249),
/// 			FabricVersion: pulumi.String("1.x.x"),
/// 			Ipv4Prefix:    pulumi.String("10.18.0.0/19"),
/// 			Ipv6Prefix:    pulumi.String("3FFE:FFFF:0:CD40::/59"),
/// 			Location:      pulumi.String("eastuseuap"),
/// 			ManagementNetworkConfiguration: &managednetworkfabric.ManagementNetworkConfigurationPropertiesArgs{
/// 				InfrastructureVpnConfiguration: &managednetworkfabric.VpnConfigurationPropertiesArgs{
/// 					NetworkToNetworkInterconnectId: pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric/networkToNetworkInterconnects/example-nni"),
/// 					OptionAProperties: &managednetworkfabric.VpnConfigurationPropertiesOptionAPropertiesArgs{
/// 						BfdConfiguration: &managednetworkfabric.BfdConfigurationArgs{
/// 							IntervalInMilliSeconds: pulumi.Int(300),
/// 							Multiplier:             pulumi.Int(10),
/// 						},
/// 						Mtu:                 pulumi.Int(1501),
/// 						PeerASN:             pulumi.Float64(1235),
/// 						PrimaryIpv4Prefix:   pulumi.String("10.0.0.12/30"),
/// 						PrimaryIpv6Prefix:   pulumi.String("4FFE:FFFF:0:CD30::a8/127"),
/// 						SecondaryIpv4Prefix: pulumi.String("20.0.0.13/30"),
/// 						SecondaryIpv6Prefix: pulumi.String("6FFE:FFFF:0:CD30::ac/127"),
/// 						VlanId:              pulumi.Int(3001),
/// 					},
/// 					OptionBProperties: &managednetworkfabric.FabricOptionBPropertiesArgs{
/// 						ExportRouteTargets: pulumi.StringArray{
/// 							pulumi.String("65046:10050"),
/// 						},
/// 						ImportRouteTargets: pulumi.StringArray{
/// 							pulumi.String("65046:10050"),
/// 						},
/// 						RouteTargets: &managednetworkfabric.RouteTargetInformationArgs{
/// 							ExportIpv4RouteTargets: pulumi.StringArray{
/// 								pulumi.String("65046:10039"),
/// 							},
/// 							ExportIpv6RouteTargets: pulumi.StringArray{
/// 								pulumi.String("65046:10039"),
/// 							},
/// 							ImportIpv4RouteTargets: pulumi.StringArray{
/// 								pulumi.String("65046:10039"),
/// 							},
/// 							ImportIpv6RouteTargets: pulumi.StringArray{
/// 								pulumi.String("65046:10039"),
/// 							},
/// 						},
/// 					},
/// 					PeeringOption: pulumi.String(managednetworkfabric.PeeringOptionOptionA),
/// 				},
/// 				WorkloadVpnConfiguration: &managednetworkfabric.VpnConfigurationPropertiesArgs{
/// 					NetworkToNetworkInterconnectId: pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric/networkToNetworkInterconnects/example-nni"),
/// 					OptionAProperties: &managednetworkfabric.VpnConfigurationPropertiesOptionAPropertiesArgs{
/// 						BfdConfiguration: &managednetworkfabric.BfdConfigurationArgs{
/// 							IntervalInMilliSeconds: pulumi.Int(300),
/// 							Multiplier:             pulumi.Int(5),
/// 						},
/// 						Mtu:                 pulumi.Int(1500),
/// 						PeerASN:             pulumi.Float64(61234),
/// 						PrimaryIpv4Prefix:   pulumi.String("10.0.0.14/30"),
/// 						PrimaryIpv6Prefix:   pulumi.String("2FFE:FFFF:0:CD30::a7/126"),
/// 						SecondaryIpv4Prefix: pulumi.String("10.0.0.15/30"),
/// 						SecondaryIpv6Prefix: pulumi.String("2FFE:FFFF:0:CD30::ac/126"),
/// 						VlanId:              pulumi.Int(3000),
/// 					},
/// 					OptionBProperties: &managednetworkfabric.FabricOptionBPropertiesArgs{
/// 						ExportRouteTargets: pulumi.StringArray{
/// 							pulumi.String("65046:10050"),
/// 						},
/// 						ImportRouteTargets: pulumi.StringArray{
/// 							pulumi.String("65046:10050"),
/// 						},
/// 						RouteTargets: &managednetworkfabric.RouteTargetInformationArgs{
/// 							ExportIpv4RouteTargets: pulumi.StringArray{
/// 								pulumi.String("65046:10039"),
/// 							},
/// 							ExportIpv6RouteTargets: pulumi.StringArray{
/// 								pulumi.String("65046:10039"),
/// 							},
/// 							ImportIpv4RouteTargets: pulumi.StringArray{
/// 								pulumi.String("65046:10039"),
/// 							},
/// 							ImportIpv6RouteTargets: pulumi.StringArray{
/// 								pulumi.String("65046:10039"),
/// 							},
/// 						},
/// 					},
/// 					PeeringOption: pulumi.String(managednetworkfabric.PeeringOptionOptionA),
/// 				},
/// 			},
/// 			NetworkFabricControllerId: pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabricControllers/example-fabricController"),
/// 			NetworkFabricName:         pulumi.String("example-fabric"),
/// 			NetworkFabricSku:          pulumi.String("M4-A400-A100-C16-aa"),
/// 			RackCount:                 pulumi.Int(4),
/// 			ResourceGroupName:         pulumi.String("example-rg"),
/// 			ServerCountPerRack:        pulumi.Int(8),
/// 			Tags: pulumi.StringMap{
/// 				"keyID": pulumi.String("keyValue"),
/// 			},
/// 			TerminalServerConfiguration: &managednetworkfabric.TerminalServerConfigurationArgs{
/// 				Password:            pulumi.String("xxxx"),
/// 				PrimaryIpv4Prefix:   pulumi.String("10.0.0.12/30"),
/// 				PrimaryIpv6Prefix:   pulumi.String("4FFE:FFFF:0:CD30::a8/127"),
/// 				SecondaryIpv4Prefix: pulumi.String("20.0.0.13/30"),
/// 				SecondaryIpv6Prefix: pulumi.String("6FFE:FFFF:0:CD30::ac/127"),
/// 				SerialNumber:        pulumi.String("123456"),
/// 				Username:            pulumi.String("username"),
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
/// import com.pulumi.azurenative.managednetworkfabric.NetworkFabric;
/// import com.pulumi.azurenative.managednetworkfabric.NetworkFabricArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.ManagementNetworkConfigurationPropertiesArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.VpnConfigurationPropertiesArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.VpnConfigurationPropertiesOptionAPropertiesArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.BfdConfigurationArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.FabricOptionBPropertiesArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.RouteTargetInformationArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.TerminalServerConfigurationArgs;
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
///         var networkFabric = new NetworkFabric("networkFabric", NetworkFabricArgs.builder()
///             .annotation("annotation")
///             .fabricASN(29249.0)
///             .fabricVersion("1.x.x")
///             .ipv4Prefix("10.18.0.0/19")
///             .ipv6Prefix("3FFE:FFFF:0:CD40::/59")
///             .location("eastuseuap")
///             .managementNetworkConfiguration(ManagementNetworkConfigurationPropertiesArgs.builder()
///                 .infrastructureVpnConfiguration(VpnConfigurationPropertiesArgs.builder()
///                     .networkToNetworkInterconnectId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric/networkToNetworkInterconnects/example-nni")
///                     .optionAProperties(VpnConfigurationPropertiesOptionAPropertiesArgs.builder()
///                         .bfdConfiguration(BfdConfigurationArgs.builder()
///                             .intervalInMilliSeconds(300)
///                             .multiplier(10)
///                             .build())
///                         .mtu(1501)
///                         .peerASN(1235.0)
///                         .primaryIpv4Prefix("10.0.0.12/30")
///                         .primaryIpv6Prefix("4FFE:FFFF:0:CD30::a8/127")
///                         .secondaryIpv4Prefix("20.0.0.13/30")
///                         .secondaryIpv6Prefix("6FFE:FFFF:0:CD30::ac/127")
///                         .vlanId(3001)
///                         .build())
///                     .optionBProperties(FabricOptionBPropertiesArgs.builder()
///                         .exportRouteTargets("65046:10050")
///                         .importRouteTargets("65046:10050")
///                         .routeTargets(RouteTargetInformationArgs.builder()
///                             .exportIpv4RouteTargets("65046:10039")
///                             .exportIpv6RouteTargets("65046:10039")
///                             .importIpv4RouteTargets("65046:10039")
///                             .importIpv6RouteTargets("65046:10039")
///                             .build())
///                         .build())
///                     .peeringOption("OptionA")
///                     .build())
///                 .workloadVpnConfiguration(VpnConfigurationPropertiesArgs.builder()
///                     .networkToNetworkInterconnectId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric/networkToNetworkInterconnects/example-nni")
///                     .optionAProperties(VpnConfigurationPropertiesOptionAPropertiesArgs.builder()
///                         .bfdConfiguration(BfdConfigurationArgs.builder()
///                             .intervalInMilliSeconds(300)
///                             .multiplier(5)
///                             .build())
///                         .mtu(1500)
///                         .peerASN(61234.0)
///                         .primaryIpv4Prefix("10.0.0.14/30")
///                         .primaryIpv6Prefix("2FFE:FFFF:0:CD30::a7/126")
///                         .secondaryIpv4Prefix("10.0.0.15/30")
///                         .secondaryIpv6Prefix("2FFE:FFFF:0:CD30::ac/126")
///                         .vlanId(3000)
///                         .build())
///                     .optionBProperties(FabricOptionBPropertiesArgs.builder()
///                         .exportRouteTargets("65046:10050")
///                         .importRouteTargets("65046:10050")
///                         .routeTargets(RouteTargetInformationArgs.builder()
///                             .exportIpv4RouteTargets("65046:10039")
///                             .exportIpv6RouteTargets("65046:10039")
///                             .importIpv4RouteTargets("65046:10039")
///                             .importIpv6RouteTargets("65046:10039")
///                             .build())
///                         .build())
///                     .peeringOption("OptionA")
///                     .build())
///                 .build())
///             .networkFabricControllerId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabricControllers/example-fabricController")
///             .networkFabricName("example-fabric")
///             .networkFabricSku("M4-A400-A100-C16-aa")
///             .rackCount(4)
///             .resourceGroupName("example-rg")
///             .serverCountPerRack(8)
///             .tags(Map.of("keyID", "keyValue"))
///             .terminalServerConfiguration(TerminalServerConfigurationArgs.builder()
///                 .password("xxxx")
///                 .primaryIpv4Prefix("10.0.0.12/30")
///                 .primaryIpv6Prefix("4FFE:FFFF:0:CD30::a8/127")
///                 .secondaryIpv4Prefix("20.0.0.13/30")
///                 .secondaryIpv6Prefix("6FFE:FFFF:0:CD30::ac/127")
///                 .serialNumber("123456")
///                 .username("username")
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
/// const networkFabric = new azure_native.managednetworkfabric.NetworkFabric("networkFabric", {
///     annotation: "annotation",
///     fabricASN: 29249,
///     fabricVersion: "1.x.x",
///     ipv4Prefix: "10.18.0.0/19",
///     ipv6Prefix: "3FFE:FFFF:0:CD40::/59",
///     location: "eastuseuap",
///     managementNetworkConfiguration: {
///         infrastructureVpnConfiguration: {
///             networkToNetworkInterconnectId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric/networkToNetworkInterconnects/example-nni",
///             optionAProperties: {
///                 bfdConfiguration: {
///                     intervalInMilliSeconds: 300,
///                     multiplier: 10,
///                 },
///                 mtu: 1501,
///                 peerASN: 1235,
///                 primaryIpv4Prefix: "10.0.0.12/30",
///                 primaryIpv6Prefix: "4FFE:FFFF:0:CD30::a8/127",
///                 secondaryIpv4Prefix: "20.0.0.13/30",
///                 secondaryIpv6Prefix: "6FFE:FFFF:0:CD30::ac/127",
///                 vlanId: 3001,
///             },
///             optionBProperties: {
///                 exportRouteTargets: ["65046:10050"],
///                 importRouteTargets: ["65046:10050"],
///                 routeTargets: {
///                     exportIpv4RouteTargets: ["65046:10039"],
///                     exportIpv6RouteTargets: ["65046:10039"],
///                     importIpv4RouteTargets: ["65046:10039"],
///                     importIpv6RouteTargets: ["65046:10039"],
///                 },
///             },
///             peeringOption: azure_native.managednetworkfabric.PeeringOption.OptionA,
///         },
///         workloadVpnConfiguration: {
///             networkToNetworkInterconnectId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric/networkToNetworkInterconnects/example-nni",
///             optionAProperties: {
///                 bfdConfiguration: {
///                     intervalInMilliSeconds: 300,
///                     multiplier: 5,
///                 },
///                 mtu: 1500,
///                 peerASN: 61234,
///                 primaryIpv4Prefix: "10.0.0.14/30",
///                 primaryIpv6Prefix: "2FFE:FFFF:0:CD30::a7/126",
///                 secondaryIpv4Prefix: "10.0.0.15/30",
///                 secondaryIpv6Prefix: "2FFE:FFFF:0:CD30::ac/126",
///                 vlanId: 3000,
///             },
///             optionBProperties: {
///                 exportRouteTargets: ["65046:10050"],
///                 importRouteTargets: ["65046:10050"],
///                 routeTargets: {
///                     exportIpv4RouteTargets: ["65046:10039"],
///                     exportIpv6RouteTargets: ["65046:10039"],
///                     importIpv4RouteTargets: ["65046:10039"],
///                     importIpv6RouteTargets: ["65046:10039"],
///                 },
///             },
///             peeringOption: azure_native.managednetworkfabric.PeeringOption.OptionA,
///         },
///     },
///     networkFabricControllerId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabricControllers/example-fabricController",
///     networkFabricName: "example-fabric",
///     networkFabricSku: "M4-A400-A100-C16-aa",
///     rackCount: 4,
///     resourceGroupName: "example-rg",
///     serverCountPerRack: 8,
///     tags: {
///         keyID: "keyValue",
///     },
///     terminalServerConfiguration: {
///         password: "xxxx",
///         primaryIpv4Prefix: "10.0.0.12/30",
///         primaryIpv6Prefix: "4FFE:FFFF:0:CD30::a8/127",
///         secondaryIpv4Prefix: "20.0.0.13/30",
///         secondaryIpv6Prefix: "6FFE:FFFF:0:CD30::ac/127",
///         serialNumber: "123456",
///         username: "username",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_fabric = azure_native.managednetworkfabric.NetworkFabric("networkFabric",
///     annotation="annotation",
///     fabric_asn=29249,
///     fabric_version="1.x.x",
///     ipv4_prefix="10.18.0.0/19",
///     ipv6_prefix="3FFE:FFFF:0:CD40::/59",
///     location="eastuseuap",
///     management_network_configuration={
///         "infrastructure_vpn_configuration": {
///             "network_to_network_interconnect_id": "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric/networkToNetworkInterconnects/example-nni",
///             "option_a_properties": {
///                 "bfd_configuration": {
///                     "interval_in_milli_seconds": 300,
///                     "multiplier": 10,
///                 },
///                 "mtu": 1501,
///                 "peer_asn": 1235,
///                 "primary_ipv4_prefix": "10.0.0.12/30",
///                 "primary_ipv6_prefix": "4FFE:FFFF:0:CD30::a8/127",
///                 "secondary_ipv4_prefix": "20.0.0.13/30",
///                 "secondary_ipv6_prefix": "6FFE:FFFF:0:CD30::ac/127",
///                 "vlan_id": 3001,
///             },
///             "option_b_properties": {
///                 "export_route_targets": ["65046:10050"],
///                 "import_route_targets": ["65046:10050"],
///                 "route_targets": {
///                     "export_ipv4_route_targets": ["65046:10039"],
///                     "export_ipv6_route_targets": ["65046:10039"],
///                     "import_ipv4_route_targets": ["65046:10039"],
///                     "import_ipv6_route_targets": ["65046:10039"],
///                 },
///             },
///             "peering_option": azure_native.managednetworkfabric.PeeringOption.OPTION_A,
///         },
///         "workload_vpn_configuration": {
///             "network_to_network_interconnect_id": "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric/networkToNetworkInterconnects/example-nni",
///             "option_a_properties": {
///                 "bfd_configuration": {
///                     "interval_in_milli_seconds": 300,
///                     "multiplier": 5,
///                 },
///                 "mtu": 1500,
///                 "peer_asn": 61234,
///                 "primary_ipv4_prefix": "10.0.0.14/30",
///                 "primary_ipv6_prefix": "2FFE:FFFF:0:CD30::a7/126",
///                 "secondary_ipv4_prefix": "10.0.0.15/30",
///                 "secondary_ipv6_prefix": "2FFE:FFFF:0:CD30::ac/126",
///                 "vlan_id": 3000,
///             },
///             "option_b_properties": {
///                 "export_route_targets": ["65046:10050"],
///                 "import_route_targets": ["65046:10050"],
///                 "route_targets": {
///                     "export_ipv4_route_targets": ["65046:10039"],
///                     "export_ipv6_route_targets": ["65046:10039"],
///                     "import_ipv4_route_targets": ["65046:10039"],
///                     "import_ipv6_route_targets": ["65046:10039"],
///                 },
///             },
///             "peering_option": azure_native.managednetworkfabric.PeeringOption.OPTION_A,
///         },
///     },
///     network_fabric_controller_id="/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabricControllers/example-fabricController",
///     network_fabric_name="example-fabric",
///     network_fabric_sku="M4-A400-A100-C16-aa",
///     rack_count=4,
///     resource_group_name="example-rg",
///     server_count_per_rack=8,
///     tags={
///         "keyID": "keyValue",
///     },
///     terminal_server_configuration={
///         "password": "xxxx",
///         "primary_ipv4_prefix": "10.0.0.12/30",
///         "primary_ipv6_prefix": "4FFE:FFFF:0:CD30::a8/127",
///         "secondary_ipv4_prefix": "20.0.0.13/30",
///         "secondary_ipv6_prefix": "6FFE:FFFF:0:CD30::ac/127",
///         "serial_number": "123456",
///         "username": "username",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   networkFabric:
///     type: azure-native:managednetworkfabric:NetworkFabric
///     properties:
///       annotation: annotation
///       fabricASN: 29249
///       fabricVersion: 1.x.x
///       ipv4Prefix: 10.18.0.0/19
///       ipv6Prefix: 3FFE:FFFF:0:CD40::/59
///       location: eastuseuap
///       managementNetworkConfiguration:
///         infrastructureVpnConfiguration:
///           networkToNetworkInterconnectId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric/networkToNetworkInterconnects/example-nni
///           optionAProperties:
///             bfdConfiguration:
///               intervalInMilliSeconds: 300
///               multiplier: 10
///             mtu: 1501
///             peerASN: 1235
///             primaryIpv4Prefix: 10.0.0.12/30
///             primaryIpv6Prefix: 4FFE:FFFF:0:CD30::a8/127
///             secondaryIpv4Prefix: 20.0.0.13/30
///             secondaryIpv6Prefix: 6FFE:FFFF:0:CD30::ac/127
///             vlanId: 3001
///           optionBProperties:
///             exportRouteTargets:
///               - 65046:10050
///             importRouteTargets:
///               - 65046:10050
///             routeTargets:
///               exportIpv4RouteTargets:
///                 - 65046:10039
///               exportIpv6RouteTargets:
///                 - 65046:10039
///               importIpv4RouteTargets:
///                 - 65046:10039
///               importIpv6RouteTargets:
///                 - 65046:10039
///           peeringOption: OptionA
///         workloadVpnConfiguration:
///           networkToNetworkInterconnectId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric/networkToNetworkInterconnects/example-nni
///           optionAProperties:
///             bfdConfiguration:
///               intervalInMilliSeconds: 300
///               multiplier: 5
///             mtu: 1500
///             peerASN: 61234
///             primaryIpv4Prefix: 10.0.0.14/30
///             primaryIpv6Prefix: 2FFE:FFFF:0:CD30::a7/126
///             secondaryIpv4Prefix: 10.0.0.15/30
///             secondaryIpv6Prefix: 2FFE:FFFF:0:CD30::ac/126
///             vlanId: 3000
///           optionBProperties:
///             exportRouteTargets:
///               - 65046:10050
///             importRouteTargets:
///               - 65046:10050
///             routeTargets:
///               exportIpv4RouteTargets:
///                 - 65046:10039
///               exportIpv6RouteTargets:
///                 - 65046:10039
///               importIpv4RouteTargets:
///                 - 65046:10039
///               importIpv6RouteTargets:
///                 - 65046:10039
///           peeringOption: OptionA
///       networkFabricControllerId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabricControllers/example-fabricController
///       networkFabricName: example-fabric
///       networkFabricSku: M4-A400-A100-C16-aa
///       rackCount: 4
///       resourceGroupName: example-rg
///       serverCountPerRack: 8
///       tags:
///         keyID: keyValue
///       terminalServerConfiguration:
///         password: xxxx
///         primaryIpv4Prefix: 10.0.0.12/30
///         primaryIpv6Prefix: 4FFE:FFFF:0:CD30::a8/127
///         secondaryIpv4Prefix: 20.0.0.13/30
///         secondaryIpv6Prefix: 6FFE:FFFF:0:CD30::ac/127
///         serialNumber: '123456'
///         username: username
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
/// $ pulumi import azure-native:managednetworkfabric:NetworkFabric example-fabric /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedNetworkFabric/networkFabrics/{networkFabricName}
/// ```
class NetworkFabric extends pulumi.CustomResource {
  /// Administrative state of the resource.
  late final pulumi.Output<String> administrativeState;

  /// Switch configuration description.
  late final pulumi.Output<String?> annotation;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Configuration state of the resource.
  late final pulumi.Output<String> configurationState;

  /// ASN of CE devices for CE/PE connectivity.
  late final pulumi.Output<double> fabricASN;

  /// The version of Network Fabric.
  late final pulumi.Output<String?> fabricVersion;

  /// IPv4Prefix for Management Network. Example: 10.1.0.0/19.
  late final pulumi.Output<String> ipv4Prefix;

  /// IPv6Prefix for Management Network. Example: 3FFE:FFFF:0:CD40::/59
  late final pulumi.Output<String?> ipv6Prefix;

  /// List of L2 Isolation Domain resource IDs under the Network Fabric.
  late final pulumi.Output<List<String>> l2IsolationDomains;

  /// List of L3 Isolation Domain resource IDs under the Network Fabric.
  late final pulumi.Output<List<String>> l3IsolationDomains;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// Configuration to be used to setup the management network.
  late final pulumi.Output<ManagementNetworkConfigurationPropertiesResponse>
  managementNetworkConfiguration;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Azure resource ID for the NetworkFabricController the NetworkFabric belongs.
  late final pulumi.Output<String> networkFabricControllerId;

  /// Supported Network Fabric SKU.Example: Compute / Aggregate racks. Once the user chooses a particular SKU, only supported racks can be added to the Network Fabric. The SKU determines whether it is a single / multi rack Network Fabric.
  late final pulumi.Output<String> networkFabricSku;

  /// Provides you the latest status of the NFC service, whether it is Accepted, updating, Succeeded or Failed. During this process, the states keep changing based on the status of NFC provisioning.
  late final pulumi.Output<String> provisioningState;

  /// Number of compute racks associated to Network Fabric.
  late final pulumi.Output<int?> rackCount;

  /// List of NetworkRack resource IDs under the Network Fabric. The number of racks allowed depends on the Network Fabric SKU.
  late final pulumi.Output<List<String>> racks;

  /// Array of router IDs.
  late final pulumi.Output<List<String>> routerIds;

  /// Number of servers.Possible values are from 1-16.
  late final pulumi.Output<int> serverCountPerRack;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Network and credentials configuration currently applied to terminal server.
  late final pulumi.Output<TerminalServerConfigurationResponse>
  terminalServerConfiguration;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [NetworkFabric].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkFabric]. {@macro pulumi_managednetworkfabric_network_fabric_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkFabric(
    String name, {
    NetworkFabricArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:managednetworkfabric:NetworkFabric',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    administrativeState = registerOutput<String>('administrativeState');
    annotation = registerOutput<String?>('annotation');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    configurationState = registerOutput<String>('configurationState');
    fabricASN = registerOutput<double>('fabricASN');
    fabricVersion = registerOutput<String?>('fabricVersion');
    ipv4Prefix = registerOutput<String>('ipv4Prefix');
    ipv6Prefix = registerOutput<String?>('ipv6Prefix');
    l2IsolationDomains = registerOutput<List<String>>('l2IsolationDomains');
    l3IsolationDomains = registerOutput<List<String>>('l3IsolationDomains');
    location = registerOutput<String>('location');
    managementNetworkConfiguration =
        registerOutput<ManagementNetworkConfigurationPropertiesResponse>(
          'managementNetworkConfiguration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ManagementNetworkConfigurationPropertiesResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    this.name = registerOutput<String>('name');
    networkFabricControllerId = registerOutput<String>(
      'networkFabricControllerId',
    );
    networkFabricSku = registerOutput<String>('networkFabricSku');
    provisioningState = registerOutput<String>('provisioningState');
    rackCount = registerOutput<int?>('rackCount');
    racks = registerOutput<List<String>>('racks');
    routerIds = registerOutput<List<String>>('routerIds');
    serverCountPerRack = registerOutput<int>('serverCountPerRack');
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
    terminalServerConfiguration =
        registerOutput<TerminalServerConfigurationResponse>(
          'terminalServerConfiguration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return TerminalServerConfigurationResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    type = registerOutput<String>('type');
  }
}
