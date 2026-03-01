import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_args.dart';
import 'network_manager_properties_response_network_manager_scopes.dart';
import 'system_data_response.dart';

/// The Managed Network resource
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2021-02-01-preview, 2022-01-01, 2022-02-01-preview, 2022-04-01-preview, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-01-01-preview, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Put Network Manager
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkManager = new AzureNative.Network.NetworkManager("networkManager", new()
///     {
///         Description = "My Test Network Manager",
///         NetworkManagerName = "TestNetworkManager",
///         NetworkManagerScopeAccesses = new[]
///         {
///             AzureNative.Network.ConfigurationType.Connectivity,
///         },
///         NetworkManagerScopes = new AzureNative.Network.Inputs.NetworkManagerPropertiesNetworkManagerScopesArgs
///         {
///             ManagementGroups = new[]
///             {
///                 "/Microsoft.Management/testmg",
///             },
///             Subscriptions = new[]
///             {
///                 "/subscriptions/00000000-0000-0000-0000-000000000000",
///             },
///         },
///         ResourceGroupName = "rg1",
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
/// 		_, err := network.NewNetworkManager(ctx, "networkManager", &network.NetworkManagerArgs{
/// 			Description:        pulumi.String("My Test Network Manager"),
/// 			NetworkManagerName: pulumi.String("TestNetworkManager"),
/// 			NetworkManagerScopeAccesses: pulumi.StringArray{
/// 				pulumi.String(network.ConfigurationTypeConnectivity),
/// 			},
/// 			NetworkManagerScopes: &network.NetworkManagerPropertiesNetworkManagerScopesArgs{
/// 				ManagementGroups: pulumi.StringArray{
/// 					pulumi.String("/Microsoft.Management/testmg"),
/// 				},
/// 				Subscriptions: pulumi.StringArray{
/// 					pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.network.NetworkManager;
/// import com.pulumi.azurenative.network.NetworkManagerArgs;
/// import com.pulumi.azurenative.network.inputs.NetworkManagerPropertiesNetworkManagerScopesArgs;
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
///         var networkManager = new NetworkManager("networkManager", NetworkManagerArgs.builder()
///             .description("My Test Network Manager")
///             .networkManagerName("TestNetworkManager")
///             .networkManagerScopeAccesses("Connectivity")
///             .networkManagerScopes(NetworkManagerPropertiesNetworkManagerScopesArgs.builder()
///                 .managementGroups("/Microsoft.Management/testmg")
///                 .subscriptions("/subscriptions/00000000-0000-0000-0000-000000000000")
///                 .build())
///             .resourceGroupName("rg1")
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
/// const networkManager = new azure_native.network.NetworkManager("networkManager", {
///     description: "My Test Network Manager",
///     networkManagerName: "TestNetworkManager",
///     networkManagerScopeAccesses: [azure_native.network.ConfigurationType.Connectivity],
///     networkManagerScopes: {
///         managementGroups: ["/Microsoft.Management/testmg"],
///         subscriptions: ["/subscriptions/00000000-0000-0000-0000-000000000000"],
///     },
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_manager = azure_native.network.NetworkManager("networkManager",
///     description="My Test Network Manager",
///     network_manager_name="TestNetworkManager",
///     network_manager_scope_accesses=[azure_native.network.ConfigurationType.CONNECTIVITY],
///     network_manager_scopes={
///         "management_groups": ["/Microsoft.Management/testmg"],
///         "subscriptions": ["/subscriptions/00000000-0000-0000-0000-000000000000"],
///     },
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   networkManager:
///     type: azure-native:network:NetworkManager
///     properties:
///       description: My Test Network Manager
///       networkManagerName: TestNetworkManager
///       networkManagerScopeAccesses:
///         - Connectivity
///       networkManagerScopes:
///         managementGroups:
///           - /Microsoft.Management/testmg
///         subscriptions:
///           - /subscriptions/00000000-0000-0000-0000-000000000000
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:network:NetworkManager TestNetworkManager /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}
/// ```
class NetworkManager extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A description of the network manager.
  late final pulumi.Output<String?> description;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Scope Access.
  late final pulumi.Output<List<String>?> networkManagerScopeAccesses;
  /// Scope of Network Manager.
  late final pulumi.Output<NetworkManagerPropertiesResponseNetworkManagerScopes> networkManagerScopes;
  /// The provisioning state of the network manager resource.
  late final pulumi.Output<String> provisioningState;
  /// Unique identifier for this resource.
  late final pulumi.Output<String> resourceGuid;
  /// The system metadata related to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [NetworkManager].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkManager]. {@macro pulumi_network_network_manager_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkManager(
    String name, {
    NetworkManagerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:NetworkManager',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.description = registerOutput<String?>('description');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.networkManagerScopeAccesses = registerOutput<List<String>?>('networkManagerScopeAccesses');
    this.networkManagerScopes = registerOutput<NetworkManagerPropertiesResponseNetworkManagerScopes>('networkManagerScopes');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.resourceGuid = registerOutput<String>('resourceGuid');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
