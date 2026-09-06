import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_container_args.dart';
import 'storage_container_properties_response.dart';
import 'system_data_response.dart';

/// Storage Container tracked resource
///
/// Uses Azure REST API version 2026-02-01-preview.
///
/// Other available API versions: 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native discovery [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### StorageContainers_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var storageContainer = new AzureNative.Discovery.StorageContainer("storageContainer", new()
///     {
///         Location = "uksouth",
///         Properties = new AzureNative.Discovery.Inputs.StorageContainerPropertiesArgs
///         {
///             StorageStore = new AzureNative.Discovery.Inputs.AzureStorageBlobStoreArgs
///             {
///                 Kind = "AzureStorageBlob",
///                 StorageAccountId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.Storage/storageAccounts/storageaccount",
///             },
///         },
///         ResourceGroupName = "rgdiscovery",
///         StorageContainerName = "23ae33a54872c83164",
///         Tags =
///         {
///             { "key9976", "waghigmzxlvfqwribpxamwx" },
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
/// 	discovery "github.com/pulumi/pulumi-azure-native-sdk/discovery/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := discovery.NewStorageContainer(ctx, "storageContainer", &discovery.StorageContainerArgs{
/// 			Location: pulumi.String("uksouth"),
/// 			Properties: &discovery.StorageContainerPropertiesArgs{
/// 				StorageStore: discovery.AzureStorageBlobStore{
/// 					Kind:             "AzureStorageBlob",
/// 					StorageAccountId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.Storage/storageAccounts/storageaccount",
/// 				},
/// 			},
/// 			ResourceGroupName:    pulumi.String("rgdiscovery"),
/// 			StorageContainerName: pulumi.String("23ae33a54872c83164"),
/// 			Tags: pulumi.StringMap{
/// 				"key9976": pulumi.String("waghigmzxlvfqwribpxamwx"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_discovery_storagecontainer" "storageContainer" {
///   location = "uksouth"
///   properties = {
///     storage_store = {
///       "kind"             = "AzureStorageBlob"
///       "storageAccountId" = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.Storage/storageAccounts/storageaccount"
///     }
///   }
///   resource_group_name    = "rgdiscovery"
///   storage_container_name = "23ae33a54872c83164"
///   tags = {
///     "key9976" = "waghigmzxlvfqwribpxamwx"
///   }
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
/// import com.pulumi.azurenative.discovery.StorageContainer;
/// import com.pulumi.azurenative.discovery.StorageContainerArgs;
/// import com.pulumi.azurenative.discovery.inputs.StorageContainerPropertiesArgs;
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
///         var storageContainer = new StorageContainer("storageContainer", StorageContainerArgs.builder()
///             .location("uksouth")
///             .properties(StorageContainerPropertiesArgs.builder()
///                 .storageStore(AzureStorageBlobStoreArgs.builder()
///                     .kind("AzureStorageBlob")
///                     .storageAccountId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.Storage/storageAccounts/storageaccount")
///                     .build())
///                 .build())
///             .resourceGroupName("rgdiscovery")
///             .storageContainerName("23ae33a54872c83164")
///             .tags(Map.of("key9976", "waghigmzxlvfqwribpxamwx"))
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
/// const storageContainer = new azure_native.discovery.StorageContainer("storageContainer", {
///     location: "uksouth",
///     properties: {
///         storageStore: {
///             kind: "AzureStorageBlob",
///             storageAccountId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.Storage/storageAccounts/storageaccount",
///         },
///     },
///     resourceGroupName: "rgdiscovery",
///     storageContainerName: "23ae33a54872c83164",
///     tags: {
///         key9976: "waghigmzxlvfqwribpxamwx",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// storage_container = azure_native.discovery.StorageContainer("storageContainer",
///     location="uksouth",
///     properties={
///         "storage_store": {
///             "kind": "AzureStorageBlob",
///             "storage_account_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.Storage/storageAccounts/storageaccount",
///         },
///     },
///     resource_group_name="rgdiscovery",
///     storage_container_name="23ae33a54872c83164",
///     tags={
///         "key9976": "waghigmzxlvfqwribpxamwx",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   storageContainer:
///     type: azure-native:discovery:StorageContainer
///     properties:
///       location: uksouth
///       properties:
///         storageStore:
///           kind: AzureStorageBlob
///           storageAccountId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.Storage/storageAccounts/storageaccount
///       resourceGroupName: rgdiscovery
///       storageContainerName: 23ae33a54872c83164
///       tags:
///         key9976: waghigmzxlvfqwribpxamwx
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
/// $ pulumi import azure-native:discovery:StorageContainer 23ae33a54872c83164 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Discovery/storageContainers/{storageContainerName}
/// ```
class StorageContainer extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<StorageContainerPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [StorageContainer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageContainer]. {@macro pulumi_discovery_storage_container_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageContainer(
    String name, {
    StorageContainerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:discovery:StorageContainer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<StorageContainerPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageContainerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [StorageContainer] resource.
  StorageContainer.reference(String urn)
    : super(
        'azure-native:discovery:StorageContainer',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<StorageContainerPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageContainerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
