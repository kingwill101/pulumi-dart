import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'gallery_image_args.dart';
import 'gallery_image_identifier_response.dart';
import 'gallery_image_status_response.dart';
import 'gallery_image_version_response.dart';
import 'system_data_response.dart';

/// The gallery images resource definition.
///
/// Uses Azure REST API version 2025-02-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-12-15-preview.
///
/// Other available API versions: 2022-12-15-preview, 2023-07-01-preview, 2023-09-01-preview, 2024-01-01, 2024-02-01-preview, 2024-05-01-preview, 2024-07-15-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-06-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutGalleryImage
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var galleryImage = new AzureNative.AzureStackHCI.GalleryImage("galleryImage", new()
///     {
///         ContainerId = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-storage-container",
///         ExtendedLocation = new AzureNative.AzureStackHCI.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///             Type = AzureNative.AzureStackHCI.ExtendedLocationTypes.CustomLocation,
///         },
///         GalleryImageName = "test-gallery-image",
///         ImagePath = "C:\\test.vhdx",
///         Location = "West US2",
///         OsType = AzureNative.AzureStackHCI.OperatingSystemTypes.Linux,
///         ResourceGroupName = "test-rg",
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
/// 		_, err := azurestackhci.NewGalleryImage(ctx, "galleryImage", &azurestackhci.GalleryImageArgs{
/// 			ContainerId: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-storage-container"),
/// 			ExtendedLocation: &azurestackhci.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"),
/// 				Type: pulumi.String(azurestackhci.ExtendedLocationTypesCustomLocation),
/// 			},
/// 			GalleryImageName:  pulumi.String("test-gallery-image"),
/// 			ImagePath:         pulumi.String("C:\\test.vhdx"),
/// 			Location:          pulumi.String("West US2"),
/// 			OsType:            pulumi.String(azurestackhci.OperatingSystemTypesLinux),
/// 			ResourceGroupName: pulumi.String("test-rg"),
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
/// import com.pulumi.azurenative.azurestackhci.GalleryImage;
/// import com.pulumi.azurenative.azurestackhci.GalleryImageArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.ExtendedLocationArgs;
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
///         var galleryImage = new GalleryImage("galleryImage", GalleryImageArgs.builder()
///             .containerId("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-storage-container")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location")
///                 .type("CustomLocation")
///                 .build())
///             .galleryImageName("test-gallery-image")
///             .imagePath("C:\\test.vhdx")
///             .location("West US2")
///             .osType("Linux")
///             .resourceGroupName("test-rg")
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
/// const galleryImage = new azure_native.azurestackhci.GalleryImage("galleryImage", {
///     containerId: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-storage-container",
///     extendedLocation: {
///         name: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         type: azure_native.azurestackhci.ExtendedLocationTypes.CustomLocation,
///     },
///     galleryImageName: "test-gallery-image",
///     imagePath: "C:\\test.vhdx",
///     location: "West US2",
///     osType: azure_native.azurestackhci.OperatingSystemTypes.Linux,
///     resourceGroupName: "test-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gallery_image = azure_native.azurestackhci.GalleryImage("galleryImage",
///     container_id="/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-storage-container",
///     extended_location={
///         "name": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         "type": azure_native.azurestackhci.ExtendedLocationTypes.CUSTOM_LOCATION,
///     },
///     gallery_image_name="test-gallery-image",
///     image_path="C:\\test.vhdx",
///     location="West US2",
///     os_type=azure_native.azurestackhci.OperatingSystemTypes.LINUX,
///     resource_group_name="test-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   galleryImage:
///     type: azure-native:azurestackhci:GalleryImage
///     properties:
///       containerId: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-storage-container
///       extendedLocation:
///         name: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location
///         type: CustomLocation
///       galleryImageName: test-gallery-image
///       imagePath: C:\test.vhdx
///       location: West US2
///       osType: Linux
///       resourceGroupName: test-rg
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
/// $ pulumi import azure-native:azurestackhci:GalleryImage test-gallery-image /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureStackHCI/galleryImages/{galleryImageName}
/// ```
class GalleryImage extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Datasource for the gallery image when provisioning with cloud-init [NoCloud, Azure]
  late final pulumi.Output<String?> cloudInitDataSource;
  /// Storage ContainerID of the storage container to be used for gallery image
  late final pulumi.Output<String?> containerId;
  /// The extendedLocation of the resource.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// The hypervisor generation of the Virtual Machine [V1, V2]
  late final pulumi.Output<String?> hyperVGeneration;
  /// This is the gallery image definition identifier.
  late final pulumi.Output<GalleryImageIdentifierResponse?> identifier;
  /// location of the image the gallery image should be created from
  late final pulumi.Output<String?> imagePath;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Operating system type that the gallery image uses [Windows, Linux]
  late final pulumi.Output<String> osType;
  /// Provisioning state of the gallery image.
  late final pulumi.Output<String> provisioningState;
  /// Resource ID of the source virtual machine from whose OS disk the gallery image is created.
  late final pulumi.Output<String?> sourceVirtualMachineId;
  /// The observed state of gallery images
  late final pulumi.Output<GalleryImageStatusResponse> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Specifies information about the gallery image version that you want to create or update.
  late final pulumi.Output<GalleryImageVersionResponse?> version;

  /// Creates a new [GalleryImage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GalleryImage]. {@macro pulumi_azurestackhci_gallery_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GalleryImage(
    String name, {
    GalleryImageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurestackhci:GalleryImage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cloudInitDataSource = registerOutput<String?>('cloudInitDataSource');
    containerId = registerOutput<String?>('containerId');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hyperVGeneration = registerOutput<String?>('hyperVGeneration');
    identifier = registerOutput<GalleryImageIdentifierResponse?>('identifier', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GalleryImageIdentifierResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    imagePath = registerOutput<String?>('imagePath');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    osType = registerOutput<String>('osType');
    provisioningState = registerOutput<String>('provisioningState');
    sourceVirtualMachineId = registerOutput<String?>('sourceVirtualMachineId');
    status = registerOutput<GalleryImageStatusResponse>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GalleryImageStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    version = registerOutput<GalleryImageVersionResponse?>('version', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GalleryImageVersionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
