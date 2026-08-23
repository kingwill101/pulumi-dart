import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_asset_args.dart';
import 'storage_asset_properties_response.dart';
import 'system_data_response.dart';

/// Storage Asset tracked resource
///
/// Uses Azure REST API version 2026-02-01-preview.
///
/// Other available API versions: 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native discovery [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### StorageAssets_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var storageAsset = new AzureNative.Discovery.StorageAsset("storageAsset", new()
///     {
///         Location = "uksouth",
///         Properties = new AzureNative.Discovery.Inputs.StorageAssetPropertiesArgs
///         {
///             Description = "gwlk",
///             Path = "qmvrklgqdif",
///         },
///         ResourceGroupName = "rgdiscovery",
///         StorageAssetName = "8fd30c31448f7b0f1a",
///         StorageContainerName = "106b8981ac9ca95890",
///         Tags =
///         {
///             { "key5443", "dneh" },
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
/// 		_, err := discovery.NewStorageAsset(ctx, "storageAsset", &discovery.StorageAssetArgs{
/// 			Location: pulumi.String("uksouth"),
/// 			Properties: &discovery.StorageAssetPropertiesArgs{
/// 				Description: pulumi.String("gwlk"),
/// 				Path:        pulumi.String("qmvrklgqdif"),
/// 			},
/// 			ResourceGroupName:    pulumi.String("rgdiscovery"),
/// 			StorageAssetName:     pulumi.String("8fd30c31448f7b0f1a"),
/// 			StorageContainerName: pulumi.String("106b8981ac9ca95890"),
/// 			Tags: pulumi.StringMap{
/// 				"key5443": pulumi.String("dneh"),
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
/// resource "azure-native_discovery_storageasset" "storageAsset" {
///   location = "uksouth"
///   properties = {
///     description = "gwlk"
///     path        = "qmvrklgqdif"
///   }
///   resource_group_name    = "rgdiscovery"
///   storage_asset_name     = "8fd30c31448f7b0f1a"
///   storage_container_name = "106b8981ac9ca95890"
///   tags = {
///     "key5443" = "dneh"
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
/// import com.pulumi.azurenative.discovery.StorageAsset;
/// import com.pulumi.azurenative.discovery.StorageAssetArgs;
/// import com.pulumi.azurenative.discovery.inputs.StorageAssetPropertiesArgs;
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
///         var storageAsset = new StorageAsset("storageAsset", StorageAssetArgs.builder()
///             .location("uksouth")
///             .properties(StorageAssetPropertiesArgs.builder()
///                 .description("gwlk")
///                 .path("qmvrklgqdif")
///                 .build())
///             .resourceGroupName("rgdiscovery")
///             .storageAssetName("8fd30c31448f7b0f1a")
///             .storageContainerName("106b8981ac9ca95890")
///             .tags(Map.of("key5443", "dneh"))
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
/// const storageAsset = new azure_native.discovery.StorageAsset("storageAsset", {
///     location: "uksouth",
///     properties: {
///         description: "gwlk",
///         path: "qmvrklgqdif",
///     },
///     resourceGroupName: "rgdiscovery",
///     storageAssetName: "8fd30c31448f7b0f1a",
///     storageContainerName: "106b8981ac9ca95890",
///     tags: {
///         key5443: "dneh",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// storage_asset = azure_native.discovery.StorageAsset("storageAsset",
///     location="uksouth",
///     properties={
///         "description": "gwlk",
///         "path": "qmvrklgqdif",
///     },
///     resource_group_name="rgdiscovery",
///     storage_asset_name="8fd30c31448f7b0f1a",
///     storage_container_name="106b8981ac9ca95890",
///     tags={
///         "key5443": "dneh",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   storageAsset:
///     type: azure-native:discovery:StorageAsset
///     properties:
///       location: uksouth
///       properties:
///         description: gwlk
///         path: qmvrklgqdif
///       resourceGroupName: rgdiscovery
///       storageAssetName: 8fd30c31448f7b0f1a
///       storageContainerName: 106b8981ac9ca95890
///       tags:
///         key5443: dneh
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
/// $ pulumi import azure-native:discovery:StorageAsset 8fd30c31448f7b0f1a /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Discovery/storageContainers/{storageContainerName}/storageAssets/{storageAssetName}
/// ```
class StorageAsset extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<StorageAssetPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [StorageAsset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageAsset]. {@macro pulumi_discovery_storage_asset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageAsset(
    String name, {
    StorageAssetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:discovery:StorageAsset',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<StorageAssetPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageAssetPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
