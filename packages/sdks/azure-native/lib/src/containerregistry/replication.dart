import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_args.dart';
import 'status_response.dart';
import 'system_data_response.dart';

/// An object that represents a replication for a container registry.
///
/// Uses Azure REST API version 2024-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-12-01.
///
/// Other available API versions: 2019-12-01-preview, 2020-11-01-preview, 2021-06-01-preview, 2021-08-01-preview, 2021-09-01, 2021-12-01-preview, 2022-02-01-preview, 2022-12-01, 2023-01-01-preview, 2023-06-01-preview, 2023-07-01, 2023-08-01-preview, 2023-11-01-preview, 2025-03-01-preview, 2025-04-01, 2025-05-01-preview, 2025-06-01-preview, 2025-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ReplicationCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var replication = new AzureNative.ContainerRegistry.Replication("replication", new()
///     {
///         Location = "eastus",
///         RegistryName = "myRegistry",
///         ReplicationName = "myReplication",
///         ResourceGroupName = "myResourceGroup",
///         Tags =
///         {
///             { "key", "value" },
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
/// 	containerregistry "github.com/pulumi/pulumi-azure-native-sdk/containerregistry/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerregistry.NewReplication(ctx, "replication", &containerregistry.ReplicationArgs{
/// 			Location:          pulumi.String("eastus"),
/// 			RegistryName:      pulumi.String("myRegistry"),
/// 			ReplicationName:   pulumi.String("myReplication"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
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
/// import com.pulumi.azurenative.containerregistry.Replication;
/// import com.pulumi.azurenative.containerregistry.ReplicationArgs;
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
///         var replication = new Replication("replication", ReplicationArgs.builder()
///             .location("eastus")
///             .registryName("myRegistry")
///             .replicationName("myReplication")
///             .resourceGroupName("myResourceGroup")
///             .tags(Map.of("key", "value"))
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
/// const replication = new azure_native.containerregistry.Replication("replication", {
///     location: "eastus",
///     registryName: "myRegistry",
///     replicationName: "myReplication",
///     resourceGroupName: "myResourceGroup",
///     tags: {
///         key: "value",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// replication = azure_native.containerregistry.Replication("replication",
///     location="eastus",
///     registry_name="myRegistry",
///     replication_name="myReplication",
///     resource_group_name="myResourceGroup",
///     tags={
///         "key": "value",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   replication:
///     type: azure-native:containerregistry:Replication
///     properties:
///       location: eastus
///       registryName: myRegistry
///       replicationName: myReplication
///       resourceGroupName: myResourceGroup
///       tags:
///         key: value
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ReplicationCreateZoneRedundant
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var replication = new AzureNative.ContainerRegistry.Replication("replication", new()
///     {
///         Location = "eastus",
///         RegionEndpointEnabled = true,
///         RegistryName = "myRegistry",
///         ReplicationName = "myReplication",
///         ResourceGroupName = "myResourceGroup",
///         Tags =
///         {
///             { "key", "value" },
///         },
///         ZoneRedundancy = AzureNative.ContainerRegistry.ZoneRedundancy.Enabled,
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
/// 		_, err := containerregistry.NewReplication(ctx, "replication", &containerregistry.ReplicationArgs{
/// 			Location:              pulumi.String("eastus"),
/// 			RegionEndpointEnabled: pulumi.Bool(true),
/// 			RegistryName:          pulumi.String("myRegistry"),
/// 			ReplicationName:       pulumi.String("myReplication"),
/// 			ResourceGroupName:     pulumi.String("myResourceGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 			ZoneRedundancy: pulumi.String(containerregistry.ZoneRedundancyEnabled),
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
/// import com.pulumi.azurenative.containerregistry.Replication;
/// import com.pulumi.azurenative.containerregistry.ReplicationArgs;
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
///         var replication = new Replication("replication", ReplicationArgs.builder()
///             .location("eastus")
///             .regionEndpointEnabled(true)
///             .registryName("myRegistry")
///             .replicationName("myReplication")
///             .resourceGroupName("myResourceGroup")
///             .tags(Map.of("key", "value"))
///             .zoneRedundancy("Enabled")
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
/// const replication = new azure_native.containerregistry.Replication("replication", {
///     location: "eastus",
///     regionEndpointEnabled: true,
///     registryName: "myRegistry",
///     replicationName: "myReplication",
///     resourceGroupName: "myResourceGroup",
///     tags: {
///         key: "value",
///     },
///     zoneRedundancy: azure_native.containerregistry.ZoneRedundancy.Enabled,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// replication = azure_native.containerregistry.Replication("replication",
///     location="eastus",
///     region_endpoint_enabled=True,
///     registry_name="myRegistry",
///     replication_name="myReplication",
///     resource_group_name="myResourceGroup",
///     tags={
///         "key": "value",
///     },
///     zone_redundancy=azure_native.containerregistry.ZoneRedundancy.ENABLED)
///
/// ```
///
/// ```yaml
/// resources:
///   replication:
///     type: azure-native:containerregistry:Replication
///     properties:
///       location: eastus
///       regionEndpointEnabled: true
///       registryName: myRegistry
///       replicationName: myReplication
///       resourceGroupName: myResourceGroup
///       tags:
///         key: value
///       zoneRedundancy: Enabled
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
/// $ pulumi import azure-native:containerregistry:Replication myReplication /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerRegistry/registries/{registryName}/replications/{replicationName}
/// ```
class Replication extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The location of the resource. This cannot be changed after the resource is created.
  late final pulumi.Output<String> location;

  /// The name of the resource.
  late final pulumi.Output<String> name;

  /// The provisioning state of the replication at the time the operation was called.
  late final pulumi.Output<String> provisioningState;

  /// Specifies whether the replication's regional endpoint is enabled. Requests will not be routed to a replication whose regional endpoint is disabled, however its data will continue to be synced with other replications.
  late final pulumi.Output<bool?> regionEndpointEnabled;

  /// The status of the replication at the time the operation was called.
  late final pulumi.Output<StatusResponse> status;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The tags of the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Whether or not zone redundancy is enabled for this container registry replication
  late final pulumi.Output<String?> zoneRedundancy;

  /// Creates a new [Replication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Replication]. {@macro pulumi_containerregistry_replication_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Replication(
    String name, {
    ReplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:containerregistry:Replication',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    regionEndpointEnabled = registerOutput<bool?>('regionEndpointEnabled');
    status = registerOutput<StatusResponse>(
      'status',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StatusResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
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
    zoneRedundancy = registerOutput<String?>('zoneRedundancy');
  }
}
