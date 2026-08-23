import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_route_policy_information_response.dart';
import 'import_route_policy_information_response.dart';
import 'layer2_configuration_response.dart';
import 'network_to_network_interconnect_args.dart';
import 'network_to_network_interconnect_properties_response_option_blayer3_configuration.dart';
import 'npb_static_route_configuration_response.dart';
import 'system_data_response.dart';

/// The Network To Network Interconnect resource definition.
///
/// Uses Azure REST API version 2023-06-15. In version 2.x of the Azure Native provider, it used API version 2023-02-01-preview.
///
/// Other available API versions: 2023-02-01-preview, 2024-02-15-preview, 2024-06-15-preview, 2025-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NetworkToNetworkInterconnects_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkToNetworkInterconnect = new AzureNative.ManagedNetworkFabric.NetworkToNetworkInterconnect("networkToNetworkInterconnect", new()
///     {
///         EgressAclId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl",
///         ExportRoutePolicy = new AzureNative.ManagedNetworkFabric.Inputs.ExportRoutePolicyInformationArgs
///         {
///             ExportIpv4RoutePolicyId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy",
///             ExportIpv6RoutePolicyId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy",
///         },
///         ImportRoutePolicy = new AzureNative.ManagedNetworkFabric.Inputs.ImportRoutePolicyInformationArgs
///         {
///             ImportIpv4RoutePolicyId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy",
///             ImportIpv6RoutePolicyId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy",
///         },
///         IngressAclId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl",
///         IsManagementType = AzureNative.ManagedNetworkFabric.IsManagementType.True,
///         Layer2Configuration = new AzureNative.ManagedNetworkFabric.Inputs.Layer2ConfigurationArgs
///         {
///             Interfaces = new[]
///             {
///                 "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkDevices/example-networkDevice/networkInterfaces/example-networkInterface",
///             },
///             Mtu = 1500,
///         },
///         NetworkFabricName = "example-fabric",
///         NetworkToNetworkInterconnectName = "example-nni",
///         NniType = AzureNative.ManagedNetworkFabric.NniType.CE,
///         NpbStaticRouteConfiguration = new AzureNative.ManagedNetworkFabric.Inputs.NpbStaticRouteConfigurationArgs
///         {
///             BfdConfiguration = new AzureNative.ManagedNetworkFabric.Inputs.BfdConfigurationArgs
///             {
///                 IntervalInMilliSeconds = 300,
///                 Multiplier = 25,
///             },
///             Ipv4Routes = new[]
///             {
///                 new AzureNative.ManagedNetworkFabric.Inputs.StaticRoutePropertiesArgs
///                 {
///                     NextHop = new[]
///                     {
///                         "21.20.20.20",
///                     },
///                     Prefix = "20.0.0.12/30",
///                 },
///             },
///             Ipv6Routes = new[]
///             {
///                 new AzureNative.ManagedNetworkFabric.Inputs.StaticRoutePropertiesArgs
///                 {
///                     NextHop = new[]
///                     {
///                         "4FFE:FFFF:0:CD30::ac",
///                     },
///                     Prefix = "3FFE:FFFF:0:CD30::ac/127",
///                 },
///             },
///         },
///         OptionBLayer3Configuration = new AzureNative.ManagedNetworkFabric.Inputs.NetworkToNetworkInterconnectPropertiesOptionBLayer3ConfigurationArgs
///         {
///             PeerASN = 61234,
///             PrimaryIpv4Prefix = "10.0.0.12/30",
///             PrimaryIpv6Prefix = "4FFE:FFFF:0:CD30::a8/127",
///             SecondaryIpv4Prefix = "40.0.0.14/30",
///             SecondaryIpv6Prefix = "6FFE:FFFF:0:CD30::ac/127",
///             VlanId = 1234,
///         },
///         ResourceGroupName = "example-rg",
///         UseOptionB = AzureNative.ManagedNetworkFabric.BooleanEnumProperty.True,
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
/// 		_, err := managednetworkfabric.NewNetworkToNetworkInterconnect(ctx, "networkToNetworkInterconnect", &managednetworkfabric.NetworkToNetworkInterconnectArgs{
/// 			EgressAclId: pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl"),
/// 			ExportRoutePolicy: &managednetworkfabric.ExportRoutePolicyInformationArgs{
/// 				ExportIpv4RoutePolicyId: pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy"),
/// 				ExportIpv6RoutePolicyId: pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy"),
/// 			},
/// 			ImportRoutePolicy: &managednetworkfabric.ImportRoutePolicyInformationArgs{
/// 				ImportIpv4RoutePolicyId: pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy"),
/// 				ImportIpv6RoutePolicyId: pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy"),
/// 			},
/// 			IngressAclId:     pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl"),
/// 			IsManagementType: pulumi.String(managednetworkfabric.IsManagementTypeTrue),
/// 			Layer2Configuration: &managednetworkfabric.Layer2ConfigurationArgs{
/// 				Interfaces: pulumi.StringArray{
/// 					pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkDevices/example-networkDevice/networkInterfaces/example-networkInterface"),
/// 				},
/// 				Mtu: pulumi.Int(1500),
/// 			},
/// 			NetworkFabricName:                pulumi.String("example-fabric"),
/// 			NetworkToNetworkInterconnectName: pulumi.String("example-nni"),
/// 			NniType:                          pulumi.String(managednetworkfabric.NniTypeCE),
/// 			NpbStaticRouteConfiguration: &managednetworkfabric.NpbStaticRouteConfigurationArgs{
/// 				BfdConfiguration: &managednetworkfabric.BfdConfigurationArgs{
/// 					IntervalInMilliSeconds: pulumi.Int(300),
/// 					Multiplier:             pulumi.Int(25),
/// 				},
/// 				Ipv4Routes: managednetworkfabric.StaticRoutePropertiesArray{
/// 					&managednetworkfabric.StaticRoutePropertiesArgs{
/// 						NextHop: pulumi.StringArray{
/// 							pulumi.String("21.20.20.20"),
/// 						},
/// 						Prefix: pulumi.String("20.0.0.12/30"),
/// 					},
/// 				},
/// 				Ipv6Routes: managednetworkfabric.StaticRoutePropertiesArray{
/// 					&managednetworkfabric.StaticRoutePropertiesArgs{
/// 						NextHop: pulumi.StringArray{
/// 							pulumi.String("4FFE:FFFF:0:CD30::ac"),
/// 						},
/// 						Prefix: pulumi.String("3FFE:FFFF:0:CD30::ac/127"),
/// 					},
/// 				},
/// 			},
/// 			OptionBLayer3Configuration: &managednetworkfabric.NetworkToNetworkInterconnectPropertiesOptionBLayer3ConfigurationArgs{
/// 				PeerASN:             pulumi.Float64(61234),
/// 				PrimaryIpv4Prefix:   pulumi.String("10.0.0.12/30"),
/// 				PrimaryIpv6Prefix:   pulumi.String("4FFE:FFFF:0:CD30::a8/127"),
/// 				SecondaryIpv4Prefix: pulumi.String("40.0.0.14/30"),
/// 				SecondaryIpv6Prefix: pulumi.String("6FFE:FFFF:0:CD30::ac/127"),
/// 				VlanId:              pulumi.Int(1234),
/// 			},
/// 			ResourceGroupName: pulumi.String("example-rg"),
/// 			UseOptionB:        pulumi.String(managednetworkfabric.BooleanEnumPropertyTrue),
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
/// resource "azure-native_managednetworkfabric_networktonetworkinterconnect" "networkToNetworkInterconnect" {
///   egress_acl_id = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl"
///   export_route_policy = {
///     export_ipv4_route_policy_id = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy"
///     export_ipv6_route_policy_id = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy"
///   }
///   import_route_policy = {
///     import_ipv4_route_policy_id = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy"
///     import_ipv6_route_policy_id = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy"
///   }
///   ingress_acl_id     = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl"
///   is_management_type = "True"
///   layer2_configuration = {
///     interfaces = ["/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkDevices/example-networkDevice/networkInterfaces/example-networkInterface"]
///     mtu        = 1500
///   }
///   network_fabric_name                  = "example-fabric"
///   network_to_network_interconnect_name = "example-nni"
///   nni_type                             = "CE"
///   npb_static_route_configuration = {
///     bfd_configuration = {
///       interval_in_milli_seconds = 300
///       multiplier                = 25
///     }
///     ipv4_routes = [{
///       "nextHop" = ["21.20.20.20"]
///       "prefix"  = "20.0.0.12/30"
///     }]
///     ipv6_routes = [{
///       "nextHop" = ["4FFE:FFFF:0:CD30::ac"]
///       "prefix"  = "3FFE:FFFF:0:CD30::ac/127"
///     }]
///   }
///   option_b_layer3_configuration = {
///     peer_asn              = 61234
///     primary_ipv4_prefix   = "10.0.0.12/30"
///     primary_ipv6_prefix   = "4FFE:FFFF:0:CD30::a8/127"
///     secondary_ipv4_prefix = "40.0.0.14/30"
///     secondary_ipv6_prefix = "6FFE:FFFF:0:CD30::ac/127"
///     vlan_id               = 1234
///   }
///   resource_group_name = "example-rg"
///   use_option_b        = "True"
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
/// import com.pulumi.azurenative.managednetworkfabric.NetworkToNetworkInterconnect;
/// import com.pulumi.azurenative.managednetworkfabric.NetworkToNetworkInterconnectArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.ExportRoutePolicyInformationArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.ImportRoutePolicyInformationArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.Layer2ConfigurationArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.NpbStaticRouteConfigurationArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.BfdConfigurationArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.NetworkToNetworkInterconnectPropertiesOptionBLayer3ConfigurationArgs;
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
///         var networkToNetworkInterconnect = new NetworkToNetworkInterconnect("networkToNetworkInterconnect", NetworkToNetworkInterconnectArgs.builder()
///             .egressAclId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl")
///             .exportRoutePolicy(ExportRoutePolicyInformationArgs.builder()
///                 .exportIpv4RoutePolicyId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy")
///                 .exportIpv6RoutePolicyId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy")
///                 .build())
///             .importRoutePolicy(ImportRoutePolicyInformationArgs.builder()
///                 .importIpv4RoutePolicyId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy")
///                 .importIpv6RoutePolicyId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy")
///                 .build())
///             .ingressAclId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl")
///             .isManagementType("True")
///             .layer2Configuration(Layer2ConfigurationArgs.builder()
///                 .interfaces("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkDevices/example-networkDevice/networkInterfaces/example-networkInterface")
///                 .mtu(1500)
///                 .build())
///             .networkFabricName("example-fabric")
///             .networkToNetworkInterconnectName("example-nni")
///             .nniType("CE")
///             .npbStaticRouteConfiguration(NpbStaticRouteConfigurationArgs.builder()
///                 .bfdConfiguration(BfdConfigurationArgs.builder()
///                     .intervalInMilliSeconds(300)
///                     .multiplier(25)
///                     .build())
///                 .ipv4Routes(StaticRoutePropertiesArgs.builder()
///                     .nextHop("21.20.20.20")
///                     .prefix("20.0.0.12/30")
///                     .build())
///                 .ipv6Routes(StaticRoutePropertiesArgs.builder()
///                     .nextHop("4FFE:FFFF:0:CD30::ac")
///                     .prefix("3FFE:FFFF:0:CD30::ac/127")
///                     .build())
///                 .build())
///             .optionBLayer3Configuration(NetworkToNetworkInterconnectPropertiesOptionBLayer3ConfigurationArgs.builder()
///                 .peerASN(61234.0)
///                 .primaryIpv4Prefix("10.0.0.12/30")
///                 .primaryIpv6Prefix("4FFE:FFFF:0:CD30::a8/127")
///                 .secondaryIpv4Prefix("40.0.0.14/30")
///                 .secondaryIpv6Prefix("6FFE:FFFF:0:CD30::ac/127")
///                 .vlanId(1234)
///                 .build())
///             .resourceGroupName("example-rg")
///             .useOptionB("True")
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
/// const networkToNetworkInterconnect = new azure_native.managednetworkfabric.NetworkToNetworkInterconnect("networkToNetworkInterconnect", {
///     egressAclId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl",
///     exportRoutePolicy: {
///         exportIpv4RoutePolicyId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy",
///         exportIpv6RoutePolicyId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy",
///     },
///     importRoutePolicy: {
///         importIpv4RoutePolicyId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy",
///         importIpv6RoutePolicyId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy",
///     },
///     ingressAclId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl",
///     isManagementType: azure_native.managednetworkfabric.IsManagementType.True,
///     layer2Configuration: {
///         interfaces: ["/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkDevices/example-networkDevice/networkInterfaces/example-networkInterface"],
///         mtu: 1500,
///     },
///     networkFabricName: "example-fabric",
///     networkToNetworkInterconnectName: "example-nni",
///     nniType: azure_native.managednetworkfabric.NniType.CE,
///     npbStaticRouteConfiguration: {
///         bfdConfiguration: {
///             intervalInMilliSeconds: 300,
///             multiplier: 25,
///         },
///         ipv4Routes: [{
///             nextHop: ["21.20.20.20"],
///             prefix: "20.0.0.12/30",
///         }],
///         ipv6Routes: [{
///             nextHop: ["4FFE:FFFF:0:CD30::ac"],
///             prefix: "3FFE:FFFF:0:CD30::ac/127",
///         }],
///     },
///     optionBLayer3Configuration: {
///         peerASN: 61234,
///         primaryIpv4Prefix: "10.0.0.12/30",
///         primaryIpv6Prefix: "4FFE:FFFF:0:CD30::a8/127",
///         secondaryIpv4Prefix: "40.0.0.14/30",
///         secondaryIpv6Prefix: "6FFE:FFFF:0:CD30::ac/127",
///         vlanId: 1234,
///     },
///     resourceGroupName: "example-rg",
///     useOptionB: azure_native.managednetworkfabric.BooleanEnumProperty.True,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_to_network_interconnect = azure_native.managednetworkfabric.NetworkToNetworkInterconnect("networkToNetworkInterconnect",
///     egress_acl_id="/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl",
///     export_route_policy={
///         "export_ipv4_route_policy_id": "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy",
///         "export_ipv6_route_policy_id": "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy",
///     },
///     import_route_policy={
///         "import_ipv4_route_policy_id": "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy",
///         "import_ipv6_route_policy_id": "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy",
///     },
///     ingress_acl_id="/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl",
///     is_management_type=azure_native.managednetworkfabric.IsManagementType.TRUE,
///     layer2_configuration={
///         "interfaces": ["/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkDevices/example-networkDevice/networkInterfaces/example-networkInterface"],
///         "mtu": 1500,
///     },
///     network_fabric_name="example-fabric",
///     network_to_network_interconnect_name="example-nni",
///     nni_type=azure_native.managednetworkfabric.NniType.CE,
///     npb_static_route_configuration={
///         "bfd_configuration": {
///             "interval_in_milli_seconds": 300,
///             "multiplier": 25,
///         },
///         "ipv4_routes": [{
///             "next_hop": ["21.20.20.20"],
///             "prefix": "20.0.0.12/30",
///         }],
///         "ipv6_routes": [{
///             "next_hop": ["4FFE:FFFF:0:CD30::ac"],
///             "prefix": "3FFE:FFFF:0:CD30::ac/127",
///         }],
///     },
///     option_b_layer3_configuration={
///         "peer_asn": float(61234),
///         "primary_ipv4_prefix": "10.0.0.12/30",
///         "primary_ipv6_prefix": "4FFE:FFFF:0:CD30::a8/127",
///         "secondary_ipv4_prefix": "40.0.0.14/30",
///         "secondary_ipv6_prefix": "6FFE:FFFF:0:CD30::ac/127",
///         "vlan_id": 1234,
///     },
///     resource_group_name="example-rg",
///     use_option_b=azure_native.managednetworkfabric.BooleanEnumProperty.TRUE)
///
/// ```
///
/// ```yaml
/// resources:
///   networkToNetworkInterconnect:
///     type: azure-native:managednetworkfabric:NetworkToNetworkInterconnect
///     properties:
///       egressAclId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl
///       exportRoutePolicy:
///         exportIpv4RoutePolicyId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy
///         exportIpv6RoutePolicyId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy
///       importRoutePolicy:
///         importIpv4RoutePolicyId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy
///         importIpv6RoutePolicyId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy
///       ingressAclId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl
///       isManagementType: True
///       layer2Configuration:
///         interfaces:
///           - /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkDevices/example-networkDevice/networkInterfaces/example-networkInterface
///         mtu: 1500
///       networkFabricName: example-fabric
///       networkToNetworkInterconnectName: example-nni
///       nniType: CE
///       npbStaticRouteConfiguration:
///         bfdConfiguration:
///           intervalInMilliSeconds: 300
///           multiplier: 25
///         ipv4Routes:
///           - nextHop:
///               - 21.20.20.20
///             prefix: 20.0.0.12/30
///         ipv6Routes:
///           - nextHop:
///               - 4FFE:FFFF:0:CD30::ac
///             prefix: 3FFE:FFFF:0:CD30::ac/127
///       optionBLayer3Configuration:
///         peerASN: 61234
///         primaryIpv4Prefix: 10.0.0.12/30
///         primaryIpv6Prefix: 4FFE:FFFF:0:CD30::a8/127
///         secondaryIpv4Prefix: 40.0.0.14/30
///         secondaryIpv6Prefix: 6FFE:FFFF:0:CD30::ac/127
///         vlanId: 1234
///       resourceGroupName: example-rg
///       useOptionB: True
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
/// $ pulumi import azure-native:managednetworkfabric:NetworkToNetworkInterconnect example-nni /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedNetworkFabric/networkFabrics/{networkFabricName}/networkToNetworkInterconnects/{networkToNetworkInterconnectName}
/// ```
class NetworkToNetworkInterconnect extends pulumi.CustomResource {
  /// Administrative state of the resource.
  late final pulumi.Output<String> administrativeState;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Configuration state of the resource.
  late final pulumi.Output<String> configurationState;
  /// Egress Acl. ARM resource ID of Access Control Lists.
  late final pulumi.Output<String?> egressAclId;
  /// Export Route Policy configuration.
  late final pulumi.Output<ExportRoutePolicyInformationResponse?> exportRoutePolicy;
  /// Import Route Policy configuration.
  late final pulumi.Output<ImportRoutePolicyInformationResponse?> importRoutePolicy;
  /// Ingress Acl. ARM resource ID of Access Control Lists.
  late final pulumi.Output<String?> ingressAclId;
  /// Configuration to use NNI for Infrastructure Management. Example: True/False.
  late final pulumi.Output<String?> isManagementType;
  /// Common properties for Layer2 Configuration.
  late final pulumi.Output<Layer2ConfigurationResponse?> layer2Configuration;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Type of NNI used. Example: CE | NPB
  late final pulumi.Output<String?> nniType;
  /// NPB Static Route Configuration properties.
  late final pulumi.Output<NpbStaticRouteConfigurationResponse?> npbStaticRouteConfiguration;
  /// Common properties for Layer3Configuration.
  late final pulumi.Output<NetworkToNetworkInterconnectPropertiesResponseOptionBLayer3Configuration?> optionBLayer3Configuration;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Based on this option layer3 parameters are mandatory. Example: True/False
  late final pulumi.Output<String> useOptionB;

