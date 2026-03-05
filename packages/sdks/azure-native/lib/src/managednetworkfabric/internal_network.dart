import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_route_policy_response.dart';
import 'import_route_policy_response.dart';
import 'internal_network_args.dart';
import 'internal_network_properties_response_bgp_configuration.dart';
import 'internal_network_properties_response_static_route_configuration.dart';
import 'system_data_response.dart';

/// Defines the Internal Network resource.
///
/// Uses Azure REST API version 2023-06-15. In version 2.x of the Azure Native provider, it used API version 2023-02-01-preview.
///
/// Other available API versions: 2023-02-01-preview, 2024-02-15-preview, 2024-06-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### InternalNetworks_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var internalNetwork = new AzureNative.ManagedNetworkFabric.InternalNetwork("internalNetwork", new()
///     {
///         Annotation = "annotation",
///         BgpConfiguration = new AzureNative.ManagedNetworkFabric.Inputs.InternalNetworkPropertiesBgpConfigurationArgs
///         {
///             AllowAS = 10,
///             AllowASOverride = AzureNative.ManagedNetworkFabric.AllowASOverride.Enable,
///             Annotation = "annotation",
///             BfdConfiguration = new AzureNative.ManagedNetworkFabric.Inputs.BfdConfigurationArgs
///             {
///                 IntervalInMilliSeconds = 300,
///                 Multiplier = 5,
///             },
///             DefaultRouteOriginate = AzureNative.ManagedNetworkFabric.BooleanEnumProperty.True,
///             Ipv4ListenRangePrefixes = new[]
///             {
///                 "10.1.0.0/25",
///             },
///             Ipv4NeighborAddress = new[]
///             {
///                 new AzureNative.ManagedNetworkFabric.Inputs.NeighborAddressArgs
///                 {
///                     Address = "10.1.0.0",
///                 },
///             },
///             Ipv6ListenRangePrefixes = new[]
///             {
///                 "2fff::/66",
///             },
///             Ipv6NeighborAddress = new[]
///             {
///                 new AzureNative.ManagedNetworkFabric.Inputs.NeighborAddressArgs
///                 {
///                     Address = "2fff::",
///                 },
///             },
///             PeerASN = 61234,
///         },
///         ConnectedIPv4Subnets = new[]
///         {
///             new AzureNative.ManagedNetworkFabric.Inputs.ConnectedSubnetArgs
///             {
///                 Annotation = "annotation",
///                 Prefix = "10.0.0.0/24",
///             },
///         },
///         ConnectedIPv6Subnets = new[]
///         {
///             new AzureNative.ManagedNetworkFabric.Inputs.ConnectedSubnetArgs
///             {
///                 Annotation = "annotation",
///                 Prefix = "3FFE:FFFF:0:CD30::a0/29",
///             },
///         },
///         EgressAclId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl",
///         ExportRoutePolicy = new AzureNative.ManagedNetworkFabric.Inputs.ExportRoutePolicyArgs
///         {
///             ExportIpv4RoutePolicyId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///             ExportIpv6RoutePolicyId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///         },
///         ExportRoutePolicyId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///         Extension = AzureNative.ManagedNetworkFabric.Extension.NoExtension,
///         ImportRoutePolicy = new AzureNative.ManagedNetworkFabric.Inputs.ImportRoutePolicyArgs
///         {
///             ImportIpv4RoutePolicyId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///             ImportIpv6RoutePolicyId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///         },
///         ImportRoutePolicyId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///         IngressAclId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl",
///         InternalNetworkName = "example-internalnetwork",
///         IsMonitoringEnabled = AzureNative.ManagedNetworkFabric.IsMonitoringEnabled.True,
///         L3IsolationDomainName = "example-l3domain",
///         Mtu = 1500,
///         ResourceGroupName = "example-rg",
///         StaticRouteConfiguration = new AzureNative.ManagedNetworkFabric.Inputs.InternalNetworkPropertiesStaticRouteConfigurationArgs
///         {
///             BfdConfiguration = new AzureNative.ManagedNetworkFabric.Inputs.BfdConfigurationArgs
///             {
///                 IntervalInMilliSeconds = 300,
///                 Multiplier = 15,
///             },
///             Extension = AzureNative.ManagedNetworkFabric.Extension.NoExtension,
///             Ipv4Routes = new[]
///             {
///                 new AzureNative.ManagedNetworkFabric.Inputs.StaticRoutePropertiesArgs
///                 {
///                     NextHop = new[]
///                     {
///                         "10.0.0.1",
///                     },
///                     Prefix = "jffgck",
///                 },
///             },
///             Ipv6Routes = new[]
///             {
///                 new AzureNative.ManagedNetworkFabric.Inputs.StaticRoutePropertiesArgs
///                 {
///                     NextHop = new[]
///                     {
///                         "3ffe::1",
///                     },
///                     Prefix = "2fff::/64",
///                 },
///             },
///         },
///         VlanId = 755,
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
/// 		_, err := managednetworkfabric.NewInternalNetwork(ctx, "internalNetwork", &managednetworkfabric.InternalNetworkArgs{
/// 			Annotation: pulumi.String("annotation"),
/// 			BgpConfiguration: &managednetworkfabric.InternalNetworkPropertiesBgpConfigurationArgs{
/// 				AllowAS:         pulumi.Int(10),
/// 				AllowASOverride: pulumi.String(managednetworkfabric.AllowASOverrideEnable),
/// 				Annotation:      pulumi.String("annotation"),
/// 				BfdConfiguration: &managednetworkfabric.BfdConfigurationArgs{
/// 					IntervalInMilliSeconds: pulumi.Int(300),
/// 					Multiplier:             pulumi.Int(5),
/// 				},
/// 				DefaultRouteOriginate: pulumi.String(managednetworkfabric.BooleanEnumPropertyTrue),
/// 				Ipv4ListenRangePrefixes: pulumi.StringArray{
/// 					pulumi.String("10.1.0.0/25"),
/// 				},
/// 				Ipv4NeighborAddress: managednetworkfabric.NeighborAddressArray{
/// 					&managednetworkfabric.NeighborAddressArgs{
/// 						Address: pulumi.String("10.1.0.0"),
/// 					},
/// 				},
/// 				Ipv6ListenRangePrefixes: pulumi.StringArray{
/// 					pulumi.String("2fff::/66"),
/// 				},
/// 				Ipv6NeighborAddress: managednetworkfabric.NeighborAddressArray{
/// 					&managednetworkfabric.NeighborAddressArgs{
/// 						Address: pulumi.String("2fff::"),
/// 					},
/// 				},
/// 				PeerASN: pulumi.Float64(61234),
/// 			},
/// 			ConnectedIPv4Subnets: managednetworkfabric.ConnectedSubnetArray{
/// 				&managednetworkfabric.ConnectedSubnetArgs{
/// 					Annotation: pulumi.String("annotation"),
/// 					Prefix:     pulumi.String("10.0.0.0/24"),
/// 				},
/// 			},
/// 			ConnectedIPv6Subnets: managednetworkfabric.ConnectedSubnetArray{
/// 				&managednetworkfabric.ConnectedSubnetArgs{
/// 					Annotation: pulumi.String("annotation"),
/// 					Prefix:     pulumi.String("3FFE:FFFF:0:CD30::a0/29"),
/// 				},
/// 			},
/// 			EgressAclId: pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl"),
/// 			ExportRoutePolicy: &managednetworkfabric.ExportRoutePolicyArgs{
/// 				ExportIpv4RoutePolicyId: pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName"),
/// 				ExportIpv6RoutePolicyId: pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName"),
/// 			},
/// 			ExportRoutePolicyId: pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName"),
/// 			Extension:           pulumi.String(managednetworkfabric.ExtensionNoExtension),
/// 			ImportRoutePolicy: &managednetworkfabric.ImportRoutePolicyArgs{
/// 				ImportIpv4RoutePolicyId: pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName"),
/// 				ImportIpv6RoutePolicyId: pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName"),
/// 			},
/// 			ImportRoutePolicyId:   pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName"),
/// 			IngressAclId:          pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl"),
/// 			InternalNetworkName:   pulumi.String("example-internalnetwork"),
/// 			IsMonitoringEnabled:   pulumi.String(managednetworkfabric.IsMonitoringEnabledTrue),
/// 			L3IsolationDomainName: pulumi.String("example-l3domain"),
/// 			Mtu:                   pulumi.Int(1500),
/// 			ResourceGroupName:     pulumi.String("example-rg"),
/// 			StaticRouteConfiguration: &managednetworkfabric.InternalNetworkPropertiesStaticRouteConfigurationArgs{
/// 				BfdConfiguration: &managednetworkfabric.BfdConfigurationArgs{
/// 					IntervalInMilliSeconds: pulumi.Int(300),
/// 					Multiplier:             pulumi.Int(15),
/// 				},
/// 				Extension: pulumi.String(managednetworkfabric.ExtensionNoExtension),
/// 				Ipv4Routes: managednetworkfabric.StaticRoutePropertiesArray{
/// 					&managednetworkfabric.StaticRoutePropertiesArgs{
/// 						NextHop: pulumi.StringArray{
/// 							pulumi.String("10.0.0.1"),
/// 						},
/// 						Prefix: pulumi.String("jffgck"),
/// 					},
/// 				},
/// 				Ipv6Routes: managednetworkfabric.StaticRoutePropertiesArray{
/// 					&managednetworkfabric.StaticRoutePropertiesArgs{
/// 						NextHop: pulumi.StringArray{
/// 							pulumi.String("3ffe::1"),
/// 						},
/// 						Prefix: pulumi.String("2fff::/64"),
/// 					},
/// 				},
/// 			},
/// 			VlanId: pulumi.Int(755),
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
/// import com.pulumi.azurenative.managednetworkfabric.InternalNetwork;
/// import com.pulumi.azurenative.managednetworkfabric.InternalNetworkArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.InternalNetworkPropertiesBgpConfigurationArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.BfdConfigurationArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.ConnectedSubnetArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.ExportRoutePolicyArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.ImportRoutePolicyArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.InternalNetworkPropertiesStaticRouteConfigurationArgs;
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
///         var internalNetwork = new InternalNetwork("internalNetwork", InternalNetworkArgs.builder()
///             .annotation("annotation")
///             .bgpConfiguration(InternalNetworkPropertiesBgpConfigurationArgs.builder()
///                 .allowAS(10)
///                 .allowASOverride("Enable")
///                 .annotation("annotation")
///                 .bfdConfiguration(BfdConfigurationArgs.builder()
///                     .intervalInMilliSeconds(300)
///                     .multiplier(5)
///                     .build())
///                 .defaultRouteOriginate("True")
///                 .ipv4ListenRangePrefixes("10.1.0.0/25")
///                 .ipv4NeighborAddress(NeighborAddressArgs.builder()
///                     .address("10.1.0.0")
///                     .build())
///                 .ipv6ListenRangePrefixes("2fff::/66")
///                 .ipv6NeighborAddress(NeighborAddressArgs.builder()
///                     .address("2fff::")
///                     .build())
///                 .peerASN(61234.0)
///                 .build())
///             .connectedIPv4Subnets(ConnectedSubnetArgs.builder()
///                 .annotation("annotation")
///                 .prefix("10.0.0.0/24")
///                 .build())
///             .connectedIPv6Subnets(ConnectedSubnetArgs.builder()
///                 .annotation("annotation")
///                 .prefix("3FFE:FFFF:0:CD30::a0/29")
///                 .build())
///             .egressAclId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl")
///             .exportRoutePolicy(ExportRoutePolicyArgs.builder()
///                 .exportIpv4RoutePolicyId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName")
///                 .exportIpv6RoutePolicyId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName")
///                 .build())
///             .exportRoutePolicyId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName")
///             .extension("NoExtension")
///             .importRoutePolicy(ImportRoutePolicyArgs.builder()
///                 .importIpv4RoutePolicyId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName")
///                 .importIpv6RoutePolicyId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName")
///                 .build())
///             .importRoutePolicyId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName")
///             .ingressAclId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl")
///             .internalNetworkName("example-internalnetwork")
///             .isMonitoringEnabled("True")
///             .l3IsolationDomainName("example-l3domain")
///             .mtu(1500)
///             .resourceGroupName("example-rg")
///             .staticRouteConfiguration(InternalNetworkPropertiesStaticRouteConfigurationArgs.builder()
///                 .bfdConfiguration(BfdConfigurationArgs.builder()
///                     .intervalInMilliSeconds(300)
///                     .multiplier(15)
///                     .build())
///                 .extension("NoExtension")
///                 .ipv4Routes(StaticRoutePropertiesArgs.builder()
///                     .nextHop("10.0.0.1")
///                     .prefix("jffgck")
///                     .build())
///                 .ipv6Routes(StaticRoutePropertiesArgs.builder()
///                     .nextHop("3ffe::1")
///                     .prefix("2fff::/64")
///                     .build())
///                 .build())
///             .vlanId(755)
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
/// const internalNetwork = new azure_native.managednetworkfabric.InternalNetwork("internalNetwork", {
///     annotation: "annotation",
///     bgpConfiguration: {
///         allowAS: 10,
///         allowASOverride: azure_native.managednetworkfabric.AllowASOverride.Enable,
///         annotation: "annotation",
///         bfdConfiguration: {
///             intervalInMilliSeconds: 300,
///             multiplier: 5,
///         },
///         defaultRouteOriginate: azure_native.managednetworkfabric.BooleanEnumProperty.True,
///         ipv4ListenRangePrefixes: ["10.1.0.0/25"],
///         ipv4NeighborAddress: [{
///             address: "10.1.0.0",
///         }],
///         ipv6ListenRangePrefixes: ["2fff::/66"],
///         ipv6NeighborAddress: [{
///             address: "2fff::",
///         }],
///         peerASN: 61234,
///     },
///     connectedIPv4Subnets: [{
///         annotation: "annotation",
///         prefix: "10.0.0.0/24",
///     }],
///     connectedIPv6Subnets: [{
///         annotation: "annotation",
///         prefix: "3FFE:FFFF:0:CD30::a0/29",
///     }],
///     egressAclId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl",
///     exportRoutePolicy: {
///         exportIpv4RoutePolicyId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///         exportIpv6RoutePolicyId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///     },
///     exportRoutePolicyId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///     extension: azure_native.managednetworkfabric.Extension.NoExtension,
///     importRoutePolicy: {
///         importIpv4RoutePolicyId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///         importIpv6RoutePolicyId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///     },
///     importRoutePolicyId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///     ingressAclId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl",
///     internalNetworkName: "example-internalnetwork",
///     isMonitoringEnabled: azure_native.managednetworkfabric.IsMonitoringEnabled.True,
///     l3IsolationDomainName: "example-l3domain",
///     mtu: 1500,
///     resourceGroupName: "example-rg",
///     staticRouteConfiguration: {
///         bfdConfiguration: {
///             intervalInMilliSeconds: 300,
///             multiplier: 15,
///         },
///         extension: azure_native.managednetworkfabric.Extension.NoExtension,
///         ipv4Routes: [{
///             nextHop: ["10.0.0.1"],
///             prefix: "jffgck",
///         }],
///         ipv6Routes: [{
///             nextHop: ["3ffe::1"],
///             prefix: "2fff::/64",
///         }],
///     },
///     vlanId: 755,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// internal_network = azure_native.managednetworkfabric.InternalNetwork("internalNetwork",
///     annotation="annotation",
///     bgp_configuration={
///         "allow_as": 10,
///         "allow_as_override": azure_native.managednetworkfabric.AllowASOverride.ENABLE,
///         "annotation": "annotation",
///         "bfd_configuration": {
///             "interval_in_milli_seconds": 300,
///             "multiplier": 5,
///         },
///         "default_route_originate": azure_native.managednetworkfabric.BooleanEnumProperty.TRUE,
///         "ipv4_listen_range_prefixes": ["10.1.0.0/25"],
///         "ipv4_neighbor_address": [{
///             "address": "10.1.0.0",
///         }],
///         "ipv6_listen_range_prefixes": ["2fff::/66"],
///         "ipv6_neighbor_address": [{
///             "address": "2fff::",
///         }],
///         "peer_asn": 61234,
///     },
///     connected_i_pv4_subnets=[{
///         "annotation": "annotation",
///         "prefix": "10.0.0.0/24",
///     }],
///     connected_i_pv6_subnets=[{
///         "annotation": "annotation",
///         "prefix": "3FFE:FFFF:0:CD30::a0/29",
///     }],
///     egress_acl_id="/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl",
///     export_route_policy={
///         "export_ipv4_route_policy_id": "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///         "export_ipv6_route_policy_id": "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///     },
///     export_route_policy_id="/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///     extension=azure_native.managednetworkfabric.Extension.NO_EXTENSION,
///     import_route_policy={
///         "import_ipv4_route_policy_id": "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///         "import_ipv6_route_policy_id": "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///     },
///     import_route_policy_id="/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///     ingress_acl_id="/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl",
///     internal_network_name="example-internalnetwork",
///     is_monitoring_enabled=azure_native.managednetworkfabric.IsMonitoringEnabled.TRUE,
///     l3_isolation_domain_name="example-l3domain",
///     mtu=1500,
///     resource_group_name="example-rg",
///     static_route_configuration={
///         "bfd_configuration": {
///             "interval_in_milli_seconds": 300,
///             "multiplier": 15,
///         },
///         "extension": azure_native.managednetworkfabric.Extension.NO_EXTENSION,
///         "ipv4_routes": [{
///             "next_hop": ["10.0.0.1"],
///             "prefix": "jffgck",
///         }],
///         "ipv6_routes": [{
///             "next_hop": ["3ffe::1"],
///             "prefix": "2fff::/64",
///         }],
///     },
///     vlan_id=755)
///
/// ```
///
/// ```yaml
/// resources:
///   internalNetwork:
///     type: azure-native:managednetworkfabric:InternalNetwork
///     properties:
///       annotation: annotation
///       bgpConfiguration:
///         allowAS: 10
///         allowASOverride: Enable
///         annotation: annotation
///         bfdConfiguration:
///           intervalInMilliSeconds: 300
///           multiplier: 5
///         defaultRouteOriginate: True
///         ipv4ListenRangePrefixes:
///           - 10.1.0.0/25
///         ipv4NeighborAddress:
///           - address: 10.1.0.0
///         ipv6ListenRangePrefixes:
///           - 2fff::/66
///         ipv6NeighborAddress:
///           - address: '2fff::'
///         peerASN: 61234
///       connectedIPv4Subnets:
///         - annotation: annotation
///           prefix: 10.0.0.0/24
///       connectedIPv6Subnets:
///         - annotation: annotation
///           prefix: 3FFE:FFFF:0:CD30::a0/29
///       egressAclId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl
///       exportRoutePolicy:
///         exportIpv4RoutePolicyId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName
///         exportIpv6RoutePolicyId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName
///       exportRoutePolicyId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName
///       extension: NoExtension
///       importRoutePolicy:
///         importIpv4RoutePolicyId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName
///         importIpv6RoutePolicyId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName
///       importRoutePolicyId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName
///       ingressAclId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl
///       internalNetworkName: example-internalnetwork
///       isMonitoringEnabled: True
///       l3IsolationDomainName: example-l3domain
///       mtu: 1500
///       resourceGroupName: example-rg
///       staticRouteConfiguration:
///         bfdConfiguration:
///           intervalInMilliSeconds: 300
///           multiplier: 15
///         extension: NoExtension
///         ipv4Routes:
///           - nextHop:
///               - 10.0.0.1
///             prefix: jffgck
///         ipv6Routes:
///           - nextHop:
///               - 3ffe::1
///             prefix: 2fff::/64
///       vlanId: 755
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
/// $ pulumi import azure-native:managednetworkfabric:InternalNetwork example-internalnetwork /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedNetworkFabric/l3IsolationDomains/{l3IsolationDomainName}/internalNetworks/{internalNetworkName}
/// ```
class InternalNetwork extends pulumi.CustomResource {
  /// Administrative state of the resource.
  late final pulumi.Output<String> administrativeState;
  /// Switch configuration description.
  late final pulumi.Output<String?> annotation;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// BGP configuration properties.
  late final pulumi.Output<InternalNetworkPropertiesResponseBgpConfiguration?> bgpConfiguration;
  /// Configuration state of the resource.
  late final pulumi.Output<String> configurationState;
  /// List of Connected IPv4 Subnets.
  late final pulumi.Output<List<Map<String, dynamic>>?> connectedIPv4Subnets;
  /// List of connected IPv6 Subnets.
  late final pulumi.Output<List<Map<String, dynamic>>?> connectedIPv6Subnets;
  /// Egress Acl. ARM resource ID of Access Control Lists.
  late final pulumi.Output<String?> egressAclId;
  /// Export Route Policy either IPv4 or IPv6.
  late final pulumi.Output<ExportRoutePolicyResponse?> exportRoutePolicy;
  /// ARM Resource ID of the RoutePolicy. This is used for the backward compatibility.
  late final pulumi.Output<String?> exportRoutePolicyId;
  /// Extension. Example: NoExtension | NPB.
  late final pulumi.Output<String?> extension;
  /// Import Route Policy either IPv4 or IPv6.
  late final pulumi.Output<ImportRoutePolicyResponse?> importRoutePolicy;
  /// ARM Resource ID of the RoutePolicy. This is used for the backward compatibility.
  late final pulumi.Output<String?> importRoutePolicyId;
  /// Ingress Acl. ARM resource ID of Access Control Lists.
  late final pulumi.Output<String?> ingressAclId;
  /// To check whether monitoring of internal network is enabled or not.
  late final pulumi.Output<String?> isMonitoringEnabled;
  /// Maximum transmission unit. Default value is 1500.
  late final pulumi.Output<int?> mtu;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Static Route Configuration properties.
  late final pulumi.Output<InternalNetworkPropertiesResponseStaticRouteConfiguration?> staticRouteConfiguration;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Vlan identifier. Example: 1001.
  late final pulumi.Output<int> vlanId;

