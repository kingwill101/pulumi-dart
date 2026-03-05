import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_extended_community_args.dart';
import 'system_data_response.dart';

/// The IP Extended Community resource definition.
///
/// Uses Azure REST API version 2023-06-15. In version 2.x of the Azure Native provider, it used API version 2023-02-01-preview.
///
/// Other available API versions: 2023-02-01-preview, 2024-02-15-preview, 2024-06-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### IpExtendedCommunities_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ipExtendedCommunity = new AzureNative.ManagedNetworkFabric.IpExtendedCommunity("ipExtendedCommunity", new()
///     {
///         Annotation = "annotation",
///         IpExtendedCommunityName = "example-ipExtendedCommunity",
///         IpExtendedCommunityRules = new[]
///         {
///             new AzureNative.ManagedNetworkFabric.Inputs.IpExtendedCommunityRuleArgs
///             {
///                 Action = AzureNative.ManagedNetworkFabric.CommunityActionTypes.Permit,
///                 RouteTargets = new[]
///                 {
///                     "1234:2345",
///                 },
///                 SequenceNumber = 4155123341,
///             },
///         },
///         Location = "eastus",
///         ResourceGroupName = "example-rg",
///         Tags =
///         {
///             { "keyID", "KeyValue" },
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
/// 		_, err := managednetworkfabric.NewIpExtendedCommunity(ctx, "ipExtendedCommunity", &managednetworkfabric.IpExtendedCommunityArgs{
/// 			Annotation:              pulumi.String("annotation"),
/// 			IpExtendedCommunityName: pulumi.String("example-ipExtendedCommunity"),
/// 			IpExtendedCommunityRules: managednetworkfabric.IpExtendedCommunityRuleArray{
/// 				&managednetworkfabric.IpExtendedCommunityRuleArgs{
/// 					Action: pulumi.String(managednetworkfabric.CommunityActionTypesPermit),
/// 					RouteTargets: pulumi.StringArray{
/// 						pulumi.String("1234:2345"),
/// 					},
/// 					SequenceNumber: pulumi.Float64(4155123341),
/// 				},
/// 			},
/// 			Location:          pulumi.String("eastus"),
/// 			ResourceGroupName: pulumi.String("example-rg"),
/// 			Tags: pulumi.StringMap{
/// 				"keyID": pulumi.String("KeyValue"),
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
/// import com.pulumi.azurenative.managednetworkfabric.IpExtendedCommunity;
/// import com.pulumi.azurenative.managednetworkfabric.IpExtendedCommunityArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.IpExtendedCommunityRuleArgs;
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
///         var ipExtendedCommunity = new IpExtendedCommunity("ipExtendedCommunity", IpExtendedCommunityArgs.builder()
///             .annotation("annotation")
///             .ipExtendedCommunityName("example-ipExtendedCommunity")
///             .ipExtendedCommunityRules(IpExtendedCommunityRuleArgs.builder()
///                 .action("Permit")
///                 .routeTargets("1234:2345")
///                 .sequenceNumber(4155123341.0)
///                 .build())
///             .location("eastus")
///             .resourceGroupName("example-rg")
///             .tags(Map.of("keyID", "KeyValue"))
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
/// const ipExtendedCommunity = new azure_native.managednetworkfabric.IpExtendedCommunity("ipExtendedCommunity", {
///     annotation: "annotation",
///     ipExtendedCommunityName: "example-ipExtendedCommunity",
///     ipExtendedCommunityRules: [{
///         action: azure_native.managednetworkfabric.CommunityActionTypes.Permit,
///         routeTargets: ["1234:2345"],
///         sequenceNumber: 4155123341,
///     }],
///     location: "eastus",
///     resourceGroupName: "example-rg",
///     tags: {
///         keyID: "KeyValue",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ip_extended_community = azure_native.managednetworkfabric.IpExtendedCommunity("ipExtendedCommunity",
///     annotation="annotation",
///     ip_extended_community_name="example-ipExtendedCommunity",
///     ip_extended_community_rules=[{
///         "action": azure_native.managednetworkfabric.CommunityActionTypes.PERMIT,
///         "route_targets": ["1234:2345"],
///         "sequence_number": 4155123341,
///     }],
///     location="eastus",
///     resource_group_name="example-rg",
///     tags={
///         "keyID": "KeyValue",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ipExtendedCommunity:
///     type: azure-native:managednetworkfabric:IpExtendedCommunity
///     properties:
///       annotation: annotation
///       ipExtendedCommunityName: example-ipExtendedCommunity
///       ipExtendedCommunityRules:
///         - action: Permit
///           routeTargets:
///             - 1234:2345
///           sequenceNumber: 4.155123341e+09
///       location: eastus
///       resourceGroupName: example-rg
///       tags:
///         keyID: KeyValue
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
/// $ pulumi import azure-native:managednetworkfabric:IpExtendedCommunity example-ipExtendedCommunity /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedNetworkFabric/ipExtendedCommunities/{ipExtendedCommunityName}
/// ```
class IpExtendedCommunity extends pulumi.CustomResource {
  /// Administrative state of the resource.
  late final pulumi.Output<String> administrativeState;

  /// Switch configuration description.
  late final pulumi.Output<String?> annotation;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Configuration state of the resource.
  late final pulumi.Output<String> configurationState;

  /// List of IP Extended Community Rules.
  late final pulumi.Output<List<Map<String, dynamic>>> ipExtendedCommunityRules;

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

  /// Creates a new [IpExtendedCommunity].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IpExtendedCommunity]. {@macro pulumi_managednetworkfabric_ip_extended_community_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IpExtendedCommunity(
    String name, {
    IpExtendedCommunityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:managednetworkfabric:IpExtendedCommunity',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    administrativeState = registerOutput<String>('administrativeState');
    annotation = registerOutput<String?>('annotation');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    configurationState = registerOutput<String>('configurationState');
    ipExtendedCommunityRules = registerOutput<List<Map<String, dynamic>>>(
      'ipExtendedCommunityRules',
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
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
    type = registerOutput<String>('type');
  }
}
