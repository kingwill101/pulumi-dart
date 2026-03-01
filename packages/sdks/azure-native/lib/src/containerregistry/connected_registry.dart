import 'package:pulumi/pulumi.dart' as pulumi;
import 'activation_properties_response.dart';
import 'connected_registry_args.dart';
import 'garbage_collection_properties_response.dart';
import 'logging_properties_response.dart';
import 'login_server_properties_response.dart';
import 'parent_properties_response.dart';
import 'status_detail_properties_response.dart';
import 'system_data_response.dart';

/// An object that represents a connected registry for a container registry.
///
/// Uses Azure REST API version 2024-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-01-01-preview.
///
/// Other available API versions: 2020-11-01-preview, 2021-06-01-preview, 2021-08-01-preview, 2021-12-01-preview, 2022-02-01-preview, 2023-01-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-11-01-preview, 2025-03-01-preview, 2025-04-01, 2025-05-01-preview, 2025-06-01-preview, 2025-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ConnectedRegistryCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connectedRegistry = new AzureNative.ContainerRegistry.ConnectedRegistry("connectedRegistry", new()
///     {
///         ClientTokenIds = new[]
///         {
///             "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/tokens/client1Token",
///         },
///         ConnectedRegistryName = "myConnectedRegistry",
///         GarbageCollection = new AzureNative.ContainerRegistry.Inputs.GarbageCollectionPropertiesArgs
///         {
///             Enabled = true,
///             Schedule = "0 5 * * *",
///         },
///         Mode = AzureNative.ContainerRegistry.ConnectedRegistryMode.ReadWrite,
///         NotificationsList = new[]
///         {
///             "hello-world:*:*",
///             "sample/repo/*:1.0:*",
///         },
///         Parent = new AzureNative.ContainerRegistry.Inputs.ParentPropertiesArgs
///         {
///             SyncProperties = new AzureNative.ContainerRegistry.Inputs.SyncPropertiesArgs
///             {
///                 MessageTtl = "P2D",
///                 Schedule = "0 9 * * *",
///                 SyncWindow = "PT3H",
///                 TokenId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/tokens/syncToken",
///             },
///         },
///         RegistryName = "myRegistry",
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
/// 	containerregistry "github.com/pulumi/pulumi-azure-native-sdk/containerregistry/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerregistry.NewConnectedRegistry(ctx, "connectedRegistry", &containerregistry.ConnectedRegistryArgs{
/// 			ClientTokenIds: pulumi.StringArray{
/// 				pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/tokens/client1Token"),
/// 			},
/// 			ConnectedRegistryName: pulumi.String("myConnectedRegistry"),
/// 			GarbageCollection: &containerregistry.GarbageCollectionPropertiesArgs{
/// 				Enabled:  pulumi.Bool(true),
/// 				Schedule: pulumi.String("0 5 * * *"),
/// 			},
/// 			Mode: pulumi.String(containerregistry.ConnectedRegistryModeReadWrite),
/// 			NotificationsList: pulumi.StringArray{
/// 				pulumi.String("hello-world:*:*"),
/// 				pulumi.String("sample/repo/*:1.0:*"),
/// 			},
/// 			Parent: &containerregistry.ParentPropertiesArgs{
/// 				SyncProperties: &containerregistry.SyncPropertiesArgs{
/// 					MessageTtl: pulumi.String("P2D"),
/// 					Schedule:   pulumi.String("0 9 * * *"),
/// 					SyncWindow: pulumi.String("PT3H"),
/// 					TokenId:    pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/tokens/syncToken"),
/// 				},
/// 			},
/// 			RegistryName:      pulumi.String("myRegistry"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// import com.pulumi.azurenative.containerregistry.ConnectedRegistry;
/// import com.pulumi.azurenative.containerregistry.ConnectedRegistryArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.GarbageCollectionPropertiesArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.ParentPropertiesArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.SyncPropertiesArgs;
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
///         var connectedRegistry = new ConnectedRegistry("connectedRegistry", ConnectedRegistryArgs.builder()
///             .clientTokenIds("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/tokens/client1Token")
///             .connectedRegistryName("myConnectedRegistry")
///             .garbageCollection(GarbageCollectionPropertiesArgs.builder()
///                 .enabled(true)
///                 .schedule("0 5 * * *")
///                 .build())
///             .mode("ReadWrite")
///             .notificationsList(
///                 "hello-world:*:*",
///                 "sample/repo/*:1.0:*")
///             .parent(ParentPropertiesArgs.builder()
///                 .syncProperties(SyncPropertiesArgs.builder()
///                     .messageTtl("P2D")
///                     .schedule("0 9 * * *")
///                     .syncWindow("PT3H")
///                     .tokenId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/tokens/syncToken")
///                     .build())
///                 .build())
///             .registryName("myRegistry")
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
/// const connectedRegistry = new azure_native.containerregistry.ConnectedRegistry("connectedRegistry", {
///     clientTokenIds: ["/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/tokens/client1Token"],
///     connectedRegistryName: "myConnectedRegistry",
///     garbageCollection: {
///         enabled: true,
///         schedule: "0 5 * * *",
///     },
///     mode: azure_native.containerregistry.ConnectedRegistryMode.ReadWrite,
///     notificationsList: [
///         "hello-world:*:*",
///         "sample/repo/*:1.0:*",
///     ],
///     parent: {
///         syncProperties: {
///             messageTtl: "P2D",
///             schedule: "0 9 * * *",
///             syncWindow: "PT3H",
///             tokenId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/tokens/syncToken",
///         },
///     },
///     registryName: "myRegistry",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// connected_registry = azure_native.containerregistry.ConnectedRegistry("connectedRegistry",
///     client_token_ids=["/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/tokens/client1Token"],
///     connected_registry_name="myConnectedRegistry",
///     garbage_collection={
///         "enabled": True,
///         "schedule": "0 5 * * *",
///     },
///     mode=azure_native.containerregistry.ConnectedRegistryMode.READ_WRITE,
///     notifications_list=[
///         "hello-world:*:*",
///         "sample/repo/*:1.0:*",
///     ],
///     parent={
///         "sync_properties": {
///             "message_ttl": "P2D",
///             "schedule": "0 9 * * *",
///             "sync_window": "PT3H",
///             "token_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/tokens/syncToken",
///         },
///     },
///     registry_name="myRegistry",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   connectedRegistry:
///     type: azure-native:containerregistry:ConnectedRegistry
///     properties:
///       clientTokenIds:
///         - /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/tokens/client1Token
///       connectedRegistryName: myConnectedRegistry
///       garbageCollection:
///         enabled: true
///         schedule: 0 5 * * *
///       mode: ReadWrite
///       notificationsList:
///         - hello-world:*:*
///         - sample/repo/*:1.0:*
///       parent:
///         syncProperties:
///           messageTtl: P2D
///           schedule: 0 9 * * *
///           syncWindow: PT3H
///           tokenId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/tokens/syncToken
///       registryName: myRegistry
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
/// $ pulumi import azure-native:containerregistry:ConnectedRegistry myConnectedRegistry /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerRegistry/registries/{registryName}/connectedRegistries/{connectedRegistryName}
/// ```
class ConnectedRegistry extends pulumi.CustomResource {
  /// The activation properties of the connected registry.
  late final pulumi.Output<ActivationPropertiesResponse> activation;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The list of the ACR token resource IDs used to authenticate clients to the connected registry.
  late final pulumi.Output<List<String>?> clientTokenIds;
  /// The current connection state of the connected registry.
  late final pulumi.Output<String> connectionState;
  /// The garbage collection properties of the connected registry.
  late final pulumi.Output<GarbageCollectionPropertiesResponse?> garbageCollection;
  /// The last activity time of the connected registry.
  late final pulumi.Output<String> lastActivityTime;
  /// The logging properties of the connected registry.
  late final pulumi.Output<LoggingPropertiesResponse?> logging;
  /// The login server properties of the connected registry.
  late final pulumi.Output<LoginServerPropertiesResponse?> loginServer;
  /// The mode of the connected registry resource that indicates the permissions of the registry.
  late final pulumi.Output<String> mode;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// The list of notifications subscription information for the connected registry.
  late final pulumi.Output<List<String>?> notificationsList;
  /// The parent of the connected registry.
  late final pulumi.Output<ParentPropertiesResponse> parent;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The list of current statuses of the connected registry.
  late final pulumi.Output<List<StatusDetailPropertiesResponse>> statusDetails;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource.
  late final pulumi.Output<String> type;
  /// The current version of ACR runtime on the connected registry.
  late final pulumi.Output<String> version;

  /// Creates a new [ConnectedRegistry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectedRegistry]. {@macro pulumi_containerregistry_connected_registry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectedRegistry(
    String name, {
    ConnectedRegistryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:containerregistry:ConnectedRegistry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activation = registerOutput<ActivationPropertiesResponse>('activation');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.clientTokenIds = registerOutput<List<String>?>('clientTokenIds');
    this.connectionState = registerOutput<String>('connectionState');
    this.garbageCollection = registerOutput<GarbageCollectionPropertiesResponse?>('garbageCollection');
    this.lastActivityTime = registerOutput<String>('lastActivityTime');
    this.logging = registerOutput<LoggingPropertiesResponse?>('logging');
    this.loginServer = registerOutput<LoginServerPropertiesResponse?>('loginServer');
    this.mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    this.notificationsList = registerOutput<List<String>?>('notificationsList');
    this.parent = registerOutput<ParentPropertiesResponse>('parent');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.statusDetails = registerOutput<List<StatusDetailPropertiesResponse>>('statusDetails');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
    this.version = registerOutput<String>('version');
  }
}
