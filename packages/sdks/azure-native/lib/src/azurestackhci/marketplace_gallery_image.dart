import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'gallery_image_identifier_response.dart';
import 'gallery_image_version_response.dart';
import 'marketplace_gallery_image_args.dart';
import 'marketplace_gallery_image_status_response.dart';
import 'system_data_response.dart';

/// The marketplace gallery image resource definition.
///
/// Uses Azure REST API version 2025-02-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-12-15-preview.
///
/// Other available API versions: 2022-12-15-preview, 2023-07-01-preview, 2023-09-01-preview, 2024-01-01, 2024-02-01-preview, 2024-05-01-preview, 2024-07-15-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-06-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutMarketplaceGalleryImage
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var marketplaceGalleryImage = new AzureNative.AzureStackHCI.MarketplaceGalleryImage("marketplaceGalleryImage", new()
///     {
///         CloudInitDataSource = AzureNative.AzureStackHCI.CloudInitDataSource.Azure,
///         ContainerId = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-storage-container",
///         ExtendedLocation = new AzureNative.AzureStackHCI.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///             Type = AzureNative.AzureStackHCI.ExtendedLocationTypes.CustomLocation,
///         },
///         HyperVGeneration = AzureNative.AzureStackHCI.HyperVGeneration.V1,
///         Identifier = new AzureNative.AzureStackHCI.Inputs.GalleryImageIdentifierArgs
///         {
///             Offer = "myOfferName",
///             Publisher = "myPublisherName",
///             Sku = "mySkuName",
///         },
///         Location = "West US2",
///         MarketplaceGalleryImageName = "test-marketplace-gallery-image",
///         OsType = AzureNative.AzureStackHCI.OperatingSystemTypes.Windows,
///         ResourceGroupName = "test-rg",
///         Version = new AzureNative.AzureStackHCI.Inputs.GalleryImageVersionArgs
///         {
///             Name = "1.0.0",
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestackhci.NewMarketplaceGalleryImage(ctx, "marketplaceGalleryImage", &azurestackhci.MarketplaceGalleryImageArgs{
/// 			CloudInitDataSource: pulumi.String(azurestackhci.CloudInitDataSourceAzure),
/// 			ContainerId:         pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-storage-container"),
/// 			ExtendedLocation: &azurestackhci.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"),
/// 				Type: pulumi.String(azurestackhci.ExtendedLocationTypesCustomLocation),
/// 			},
/// 			HyperVGeneration: pulumi.String(azurestackhci.HyperVGenerationV1),
/// 			Identifier: &azurestackhci.GalleryImageIdentifierArgs{
/// 				Offer:     pulumi.String("myOfferName"),
/// 				Publisher: pulumi.String("myPublisherName"),
/// 				Sku:       pulumi.String("mySkuName"),
/// 			},
/// 			Location:                    pulumi.String("West US2"),
/// 			MarketplaceGalleryImageName: pulumi.String("test-marketplace-gallery-image"),
/// 			OsType:                      pulumi.String(azurestackhci.OperatingSystemTypesWindows),
/// 			ResourceGroupName:           pulumi.String("test-rg"),
/// 			Version: &azurestackhci.GalleryImageVersionArgs{
/// 				Name: pulumi.String("1.0.0"),
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
/// import com.pulumi.azurenative.azurestackhci.MarketplaceGalleryImage;
/// import com.pulumi.azurenative.azurestackhci.MarketplaceGalleryImageArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.GalleryImageIdentifierArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.GalleryImageVersionArgs;
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
///         var marketplaceGalleryImage = new MarketplaceGalleryImage("marketplaceGalleryImage", MarketplaceGalleryImageArgs.builder()
///             .cloudInitDataSource("Azure")
///             .containerId("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-storage-container")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location")
///                 .type("CustomLocation")
///                 .build())
///             .hyperVGeneration("V1")
///             .identifier(GalleryImageIdentifierArgs.builder()
///                 .offer("myOfferName")
///                 .publisher("myPublisherName")
///                 .sku("mySkuName")
///                 .build())
///             .location("West US2")
///             .marketplaceGalleryImageName("test-marketplace-gallery-image")
///             .osType("Windows")
///             .resourceGroupName("test-rg")
///             .version(GalleryImageVersionArgs.builder()
///                 .name("1.0.0")
///                 .build())
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
/// const marketplaceGalleryImage = new azure_native.azurestackhci.MarketplaceGalleryImage("marketplaceGalleryImage", {
///     cloudInitDataSource: azure_native.azurestackhci.CloudInitDataSource.Azure,
///     containerId: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-storage-container",
///     extendedLocation: {
///         name: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         type: azure_native.azurestackhci.ExtendedLocationTypes.CustomLocation,
///     },
///     hyperVGeneration: azure_native.azurestackhci.HyperVGeneration.V1,
///     identifier: {
///         offer: "myOfferName",
///         publisher: "myPublisherName",
///         sku: "mySkuName",
///     },
///     location: "West US2",
///     marketplaceGalleryImageName: "test-marketplace-gallery-image",
///     osType: azure_native.azurestackhci.OperatingSystemTypes.Windows,
///     resourceGroupName: "test-rg",
///     version: {
///         name: "1.0.0",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// marketplace_gallery_image = azure_native.azurestackhci.MarketplaceGalleryImage("marketplaceGalleryImage",
///     cloud_init_data_source=azure_native.azurestackhci.CloudInitDataSource.AZURE,
///     container_id="/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-storage-container",
///     extended_location={
///         "name": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         "type": azure_native.azurestackhci.ExtendedLocationTypes.CUSTOM_LOCATION,
///     },
///     hyper_v_generation=azure_native.azurestackhci.HyperVGeneration.V1,
///     identifier={
///         "offer": "myOfferName",
///         "publisher": "myPublisherName",
///         "sku": "mySkuName",
///     },
///     location="West US2",
///     marketplace_gallery_image_name="test-marketplace-gallery-image",
///     os_type=azure_native.azurestackhci.OperatingSystemTypes.WINDOWS,
///     resource_group_name="test-rg",
///     version={
///         "name": "1.0.0",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   marketplaceGalleryImage:
///     type: azure-native:azurestackhci:MarketplaceGalleryImage
///     properties:
///       cloudInitDataSource: Azure
///       containerId: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-storage-container
///       extendedLocation:
///         name: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location
///         type: CustomLocation
///       hyperVGeneration: V1
///       identifier:
///         offer: myOfferName
///         publisher: myPublisherName
///         sku: mySkuName
///       location: West US2
///       marketplaceGalleryImageName: test-marketplace-gallery-image
///       osType: Windows
///       resourceGroupName: test-rg
///       version:
///         name: 1.0.0
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
/// $ pulumi import azure-native:azurestackhci:MarketplaceGalleryImage test-marketplace-gallery-image /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureStackHCI/marketplaceGalleryImages/{marketplaceGalleryImageName}
/// ```
class MarketplaceGalleryImage extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Datasource for the gallery image when provisioning with cloud-init [NoCloud, Azure]
  late final pulumi.Output<String?> cloudInitDataSource;

  /// Storage ContainerID of the storage container to be used for marketplace gallery image
  late final pulumi.Output<String?> containerId;

  /// The extendedLocation of the resource.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;

  /// The hypervisor generation of the Virtual Machine [V1, V2]
  late final pulumi.Output<String?> hyperVGeneration;

  /// This is the gallery image definition identifier.
  late final pulumi.Output<GalleryImageIdentifierResponse?> identifier;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Operating system type that the gallery image uses [Windows, Linux]
  late final pulumi.Output<String> osType;

  /// Provisioning state of the marketplace gallery image.
  late final pulumi.Output<String> provisioningState;

  /// The observed state of marketplace gallery images
  late final pulumi.Output<MarketplaceGalleryImageStatusResponse> status;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Specifies information about the gallery image version that you want to create or update.
  late final pulumi.Output<GalleryImageVersionResponse?> version;

  /// Creates a new [MarketplaceGalleryImage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MarketplaceGalleryImage]. {@macro pulumi_azurestackhci_marketplace_gallery_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MarketplaceGalleryImage(
    String name, {
    MarketplaceGalleryImageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:azurestackhci:MarketplaceGalleryImage',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cloudInitDataSource = registerOutput<String?>('cloudInitDataSource');
    containerId = registerOutput<String?>('containerId');
    extendedLocation = registerOutput<ExtendedLocationResponse?>(
      'extendedLocation',
    );
    hyperVGeneration = registerOutput<String?>('hyperVGeneration');
    identifier = registerOutput<GalleryImageIdentifierResponse?>('identifier');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    osType = registerOutput<String>('osType');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<MarketplaceGalleryImageStatusResponse>('status');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    version = registerOutput<GalleryImageVersionResponse?>('version');
  }
}
