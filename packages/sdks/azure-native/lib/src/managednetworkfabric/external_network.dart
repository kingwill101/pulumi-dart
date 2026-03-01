import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_route_policy_response.dart';
import 'external_network_args.dart';
import 'external_network_properties_response_option_aproperties.dart';
import 'import_route_policy_response.dart';
import 'l3_option_bproperties_response.dart';
import 'system_data_response.dart';

/// Defines the External Network resource.
///
/// Uses Azure REST API version 2023-06-15. In version 2.x of the Azure Native provider, it used API version 2023-02-01-preview.
///
/// Other available API versions: 2023-02-01-preview, 2024-02-15-preview, 2024-06-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ExternalNetworks_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var externalNetwork = new AzureNative.ManagedNetworkFabric.ExternalNetwork("externalNetwork", new()
///     {
///         Annotation = "annotation",
///         ExportRoutePolicy = new AzureNative.ManagedNetworkFabric.Inputs.ExportRoutePolicyArgs
///         {
///             ExportIpv4RoutePolicyId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///             ExportIpv6RoutePolicyId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///         },
///         ExportRoutePolicyId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///         ExternalNetworkName = "example-externalnetwork",
///         ImportRoutePolicy = new AzureNative.ManagedNetworkFabric.Inputs.ImportRoutePolicyArgs
///         {
///             ImportIpv4RoutePolicyId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///             ImportIpv6RoutePolicyId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///         },
///         ImportRoutePolicyId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///         L3IsolationDomainName = "example-l3domain",
///         NetworkToNetworkInterconnectId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric/networkToNetworkInterconnects/example-nni",
///         OptionAProperties = new AzureNative.ManagedNetworkFabric.Inputs.ExternalNetworkPropertiesOptionAPropertiesArgs
///         {
///             BfdConfiguration = new AzureNative.ManagedNetworkFabric.Inputs.BfdConfigurationArgs
///             {
///                 IntervalInMilliSeconds = 300,
///                 Multiplier = 15,
///             },
///             EgressAclId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl",
///             IngressAclId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl",
///             Mtu = 1500,
///             PeerASN = 65047,
///             PrimaryIpv4Prefix = "10.1.1.0/30",
///             PrimaryIpv6Prefix = "3FFE:FFFF:0:CD30::a0/126",
///             SecondaryIpv4Prefix = "10.1.1.4/30",
///             SecondaryIpv6Prefix = "3FFE:FFFF:0:CD30::a4/126",
///             VlanId = 1001,
///         },
///         OptionBProperties = new AzureNative.ManagedNetworkFabric.Inputs.L3OptionBPropertiesArgs
///         {
///             ExportRouteTargets = new[]
///             {
///                 "65046:10039",
///             },
///             ImportRouteTargets = new[]
///             {
///                 "65046:10039",
///             },
///             RouteTargets = new AzureNative.ManagedNetworkFabric.Inputs.RouteTargetInformationArgs
///             {
///                 ExportIpv4RouteTargets = new[]
///                 {
///                     "65046:10039",
///                 },
///                 ExportIpv6RouteTargets = new[]
///                 {
///                     "65046:10039",
///                 },
///                 ImportIpv4RouteTargets = new[]
///                 {
///                     "65046:10039",
///                 },
///                 ImportIpv6RouteTargets = new[]
///                 {
///                     "65046:10039",
///                 },
///             },
///         },
///         PeeringOption = AzureNative.ManagedNetworkFabric.PeeringOption.OptionA,
///         ResourceGroupName = "example-rg",
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
/// 		_, err := managednetworkfabric.NewExternalNetwork(ctx, "externalNetwork", &managednetworkfabric.ExternalNetworkArgs{
/// 			Annotation: pulumi.String("annotation"),
/// 			ExportRoutePolicy: &managednetworkfabric.ExportRoutePolicyArgs{
/// 				ExportIpv4RoutePolicyId: pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName"),
/// 				ExportIpv6RoutePolicyId: pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName"),
/// 			},
/// 			ExportRoutePolicyId: pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName"),
/// 			ExternalNetworkName: pulumi.String("example-externalnetwork"),
/// 			ImportRoutePolicy: &managednetworkfabric.ImportRoutePolicyArgs{
/// 				ImportIpv4RoutePolicyId: pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName"),
/// 				ImportIpv6RoutePolicyId: pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName"),
/// 			},
/// 			ImportRoutePolicyId:            pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName"),
/// 			L3IsolationDomainName:          pulumi.String("example-l3domain"),
/// 			NetworkToNetworkInterconnectId: pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric/networkToNetworkInterconnects/example-nni"),
/// 			OptionAProperties: &managednetworkfabric.ExternalNetworkPropertiesOptionAPropertiesArgs{
/// 				BfdConfiguration: &managednetworkfabric.BfdConfigurationArgs{
/// 					IntervalInMilliSeconds: pulumi.Int(300),
/// 					Multiplier:             pulumi.Int(15),
/// 				},
/// 				EgressAclId:         pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl"),
/// 				IngressAclId:        pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl"),
/// 				Mtu:                 pulumi.Int(1500),
/// 				PeerASN:             pulumi.Float64(65047),
/// 				PrimaryIpv4Prefix:   pulumi.String("10.1.1.0/30"),
/// 				PrimaryIpv6Prefix:   pulumi.String("3FFE:FFFF:0:CD30::a0/126"),
/// 				SecondaryIpv4Prefix: pulumi.String("10.1.1.4/30"),
/// 				SecondaryIpv6Prefix: pulumi.String("3FFE:FFFF:0:CD30::a4/126"),
/// 				VlanId:              pulumi.Int(1001),
/// 			},
/// 			OptionBProperties: &managednetworkfabric.L3OptionBPropertiesArgs{
/// 				ExportRouteTargets: pulumi.StringArray{
/// 					pulumi.String("65046:10039"),
/// 				},
/// 				ImportRouteTargets: pulumi.StringArray{
/// 					pulumi.String("65046:10039"),
/// 				},
/// 				RouteTargets: &managednetworkfabric.RouteTargetInformationArgs{
/// 					ExportIpv4RouteTargets: pulumi.StringArray{
/// 						pulumi.String("65046:10039"),
/// 					},
/// 					ExportIpv6RouteTargets: pulumi.StringArray{
/// 						pulumi.String("65046:10039"),
/// 					},
/// 					ImportIpv4RouteTargets: pulumi.StringArray{
/// 						pulumi.String("65046:10039"),
/// 					},
/// 					ImportIpv6RouteTargets: pulumi.StringArray{
/// 						pulumi.String("65046:10039"),
/// 					},
/// 				},
/// 			},
/// 			PeeringOption:     pulumi.String(managednetworkfabric.PeeringOptionOptionA),
/// 			ResourceGroupName: pulumi.String("example-rg"),
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
/// import com.pulumi.azurenative.managednetworkfabric.ExternalNetwork;
/// import com.pulumi.azurenative.managednetworkfabric.ExternalNetworkArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.ExportRoutePolicyArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.ImportRoutePolicyArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.ExternalNetworkPropertiesOptionAPropertiesArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.BfdConfigurationArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.L3OptionBPropertiesArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.RouteTargetInformationArgs;
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
///         var externalNetwork = new ExternalNetwork("externalNetwork", ExternalNetworkArgs.builder()
///             .annotation("annotation")
///             .exportRoutePolicy(ExportRoutePolicyArgs.builder()
///                 .exportIpv4RoutePolicyId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName")
///                 .exportIpv6RoutePolicyId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName")
///                 .build())
///             .exportRoutePolicyId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName")
///             .externalNetworkName("example-externalnetwork")
///             .importRoutePolicy(ImportRoutePolicyArgs.builder()
///                 .importIpv4RoutePolicyId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName")
///                 .importIpv6RoutePolicyId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName")
///                 .build())
///             .importRoutePolicyId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName")
///             .l3IsolationDomainName("example-l3domain")
///             .networkToNetworkInterconnectId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric/networkToNetworkInterconnects/example-nni")
///             .optionAProperties(ExternalNetworkPropertiesOptionAPropertiesArgs.builder()
///                 .bfdConfiguration(BfdConfigurationArgs.builder()
///                     .intervalInMilliSeconds(300)
///                     .multiplier(15)
///                     .build())
///                 .egressAclId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl")
///                 .ingressAclId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl")
///                 .mtu(1500)
///                 .peerASN(65047.0)
///                 .primaryIpv4Prefix("10.1.1.0/30")
///                 .primaryIpv6Prefix("3FFE:FFFF:0:CD30::a0/126")
///                 .secondaryIpv4Prefix("10.1.1.4/30")
///                 .secondaryIpv6Prefix("3FFE:FFFF:0:CD30::a4/126")
///                 .vlanId(1001)
///                 .build())
///             .optionBProperties(L3OptionBPropertiesArgs.builder()
///                 .exportRouteTargets("65046:10039")
///                 .importRouteTargets("65046:10039")
///                 .routeTargets(RouteTargetInformationArgs.builder()
///                     .exportIpv4RouteTargets("65046:10039")
///                     .exportIpv6RouteTargets("65046:10039")
///                     .importIpv4RouteTargets("65046:10039")
///                     .importIpv6RouteTargets("65046:10039")
///                     .build())
///                 .build())
///             .peeringOption("OptionA")
///             .resourceGroupName("example-rg")
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
/// const externalNetwork = new azure_native.managednetworkfabric.ExternalNetwork("externalNetwork", {
///     annotation: "annotation",
///     exportRoutePolicy: {
///         exportIpv4RoutePolicyId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///         exportIpv6RoutePolicyId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///     },
///     exportRoutePolicyId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///     externalNetworkName: "example-externalnetwork",
///     importRoutePolicy: {
///         importIpv4RoutePolicyId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///         importIpv6RoutePolicyId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///     },
///     importRoutePolicyId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///     l3IsolationDomainName: "example-l3domain",
///     networkToNetworkInterconnectId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric/networkToNetworkInterconnects/example-nni",
///     optionAProperties: {
///         bfdConfiguration: {
///             intervalInMilliSeconds: 300,
///             multiplier: 15,
///         },
///         egressAclId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl",
///         ingressAclId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl",
///         mtu: 1500,
///         peerASN: 65047,
///         primaryIpv4Prefix: "10.1.1.0/30",
///         primaryIpv6Prefix: "3FFE:FFFF:0:CD30::a0/126",
///         secondaryIpv4Prefix: "10.1.1.4/30",
///         secondaryIpv6Prefix: "3FFE:FFFF:0:CD30::a4/126",
///         vlanId: 1001,
///     },
///     optionBProperties: {
///         exportRouteTargets: ["65046:10039"],
///         importRouteTargets: ["65046:10039"],
///         routeTargets: {
///             exportIpv4RouteTargets: ["65046:10039"],
///             exportIpv6RouteTargets: ["65046:10039"],
///             importIpv4RouteTargets: ["65046:10039"],
///             importIpv6RouteTargets: ["65046:10039"],
///         },
///     },
///     peeringOption: azure_native.managednetworkfabric.PeeringOption.OptionA,
///     resourceGroupName: "example-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// external_network = azure_native.managednetworkfabric.ExternalNetwork("externalNetwork",
///     annotation="annotation",
///     export_route_policy={
///         "export_ipv4_route_policy_id": "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///         "export_ipv6_route_policy_id": "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///     },
///     export_route_policy_id="/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///     external_network_name="example-externalnetwork",
///     import_route_policy={
///         "import_ipv4_route_policy_id": "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///         "import_ipv6_route_policy_id": "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///     },
///     import_route_policy_id="/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///     l3_isolation_domain_name="example-l3domain",
///     network_to_network_interconnect_id="/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric/networkToNetworkInterconnects/example-nni",
///     option_a_properties={
///         "bfd_configuration": {
///             "interval_in_milli_seconds": 300,
///             "multiplier": 15,
///         },
///         "egress_acl_id": "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl",
///         "ingress_acl_id": "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl",
///         "mtu": 1500,
///         "peer_asn": 65047,
///         "primary_ipv4_prefix": "10.1.1.0/30",
///         "primary_ipv6_prefix": "3FFE:FFFF:0:CD30::a0/126",
///         "secondary_ipv4_prefix": "10.1.1.4/30",
///         "secondary_ipv6_prefix": "3FFE:FFFF:0:CD30::a4/126",
///         "vlan_id": 1001,
///     },
///     option_b_properties={
///         "export_route_targets": ["65046:10039"],
///         "import_route_targets": ["65046:10039"],
///         "route_targets": {
///             "export_ipv4_route_targets": ["65046:10039"],
///             "export_ipv6_route_targets": ["65046:10039"],
///             "import_ipv4_route_targets": ["65046:10039"],
///             "import_ipv6_route_targets": ["65046:10039"],
///         },
///     },
///     peering_option=azure_native.managednetworkfabric.PeeringOption.OPTION_A,
///     resource_group_name="example-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   externalNetwork:
///     type: azure-native:managednetworkfabric:ExternalNetwork
///     properties:
///       annotation: annotation
///       exportRoutePolicy:
///         exportIpv4RoutePolicyId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName
///         exportIpv6RoutePolicyId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName
///       exportRoutePolicyId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName
///       externalNetworkName: example-externalnetwork
///       importRoutePolicy:
///         importIpv4RoutePolicyId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName
///         importIpv6RoutePolicyId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName
///       importRoutePolicyId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName
///       l3IsolationDomainName: example-l3domain
///       networkToNetworkInterconnectId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric/networkToNetworkInterconnects/example-nni
///       optionAProperties:
///         bfdConfiguration:
///           intervalInMilliSeconds: 300
///           multiplier: 15
///         egressAclId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl
///         ingressAclId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/accessControlLists/example-acl
///         mtu: 1500
///         peerASN: 65047
///         primaryIpv4Prefix: 10.1.1.0/30
///         primaryIpv6Prefix: 3FFE:FFFF:0:CD30::a0/126
///         secondaryIpv4Prefix: 10.1.1.4/30
///         secondaryIpv6Prefix: 3FFE:FFFF:0:CD30::a4/126
///         vlanId: 1001
///       optionBProperties:
///         exportRouteTargets:
///           - 65046:10039
///         importRouteTargets:
///           - 65046:10039
///         routeTargets:
///           exportIpv4RouteTargets:
///             - 65046:10039
///           exportIpv6RouteTargets:
///             - 65046:10039
///           importIpv4RouteTargets:
///             - 65046:10039
///           importIpv6RouteTargets:
///             - 65046:10039
///       peeringOption: OptionA
///       resourceGroupName: example-rg
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
/// $ pulumi import azure-native:managednetworkfabric:ExternalNetwork example-externalnetwork /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedNetworkFabric/l3IsolationDomains/{l3IsolationDomainName}/externalNetworks/{externalNetworkName}
/// ```
class ExternalNetwork extends pulumi.CustomResource {
  /// Administrative state of the resource.
  late final pulumi.Output<String> administrativeState;
  /// Switch configuration description.
  late final pulumi.Output<String?> annotation;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Configuration state of the resource.
  late final pulumi.Output<String> configurationState;
  /// Export Route Policy either IPv4 or IPv6.
  late final pulumi.Output<ExportRoutePolicyResponse?> exportRoutePolicy;
  /// ARM Resource ID of the RoutePolicy. This is used for the backward compatibility.
  late final pulumi.Output<String?> exportRoutePolicyId;
  /// Import Route Policy either IPv4 or IPv6.
  late final pulumi.Output<ImportRoutePolicyResponse?> importRoutePolicy;
  /// ARM Resource ID of the RoutePolicy. This is used for the backward compatibility.
  late final pulumi.Output<String?> importRoutePolicyId;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// ARM Resource ID of the networkToNetworkInterconnectId of the ExternalNetwork resource.
  late final pulumi.Output<String?> networkToNetworkInterconnectId;
  /// option A properties object
  late final pulumi.Output<ExternalNetworkPropertiesResponseOptionAProperties?> optionAProperties;
  /// option B properties object
  late final pulumi.Output<L3OptionBPropertiesResponse?> optionBProperties;
  /// Peering option list.
  late final pulumi.Output<String> peeringOption;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ExternalNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExternalNetwork]. {@macro pulumi_managednetworkfabric_external_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExternalNetwork(
    String name, {
    ExternalNetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:managednetworkfabric:ExternalNetwork',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.administrativeState = registerOutput<String>('administrativeState');
    this.annotation = registerOutput<String?>('annotation');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.configurationState = registerOutput<String>('configurationState');
    this.exportRoutePolicy = registerOutput<ExportRoutePolicyResponse?>('exportRoutePolicy');
    this.exportRoutePolicyId = registerOutput<String?>('exportRoutePolicyId');
    this.importRoutePolicy = registerOutput<ImportRoutePolicyResponse?>('importRoutePolicy');
    this.importRoutePolicyId = registerOutput<String?>('importRoutePolicyId');
    this.name = registerOutput<String>('name');
    this.networkToNetworkInterconnectId = registerOutput<String?>('networkToNetworkInterconnectId');
    this.optionAProperties = registerOutput<ExternalNetworkPropertiesResponseOptionAProperties?>('optionAProperties');
    this.optionBProperties = registerOutput<L3OptionBPropertiesResponse?>('optionBProperties');
    this.peeringOption = registerOutput<String>('peeringOption');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