  /// Creates a new [NetworkToNetworkInterconnect].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkToNetworkInterconnect]. {@macro pulumi_managednetworkfabric_network_to_network_interconnect_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkToNetworkInterconnect(
    String name, {
    NetworkToNetworkInterconnectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:managednetworkfabric:NetworkToNetworkInterconnect',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    administrativeState = registerOutput<String>('administrativeState');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    configurationState = registerOutput<String>('configurationState');
    egressAclId = registerOutput<String?>('egressAclId');
    exportRoutePolicy = registerOutput<ExportRoutePolicyInformationResponse?>('exportRoutePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExportRoutePolicyInformationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    importRoutePolicy = registerOutput<ImportRoutePolicyInformationResponse?>('importRoutePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImportRoutePolicyInformationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ingressAclId = registerOutput<String?>('ingressAclId');
    isManagementType = registerOutput<String?>('isManagementType');
    layer2Configuration = registerOutput<Layer2ConfigurationResponse?>('layer2Configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Layer2ConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    nniType = registerOutput<String?>('nniType');
    npbStaticRouteConfiguration = registerOutput<NpbStaticRouteConfigurationResponse?>('npbStaticRouteConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NpbStaticRouteConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    optionBLayer3Configuration = registerOutput<NetworkToNetworkInterconnectPropertiesResponseOptionBLayer3Configuration?>('optionBLayer3Configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkToNetworkInterconnectPropertiesResponseOptionBLayer3Configuration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    useOptionB = registerOutput<String>('useOptionB');
  }
}
