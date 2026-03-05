import 'package:pulumi/pulumi.dart' as pulumi;
import 'connectivity_configuration_args.dart';
import 'system_data_response.dart';

/// The network manager connectivity configuration resource
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2021-02-01-preview, 2022-01-01, 2022-02-01-preview, 2022-04-01-preview, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ConnectivityConfigurationsPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connectivityConfiguration = new AzureNative.Network.ConnectivityConfiguration("connectivityConfiguration", new()
///     {
///         AppliesToGroups = new[]
///         {
///             new AzureNative.Network.Inputs.ConnectivityGroupItemArgs
///             {
///                 GroupConnectivity = AzureNative.Network.GroupConnectivity.None,
///                 IsGlobal = AzureNative.Network.IsGlobal.False,
///                 NetworkGroupId = "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/group1",
///                 UseHubGateway = AzureNative.Network.UseHubGateway.True,
///             },
///         },
///         ConfigurationName = "myTestConnectivityConfig",
///         ConnectivityTopology = AzureNative.Network.ConnectivityTopology.HubAndSpoke,
///         DeleteExistingPeering = AzureNative.Network.DeleteExistingPeering.True,
///         Description = "Sample Configuration",
///         Hubs = new[]
///         {
///             new AzureNative.Network.Inputs.HubArgs
///             {
///                 ResourceId = "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myTestConnectivityConfig",
///                 ResourceType = "Microsoft.Network/virtualNetworks",
///             },
///         },
///         IsGlobal = AzureNative.Network.IsGlobal.True,
///         NetworkManagerName = "testNetworkManager",
///         ResourceGroupName = "myResourceGroup",
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
/// 		_, err := network.NewConnectivityConfiguration(ctx, "connectivityConfiguration", &network.ConnectivityConfigurationArgs{
/// 			AppliesToGroups: network.ConnectivityGroupItemArray{
/// 				&network.ConnectivityGroupItemArgs{
/// 					GroupConnectivity: pulumi.String(network.GroupConnectivityNone),
/// 					IsGlobal:          pulumi.String(network.IsGlobalFalse),
/// 					NetworkGroupId:    pulumi.String("subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/group1"),
/// 					UseHubGateway:     pulumi.String(network.UseHubGatewayTrue),
/// 				},
/// 			},
/// 			ConfigurationName:     pulumi.String("myTestConnectivityConfig"),
/// 			ConnectivityTopology:  pulumi.String(network.ConnectivityTopologyHubAndSpoke),
/// 			DeleteExistingPeering: pulumi.String(network.DeleteExistingPeeringTrue),
/// 			Description:           pulumi.String("Sample Configuration"),
/// 			Hubs: network.HubArray{
/// 				&network.HubArgs{
/// 					ResourceId:   pulumi.String("subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myTestConnectivityConfig"),
/// 					ResourceType: pulumi.String("Microsoft.Network/virtualNetworks"),
/// 				},
/// 			},
/// 			IsGlobal:           pulumi.String(network.IsGlobalTrue),
/// 			NetworkManagerName: pulumi.String("testNetworkManager"),
/// 			ResourceGroupName:  pulumi.String("myResourceGroup"),
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
/// import com.pulumi.azurenative.network.ConnectivityConfiguration;
/// import com.pulumi.azurenative.network.ConnectivityConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.ConnectivityGroupItemArgs;
/// import com.pulumi.azurenative.network.inputs.HubArgs;
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
///         var connectivityConfiguration = new ConnectivityConfiguration("connectivityConfiguration", ConnectivityConfigurationArgs.builder()
///             .appliesToGroups(ConnectivityGroupItemArgs.builder()
///                 .groupConnectivity("None")
///                 .isGlobal("False")
///                 .networkGroupId("subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/group1")
///                 .useHubGateway("True")
///                 .build())
///             .configurationName("myTestConnectivityConfig")
///             .connectivityTopology("HubAndSpoke")
///             .deleteExistingPeering("True")
///             .description("Sample Configuration")
///             .hubs(HubArgs.builder()
///                 .resourceId("subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myTestConnectivityConfig")
///                 .resourceType("Microsoft.Network/virtualNetworks")
///                 .build())
///             .isGlobal("True")
///             .networkManagerName("testNetworkManager")
///             .resourceGroupName("myResourceGroup")
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
/// const connectivityConfiguration = new azure_native.network.ConnectivityConfiguration("connectivityConfiguration", {
///     appliesToGroups: [{
///         groupConnectivity: azure_native.network.GroupConnectivity.None,
///         isGlobal: azure_native.network.IsGlobal.False,
///         networkGroupId: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/group1",
///         useHubGateway: azure_native.network.UseHubGateway.True,
///     }],
///     configurationName: "myTestConnectivityConfig",
///     connectivityTopology: azure_native.network.ConnectivityTopology.HubAndSpoke,
///     deleteExistingPeering: azure_native.network.DeleteExistingPeering.True,
///     description: "Sample Configuration",
///     hubs: [{
///         resourceId: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myTestConnectivityConfig",
///         resourceType: "Microsoft.Network/virtualNetworks",
///     }],
///     isGlobal: azure_native.network.IsGlobal.True,
///     networkManagerName: "testNetworkManager",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// connectivity_configuration = azure_native.network.ConnectivityConfiguration("connectivityConfiguration",
///     applies_to_groups=[{
///         "group_connectivity": azure_native.network.GroupConnectivity.NONE,
///         "is_global": azure_native.network.IsGlobal.FALSE,
///         "network_group_id": "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/group1",
///         "use_hub_gateway": azure_native.network.UseHubGateway.TRUE,
///     }],
///     configuration_name="myTestConnectivityConfig",
///     connectivity_topology=azure_native.network.ConnectivityTopology.HUB_AND_SPOKE,
///     delete_existing_peering=azure_native.network.DeleteExistingPeering.TRUE,
///     description="Sample Configuration",
///     hubs=[{
///         "resource_id": "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myTestConnectivityConfig",
///         "resource_type": "Microsoft.Network/virtualNetworks",
///     }],
///     is_global=azure_native.network.IsGlobal.TRUE,
///     network_manager_name="testNetworkManager",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   connectivityConfiguration:
///     type: azure-native:network:ConnectivityConfiguration
///     properties:
///       appliesToGroups:
///         - groupConnectivity: None
///           isGlobal: False
///           networkGroupId: subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/group1
///           useHubGateway: True
///       configurationName: myTestConnectivityConfig
///       connectivityTopology: HubAndSpoke
///       deleteExistingPeering: True
///       description: Sample Configuration
///       hubs:
///         - resourceId: subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myTestConnectivityConfig
///           resourceType: Microsoft.Network/virtualNetworks
///       isGlobal: True
///       networkManagerName: testNetworkManager
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:network:ConnectivityConfiguration myTestConnectivityConfig /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/connectivityConfigurations/{configurationName}
/// ```
class ConnectivityConfiguration extends pulumi.CustomResource {
  /// Groups for configuration
  late final pulumi.Output<List<Map<String, dynamic>>> appliesToGroups;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Connectivity topology type.
  late final pulumi.Output<String> connectivityTopology;

  /// Flag if need to remove current existing peerings.
  late final pulumi.Output<String?> deleteExistingPeering;

  /// A description of the connectivity configuration.
  late final pulumi.Output<String?> description;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// List of hubItems
  late final pulumi.Output<List<Map<String, dynamic>>?> hubs;

  /// Flag if global mesh is supported.
  late final pulumi.Output<String?> isGlobal;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// The provisioning state of the connectivity configuration resource.
  late final pulumi.Output<String> provisioningState;

  /// Unique identifier for this resource.
  late final pulumi.Output<String> resourceGuid;

  /// The system metadata related to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ConnectivityConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectivityConfiguration]. {@macro pulumi_network_connectivity_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectivityConfiguration(
    String name, {
    ConnectivityConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:ConnectivityConfiguration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appliesToGroups = registerOutput<List<Map<String, dynamic>>>(
      'appliesToGroups',
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    connectivityTopology = registerOutput<String>('connectivityTopology');
    deleteExistingPeering = registerOutput<String?>('deleteExistingPeering');
    description = registerOutput<String?>('description');
    etag = registerOutput<String>('etag');
    hubs = registerOutput<List<Map<String, dynamic>>?>('hubs');
    isGlobal = registerOutput<String?>('isGlobal');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
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
    type = registerOutput<String>('type');
  }
}