  /// Creates a new [InternalNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InternalNetwork]. {@macro pulumi_managednetworkfabric_internal_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InternalNetwork(
    String name, {
    InternalNetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:managednetworkfabric:InternalNetwork',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    administrativeState = registerOutput<String>('administrativeState');
    annotation = registerOutput<String?>('annotation');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    bgpConfiguration = registerOutput<InternalNetworkPropertiesResponseBgpConfiguration?>('bgpConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InternalNetworkPropertiesResponseBgpConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    configurationState = registerOutput<String>('configurationState');
    connectedIPv4Subnets = registerOutput<List<Map<String, dynamic>>?>('connectedIPv4Subnets');
    connectedIPv6Subnets = registerOutput<List<Map<String, dynamic>>?>('connectedIPv6Subnets');
    egressAclId = registerOutput<String?>('egressAclId');
    exportRoutePolicy = registerOutput<ExportRoutePolicyResponse?>('exportRoutePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExportRoutePolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    exportRoutePolicyId = registerOutput<String?>('exportRoutePolicyId');
    extension = registerOutput<String?>('extension');
    importRoutePolicy = registerOutput<ImportRoutePolicyResponse?>('importRoutePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImportRoutePolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    importRoutePolicyId = registerOutput<String?>('importRoutePolicyId');
    ingressAclId = registerOutput<String?>('ingressAclId');
    isMonitoringEnabled = registerOutput<String?>('isMonitoringEnabled');
    mtu = registerOutput<int?>('mtu');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    staticRouteConfiguration = registerOutput<InternalNetworkPropertiesResponseStaticRouteConfiguration?>('staticRouteConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InternalNetworkPropertiesResponseStaticRouteConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    vlanId = registerOutput<int>('vlanId');
  }
}
