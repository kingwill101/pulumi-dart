import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_store_args.dart';
import 'artifact_store_properties_format_response.dart';
import 'system_data_response.dart';

/// Artifact store properties.
///
/// Uses Azure REST API version 2024-04-15. In version 2.x of the Azure Native provider, it used API version 2023-09-01.
///
/// Other available API versions: 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridnetwork [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update an artifact store of publisher resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var artifactStore = new AzureNative.HybridNetwork.ArtifactStore("artifactStore", new()
///     {
///         ArtifactStoreName = "TestArtifactStore",
///         Location = "eastus",
///         Properties = new AzureNative.HybridNetwork.Inputs.ArtifactStorePropertiesFormatArgs
///         {
///             ManagedResourceGroupConfiguration = new AzureNative.HybridNetwork.Inputs.ArtifactStorePropertiesFormatManagedResourceGroupConfigurationArgs
///             {
///                 Location = "eastus",
///                 Name = "testRg",
///             },
///             ReplicationStrategy = AzureNative.HybridNetwork.ArtifactReplicationStrategy.SingleReplication,
///             StoreType = AzureNative.HybridNetwork.ArtifactStoreType.AzureContainerRegistry,
///         },
///         PublisherName = "TestPublisher",
///         ResourceGroupName = "rg",
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
/// 	hybridnetwork "github.com/pulumi/pulumi-azure-native-sdk/hybridnetwork/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridnetwork.NewArtifactStore(ctx, "artifactStore", &hybridnetwork.ArtifactStoreArgs{
/// 			ArtifactStoreName: pulumi.String("TestArtifactStore"),
/// 			Location:          pulumi.String("eastus"),
/// 			Properties: &hybridnetwork.ArtifactStorePropertiesFormatArgs{
/// 				ManagedResourceGroupConfiguration: &hybridnetwork.ArtifactStorePropertiesFormatManagedResourceGroupConfigurationArgs{
/// 					Location: pulumi.String("eastus"),
/// 					Name:     pulumi.String("testRg"),
/// 				},
/// 				ReplicationStrategy: pulumi.String(hybridnetwork.ArtifactReplicationStrategySingleReplication),
/// 				StoreType:           pulumi.String(hybridnetwork.ArtifactStoreTypeAzureContainerRegistry),
/// 			},
/// 			PublisherName:     pulumi.String("TestPublisher"),
/// 			ResourceGroupName: pulumi.String("rg"),
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
/// resource "azure-native_hybridnetwork_artifactstore" "artifactStore" {
///   artifact_store_name = "TestArtifactStore"
///   location            = "eastus"
///   properties = {
///     managed_resource_group_configuration = {
///       location = "eastus"
///       name     = "testRg"
///     }
///     replication_strategy = "SingleReplication"
///     store_type           = "AzureContainerRegistry"
///   }
///   publisher_name      = "TestPublisher"
///   resource_group_name = "rg"
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
/// import com.pulumi.azurenative.hybridnetwork.ArtifactStore;
/// import com.pulumi.azurenative.hybridnetwork.ArtifactStoreArgs;
/// import com.pulumi.azurenative.hybridnetwork.inputs.ArtifactStorePropertiesFormatArgs;
/// import com.pulumi.azurenative.hybridnetwork.inputs.ArtifactStorePropertiesFormatManagedResourceGroupConfigurationArgs;
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
///         var artifactStore = new ArtifactStore("artifactStore", ArtifactStoreArgs.builder()
///             .artifactStoreName("TestArtifactStore")
///             .location("eastus")
///             .properties(ArtifactStorePropertiesFormatArgs.builder()
///                 .managedResourceGroupConfiguration(ArtifactStorePropertiesFormatManagedResourceGroupConfigurationArgs.builder()
///                     .location("eastus")
///                     .name("testRg")
///                     .build())
///                 .replicationStrategy("SingleReplication")
///                 .storeType("AzureContainerRegistry")
///                 .build())
///             .publisherName("TestPublisher")
///             .resourceGroupName("rg")
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
/// const artifactStore = new azure_native.hybridnetwork.ArtifactStore("artifactStore", {
///     artifactStoreName: "TestArtifactStore",
///     location: "eastus",
///     properties: {
///         managedResourceGroupConfiguration: {
///             location: "eastus",
///             name: "testRg",
///         },
///         replicationStrategy: azure_native.hybridnetwork.ArtifactReplicationStrategy.SingleReplication,
///         storeType: azure_native.hybridnetwork.ArtifactStoreType.AzureContainerRegistry,
///     },
///     publisherName: "TestPublisher",
///     resourceGroupName: "rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// artifact_store = azure_native.hybridnetwork.ArtifactStore("artifactStore",
///     artifact_store_name="TestArtifactStore",
///     location="eastus",
///     properties={
///         "managed_resource_group_configuration": {
///             "location": "eastus",
///             "name": "testRg",
///         },
///         "replication_strategy": azure_native.hybridnetwork.ArtifactReplicationStrategy.SINGLE_REPLICATION,
///         "store_type": azure_native.hybridnetwork.ArtifactStoreType.AZURE_CONTAINER_REGISTRY,
///     },
///     publisher_name="TestPublisher",
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   artifactStore:
///     type: azure-native:hybridnetwork:ArtifactStore
///     properties:
///       artifactStoreName: TestArtifactStore
///       location: eastus
///       properties:
///         managedResourceGroupConfiguration:
///           location: eastus
///           name: testRg
///         replicationStrategy: SingleReplication
///         storeType: AzureContainerRegistry
///       publisherName: TestPublisher
///       resourceGroupName: rg
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update an artifact store of publisher resource with container registry
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var artifactStore = new AzureNative.HybridNetwork.ArtifactStore("artifactStore", new()
///     {
///         ArtifactStoreName = "TestArtifactStore",
///         Location = "eastus",
///         Properties = new AzureNative.HybridNetwork.Inputs.ArtifactStorePropertiesFormatArgs
///         {
///             BackingResourcePublicNetworkAccess = AzureNative.HybridNetwork.BackingResourcePublicNetworkAccess.Disabled,
///             ManagedResourceGroupConfiguration = new AzureNative.HybridNetwork.Inputs.ArtifactStorePropertiesFormatManagedResourceGroupConfigurationArgs
///             {
///                 Location = "eastus",
///                 Name = "testRg",
///             },
///             ReplicationStrategy = AzureNative.HybridNetwork.ArtifactReplicationStrategy.SingleReplication,
///             StoreType = AzureNative.HybridNetwork.ArtifactStoreType.AzureContainerRegistry,
///         },
///         PublisherName = "TestPublisher",
///         ResourceGroupName = "rg",
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
/// 	hybridnetwork "github.com/pulumi/pulumi-azure-native-sdk/hybridnetwork/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridnetwork.NewArtifactStore(ctx, "artifactStore", &hybridnetwork.ArtifactStoreArgs{
/// 			ArtifactStoreName: pulumi.String("TestArtifactStore"),
/// 			Location:          pulumi.String("eastus"),
/// 			Properties: &hybridnetwork.ArtifactStorePropertiesFormatArgs{
/// 				BackingResourcePublicNetworkAccess: pulumi.String(hybridnetwork.BackingResourcePublicNetworkAccessDisabled),
/// 				ManagedResourceGroupConfiguration: &hybridnetwork.ArtifactStorePropertiesFormatManagedResourceGroupConfigurationArgs{
/// 					Location: pulumi.String("eastus"),
/// 					Name:     pulumi.String("testRg"),
/// 				},
/// 				ReplicationStrategy: pulumi.String(hybridnetwork.ArtifactReplicationStrategySingleReplication),
/// 				StoreType:           pulumi.String(hybridnetwork.ArtifactStoreTypeAzureContainerRegistry),
/// 			},
/// 			PublisherName:     pulumi.String("TestPublisher"),
/// 			ResourceGroupName: pulumi.String("rg"),
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
/// resource "azure-native_hybridnetwork_artifactstore" "artifactStore" {
///   artifact_store_name = "TestArtifactStore"
///   location            = "eastus"
///   properties = {
///     backing_resource_public_network_access = "Disabled"
///     managed_resource_group_configuration = {
///       location = "eastus"
///       name     = "testRg"
///     }
///     replication_strategy = "SingleReplication"
///     store_type           = "AzureContainerRegistry"
///   }
///   publisher_name      = "TestPublisher"
///   resource_group_name = "rg"
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
/// import com.pulumi.azurenative.hybridnetwork.ArtifactStore;
/// import com.pulumi.azurenative.hybridnetwork.ArtifactStoreArgs;
/// import com.pulumi.azurenative.hybridnetwork.inputs.ArtifactStorePropertiesFormatArgs;
/// import com.pulumi.azurenative.hybridnetwork.inputs.ArtifactStorePropertiesFormatManagedResourceGroupConfigurationArgs;
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
///         var artifactStore = new ArtifactStore("artifactStore", ArtifactStoreArgs.builder()
///             .artifactStoreName("TestArtifactStore")
///             .location("eastus")
///             .properties(ArtifactStorePropertiesFormatArgs.builder()
///                 .backingResourcePublicNetworkAccess("Disabled")
///                 .managedResourceGroupConfiguration(ArtifactStorePropertiesFormatManagedResourceGroupConfigurationArgs.builder()
///                     .location("eastus")
///                     .name("testRg")
///                     .build())
///                 .replicationStrategy("SingleReplication")
///                 .storeType("AzureContainerRegistry")
///                 .build())
///             .publisherName("TestPublisher")
///             .resourceGroupName("rg")
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
/// const artifactStore = new azure_native.hybridnetwork.ArtifactStore("artifactStore", {
///     artifactStoreName: "TestArtifactStore",
///     location: "eastus",
///     properties: {
///         backingResourcePublicNetworkAccess: azure_native.hybridnetwork.BackingResourcePublicNetworkAccess.Disabled,
///         managedResourceGroupConfiguration: {
///             location: "eastus",
///             name: "testRg",
///         },
///         replicationStrategy: azure_native.hybridnetwork.ArtifactReplicationStrategy.SingleReplication,
///         storeType: azure_native.hybridnetwork.ArtifactStoreType.AzureContainerRegistry,
///     },
///     publisherName: "TestPublisher",
///     resourceGroupName: "rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// artifact_store = azure_native.hybridnetwork.ArtifactStore("artifactStore",
///     artifact_store_name="TestArtifactStore",
///     location="eastus",
///     properties={
///         "backing_resource_public_network_access": azure_native.hybridnetwork.BackingResourcePublicNetworkAccess.DISABLED,
///         "managed_resource_group_configuration": {
///             "location": "eastus",
///             "name": "testRg",
///         },
///         "replication_strategy": azure_native.hybridnetwork.ArtifactReplicationStrategy.SINGLE_REPLICATION,
///         "store_type": azure_native.hybridnetwork.ArtifactStoreType.AZURE_CONTAINER_REGISTRY,
///     },
///     publisher_name="TestPublisher",
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   artifactStore:
///     type: azure-native:hybridnetwork:ArtifactStore
///     properties:
///       artifactStoreName: TestArtifactStore
///       location: eastus
///       properties:
///         backingResourcePublicNetworkAccess: Disabled
///         managedResourceGroupConfiguration:
///           location: eastus
///           name: testRg
///         replicationStrategy: SingleReplication
///         storeType: AzureContainerRegistry
///       publisherName: TestPublisher
///       resourceGroupName: rg
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update an artifact store of publisher resource with storage
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var artifactStore = new AzureNative.HybridNetwork.ArtifactStore("artifactStore", new()
///     {
///         ArtifactStoreName = "TestArtifactStore",
///         Location = "eastus",
///         Properties = new AzureNative.HybridNetwork.Inputs.ArtifactStorePropertiesFormatArgs
///         {
///             BackingResourcePublicNetworkAccess = AzureNative.HybridNetwork.BackingResourcePublicNetworkAccess.Enabled,
///             ManagedResourceGroupConfiguration = new AzureNative.HybridNetwork.Inputs.ArtifactStorePropertiesFormatManagedResourceGroupConfigurationArgs
///             {
///                 Location = "eastus",
///                 Name = "testRg",
///             },
///             ReplicationStrategy = AzureNative.HybridNetwork.ArtifactReplicationStrategy.SingleReplication,
///             StoreType = AzureNative.HybridNetwork.ArtifactStoreType.AzureStorageAccount,
///         },
///         PublisherName = "TestPublisher",
///         ResourceGroupName = "rg",
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
/// 	hybridnetwork "github.com/pulumi/pulumi-azure-native-sdk/hybridnetwork/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridnetwork.NewArtifactStore(ctx, "artifactStore", &hybridnetwork.ArtifactStoreArgs{
/// 			ArtifactStoreName: pulumi.String("TestArtifactStore"),
/// 			Location:          pulumi.String("eastus"),
/// 			Properties: &hybridnetwork.ArtifactStorePropertiesFormatArgs{
/// 				BackingResourcePublicNetworkAccess: pulumi.String(hybridnetwork.BackingResourcePublicNetworkAccessEnabled),
/// 				ManagedResourceGroupConfiguration: &hybridnetwork.ArtifactStorePropertiesFormatManagedResourceGroupConfigurationArgs{
/// 					Location: pulumi.String("eastus"),
/// 					Name:     pulumi.String("testRg"),
/// 				},
/// 				ReplicationStrategy: pulumi.String(hybridnetwork.ArtifactReplicationStrategySingleReplication),
/// 				StoreType:           pulumi.String(hybridnetwork.ArtifactStoreTypeAzureStorageAccount),
/// 			},
/// 			PublisherName:     pulumi.String("TestPublisher"),
/// 			ResourceGroupName: pulumi.String("rg"),
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
/// resource "azure-native_hybridnetwork_artifactstore" "artifactStore" {
///   artifact_store_name = "TestArtifactStore"
///   location            = "eastus"
///   properties = {
///     backing_resource_public_network_access = "Enabled"
///     managed_resource_group_configuration = {
///       location = "eastus"
///       name     = "testRg"
///     }
///     replication_strategy = "SingleReplication"
///     store_type           = "AzureStorageAccount"
///   }
///   publisher_name      = "TestPublisher"
///   resource_group_name = "rg"
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
/// import com.pulumi.azurenative.hybridnetwork.ArtifactStore;
/// import com.pulumi.azurenative.hybridnetwork.ArtifactStoreArgs;
/// import com.pulumi.azurenative.hybridnetwork.inputs.ArtifactStorePropertiesFormatArgs;
/// import com.pulumi.azurenative.hybridnetwork.inputs.ArtifactStorePropertiesFormatManagedResourceGroupConfigurationArgs;
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
///         var artifactStore = new ArtifactStore("artifactStore", ArtifactStoreArgs.builder()
///             .artifactStoreName("TestArtifactStore")
///             .location("eastus")
///             .properties(ArtifactStorePropertiesFormatArgs.builder()
///                 .backingResourcePublicNetworkAccess("Enabled")
///                 .managedResourceGroupConfiguration(ArtifactStorePropertiesFormatManagedResourceGroupConfigurationArgs.builder()
///                     .location("eastus")
///                     .name("testRg")
///                     .build())
///                 .replicationStrategy("SingleReplication")
///                 .storeType("AzureStorageAccount")
///                 .build())
///             .publisherName("TestPublisher")
///             .resourceGroupName("rg")
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
/// const artifactStore = new azure_native.hybridnetwork.ArtifactStore("artifactStore", {
///     artifactStoreName: "TestArtifactStore",
///     location: "eastus",
///     properties: {
///         backingResourcePublicNetworkAccess: azure_native.hybridnetwork.BackingResourcePublicNetworkAccess.Enabled,
///         managedResourceGroupConfiguration: {
///             location: "eastus",
///             name: "testRg",
///         },
///         replicationStrategy: azure_native.hybridnetwork.ArtifactReplicationStrategy.SingleReplication,
///         storeType: azure_native.hybridnetwork.ArtifactStoreType.AzureStorageAccount,
///     },
///     publisherName: "TestPublisher",
///     resourceGroupName: "rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// artifact_store = azure_native.hybridnetwork.ArtifactStore("artifactStore",
///     artifact_store_name="TestArtifactStore",
///     location="eastus",
///     properties={
///         "backing_resource_public_network_access": azure_native.hybridnetwork.BackingResourcePublicNetworkAccess.ENABLED,
///         "managed_resource_group_configuration": {
///             "location": "eastus",
///             "name": "testRg",
///         },
///         "replication_strategy": azure_native.hybridnetwork.ArtifactReplicationStrategy.SINGLE_REPLICATION,
///         "store_type": azure_native.hybridnetwork.ArtifactStoreType.AZURE_STORAGE_ACCOUNT,
///     },
///     publisher_name="TestPublisher",
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   artifactStore:
///     type: azure-native:hybridnetwork:ArtifactStore
///     properties:
///       artifactStoreName: TestArtifactStore
///       location: eastus
///       properties:
///         backingResourcePublicNetworkAccess: Enabled
///         managedResourceGroupConfiguration:
///           location: eastus
///           name: testRg
///         replicationStrategy: SingleReplication
///         storeType: AzureStorageAccount
///       publisherName: TestPublisher
///       resourceGroupName: rg
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
/// $ pulumi import azure-native:hybridnetwork:ArtifactStore TestArtifactStore /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridNetwork/publishers/{publisherName}/artifactStores/{artifactStoreName}
/// ```
class ArtifactStore extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// ArtifactStores properties.
  late final pulumi.Output<ArtifactStorePropertiesFormatResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ArtifactStore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ArtifactStore]. {@macro pulumi_hybridnetwork_artifact_store_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ArtifactStore(
    String name, {
    ArtifactStoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:hybridnetwork:ArtifactStore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ArtifactStorePropertiesFormatResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ArtifactStorePropertiesFormatResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
