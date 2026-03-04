import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_policy_args.dart';
import 'system_data_response.dart';

/// The RoutePolicy resource definition.
///
/// Uses Azure REST API version 2023-06-15. In version 2.x of the Azure Native provider, it used API version 2023-02-01-preview.
///
/// Other available API versions: 2023-02-01-preview, 2024-02-15-preview, 2024-06-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RoutePolicies_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var routePolicy = new AzureNative.ManagedNetworkFabric.RoutePolicy("routePolicy", new()
///     {
///         AddressFamilyType = AzureNative.ManagedNetworkFabric.AddressFamilyType.IPv4,
///         Annotation = "annotation",
///         DefaultAction = AzureNative.ManagedNetworkFabric.CommunityActionTypes.Deny,
///         Location = "eastus",
///         NetworkFabricId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric",
///         ResourceGroupName = "example-rg",
///         RoutePolicyName = "example-routePolicy",
///         Statements = new[]
///         {
///             new AzureNative.ManagedNetworkFabric.Inputs.RoutePolicyStatementPropertiesArgs
///             {
///                 Action = new AzureNative.ManagedNetworkFabric.Inputs.StatementActionPropertiesArgs
///                 {
///                     ActionType = AzureNative.ManagedNetworkFabric.RoutePolicyActionType.Permit,
///                     IpCommunityProperties = new AzureNative.ManagedNetworkFabric.Inputs.ActionIpCommunityPropertiesArgs
///                     {
///                         Add = new AzureNative.ManagedNetworkFabric.Inputs.IpCommunityIdListArgs
///                         {
///                             IpCommunityIds = new[]
///                             {
///                                 "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipCommunities/example-ipCommunity",
///                             },
///                         },
///                         Delete = new AzureNative.ManagedNetworkFabric.Inputs.IpCommunityIdListArgs
///                         {
///                             IpCommunityIds = new[]
///                             {
///                                 "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipCommunities/example-ipCommunity",
///                             },
///                         },
///                         Set = new AzureNative.ManagedNetworkFabric.Inputs.IpCommunityIdListArgs
///                         {
///                             IpCommunityIds = new[]
///                             {
///                                 "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipCommunities/example-ipCommunity",
///                             },
///                         },
///                     },
///                     IpExtendedCommunityProperties = new AzureNative.ManagedNetworkFabric.Inputs.ActionIpExtendedCommunityPropertiesArgs
///                     {
///                         Add = new AzureNative.ManagedNetworkFabric.Inputs.IpExtendedCommunityIdListArgs
///                         {
///                             IpExtendedCommunityIds = new[]
///                             {
///                                 "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipExtendedCommunities/example-ipExtendedCommunity",
///                             },
///                         },
///                         Delete = new AzureNative.ManagedNetworkFabric.Inputs.IpExtendedCommunityIdListArgs
///                         {
///                             IpExtendedCommunityIds = new[]
///                             {
///                                 "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipExtendedCommunities/example-ipExtendedCommunity",
///                             },
///                         },
///                         Set = new AzureNative.ManagedNetworkFabric.Inputs.IpExtendedCommunityIdListArgs
///                         {
///                             IpExtendedCommunityIds = new[]
///                             {
///                                 "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipExtendedCommunities/example-ipExtendedCommunity",
///                             },
///                         },
///                     },
///                     LocalPreference = 20,
///                 },
///                 Annotation = "annotation",
///                 Condition = new AzureNative.ManagedNetworkFabric.Inputs.StatementConditionPropertiesArgs
///                 {
///                     IpCommunityIds = new[]
///                     {
///                         "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipCommunities/example-ipCommunity",
///                     },
///                     IpExtendedCommunityIds = new[]
///                     {
///                         "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipExtendedCommunities/example-ipExtendedCommunity",
///                     },
///                     IpPrefixId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipPrefixes/example-ipPrefix",
///                     Type = AzureNative.ManagedNetworkFabric.RoutePolicyConditionType.Or,
///                 },
///                 SequenceNumber = 7,
///             },
///         },
///         Tags =
///         {
///             { "keyID", "keyValue" },
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
/// 		_, err := managednetworkfabric.NewRoutePolicy(ctx, "routePolicy", &managednetworkfabric.RoutePolicyArgs{
/// 			AddressFamilyType: pulumi.String(managednetworkfabric.AddressFamilyTypeIPv4),
/// 			Annotation:        pulumi.String("annotation"),
/// 			DefaultAction:     pulumi.String(managednetworkfabric.CommunityActionTypesDeny),
/// 			Location:          pulumi.String("eastus"),
/// 			NetworkFabricId:   pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric"),
/// 			ResourceGroupName: pulumi.String("example-rg"),
/// 			RoutePolicyName:   pulumi.String("example-routePolicy"),
/// 			Statements: managednetworkfabric.RoutePolicyStatementPropertiesArray{
/// 				&managednetworkfabric.RoutePolicyStatementPropertiesArgs{
/// 					Action: &managednetworkfabric.StatementActionPropertiesArgs{
/// 						ActionType: pulumi.String(managednetworkfabric.RoutePolicyActionTypePermit),
/// 						IpCommunityProperties: &managednetworkfabric.ActionIpCommunityPropertiesArgs{
/// 							Add: &managednetworkfabric.IpCommunityIdListArgs{
/// 								IpCommunityIds: pulumi.StringArray{
/// 									pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipCommunities/example-ipCommunity"),
/// 								},
/// 							},
/// 							Delete: &managednetworkfabric.IpCommunityIdListArgs{
/// 								IpCommunityIds: pulumi.StringArray{
/// 									pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipCommunities/example-ipCommunity"),
/// 								},
/// 							},
/// 							Set: &managednetworkfabric.IpCommunityIdListArgs{
/// 								IpCommunityIds: pulumi.StringArray{
/// 									pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipCommunities/example-ipCommunity"),
/// 								},
/// 							},
/// 						},
/// 						IpExtendedCommunityProperties: &managednetworkfabric.ActionIpExtendedCommunityPropertiesArgs{
/// 							Add: &managednetworkfabric.IpExtendedCommunityIdListArgs{
/// 								IpExtendedCommunityIds: pulumi.StringArray{
/// 									pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipExtendedCommunities/example-ipExtendedCommunity"),
/// 								},
/// 							},
/// 							Delete: &managednetworkfabric.IpExtendedCommunityIdListArgs{
/// 								IpExtendedCommunityIds: pulumi.StringArray{
/// 									pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipExtendedCommunities/example-ipExtendedCommunity"),
/// 								},
/// 							},
/// 							Set: &managednetworkfabric.IpExtendedCommunityIdListArgs{
/// 								IpExtendedCommunityIds: pulumi.StringArray{
/// 									pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipExtendedCommunities/example-ipExtendedCommunity"),
/// 								},
/// 							},
/// 						},
/// 						LocalPreference: pulumi.Float64(20),
/// 					},
/// 					Annotation: pulumi.String("annotation"),
/// 					Condition: &managednetworkfabric.StatementConditionPropertiesArgs{
/// 						IpCommunityIds: pulumi.StringArray{
/// 							pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipCommunities/example-ipCommunity"),
/// 						},
/// 						IpExtendedCommunityIds: pulumi.StringArray{
/// 							pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipExtendedCommunities/example-ipExtendedCommunity"),
/// 						},
/// 						IpPrefixId: pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipPrefixes/example-ipPrefix"),
/// 						Type:       pulumi.String(managednetworkfabric.RoutePolicyConditionTypeOr),
/// 					},
/// 					SequenceNumber: pulumi.Float64(7),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"keyID": pulumi.String("keyValue"),
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
/// import com.pulumi.azurenative.managednetworkfabric.RoutePolicy;
/// import com.pulumi.azurenative.managednetworkfabric.RoutePolicyArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.RoutePolicyStatementPropertiesArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.StatementActionPropertiesArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.ActionIpCommunityPropertiesArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.IpCommunityIdListArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.ActionIpExtendedCommunityPropertiesArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.IpExtendedCommunityIdListArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.StatementConditionPropertiesArgs;
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
///         var routePolicy = new RoutePolicy("routePolicy", RoutePolicyArgs.builder()
///             .addressFamilyType("IPv4")
///             .annotation("annotation")
///             .defaultAction("Deny")
///             .location("eastus")
///             .networkFabricId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric")
///             .resourceGroupName("example-rg")
///             .routePolicyName("example-routePolicy")
///             .statements(RoutePolicyStatementPropertiesArgs.builder()
///                 .action(StatementActionPropertiesArgs.builder()
///                     .actionType("Permit")
///                     .ipCommunityProperties(ActionIpCommunityPropertiesArgs.builder()
///                         .add(IpCommunityIdListArgs.builder()
///                             .ipCommunityIds("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipCommunities/example-ipCommunity")
///                             .build())
///                         .delete(IpCommunityIdListArgs.builder()
///                             .ipCommunityIds("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipCommunities/example-ipCommunity")
///                             .build())
///                         .set(IpCommunityIdListArgs.builder()
///                             .ipCommunityIds("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipCommunities/example-ipCommunity")
///                             .build())
///                         .build())
///                     .ipExtendedCommunityProperties(ActionIpExtendedCommunityPropertiesArgs.builder()
///                         .add(IpExtendedCommunityIdListArgs.builder()
///                             .ipExtendedCommunityIds("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipExtendedCommunities/example-ipExtendedCommunity")
///                             .build())
///                         .delete(IpExtendedCommunityIdListArgs.builder()
///                             .ipExtendedCommunityIds("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipExtendedCommunities/example-ipExtendedCommunity")
///                             .build())
///                         .set(IpExtendedCommunityIdListArgs.builder()
///                             .ipExtendedCommunityIds("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipExtendedCommunities/example-ipExtendedCommunity")
///                             .build())
///                         .build())
///                     .localPreference(20.0)
///                     .build())
///                 .annotation("annotation")
///                 .condition(StatementConditionPropertiesArgs.builder()
///                     .ipCommunityIds("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipCommunities/example-ipCommunity")
///                     .ipExtendedCommunityIds("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipExtendedCommunities/example-ipExtendedCommunity")
///                     .ipPrefixId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipPrefixes/example-ipPrefix")
///                     .type("Or")
///                     .build())
///                 .sequenceNumber(7.0)
///                 .build())
///             .tags(Map.of("keyID", "keyValue"))
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
/// const routePolicy = new azure_native.managednetworkfabric.RoutePolicy("routePolicy", {
///     addressFamilyType: azure_native.managednetworkfabric.AddressFamilyType.IPv4,
///     annotation: "annotation",
///     defaultAction: azure_native.managednetworkfabric.CommunityActionTypes.Deny,
///     location: "eastus",
///     networkFabricId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric",
///     resourceGroupName: "example-rg",
///     routePolicyName: "example-routePolicy",
///     statements: [{
///         action: {
///             actionType: azure_native.managednetworkfabric.RoutePolicyActionType.Permit,
///             ipCommunityProperties: {
///                 add: {
///                     ipCommunityIds: ["/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipCommunities/example-ipCommunity"],
///                 },
///                 "delete": {
///                     ipCommunityIds: ["/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipCommunities/example-ipCommunity"],
///                 },
///                 set: {
///                     ipCommunityIds: ["/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipCommunities/example-ipCommunity"],
///                 },
///             },
///             ipExtendedCommunityProperties: {
///                 add: {
///                     ipExtendedCommunityIds: ["/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipExtendedCommunities/example-ipExtendedCommunity"],
///                 },
///                 "delete": {
///                     ipExtendedCommunityIds: ["/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipExtendedCommunities/example-ipExtendedCommunity"],
///                 },
///                 set: {
///                     ipExtendedCommunityIds: ["/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipExtendedCommunities/example-ipExtendedCommunity"],
///                 },
///             },
///             localPreference: 20,
///         },
///         annotation: "annotation",
///         condition: {
///             ipCommunityIds: ["/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipCommunities/example-ipCommunity"],
///             ipExtendedCommunityIds: ["/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipExtendedCommunities/example-ipExtendedCommunity"],
///             ipPrefixId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipPrefixes/example-ipPrefix",
///             type: azure_native.managednetworkfabric.RoutePolicyConditionType.Or,
///         },
///         sequenceNumber: 7,
///     }],
///     tags: {
///         keyID: "keyValue",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// route_policy = azure_native.managednetworkfabric.RoutePolicy("routePolicy",
///     address_family_type=azure_native.managednetworkfabric.AddressFamilyType.I_PV4,
///     annotation="annotation",
///     default_action=azure_native.managednetworkfabric.CommunityActionTypes.DENY,
///     location="eastus",
///     network_fabric_id="/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric",
///     resource_group_name="example-rg",
///     route_policy_name="example-routePolicy",
///     statements=[{
///         "action": {
///             "action_type": azure_native.managednetworkfabric.RoutePolicyActionType.PERMIT,
///             "ip_community_properties": {
///                 "add": {
///                     "ip_community_ids": ["/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipCommunities/example-ipCommunity"],
///                 },
///                 "delete": {
///                     "ip_community_ids": ["/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipCommunities/example-ipCommunity"],
///                 },
///                 "set": {
///                     "ip_community_ids": ["/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipCommunities/example-ipCommunity"],
///                 },
///             },
///             "ip_extended_community_properties": {
///                 "add": {
///                     "ip_extended_community_ids": ["/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipExtendedCommunities/example-ipExtendedCommunity"],
///                 },
///                 "delete": {
///                     "ip_extended_community_ids": ["/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipExtendedCommunities/example-ipExtendedCommunity"],
///                 },
///                 "set": {
///                     "ip_extended_community_ids": ["/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipExtendedCommunities/example-ipExtendedCommunity"],
///                 },
///             },
///             "local_preference": 20,
///         },
///         "annotation": "annotation",
///         "condition": {
///             "ip_community_ids": ["/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipCommunities/example-ipCommunity"],
///             "ip_extended_community_ids": ["/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipExtendedCommunities/example-ipExtendedCommunity"],
///             "ip_prefix_id": "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipPrefixes/example-ipPrefix",
///             "type": azure_native.managednetworkfabric.RoutePolicyConditionType.OR_,
///         },
///         "sequence_number": 7,
///     }],
///     tags={
///         "keyID": "keyValue",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   routePolicy:
///     type: azure-native:managednetworkfabric:RoutePolicy
///     properties:
///       addressFamilyType: IPv4
///       annotation: annotation
///       defaultAction: Deny
///       location: eastus
///       networkFabricId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric
///       resourceGroupName: example-rg
///       routePolicyName: example-routePolicy
///       statements:
///         - action:
///             actionType: Permit
///             ipCommunityProperties:
///               add:
///                 ipCommunityIds:
///                   - /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipCommunities/example-ipCommunity
///               delete:
///                 ipCommunityIds:
///                   - /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipCommunities/example-ipCommunity
///               set:
///                 ipCommunityIds:
///                   - /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipCommunities/example-ipCommunity
///             ipExtendedCommunityProperties:
///               add:
///                 ipExtendedCommunityIds:
///                   - /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipExtendedCommunities/example-ipExtendedCommunity
///               delete:
///                 ipExtendedCommunityIds:
///                   - /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipExtendedCommunities/example-ipExtendedCommunity
///               set:
///                 ipExtendedCommunityIds:
///                   - /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipExtendedCommunities/example-ipExtendedCommunity
///             localPreference: 20
///           annotation: annotation
///           condition:
///             ipCommunityIds:
///               - /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipCommunities/example-ipCommunity
///             ipExtendedCommunityIds:
///               - /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipExtendedCommunities/example-ipExtendedCommunity
///             ipPrefixId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/ipPrefixes/example-ipPrefix
///             type: Or
///           sequenceNumber: 7
///       tags:
///         keyID: keyValue
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
/// $ pulumi import azure-native:managednetworkfabric:RoutePolicy example-routePolicy /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedNetworkFabric/routePolicies/{routePolicyName}
/// ```
class RoutePolicy extends pulumi.CustomResource {
  /// AddressFamilyType. This parameter decides whether the given ipv4 or ipv6 route policy.
  late final pulumi.Output<String?> addressFamilyType;

  /// Administrative state of the resource.
  late final pulumi.Output<String> administrativeState;

  /// Switch configuration description.
  late final pulumi.Output<String?> annotation;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Configuration state of the resource.
  late final pulumi.Output<String> configurationState;

  /// Default action that needs to be applied when no condition is matched. Example: Permit | Deny.
  late final pulumi.Output<String?> defaultAction;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Arm Resource ID of Network Fabric.
  late final pulumi.Output<String> networkFabricId;

  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// Route Policy statements.
  late final pulumi.Output<List<Map<String, dynamic>>> statements;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RoutePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoutePolicy]. {@macro pulumi_managednetworkfabric_route_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoutePolicy(
    String name, {
    RoutePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:managednetworkfabric:RoutePolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    addressFamilyType = registerOutput<String?>('addressFamilyType');
    administrativeState = registerOutput<String>('administrativeState');
    annotation = registerOutput<String?>('annotation');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    configurationState = registerOutput<String>('configurationState');
    defaultAction = registerOutput<String?>('defaultAction');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkFabricId = registerOutput<String>('networkFabricId');
    provisioningState = registerOutput<String>('provisioningState');
    statements = registerOutput<List<Map<String, dynamic>>>('statements');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
