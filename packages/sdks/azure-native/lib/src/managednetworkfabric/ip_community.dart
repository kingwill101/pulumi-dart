import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_community_args.dart';
import 'system_data_response.dart';

/// The IP Community resource definition.
///
/// Uses Azure REST API version 2023-06-15. In version 2.x of the Azure Native provider, it used API version 2023-02-01-preview.
///
/// Other available API versions: 2023-02-01-preview, 2024-02-15-preview, 2024-06-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### IpCommunities_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ipCommunity = new AzureNative.ManagedNetworkFabric.IpCommunity("ipCommunity", new()
///     {
///         Annotation = "annotation",
///         IpCommunityName = "example-ipcommunity",
///         IpCommunityRules = new[]
///         {
///             new AzureNative.ManagedNetworkFabric.Inputs.IpCommunityRuleArgs
///             {
///                 Action = AzureNative.ManagedNetworkFabric.CommunityActionTypes.Permit,
///                 CommunityMembers = new[]
///                 {
///                     "1:1",
///                 },
///                 SequenceNumber = 4155123341,
///                 WellKnownCommunities = new[]
///                 {
///                     AzureNative.ManagedNetworkFabric.WellKnownCommunities.Internet,
///                 },
///             },
///         },
///         Location = "eastus",
///         ResourceGroupName = "example-rg",
///         Tags =
///         {
///             { "keyId", "KeyValue" },
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
/// 		_, err := managednetworkfabric.NewIpCommunity(ctx, "ipCommunity", &managednetworkfabric.IpCommunityArgs{
/// 			Annotation:      pulumi.String("annotation"),
/// 			IpCommunityName: pulumi.String("example-ipcommunity"),
/// 			IpCommunityRules: managednetworkfabric.IpCommunityRuleArray{
/// 				&managednetworkfabric.IpCommunityRuleArgs{
/// 					Action: pulumi.String(managednetworkfabric.CommunityActionTypesPermit),
/// 					CommunityMembers: pulumi.StringArray{
/// 						pulumi.String("1:1"),
/// 					},
/// 					SequenceNumber: pulumi.Float64(4155123341),
/// 					WellKnownCommunities: pulumi.StringArray{
/// 						pulumi.String(managednetworkfabric.WellKnownCommunitiesInternet),
/// 					},
/// 				},
/// 			},
/// 			Location:          pulumi.String("eastus"),
/// 			ResourceGroupName: pulumi.String("example-rg"),
/// 			Tags: pulumi.StringMap{
/// 				"keyId": pulumi.String("KeyValue"),
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
/// import com.pulumi.azurenative.managednetworkfabric.IpCommunity;
/// import com.pulumi.azurenative.managednetworkfabric.IpCommunityArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.IpCommunityRuleArgs;
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
///         var ipCommunity = new IpCommunity("ipCommunity", IpCommunityArgs.builder()
///             .annotation("annotation")
///             .ipCommunityName("example-ipcommunity")
///             .ipCommunityRules(IpCommunityRuleArgs.builder()
///                 .action("Permit")
///                 .communityMembers("1:1")
///                 .sequenceNumber(4155123341.0)
///                 .wellKnownCommunities("Internet")
///                 .build())
///             .location("eastus")
///             .resourceGroupName("example-rg")
///             .tags(Map.of("keyId", "KeyValue"))
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
/// const ipCommunity = new azure_native.managednetworkfabric.IpCommunity("ipCommunity", {
///     annotation: "annotation",
///     ipCommunityName: "example-ipcommunity",
///     ipCommunityRules: [{
///         action: azure_native.managednetworkfabric.CommunityActionTypes.Permit,
///         communityMembers: ["1:1"],
///         sequenceNumber: 4155123341,
///         wellKnownCommunities: [azure_native.managednetworkfabric.WellKnownCommunities.Internet],
///     }],
///     location: "eastus",
///     resourceGroupName: "example-rg",
///     tags: {
///         keyId: "KeyValue",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ip_community = azure_native.managednetworkfabric.IpCommunity("ipCommunity",
///     annotation="annotation",
///     ip_community_name="example-ipcommunity",
///     ip_community_rules=[{
///         "action": azure_native.managednetworkfabric.CommunityActionTypes.PERMIT,
///         "community_members": ["1:1"],
///         "sequence_number": 4155123341,
///         "well_known_communities": [azure_native.managednetworkfabric.WellKnownCommunities.INTERNET],
///     }],
///     location="eastus",
///     resource_group_name="example-rg",
///     tags={
///         "keyId": "KeyValue",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ipCommunity:
///     type: azure-native:managednetworkfabric:IpCommunity
///     properties:
///       annotation: annotation
///       ipCommunityName: example-ipcommunity
///       ipCommunityRules:
///         - action: Permit
///           communityMembers:
///             - 1:1
///           sequenceNumber: 4.155123341e+09
///           wellKnownCommunities:
///             - Internet
///       location: eastus
///       resourceGroupName: example-rg
///       tags:
///         keyId: KeyValue
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
/// $ pulumi import azure-native:managednetworkfabric:IpCommunity example-ipcommunity /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedNetworkFabric/ipCommunities/{ipCommunityName}
/// ```
class IpCommunity extends pulumi.CustomResource {
  /// Administrative state of the resource.
  late final pulumi.Output<String> administrativeState;

  /// Switch configuration description.
  late final pulumi.Output<String?> annotation;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Configuration state of the resource.
  late final pulumi.Output<String> configurationState;

  /// List of IP Community Rules.
  late final pulumi.Output<List<Map<String, dynamic>>> ipCommunityRules;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [IpCommunity].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IpCommunity]. {@macro pulumi_managednetworkfabric_ip_community_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IpCommunity(
    String name, {
    IpCommunityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:managednetworkfabric:IpCommunity',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    administrativeState = registerOutput<String>('administrativeState');
    annotation = registerOutput<String?>('annotation');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    configurationState = registerOutput<String>('configurationState');
    ipCommunityRules = registerOutput<List<Map<String, dynamic>>>(
      'ipCommunityRules',
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
