import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_image_version_args.dart';
import 'gallery_image_version_publishing_profile_response.dart';
import 'gallery_image_version_safety_profile_response.dart';
import 'gallery_image_version_storage_profile_response.dart';
import 'image_version_security_profile_response.dart';
import 'replication_status_response.dart';
import 'system_data_response.dart';
import 'validations_profile_response.dart';

/// Specifies information about the gallery image version that you want to create or update.
///
/// Uses Azure REST API version 2024-03-03. In version 2.x of the Azure Native provider, it used API version 2022-03-03.
///
/// Other available API versions: 2022-03-03, 2022-08-03, 2023-07-03, 2025-03-03, 2025-12-03. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a simple Gallery Image Version using VM as source.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var galleryImageVersion = new AzureNative.Compute.GalleryImageVersion("galleryImageVersion", new()
///     {
///         GalleryImageName = "myGalleryImageName",
///         GalleryImageVersionName = "1.0.0",
///         GalleryName = "myGalleryName",
///         Location = "West US",
///         PublishingProfile = new AzureNative.Compute.Inputs.GalleryImageVersionPublishingProfileArgs
///         {
///             TargetRegions = new[]
///             {
///                 new AzureNative.Compute.Inputs.TargetRegionArgs
///                 {
///                     Encryption = new AzureNative.Compute.Inputs.EncryptionImagesArgs
///                     {
///                         DataDiskImages = new[]
///                         {
///                             new AzureNative.Compute.Inputs.DataDiskImageEncryptionArgs
///                             {
///                                 DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet",
///                                 Lun = 0,
///                             },
///                             new AzureNative.Compute.Inputs.DataDiskImageEncryptionArgs
///                             {
///                                 DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                                 Lun = 1,
///                             },
///                         },
///                         OsDiskImage = new AzureNative.Compute.Inputs.OSDiskImageEncryptionArgs
///                         {
///                             DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                         },
///                     },
///                     ExcludeFromLatest = false,
///                     Name = "West US",
///                     RegionalReplicaCount = 2,
///                 },
///                 new AzureNative.Compute.Inputs.TargetRegionArgs
///                 {
///                     Encryption = new AzureNative.Compute.Inputs.EncryptionImagesArgs
///                     {
///                         DataDiskImages = new[]
///                         {
///                             new AzureNative.Compute.Inputs.DataDiskImageEncryptionArgs
///                             {
///                                 DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet",
///                                 Lun = 0,
///                             },
///                             new AzureNative.Compute.Inputs.DataDiskImageEncryptionArgs
///                             {
///                                 DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                                 Lun = 1,
///                             },
///                         },
///                         OsDiskImage = new AzureNative.Compute.Inputs.OSDiskImageEncryptionArgs
///                         {
///                             DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                         },
///                     },
///                     ExcludeFromLatest = false,
///                     Name = "East US",
///                     RegionalReplicaCount = 2,
///                     StorageAccountType = AzureNative.Compute.StorageAccountType.Standard_ZRS,
///                 },
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         SafetyProfile = new AzureNative.Compute.Inputs.GalleryImageVersionSafetyProfileArgs
///         {
///             AllowDeletionOfReplicatedLocations = false,
///             BlockDeletionBeforeEndOfLife = false,
///         },
///         StorageProfile = new AzureNative.Compute.Inputs.GalleryImageVersionStorageProfileArgs
///         {
///             Source = new AzureNative.Compute.Inputs.GalleryArtifactVersionFullSourceArgs
///             {
///                 VirtualMachineId = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/virtualMachines/{vmName}",
///             },
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewGalleryImageVersion(ctx, "galleryImageVersion", &compute.GalleryImageVersionArgs{
/// 			GalleryImageName:        pulumi.String("myGalleryImageName"),
/// 			GalleryImageVersionName: pulumi.String("1.0.0"),
/// 			GalleryName:             pulumi.String("myGalleryName"),
/// 			Location:                pulumi.String("West US"),
/// 			PublishingProfile: &compute.GalleryImageVersionPublishingProfileArgs{
/// 				TargetRegions: compute.TargetRegionArray{
/// 					&compute.TargetRegionArgs{
/// 						Encryption: &compute.EncryptionImagesArgs{
/// 							DataDiskImages: compute.DataDiskImageEncryptionArray{
/// 								&compute.DataDiskImageEncryptionArgs{
/// 									DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet"),
/// 									Lun:                 pulumi.Int(0),
/// 								},
/// 								&compute.DataDiskImageEncryptionArgs{
/// 									DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet"),
/// 									Lun:                 pulumi.Int(1),
/// 								},
/// 							},
/// 							OsDiskImage: &compute.OSDiskImageEncryptionArgs{
/// 								DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet"),
/// 							},
/// 						},
/// 						ExcludeFromLatest:    pulumi.Bool(false),
/// 						Name:                 pulumi.String("West US"),
/// 						RegionalReplicaCount: pulumi.Int(2),
/// 					},
/// 					&compute.TargetRegionArgs{
/// 						Encryption: &compute.EncryptionImagesArgs{
/// 							DataDiskImages: compute.DataDiskImageEncryptionArray{
/// 								&compute.DataDiskImageEncryptionArgs{
/// 									DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet"),
/// 									Lun:                 pulumi.Int(0),
/// 								},
/// 								&compute.DataDiskImageEncryptionArgs{
/// 									DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet"),
/// 									Lun:                 pulumi.Int(1),
/// 								},
/// 							},
/// 							OsDiskImage: &compute.OSDiskImageEncryptionArgs{
/// 								DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet"),
/// 							},
/// 						},
/// 						ExcludeFromLatest:    pulumi.Bool(false),
/// 						Name:                 pulumi.String("East US"),
/// 						RegionalReplicaCount: pulumi.Int(2),
/// 						StorageAccountType:   pulumi.String(compute.StorageAccountType_Standard_ZRS),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SafetyProfile: &compute.GalleryImageVersionSafetyProfileArgs{
/// 				AllowDeletionOfReplicatedLocations: pulumi.Bool(false),
/// 				BlockDeletionBeforeEndOfLife:       pulumi.Bool(false),
/// 			},
/// 			StorageProfile: &compute.GalleryImageVersionStorageProfileArgs{
/// 				Source: &compute.GalleryArtifactVersionFullSourceArgs{
/// 					VirtualMachineId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/virtualMachines/{vmName}"),
/// 				},
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
/// resource "azure-native_compute_galleryimageversion" "galleryImageVersion" {
///   gallery_image_name         = "myGalleryImageName"
///   gallery_image_version_name = "1.0.0"
///   gallery_name               = "myGalleryName"
///   location                   = "West US"
///   publishing_profile = {
///     target_regions = [{
///       "encryption" = {
///         "dataDiskImages" = [{
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet"
///           "lun"                 = 0
///           }, {
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet"
///           "lun"                 = 1
///         }]
///         "osDiskImage" = {
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet"
///         }
///       }
///       "excludeFromLatest"    = false
///       "name"                 = "West US"
///       "regionalReplicaCount" = 2
///       }, {
///       "encryption" = {
///         "dataDiskImages" = [{
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet"
///           "lun"                 = 0
///           }, {
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet"
///           "lun"                 = 1
///         }]
///         "osDiskImage" = {
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet"
///         }
///       }
///       "excludeFromLatest"    = false
///       "name"                 = "East US"
///       "regionalReplicaCount" = 2
///       "storageAccountType"   = "Standard_ZRS"
///     }]
///   }
///   resource_group_name = "myResourceGroup"
///   safety_profile = {
///     allow_deletion_of_replicated_locations = false
///     block_deletion_before_end_of_life      = false
///   }
///   storage_profile = {
///     source = {
///       virtual_machine_id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/virtualMachines/{vmName}"
///     }
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
/// import com.pulumi.azurenative.compute.GalleryImageVersion;
/// import com.pulumi.azurenative.compute.GalleryImageVersionArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageVersionPublishingProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageVersionSafetyProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageVersionStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryArtifactVersionFullSourceArgs;
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
///         var galleryImageVersion = new GalleryImageVersion("galleryImageVersion", GalleryImageVersionArgs.builder()
///             .galleryImageName("myGalleryImageName")
///             .galleryImageVersionName("1.0.0")
///             .galleryName("myGalleryName")
///             .location("West US")
///             .publishingProfile(GalleryImageVersionPublishingProfileArgs.builder()
///                 .targetRegions(
///                     TargetRegionArgs.builder()
///                         .encryption(EncryptionImagesArgs.builder()
///                             .dataDiskImages(
///                                 DataDiskImageEncryptionArgs.builder()
///                                     .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet")
///                                     .lun(0)
///                                     .build(),
///                                 DataDiskImageEncryptionArgs.builder()
///                                     .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet")
///                                     .lun(1)
///                                     .build())
///                             .osDiskImage(OSDiskImageEncryptionArgs.builder()
///                                 .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet")
///                                 .build())
///                             .build())
///                         .excludeFromLatest(false)
///                         .name("West US")
///                         .regionalReplicaCount(2)
///                         .build(),
///                     TargetRegionArgs.builder()
///                         .encryption(EncryptionImagesArgs.builder()
///                             .dataDiskImages(
///                                 DataDiskImageEncryptionArgs.builder()
///                                     .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet")
///                                     .lun(0)
///                                     .build(),
///                                 DataDiskImageEncryptionArgs.builder()
///                                     .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet")
///                                     .lun(1)
///                                     .build())
///                             .osDiskImage(OSDiskImageEncryptionArgs.builder()
///                                 .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet")
///                                 .build())
///                             .build())
///                         .excludeFromLatest(false)
///                         .name("East US")
///                         .regionalReplicaCount(2)
///                         .storageAccountType("Standard_ZRS")
///                         .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .safetyProfile(GalleryImageVersionSafetyProfileArgs.builder()
///                 .allowDeletionOfReplicatedLocations(false)
///                 .blockDeletionBeforeEndOfLife(false)
///                 .build())
///             .storageProfile(GalleryImageVersionStorageProfileArgs.builder()
///                 .source(GalleryArtifactVersionFullSourceArgs.builder()
///                     .virtualMachineId("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/virtualMachines/{vmName}")
///                     .build())
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
/// const galleryImageVersion = new azure_native.compute.GalleryImageVersion("galleryImageVersion", {
///     galleryImageName: "myGalleryImageName",
///     galleryImageVersionName: "1.0.0",
///     galleryName: "myGalleryName",
///     location: "West US",
///     publishingProfile: {
///         targetRegions: [
///             {
///                 encryption: {
///                     dataDiskImages: [
///                         {
///                             diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet",
///                             lun: 0,
///                         },
///                         {
///                             diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                             lun: 1,
///                         },
///                     ],
///                     osDiskImage: {
///                         diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                     },
///                 },
///                 excludeFromLatest: false,
///                 name: "West US",
///                 regionalReplicaCount: 2,
///             },
///             {
///                 encryption: {
///                     dataDiskImages: [
///                         {
///                             diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet",
///                             lun: 0,
///                         },
///                         {
///                             diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                             lun: 1,
///                         },
///                     ],
///                     osDiskImage: {
///                         diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                     },
///                 },
///                 excludeFromLatest: false,
///                 name: "East US",
///                 regionalReplicaCount: 2,
///                 storageAccountType: azure_native.compute.StorageAccountType.Standard_ZRS,
///             },
///         ],
///     },
///     resourceGroupName: "myResourceGroup",
///     safetyProfile: {
///         allowDeletionOfReplicatedLocations: false,
///         blockDeletionBeforeEndOfLife: false,
///     },
///     storageProfile: {
///         source: {
///             virtualMachineId: "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/virtualMachines/{vmName}",
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gallery_image_version = azure_native.compute.GalleryImageVersion("galleryImageVersion",
///     gallery_image_name="myGalleryImageName",
///     gallery_image_version_name="1.0.0",
///     gallery_name="myGalleryName",
///     location="West US",
///     publishing_profile={
///         "target_regions": [
///             {
///                 "encryption": {
///                     "data_disk_images": [
///                         {
///                             "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet",
///                             "lun": 0,
///                         },
///                         {
///                             "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                             "lun": 1,
///                         },
///                     ],
///                     "os_disk_image": {
///                         "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                     },
///                 },
///                 "exclude_from_latest": False,
///                 "name": "West US",
///                 "regional_replica_count": 2,
///             },
///             {
///                 "encryption": {
///                     "data_disk_images": [
///                         {
///                             "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet",
///                             "lun": 0,
///                         },
///                         {
///                             "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                             "lun": 1,
///                         },
///                     ],
///                     "os_disk_image": {
///                         "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                     },
///                 },
///                 "exclude_from_latest": False,
///                 "name": "East US",
///                 "regional_replica_count": 2,
///                 "storage_account_type": azure_native.compute.StorageAccountType.STANDARD_ZRS,
///             },
///         ],
///     },
///     resource_group_name="myResourceGroup",
///     safety_profile={
///         "allow_deletion_of_replicated_locations": False,
///         "block_deletion_before_end_of_life": False,
///     },
///     storage_profile={
///         "source": {
///             "virtual_machine_id": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/virtualMachines/{vmName}",
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   galleryImageVersion:
///     type: azure-native:compute:GalleryImageVersion
///     properties:
///       galleryImageName: myGalleryImageName
///       galleryImageVersionName: 1.0.0
///       galleryName: myGalleryName
///       location: West US
///       publishingProfile:
///         targetRegions:
///           - encryption:
///               dataDiskImages:
///                 - diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet
///                   lun: 0
///                 - diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet
///                   lun: 1
///               osDiskImage:
///                 diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet
///             excludeFromLatest: false
///             name: West US
///             regionalReplicaCount: 2
///           - encryption:
///               dataDiskImages:
///                 - diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet
///                   lun: 0
///                 - diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet
///                   lun: 1
///               osDiskImage:
///                 diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet
///             excludeFromLatest: false
///             name: East US
///             regionalReplicaCount: 2
///             storageAccountType: Standard_ZRS
///       resourceGroupName: myResourceGroup
///       safetyProfile:
///         allowDeletionOfReplicatedLocations: false
///         blockDeletionBeforeEndOfLife: false
///       storageProfile:
///         source:
///           virtualMachineId: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/virtualMachines/{vmName}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a simple Gallery Image Version using community gallery image as source.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var galleryImageVersion = new AzureNative.Compute.GalleryImageVersion("galleryImageVersion", new()
///     {
///         GalleryImageName = "myGalleryImageName",
///         GalleryImageVersionName = "1.0.0",
///         GalleryName = "myGalleryName",
///         Location = "West US",
///         PublishingProfile = new AzureNative.Compute.Inputs.GalleryImageVersionPublishingProfileArgs
///         {
///             TargetRegions = new[]
///             {
///                 new AzureNative.Compute.Inputs.TargetRegionArgs
///                 {
///                     Encryption = new AzureNative.Compute.Inputs.EncryptionImagesArgs
///                     {
///                         DataDiskImages = new[]
///                         {
///                             new AzureNative.Compute.Inputs.DataDiskImageEncryptionArgs
///                             {
///                                 DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet",
///                                 Lun = 0,
///                             },
///                             new AzureNative.Compute.Inputs.DataDiskImageEncryptionArgs
///                             {
///                                 DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                                 Lun = 1,
///                             },
///                         },
///                         OsDiskImage = new AzureNative.Compute.Inputs.OSDiskImageEncryptionArgs
///                         {
///                             DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                         },
///                     },
///                     ExcludeFromLatest = false,
///                     Name = "West US",
///                     RegionalReplicaCount = 1,
///                 },
///                 new AzureNative.Compute.Inputs.TargetRegionArgs
///                 {
///                     Encryption = new AzureNative.Compute.Inputs.EncryptionImagesArgs
///                     {
///                         DataDiskImages = new[]
///                         {
///                             new AzureNative.Compute.Inputs.DataDiskImageEncryptionArgs
///                             {
///                                 DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet",
///                                 Lun = 0,
///                             },
///                             new AzureNative.Compute.Inputs.DataDiskImageEncryptionArgs
///                             {
///                                 DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                                 Lun = 1,
///                             },
///                         },
///                         OsDiskImage = new AzureNative.Compute.Inputs.OSDiskImageEncryptionArgs
///                         {
///                             DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                         },
///                     },
///                     ExcludeFromLatest = false,
///                     Name = "East US",
///                     RegionalReplicaCount = 2,
///                     StorageAccountType = AzureNative.Compute.StorageAccountType.Standard_ZRS,
///                 },
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         SafetyProfile = new AzureNative.Compute.Inputs.GalleryImageVersionSafetyProfileArgs
///         {
///             AllowDeletionOfReplicatedLocations = false,
///             BlockDeletionBeforeEndOfLife = false,
///         },
///         StorageProfile = new AzureNative.Compute.Inputs.GalleryImageVersionStorageProfileArgs
///         {
///             Source = new AzureNative.Compute.Inputs.GalleryArtifactVersionFullSourceArgs
///             {
///                 CommunityGalleryImageId = "/communityGalleries/{communityGalleryName}/images/{communityGalleryImageName}",
///             },
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewGalleryImageVersion(ctx, "galleryImageVersion", &compute.GalleryImageVersionArgs{
/// 			GalleryImageName:        pulumi.String("myGalleryImageName"),
/// 			GalleryImageVersionName: pulumi.String("1.0.0"),
/// 			GalleryName:             pulumi.String("myGalleryName"),
/// 			Location:                pulumi.String("West US"),
/// 			PublishingProfile: &compute.GalleryImageVersionPublishingProfileArgs{
/// 				TargetRegions: compute.TargetRegionArray{
/// 					&compute.TargetRegionArgs{
/// 						Encryption: &compute.EncryptionImagesArgs{
/// 							DataDiskImages: compute.DataDiskImageEncryptionArray{
/// 								&compute.DataDiskImageEncryptionArgs{
/// 									DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet"),
/// 									Lun:                 pulumi.Int(0),
/// 								},
/// 								&compute.DataDiskImageEncryptionArgs{
/// 									DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet"),
/// 									Lun:                 pulumi.Int(1),
/// 								},
/// 							},
/// 							OsDiskImage: &compute.OSDiskImageEncryptionArgs{
/// 								DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet"),
/// 							},
/// 						},
/// 						ExcludeFromLatest:    pulumi.Bool(false),
/// 						Name:                 pulumi.String("West US"),
/// 						RegionalReplicaCount: pulumi.Int(1),
/// 					},
/// 					&compute.TargetRegionArgs{
/// 						Encryption: &compute.EncryptionImagesArgs{
/// 							DataDiskImages: compute.DataDiskImageEncryptionArray{
/// 								&compute.DataDiskImageEncryptionArgs{
/// 									DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet"),
/// 									Lun:                 pulumi.Int(0),
/// 								},
/// 								&compute.DataDiskImageEncryptionArgs{
/// 									DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet"),
/// 									Lun:                 pulumi.Int(1),
/// 								},
/// 							},
/// 							OsDiskImage: &compute.OSDiskImageEncryptionArgs{
/// 								DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet"),
/// 							},
/// 						},
/// 						ExcludeFromLatest:    pulumi.Bool(false),
/// 						Name:                 pulumi.String("East US"),
/// 						RegionalReplicaCount: pulumi.Int(2),
/// 						StorageAccountType:   pulumi.String(compute.StorageAccountType_Standard_ZRS),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SafetyProfile: &compute.GalleryImageVersionSafetyProfileArgs{
/// 				AllowDeletionOfReplicatedLocations: pulumi.Bool(false),
/// 				BlockDeletionBeforeEndOfLife:       pulumi.Bool(false),
/// 			},
/// 			StorageProfile: &compute.GalleryImageVersionStorageProfileArgs{
/// 				Source: &compute.GalleryArtifactVersionFullSourceArgs{
/// 					CommunityGalleryImageId: pulumi.String("/communityGalleries/{communityGalleryName}/images/{communityGalleryImageName}"),
/// 				},
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
/// resource "azure-native_compute_galleryimageversion" "galleryImageVersion" {
///   gallery_image_name         = "myGalleryImageName"
///   gallery_image_version_name = "1.0.0"
///   gallery_name               = "myGalleryName"
///   location                   = "West US"
///   publishing_profile = {
///     target_regions = [{
///       "encryption" = {
///         "dataDiskImages" = [{
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet"
///           "lun"                 = 0
///           }, {
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet"
///           "lun"                 = 1
///         }]
///         "osDiskImage" = {
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet"
///         }
///       }
///       "excludeFromLatest"    = false
///       "name"                 = "West US"
///       "regionalReplicaCount" = 1
///       }, {
///       "encryption" = {
///         "dataDiskImages" = [{
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet"
///           "lun"                 = 0
///           }, {
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet"
///           "lun"                 = 1
///         }]
///         "osDiskImage" = {
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet"
///         }
///       }
///       "excludeFromLatest"    = false
///       "name"                 = "East US"
///       "regionalReplicaCount" = 2
///       "storageAccountType"   = "Standard_ZRS"
///     }]
///   }
///   resource_group_name = "myResourceGroup"
///   safety_profile = {
///     allow_deletion_of_replicated_locations = false
///     block_deletion_before_end_of_life      = false
///   }
///   storage_profile = {
///     source = {
///       community_gallery_image_id = "/communityGalleries/{communityGalleryName}/images/{communityGalleryImageName}"
///     }
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
/// import com.pulumi.azurenative.compute.GalleryImageVersion;
/// import com.pulumi.azurenative.compute.GalleryImageVersionArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageVersionPublishingProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageVersionSafetyProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageVersionStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryArtifactVersionFullSourceArgs;
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
///         var galleryImageVersion = new GalleryImageVersion("galleryImageVersion", GalleryImageVersionArgs.builder()
///             .galleryImageName("myGalleryImageName")
///             .galleryImageVersionName("1.0.0")
///             .galleryName("myGalleryName")
///             .location("West US")
///             .publishingProfile(GalleryImageVersionPublishingProfileArgs.builder()
///                 .targetRegions(
///                     TargetRegionArgs.builder()
///                         .encryption(EncryptionImagesArgs.builder()
///                             .dataDiskImages(
///                                 DataDiskImageEncryptionArgs.builder()
///                                     .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet")
///                                     .lun(0)
///                                     .build(),
///                                 DataDiskImageEncryptionArgs.builder()
///                                     .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet")
///                                     .lun(1)
///                                     .build())
///                             .osDiskImage(OSDiskImageEncryptionArgs.builder()
///                                 .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet")
///                                 .build())
///                             .build())
///                         .excludeFromLatest(false)
///                         .name("West US")
///                         .regionalReplicaCount(1)
///                         .build(),
///                     TargetRegionArgs.builder()
///                         .encryption(EncryptionImagesArgs.builder()
///                             .dataDiskImages(
///                                 DataDiskImageEncryptionArgs.builder()
///                                     .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet")
///                                     .lun(0)
///                                     .build(),
///                                 DataDiskImageEncryptionArgs.builder()
///                                     .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet")
///                                     .lun(1)
///                                     .build())
///                             .osDiskImage(OSDiskImageEncryptionArgs.builder()
///                                 .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet")
///                                 .build())
///                             .build())
///                         .excludeFromLatest(false)
///                         .name("East US")
///                         .regionalReplicaCount(2)
///                         .storageAccountType("Standard_ZRS")
///                         .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .safetyProfile(GalleryImageVersionSafetyProfileArgs.builder()
///                 .allowDeletionOfReplicatedLocations(false)
///                 .blockDeletionBeforeEndOfLife(false)
///                 .build())
///             .storageProfile(GalleryImageVersionStorageProfileArgs.builder()
///                 .source(GalleryArtifactVersionFullSourceArgs.builder()
///                     .communityGalleryImageId("/communityGalleries/{communityGalleryName}/images/{communityGalleryImageName}")
///                     .build())
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
/// const galleryImageVersion = new azure_native.compute.GalleryImageVersion("galleryImageVersion", {
///     galleryImageName: "myGalleryImageName",
///     galleryImageVersionName: "1.0.0",
///     galleryName: "myGalleryName",
///     location: "West US",
///     publishingProfile: {
///         targetRegions: [
///             {
///                 encryption: {
///                     dataDiskImages: [
///                         {
///                             diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet",
///                             lun: 0,
///                         },
///                         {
///                             diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                             lun: 1,
///                         },
///                     ],
///                     osDiskImage: {
///                         diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                     },
///                 },
///                 excludeFromLatest: false,
///                 name: "West US",
///                 regionalReplicaCount: 1,
///             },
///             {
///                 encryption: {
///                     dataDiskImages: [
///                         {
///                             diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet",
///                             lun: 0,
///                         },
///                         {
///                             diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                             lun: 1,
///                         },
///                     ],
///                     osDiskImage: {
///                         diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                     },
///                 },
///                 excludeFromLatest: false,
///                 name: "East US",
///                 regionalReplicaCount: 2,
///                 storageAccountType: azure_native.compute.StorageAccountType.Standard_ZRS,
///             },
///         ],
///     },
///     resourceGroupName: "myResourceGroup",
///     safetyProfile: {
///         allowDeletionOfReplicatedLocations: false,
///         blockDeletionBeforeEndOfLife: false,
///     },
///     storageProfile: {
///         source: {
///             communityGalleryImageId: "/communityGalleries/{communityGalleryName}/images/{communityGalleryImageName}",
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gallery_image_version = azure_native.compute.GalleryImageVersion("galleryImageVersion",
///     gallery_image_name="myGalleryImageName",
///     gallery_image_version_name="1.0.0",
///     gallery_name="myGalleryName",
///     location="West US",
///     publishing_profile={
///         "target_regions": [
///             {
///                 "encryption": {
///                     "data_disk_images": [
///                         {
///                             "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet",
///                             "lun": 0,
///                         },
///                         {
///                             "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                             "lun": 1,
///                         },
///                     ],
///                     "os_disk_image": {
///                         "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                     },
///                 },
///                 "exclude_from_latest": False,
///                 "name": "West US",
///                 "regional_replica_count": 1,
///             },
///             {
///                 "encryption": {
///                     "data_disk_images": [
///                         {
///                             "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet",
///                             "lun": 0,
///                         },
///                         {
///                             "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                             "lun": 1,
///                         },
///                     ],
///                     "os_disk_image": {
///                         "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                     },
///                 },
///                 "exclude_from_latest": False,
///                 "name": "East US",
///                 "regional_replica_count": 2,
///                 "storage_account_type": azure_native.compute.StorageAccountType.STANDARD_ZRS,
///             },
///         ],
///     },
///     resource_group_name="myResourceGroup",
///     safety_profile={
///         "allow_deletion_of_replicated_locations": False,
///         "block_deletion_before_end_of_life": False,
///     },
///     storage_profile={
///         "source": {
///             "community_gallery_image_id": "/communityGalleries/{communityGalleryName}/images/{communityGalleryImageName}",
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   galleryImageVersion:
///     type: azure-native:compute:GalleryImageVersion
///     properties:
///       galleryImageName: myGalleryImageName
///       galleryImageVersionName: 1.0.0
///       galleryName: myGalleryName
///       location: West US
///       publishingProfile:
///         targetRegions:
///           - encryption:
///               dataDiskImages:
///                 - diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet
///                   lun: 0
///                 - diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet
///                   lun: 1
///               osDiskImage:
///                 diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet
///             excludeFromLatest: false
///             name: West US
///             regionalReplicaCount: 1
///           - encryption:
///               dataDiskImages:
///                 - diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet
///                   lun: 0
///                 - diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet
///                   lun: 1
///               osDiskImage:
///                 diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet
///             excludeFromLatest: false
///             name: East US
///             regionalReplicaCount: 2
///             storageAccountType: Standard_ZRS
///       resourceGroupName: myResourceGroup
///       safetyProfile:
///         allowDeletionOfReplicatedLocations: false
///         blockDeletionBeforeEndOfLife: false
///       storageProfile:
///         source:
///           communityGalleryImageId: /communityGalleries/{communityGalleryName}/images/{communityGalleryImageName}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a simple Gallery Image Version using managed image as source.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var galleryImageVersion = new AzureNative.Compute.GalleryImageVersion("galleryImageVersion", new()
///     {
///         GalleryImageName = "myGalleryImageName",
///         GalleryImageVersionName = "1.0.0",
///         GalleryName = "myGalleryName",
///         Location = "West US",
///         PublishingProfile = new AzureNative.Compute.Inputs.GalleryImageVersionPublishingProfileArgs
///         {
///             TargetRegions = new[]
///             {
///                 new AzureNative.Compute.Inputs.TargetRegionArgs
///                 {
///                     Encryption = new AzureNative.Compute.Inputs.EncryptionImagesArgs
///                     {
///                         DataDiskImages = new[]
///                         {
///                             new AzureNative.Compute.Inputs.DataDiskImageEncryptionArgs
///                             {
///                                 DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet",
///                                 Lun = 0,
///                             },
///                             new AzureNative.Compute.Inputs.DataDiskImageEncryptionArgs
///                             {
///                                 DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                                 Lun = 1,
///                             },
///                         },
///                         OsDiskImage = new AzureNative.Compute.Inputs.OSDiskImageEncryptionArgs
///                         {
///                             DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                         },
///                     },
///                     ExcludeFromLatest = false,
///                     Name = "West US",
///                     RegionalReplicaCount = 1,
///                 },
///                 new AzureNative.Compute.Inputs.TargetRegionArgs
///                 {
///                     Encryption = new AzureNative.Compute.Inputs.EncryptionImagesArgs
///                     {
///                         DataDiskImages = new[]
///                         {
///                             new AzureNative.Compute.Inputs.DataDiskImageEncryptionArgs
///                             {
///                                 DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet",
///                                 Lun = 0,
///                             },
///                             new AzureNative.Compute.Inputs.DataDiskImageEncryptionArgs
///                             {
///                                 DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                                 Lun = 1,
///                             },
///                         },
///                         OsDiskImage = new AzureNative.Compute.Inputs.OSDiskImageEncryptionArgs
///                         {
///                             DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                         },
///                     },
///                     ExcludeFromLatest = false,
///                     Name = "East US",
///                     RegionalReplicaCount = 2,
///                     StorageAccountType = AzureNative.Compute.StorageAccountType.Standard_ZRS,
///                 },
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         SafetyProfile = new AzureNative.Compute.Inputs.GalleryImageVersionSafetyProfileArgs
///         {
///             AllowDeletionOfReplicatedLocations = false,
///             BlockDeletionBeforeEndOfLife = false,
///         },
///         StorageProfile = new AzureNative.Compute.Inputs.GalleryImageVersionStorageProfileArgs
///         {
///             Source = new AzureNative.Compute.Inputs.GalleryArtifactVersionFullSourceArgs
///             {
///                 Id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/images/{imageName}",
///             },
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewGalleryImageVersion(ctx, "galleryImageVersion", &compute.GalleryImageVersionArgs{
/// 			GalleryImageName:        pulumi.String("myGalleryImageName"),
/// 			GalleryImageVersionName: pulumi.String("1.0.0"),
/// 			GalleryName:             pulumi.String("myGalleryName"),
/// 			Location:                pulumi.String("West US"),
/// 			PublishingProfile: &compute.GalleryImageVersionPublishingProfileArgs{
/// 				TargetRegions: compute.TargetRegionArray{
/// 					&compute.TargetRegionArgs{
/// 						Encryption: &compute.EncryptionImagesArgs{
/// 							DataDiskImages: compute.DataDiskImageEncryptionArray{
/// 								&compute.DataDiskImageEncryptionArgs{
/// 									DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet"),
/// 									Lun:                 pulumi.Int(0),
/// 								},
/// 								&compute.DataDiskImageEncryptionArgs{
/// 									DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet"),
/// 									Lun:                 pulumi.Int(1),
/// 								},
/// 							},
/// 							OsDiskImage: &compute.OSDiskImageEncryptionArgs{
/// 								DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet"),
/// 							},
/// 						},
/// 						ExcludeFromLatest:    pulumi.Bool(false),
/// 						Name:                 pulumi.String("West US"),
/// 						RegionalReplicaCount: pulumi.Int(1),
/// 					},
/// 					&compute.TargetRegionArgs{
/// 						Encryption: &compute.EncryptionImagesArgs{
/// 							DataDiskImages: compute.DataDiskImageEncryptionArray{
/// 								&compute.DataDiskImageEncryptionArgs{
/// 									DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet"),
/// 									Lun:                 pulumi.Int(0),
/// 								},
/// 								&compute.DataDiskImageEncryptionArgs{
/// 									DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet"),
/// 									Lun:                 pulumi.Int(1),
/// 								},
/// 							},
/// 							OsDiskImage: &compute.OSDiskImageEncryptionArgs{
/// 								DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet"),
/// 							},
/// 						},
/// 						ExcludeFromLatest:    pulumi.Bool(false),
/// 						Name:                 pulumi.String("East US"),
/// 						RegionalReplicaCount: pulumi.Int(2),
/// 						StorageAccountType:   pulumi.String(compute.StorageAccountType_Standard_ZRS),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SafetyProfile: &compute.GalleryImageVersionSafetyProfileArgs{
/// 				AllowDeletionOfReplicatedLocations: pulumi.Bool(false),
/// 				BlockDeletionBeforeEndOfLife:       pulumi.Bool(false),
/// 			},
/// 			StorageProfile: &compute.GalleryImageVersionStorageProfileArgs{
/// 				Source: &compute.GalleryArtifactVersionFullSourceArgs{
/// 					Id: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/images/{imageName}"),
/// 				},
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
/// resource "azure-native_compute_galleryimageversion" "galleryImageVersion" {
///   gallery_image_name         = "myGalleryImageName"
///   gallery_image_version_name = "1.0.0"
///   gallery_name               = "myGalleryName"
///   location                   = "West US"
///   publishing_profile = {
///     target_regions = [{
///       "encryption" = {
///         "dataDiskImages" = [{
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet"
///           "lun"                 = 0
///           }, {
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet"
///           "lun"                 = 1
///         }]
///         "osDiskImage" = {
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet"
///         }
///       }
///       "excludeFromLatest"    = false
///       "name"                 = "West US"
///       "regionalReplicaCount" = 1
///       }, {
///       "encryption" = {
///         "dataDiskImages" = [{
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet"
///           "lun"                 = 0
///           }, {
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet"
///           "lun"                 = 1
///         }]
///         "osDiskImage" = {
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet"
///         }
///       }
///       "excludeFromLatest"    = false
///       "name"                 = "East US"
///       "regionalReplicaCount" = 2
///       "storageAccountType"   = "Standard_ZRS"
///     }]
///   }
///   resource_group_name = "myResourceGroup"
///   safety_profile = {
///     allow_deletion_of_replicated_locations = false
///     block_deletion_before_end_of_life      = false
///   }
///   storage_profile = {
///     source = {
///       id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/images/{imageName}"
///     }
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
/// import com.pulumi.azurenative.compute.GalleryImageVersion;
/// import com.pulumi.azurenative.compute.GalleryImageVersionArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageVersionPublishingProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageVersionSafetyProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageVersionStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryArtifactVersionFullSourceArgs;
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
///         var galleryImageVersion = new GalleryImageVersion("galleryImageVersion", GalleryImageVersionArgs.builder()
///             .galleryImageName("myGalleryImageName")
///             .galleryImageVersionName("1.0.0")
///             .galleryName("myGalleryName")
///             .location("West US")
///             .publishingProfile(GalleryImageVersionPublishingProfileArgs.builder()
///                 .targetRegions(
///                     TargetRegionArgs.builder()
///                         .encryption(EncryptionImagesArgs.builder()
///                             .dataDiskImages(
///                                 DataDiskImageEncryptionArgs.builder()
///                                     .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet")
///                                     .lun(0)
///                                     .build(),
///                                 DataDiskImageEncryptionArgs.builder()
///                                     .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet")
///                                     .lun(1)
///                                     .build())
///                             .osDiskImage(OSDiskImageEncryptionArgs.builder()
///                                 .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet")
///                                 .build())
///                             .build())
///                         .excludeFromLatest(false)
///                         .name("West US")
///                         .regionalReplicaCount(1)
///                         .build(),
///                     TargetRegionArgs.builder()
///                         .encryption(EncryptionImagesArgs.builder()
///                             .dataDiskImages(
///                                 DataDiskImageEncryptionArgs.builder()
///                                     .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet")
///                                     .lun(0)
///                                     .build(),
///                                 DataDiskImageEncryptionArgs.builder()
///                                     .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet")
///                                     .lun(1)
///                                     .build())
///                             .osDiskImage(OSDiskImageEncryptionArgs.builder()
///                                 .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet")
///                                 .build())
///                             .build())
///                         .excludeFromLatest(false)
///                         .name("East US")
///                         .regionalReplicaCount(2)
///                         .storageAccountType("Standard_ZRS")
///                         .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .safetyProfile(GalleryImageVersionSafetyProfileArgs.builder()
///                 .allowDeletionOfReplicatedLocations(false)
///                 .blockDeletionBeforeEndOfLife(false)
///                 .build())
///             .storageProfile(GalleryImageVersionStorageProfileArgs.builder()
///                 .source(GalleryArtifactVersionFullSourceArgs.builder()
///                     .id("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/images/{imageName}")
///                     .build())
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
/// const galleryImageVersion = new azure_native.compute.GalleryImageVersion("galleryImageVersion", {
///     galleryImageName: "myGalleryImageName",
///     galleryImageVersionName: "1.0.0",
///     galleryName: "myGalleryName",
///     location: "West US",
///     publishingProfile: {
///         targetRegions: [
///             {
///                 encryption: {
///                     dataDiskImages: [
///                         {
///                             diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet",
///                             lun: 0,
///                         },
///                         {
///                             diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                             lun: 1,
///                         },
///                     ],
///                     osDiskImage: {
///                         diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                     },
///                 },
///                 excludeFromLatest: false,
///                 name: "West US",
///                 regionalReplicaCount: 1,
///             },
///             {
///                 encryption: {
///                     dataDiskImages: [
///                         {
///                             diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet",
///                             lun: 0,
///                         },
///                         {
///                             diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                             lun: 1,
///                         },
///                     ],
///                     osDiskImage: {
///                         diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                     },
///                 },
///                 excludeFromLatest: false,
///                 name: "East US",
///                 regionalReplicaCount: 2,
///                 storageAccountType: azure_native.compute.StorageAccountType.Standard_ZRS,
///             },
///         ],
///     },
///     resourceGroupName: "myResourceGroup",
///     safetyProfile: {
///         allowDeletionOfReplicatedLocations: false,
///         blockDeletionBeforeEndOfLife: false,
///     },
///     storageProfile: {
///         source: {
///             id: "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/images/{imageName}",
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gallery_image_version = azure_native.compute.GalleryImageVersion("galleryImageVersion",
///     gallery_image_name="myGalleryImageName",
///     gallery_image_version_name="1.0.0",
///     gallery_name="myGalleryName",
///     location="West US",
///     publishing_profile={
///         "target_regions": [
///             {
///                 "encryption": {
///                     "data_disk_images": [
///                         {
///                             "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet",
///                             "lun": 0,
///                         },
///                         {
///                             "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                             "lun": 1,
///                         },
///                     ],
///                     "os_disk_image": {
///                         "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                     },
///                 },
///                 "exclude_from_latest": False,
///                 "name": "West US",
///                 "regional_replica_count": 1,
///             },
///             {
///                 "encryption": {
///                     "data_disk_images": [
///                         {
///                             "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet",
///                             "lun": 0,
///                         },
///                         {
///                             "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                             "lun": 1,
///                         },
///                     ],
///                     "os_disk_image": {
///                         "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                     },
///                 },
///                 "exclude_from_latest": False,
///                 "name": "East US",
///                 "regional_replica_count": 2,
///                 "storage_account_type": azure_native.compute.StorageAccountType.STANDARD_ZRS,
///             },
///         ],
///     },
///     resource_group_name="myResourceGroup",
///     safety_profile={
///         "allow_deletion_of_replicated_locations": False,
///         "block_deletion_before_end_of_life": False,
///     },
///     storage_profile={
///         "source": {
///             "id": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/images/{imageName}",
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   galleryImageVersion:
///     type: azure-native:compute:GalleryImageVersion
///     properties:
///       galleryImageName: myGalleryImageName
///       galleryImageVersionName: 1.0.0
///       galleryName: myGalleryName
///       location: West US
///       publishingProfile:
///         targetRegions:
///           - encryption:
///               dataDiskImages:
///                 - diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet
///                   lun: 0
///                 - diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet
///                   lun: 1
///               osDiskImage:
///                 diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet
///             excludeFromLatest: false
///             name: West US
///             regionalReplicaCount: 1
///           - encryption:
///               dataDiskImages:
///                 - diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet
///                   lun: 0
///                 - diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet
///                   lun: 1
///               osDiskImage:
///                 diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet
///             excludeFromLatest: false
///             name: East US
///             regionalReplicaCount: 2
///             storageAccountType: Standard_ZRS
///       resourceGroupName: myResourceGroup
///       safetyProfile:
///         allowDeletionOfReplicatedLocations: false
///         blockDeletionBeforeEndOfLife: false
///       storageProfile:
///         source:
///           id: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/images/{imageName}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a simple Gallery Image Version using shallow replication mode.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var galleryImageVersion = new AzureNative.Compute.GalleryImageVersion("galleryImageVersion", new()
///     {
///         GalleryImageName = "myGalleryImageName",
///         GalleryImageVersionName = "1.0.0",
///         GalleryName = "myGalleryName",
///         Location = "West US",
///         PublishingProfile = new AzureNative.Compute.Inputs.GalleryImageVersionPublishingProfileArgs
///         {
///             ReplicationMode = AzureNative.Compute.ReplicationMode.Shallow,
///             TargetRegions = new[]
///             {
///                 new AzureNative.Compute.Inputs.TargetRegionArgs
///                 {
///                     ExcludeFromLatest = false,
///                     Name = "West US",
///                     RegionalReplicaCount = 1,
///                 },
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         SafetyProfile = new AzureNative.Compute.Inputs.GalleryImageVersionSafetyProfileArgs
///         {
///             AllowDeletionOfReplicatedLocations = false,
///             BlockDeletionBeforeEndOfLife = false,
///         },
///         StorageProfile = new AzureNative.Compute.Inputs.GalleryImageVersionStorageProfileArgs
///         {
///             Source = new AzureNative.Compute.Inputs.GalleryArtifactVersionFullSourceArgs
///             {
///                 Id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/images/{imageName}",
///             },
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewGalleryImageVersion(ctx, "galleryImageVersion", &compute.GalleryImageVersionArgs{
/// 			GalleryImageName:        pulumi.String("myGalleryImageName"),
/// 			GalleryImageVersionName: pulumi.String("1.0.0"),
/// 			GalleryName:             pulumi.String("myGalleryName"),
/// 			Location:                pulumi.String("West US"),
/// 			PublishingProfile: &compute.GalleryImageVersionPublishingProfileArgs{
/// 				ReplicationMode: pulumi.String(compute.ReplicationModeShallow),
/// 				TargetRegions: compute.TargetRegionArray{
/// 					&compute.TargetRegionArgs{
/// 						ExcludeFromLatest:    pulumi.Bool(false),
/// 						Name:                 pulumi.String("West US"),
/// 						RegionalReplicaCount: pulumi.Int(1),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SafetyProfile: &compute.GalleryImageVersionSafetyProfileArgs{
/// 				AllowDeletionOfReplicatedLocations: pulumi.Bool(false),
/// 				BlockDeletionBeforeEndOfLife:       pulumi.Bool(false),
/// 			},
/// 			StorageProfile: &compute.GalleryImageVersionStorageProfileArgs{
/// 				Source: &compute.GalleryArtifactVersionFullSourceArgs{
/// 					Id: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/images/{imageName}"),
/// 				},
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
/// resource "azure-native_compute_galleryimageversion" "galleryImageVersion" {
///   gallery_image_name         = "myGalleryImageName"
///   gallery_image_version_name = "1.0.0"
///   gallery_name               = "myGalleryName"
///   location                   = "West US"
///   publishing_profile = {
///     replication_mode = "Shallow"
///     target_regions = [{
///       "excludeFromLatest"    = false
///       "name"                 = "West US"
///       "regionalReplicaCount" = 1
///     }]
///   }
///   resource_group_name = "myResourceGroup"
///   safety_profile = {
///     allow_deletion_of_replicated_locations = false
///     block_deletion_before_end_of_life      = false
///   }
///   storage_profile = {
///     source = {
///       id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/images/{imageName}"
///     }
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
/// import com.pulumi.azurenative.compute.GalleryImageVersion;
/// import com.pulumi.azurenative.compute.GalleryImageVersionArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageVersionPublishingProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageVersionSafetyProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageVersionStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryArtifactVersionFullSourceArgs;
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
///         var galleryImageVersion = new GalleryImageVersion("galleryImageVersion", GalleryImageVersionArgs.builder()
///             .galleryImageName("myGalleryImageName")
///             .galleryImageVersionName("1.0.0")
///             .galleryName("myGalleryName")
///             .location("West US")
///             .publishingProfile(GalleryImageVersionPublishingProfileArgs.builder()
///                 .replicationMode("Shallow")
///                 .targetRegions(TargetRegionArgs.builder()
///                     .excludeFromLatest(false)
///                     .name("West US")
///                     .regionalReplicaCount(1)
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .safetyProfile(GalleryImageVersionSafetyProfileArgs.builder()
///                 .allowDeletionOfReplicatedLocations(false)
///                 .blockDeletionBeforeEndOfLife(false)
///                 .build())
///             .storageProfile(GalleryImageVersionStorageProfileArgs.builder()
///                 .source(GalleryArtifactVersionFullSourceArgs.builder()
///                     .id("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/images/{imageName}")
///                     .build())
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
/// const galleryImageVersion = new azure_native.compute.GalleryImageVersion("galleryImageVersion", {
///     galleryImageName: "myGalleryImageName",
///     galleryImageVersionName: "1.0.0",
///     galleryName: "myGalleryName",
///     location: "West US",
///     publishingProfile: {
///         replicationMode: azure_native.compute.ReplicationMode.Shallow,
///         targetRegions: [{
///             excludeFromLatest: false,
///             name: "West US",
///             regionalReplicaCount: 1,
///         }],
///     },
///     resourceGroupName: "myResourceGroup",
///     safetyProfile: {
///         allowDeletionOfReplicatedLocations: false,
///         blockDeletionBeforeEndOfLife: false,
///     },
///     storageProfile: {
///         source: {
///             id: "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/images/{imageName}",
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gallery_image_version = azure_native.compute.GalleryImageVersion("galleryImageVersion",
///     gallery_image_name="myGalleryImageName",
///     gallery_image_version_name="1.0.0",
///     gallery_name="myGalleryName",
///     location="West US",
///     publishing_profile={
///         "replication_mode": azure_native.compute.ReplicationMode.SHALLOW,
///         "target_regions": [{
///             "exclude_from_latest": False,
///             "name": "West US",
///             "regional_replica_count": 1,
///         }],
///     },
///     resource_group_name="myResourceGroup",
///     safety_profile={
///         "allow_deletion_of_replicated_locations": False,
///         "block_deletion_before_end_of_life": False,
///     },
///     storage_profile={
///         "source": {
///             "id": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/images/{imageName}",
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   galleryImageVersion:
///     type: azure-native:compute:GalleryImageVersion
///     properties:
///       galleryImageName: myGalleryImageName
///       galleryImageVersionName: 1.0.0
///       galleryName: myGalleryName
///       location: West US
///       publishingProfile:
///         replicationMode: Shallow
///         targetRegions:
///           - excludeFromLatest: false
///             name: West US
///             regionalReplicaCount: 1
///       resourceGroupName: myResourceGroup
///       safetyProfile:
///         allowDeletionOfReplicatedLocations: false
///         blockDeletionBeforeEndOfLife: false
///       storageProfile:
///         source:
///           id: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/images/{imageName}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a simple Gallery Image Version using shared image as source.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var galleryImageVersion = new AzureNative.Compute.GalleryImageVersion("galleryImageVersion", new()
///     {
///         GalleryImageName = "myGalleryImageName",
///         GalleryImageVersionName = "1.0.0",
///         GalleryName = "myGalleryName",
///         Location = "West US",
///         PublishingProfile = new AzureNative.Compute.Inputs.GalleryImageVersionPublishingProfileArgs
///         {
///             TargetRegions = new[]
///             {
///                 new AzureNative.Compute.Inputs.TargetRegionArgs
///                 {
///                     Encryption = new AzureNative.Compute.Inputs.EncryptionImagesArgs
///                     {
///                         DataDiskImages = new[]
///                         {
///                             new AzureNative.Compute.Inputs.DataDiskImageEncryptionArgs
///                             {
///                                 DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet",
///                                 Lun = 0,
///                             },
///                             new AzureNative.Compute.Inputs.DataDiskImageEncryptionArgs
///                             {
///                                 DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                                 Lun = 1,
///                             },
///                         },
///                         OsDiskImage = new AzureNative.Compute.Inputs.OSDiskImageEncryptionArgs
///                         {
///                             DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                         },
///                     },
///                     ExcludeFromLatest = false,
///                     Name = "West US",
///                     RegionalReplicaCount = 1,
///                 },
///                 new AzureNative.Compute.Inputs.TargetRegionArgs
///                 {
///                     Encryption = new AzureNative.Compute.Inputs.EncryptionImagesArgs
///                     {
///                         DataDiskImages = new[]
///                         {
///                             new AzureNative.Compute.Inputs.DataDiskImageEncryptionArgs
///                             {
///                                 DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet",
///                                 Lun = 0,
///                             },
///                             new AzureNative.Compute.Inputs.DataDiskImageEncryptionArgs
///                             {
///                                 DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                                 Lun = 1,
///                             },
///                         },
///                         OsDiskImage = new AzureNative.Compute.Inputs.OSDiskImageEncryptionArgs
///                         {
///                             DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                         },
///                     },
///                     ExcludeFromLatest = false,
///                     Name = "East US",
///                     RegionalReplicaCount = 2,
///                     StorageAccountType = AzureNative.Compute.StorageAccountType.Standard_ZRS,
///                 },
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         SafetyProfile = new AzureNative.Compute.Inputs.GalleryImageVersionSafetyProfileArgs
///         {
///             AllowDeletionOfReplicatedLocations = false,
///             BlockDeletionBeforeEndOfLife = false,
///         },
///         StorageProfile = new AzureNative.Compute.Inputs.GalleryImageVersionStorageProfileArgs
///         {
///             Source = new AzureNative.Compute.Inputs.GalleryArtifactVersionFullSourceArgs
///             {
///                 Id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/galleries/{galleryName}/images/{imageDefinitionName}/versions/{versionName}",
///             },
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewGalleryImageVersion(ctx, "galleryImageVersion", &compute.GalleryImageVersionArgs{
/// 			GalleryImageName:        pulumi.String("myGalleryImageName"),
/// 			GalleryImageVersionName: pulumi.String("1.0.0"),
/// 			GalleryName:             pulumi.String("myGalleryName"),
/// 			Location:                pulumi.String("West US"),
/// 			PublishingProfile: &compute.GalleryImageVersionPublishingProfileArgs{
/// 				TargetRegions: compute.TargetRegionArray{
/// 					&compute.TargetRegionArgs{
/// 						Encryption: &compute.EncryptionImagesArgs{
/// 							DataDiskImages: compute.DataDiskImageEncryptionArray{
/// 								&compute.DataDiskImageEncryptionArgs{
/// 									DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet"),
/// 									Lun:                 pulumi.Int(0),
/// 								},
/// 								&compute.DataDiskImageEncryptionArgs{
/// 									DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet"),
/// 									Lun:                 pulumi.Int(1),
/// 								},
/// 							},
/// 							OsDiskImage: &compute.OSDiskImageEncryptionArgs{
/// 								DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet"),
/// 							},
/// 						},
/// 						ExcludeFromLatest:    pulumi.Bool(false),
/// 						Name:                 pulumi.String("West US"),
/// 						RegionalReplicaCount: pulumi.Int(1),
/// 					},
/// 					&compute.TargetRegionArgs{
/// 						Encryption: &compute.EncryptionImagesArgs{
/// 							DataDiskImages: compute.DataDiskImageEncryptionArray{
/// 								&compute.DataDiskImageEncryptionArgs{
/// 									DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet"),
/// 									Lun:                 pulumi.Int(0),
/// 								},
/// 								&compute.DataDiskImageEncryptionArgs{
/// 									DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet"),
/// 									Lun:                 pulumi.Int(1),
/// 								},
/// 							},
/// 							OsDiskImage: &compute.OSDiskImageEncryptionArgs{
/// 								DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet"),
/// 							},
/// 						},
/// 						ExcludeFromLatest:    pulumi.Bool(false),
/// 						Name:                 pulumi.String("East US"),
/// 						RegionalReplicaCount: pulumi.Int(2),
/// 						StorageAccountType:   pulumi.String(compute.StorageAccountType_Standard_ZRS),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SafetyProfile: &compute.GalleryImageVersionSafetyProfileArgs{
/// 				AllowDeletionOfReplicatedLocations: pulumi.Bool(false),
/// 				BlockDeletionBeforeEndOfLife:       pulumi.Bool(false),
/// 			},
/// 			StorageProfile: &compute.GalleryImageVersionStorageProfileArgs{
/// 				Source: &compute.GalleryArtifactVersionFullSourceArgs{
/// 					Id: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/galleries/{galleryName}/images/{imageDefinitionName}/versions/{versionName}"),
/// 				},
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
/// resource "azure-native_compute_galleryimageversion" "galleryImageVersion" {
///   gallery_image_name         = "myGalleryImageName"
///   gallery_image_version_name = "1.0.0"
///   gallery_name               = "myGalleryName"
///   location                   = "West US"
///   publishing_profile = {
///     target_regions = [{
///       "encryption" = {
///         "dataDiskImages" = [{
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet"
///           "lun"                 = 0
///           }, {
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet"
///           "lun"                 = 1
///         }]
///         "osDiskImage" = {
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet"
///         }
///       }
///       "excludeFromLatest"    = false
///       "name"                 = "West US"
///       "regionalReplicaCount" = 1
///       }, {
///       "encryption" = {
///         "dataDiskImages" = [{
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet"
///           "lun"                 = 0
///           }, {
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet"
///           "lun"                 = 1
///         }]
///         "osDiskImage" = {
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet"
///         }
///       }
///       "excludeFromLatest"    = false
///       "name"                 = "East US"
///       "regionalReplicaCount" = 2
///       "storageAccountType"   = "Standard_ZRS"
///     }]
///   }
///   resource_group_name = "myResourceGroup"
///   safety_profile = {
///     allow_deletion_of_replicated_locations = false
///     block_deletion_before_end_of_life      = false
///   }
///   storage_profile = {
///     source = {
///       id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/galleries/{galleryName}/images/{imageDefinitionName}/versions/{versionName}"
///     }
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
/// import com.pulumi.azurenative.compute.GalleryImageVersion;
/// import com.pulumi.azurenative.compute.GalleryImageVersionArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageVersionPublishingProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageVersionSafetyProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageVersionStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryArtifactVersionFullSourceArgs;
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
///         var galleryImageVersion = new GalleryImageVersion("galleryImageVersion", GalleryImageVersionArgs.builder()
///             .galleryImageName("myGalleryImageName")
///             .galleryImageVersionName("1.0.0")
///             .galleryName("myGalleryName")
///             .location("West US")
///             .publishingProfile(GalleryImageVersionPublishingProfileArgs.builder()
///                 .targetRegions(
///                     TargetRegionArgs.builder()
///                         .encryption(EncryptionImagesArgs.builder()
///                             .dataDiskImages(
///                                 DataDiskImageEncryptionArgs.builder()
///                                     .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet")
///                                     .lun(0)
///                                     .build(),
///                                 DataDiskImageEncryptionArgs.builder()
///                                     .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet")
///                                     .lun(1)
///                                     .build())
///                             .osDiskImage(OSDiskImageEncryptionArgs.builder()
///                                 .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet")
///                                 .build())
///                             .build())
///                         .excludeFromLatest(false)
///                         .name("West US")
///                         .regionalReplicaCount(1)
///                         .build(),
///                     TargetRegionArgs.builder()
///                         .encryption(EncryptionImagesArgs.builder()
///                             .dataDiskImages(
///                                 DataDiskImageEncryptionArgs.builder()
///                                     .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet")
///                                     .lun(0)
///                                     .build(),
///                                 DataDiskImageEncryptionArgs.builder()
///                                     .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet")
///                                     .lun(1)
///                                     .build())
///                             .osDiskImage(OSDiskImageEncryptionArgs.builder()
///                                 .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet")
///                                 .build())
///                             .build())
///                         .excludeFromLatest(false)
///                         .name("East US")
///                         .regionalReplicaCount(2)
///                         .storageAccountType("Standard_ZRS")
///                         .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .safetyProfile(GalleryImageVersionSafetyProfileArgs.builder()
///                 .allowDeletionOfReplicatedLocations(false)
///                 .blockDeletionBeforeEndOfLife(false)
///                 .build())
///             .storageProfile(GalleryImageVersionStorageProfileArgs.builder()
///                 .source(GalleryArtifactVersionFullSourceArgs.builder()
///                     .id("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/galleries/{galleryName}/images/{imageDefinitionName}/versions/{versionName}")
///                     .build())
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
/// const galleryImageVersion = new azure_native.compute.GalleryImageVersion("galleryImageVersion", {
///     galleryImageName: "myGalleryImageName",
///     galleryImageVersionName: "1.0.0",
///     galleryName: "myGalleryName",
///     location: "West US",
///     publishingProfile: {
///         targetRegions: [
///             {
///                 encryption: {
///                     dataDiskImages: [
///                         {
///                             diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet",
///                             lun: 0,
///                         },
///                         {
///                             diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                             lun: 1,
///                         },
///                     ],
///                     osDiskImage: {
///                         diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                     },
///                 },
///                 excludeFromLatest: false,
///                 name: "West US",
///                 regionalReplicaCount: 1,
///             },
///             {
///                 encryption: {
///                     dataDiskImages: [
///                         {
///                             diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet",
///                             lun: 0,
///                         },
///                         {
///                             diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                             lun: 1,
///                         },
///                     ],
///                     osDiskImage: {
///                         diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                     },
///                 },
///                 excludeFromLatest: false,
///                 name: "East US",
///                 regionalReplicaCount: 2,
///                 storageAccountType: azure_native.compute.StorageAccountType.Standard_ZRS,
///             },
///         ],
///     },
///     resourceGroupName: "myResourceGroup",
///     safetyProfile: {
///         allowDeletionOfReplicatedLocations: false,
///         blockDeletionBeforeEndOfLife: false,
///     },
///     storageProfile: {
///         source: {
///             id: "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/galleries/{galleryName}/images/{imageDefinitionName}/versions/{versionName}",
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gallery_image_version = azure_native.compute.GalleryImageVersion("galleryImageVersion",
///     gallery_image_name="myGalleryImageName",
///     gallery_image_version_name="1.0.0",
///     gallery_name="myGalleryName",
///     location="West US",
///     publishing_profile={
///         "target_regions": [
///             {
///                 "encryption": {
///                     "data_disk_images": [
///                         {
///                             "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet",
///                             "lun": 0,
///                         },
///                         {
///                             "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                             "lun": 1,
///                         },
///                     ],
///                     "os_disk_image": {
///                         "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                     },
///                 },
///                 "exclude_from_latest": False,
///                 "name": "West US",
///                 "regional_replica_count": 1,
///             },
///             {
///                 "encryption": {
///                     "data_disk_images": [
///                         {
///                             "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet",
///                             "lun": 0,
///                         },
///                         {
///                             "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                             "lun": 1,
///                         },
///                     ],
///                     "os_disk_image": {
///                         "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                     },
///                 },
///                 "exclude_from_latest": False,
///                 "name": "East US",
///                 "regional_replica_count": 2,
///                 "storage_account_type": azure_native.compute.StorageAccountType.STANDARD_ZRS,
///             },
///         ],
///     },
///     resource_group_name="myResourceGroup",
///     safety_profile={
///         "allow_deletion_of_replicated_locations": False,
///         "block_deletion_before_end_of_life": False,
///     },
///     storage_profile={
///         "source": {
///             "id": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/galleries/{galleryName}/images/{imageDefinitionName}/versions/{versionName}",
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   galleryImageVersion:
///     type: azure-native:compute:GalleryImageVersion
///     properties:
///       galleryImageName: myGalleryImageName
///       galleryImageVersionName: 1.0.0
///       galleryName: myGalleryName
///       location: West US
///       publishingProfile:
///         targetRegions:
///           - encryption:
///               dataDiskImages:
///                 - diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet
///                   lun: 0
///                 - diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet
///                   lun: 1
///               osDiskImage:
///                 diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet
///             excludeFromLatest: false
///             name: West US
///             regionalReplicaCount: 1
///           - encryption:
///               dataDiskImages:
///                 - diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet
///                   lun: 0
///                 - diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet
///                   lun: 1
///               osDiskImage:
///                 diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet
///             excludeFromLatest: false
///             name: East US
///             regionalReplicaCount: 2
///             storageAccountType: Standard_ZRS
///       resourceGroupName: myResourceGroup
///       safetyProfile:
///         allowDeletionOfReplicatedLocations: false
///         blockDeletionBeforeEndOfLife: false
///       storageProfile:
///         source:
///           id: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/galleries/{galleryName}/images/{imageDefinitionName}/versions/{versionName}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a simple Gallery Image Version using snapshots as a source.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var galleryImageVersion = new AzureNative.Compute.GalleryImageVersion("galleryImageVersion", new()
///     {
///         GalleryImageName = "myGalleryImageName",
///         GalleryImageVersionName = "1.0.0",
///         GalleryName = "myGalleryName",
///         Location = "West US",
///         PublishingProfile = new AzureNative.Compute.Inputs.GalleryImageVersionPublishingProfileArgs
///         {
///             TargetRegions = new[]
///             {
///                 new AzureNative.Compute.Inputs.TargetRegionArgs
///                 {
///                     Encryption = new AzureNative.Compute.Inputs.EncryptionImagesArgs
///                     {
///                         DataDiskImages = new[]
///                         {
///                             new AzureNative.Compute.Inputs.DataDiskImageEncryptionArgs
///                             {
///                                 DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                                 Lun = 1,
///                             },
///                         },
///                         OsDiskImage = new AzureNative.Compute.Inputs.OSDiskImageEncryptionArgs
///                         {
///                             DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                         },
///                     },
///                     ExcludeFromLatest = false,
///                     Name = "West US",
///                     RegionalReplicaCount = 1,
///                 },
///                 new AzureNative.Compute.Inputs.TargetRegionArgs
///                 {
///                     Encryption = new AzureNative.Compute.Inputs.EncryptionImagesArgs
///                     {
///                         DataDiskImages = new[]
///                         {
///                             new AzureNative.Compute.Inputs.DataDiskImageEncryptionArgs
///                             {
///                                 DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                                 Lun = 1,
///                             },
///                         },
///                         OsDiskImage = new AzureNative.Compute.Inputs.OSDiskImageEncryptionArgs
///                         {
///                             DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                         },
///                     },
///                     ExcludeFromLatest = false,
///                     Name = "East US",
///                     RegionalReplicaCount = 2,
///                     StorageAccountType = AzureNative.Compute.StorageAccountType.Standard_ZRS,
///                 },
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         SafetyProfile = new AzureNative.Compute.Inputs.GalleryImageVersionSafetyProfileArgs
///         {
///             AllowDeletionOfReplicatedLocations = false,
///             BlockDeletionBeforeEndOfLife = false,
///         },
///         StorageProfile = new AzureNative.Compute.Inputs.GalleryImageVersionStorageProfileArgs
///         {
///             DataDiskImages = new[]
///             {
///                 new AzureNative.Compute.Inputs.GalleryDataDiskImageArgs
///                 {
///                     HostCaching = AzureNative.Compute.HostCaching.None,
///                     Lun = 1,
///                     Source = new AzureNative.Compute.Inputs.GalleryDiskImageSourceArgs
///                     {
///                         Id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/disks/{dataDiskName}",
///                     },
///                 },
///             },
///             OsDiskImage = new AzureNative.Compute.Inputs.GalleryOSDiskImageArgs
///             {
///                 HostCaching = AzureNative.Compute.HostCaching.ReadOnly,
///                 Source = new AzureNative.Compute.Inputs.GalleryDiskImageSourceArgs
///                 {
///                     Id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/snapshots/{osSnapshotName}",
///                 },
///             },
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewGalleryImageVersion(ctx, "galleryImageVersion", &compute.GalleryImageVersionArgs{
/// 			GalleryImageName:        pulumi.String("myGalleryImageName"),
/// 			GalleryImageVersionName: pulumi.String("1.0.0"),
/// 			GalleryName:             pulumi.String("myGalleryName"),
/// 			Location:                pulumi.String("West US"),
/// 			PublishingProfile: &compute.GalleryImageVersionPublishingProfileArgs{
/// 				TargetRegions: compute.TargetRegionArray{
/// 					&compute.TargetRegionArgs{
/// 						Encryption: &compute.EncryptionImagesArgs{
/// 							DataDiskImages: compute.DataDiskImageEncryptionArray{
/// 								&compute.DataDiskImageEncryptionArgs{
/// 									DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet"),
/// 									Lun:                 pulumi.Int(1),
/// 								},
/// 							},
/// 							OsDiskImage: &compute.OSDiskImageEncryptionArgs{
/// 								DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet"),
/// 							},
/// 						},
/// 						ExcludeFromLatest:    pulumi.Bool(false),
/// 						Name:                 pulumi.String("West US"),
/// 						RegionalReplicaCount: pulumi.Int(1),
/// 					},
/// 					&compute.TargetRegionArgs{
/// 						Encryption: &compute.EncryptionImagesArgs{
/// 							DataDiskImages: compute.DataDiskImageEncryptionArray{
/// 								&compute.DataDiskImageEncryptionArgs{
/// 									DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet"),
/// 									Lun:                 pulumi.Int(1),
/// 								},
/// 							},
/// 							OsDiskImage: &compute.OSDiskImageEncryptionArgs{
/// 								DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet"),
/// 							},
/// 						},
/// 						ExcludeFromLatest:    pulumi.Bool(false),
/// 						Name:                 pulumi.String("East US"),
/// 						RegionalReplicaCount: pulumi.Int(2),
/// 						StorageAccountType:   pulumi.String(compute.StorageAccountType_Standard_ZRS),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SafetyProfile: &compute.GalleryImageVersionSafetyProfileArgs{
/// 				AllowDeletionOfReplicatedLocations: pulumi.Bool(false),
/// 				BlockDeletionBeforeEndOfLife:       pulumi.Bool(false),
/// 			},
/// 			StorageProfile: &compute.GalleryImageVersionStorageProfileArgs{
/// 				DataDiskImages: compute.GalleryDataDiskImageArray{
/// 					&compute.GalleryDataDiskImageArgs{
/// 						HostCaching: compute.HostCachingNone,
/// 						Lun:         pulumi.Int(1),
/// 						Source: &compute.GalleryDiskImageSourceArgs{
/// 							Id: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/disks/{dataDiskName}"),
/// 						},
/// 					},
/// 				},
/// 				OsDiskImage: &compute.GalleryOSDiskImageArgs{
/// 					HostCaching: compute.HostCachingReadOnly,
/// 					Source: &compute.GalleryDiskImageSourceArgs{
/// 						Id: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/snapshots/{osSnapshotName}"),
/// 					},
/// 				},
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
/// resource "azure-native_compute_galleryimageversion" "galleryImageVersion" {
///   gallery_image_name         = "myGalleryImageName"
///   gallery_image_version_name = "1.0.0"
///   gallery_name               = "myGalleryName"
///   location                   = "West US"
///   publishing_profile = {
///     target_regions = [{
///       "encryption" = {
///         "dataDiskImages" = [{
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet"
///           "lun"                 = 1
///         }]
///         "osDiskImage" = {
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet"
///         }
///       }
///       "excludeFromLatest"    = false
///       "name"                 = "West US"
///       "regionalReplicaCount" = 1
///       }, {
///       "encryption" = {
///         "dataDiskImages" = [{
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet"
///           "lun"                 = 1
///         }]
///         "osDiskImage" = {
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet"
///         }
///       }
///       "excludeFromLatest"    = false
///       "name"                 = "East US"
///       "regionalReplicaCount" = 2
///       "storageAccountType"   = "Standard_ZRS"
///     }]
///   }
///   resource_group_name = "myResourceGroup"
///   safety_profile = {
///     allow_deletion_of_replicated_locations = false
///     block_deletion_before_end_of_life      = false
///   }
///   storage_profile = {
///     data_disk_images = [{
///       "hostCaching" = "None"
///       "lun"         = 1
///       "source" = {
///         "id" = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/disks/{dataDiskName}"
///       }
///     }]
///     os_disk_image = {
///       host_caching = "ReadOnly"
///       source = {
///         id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/snapshots/{osSnapshotName}"
///       }
///     }
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
/// import com.pulumi.azurenative.compute.GalleryImageVersion;
/// import com.pulumi.azurenative.compute.GalleryImageVersionArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageVersionPublishingProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageVersionSafetyProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageVersionStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryOSDiskImageArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryDiskImageSourceArgs;
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
///         var galleryImageVersion = new GalleryImageVersion("galleryImageVersion", GalleryImageVersionArgs.builder()
///             .galleryImageName("myGalleryImageName")
///             .galleryImageVersionName("1.0.0")
///             .galleryName("myGalleryName")
///             .location("West US")
///             .publishingProfile(GalleryImageVersionPublishingProfileArgs.builder()
///                 .targetRegions(
///                     TargetRegionArgs.builder()
///                         .encryption(EncryptionImagesArgs.builder()
///                             .dataDiskImages(DataDiskImageEncryptionArgs.builder()
///                                 .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet")
///                                 .lun(1)
///                                 .build())
///                             .osDiskImage(OSDiskImageEncryptionArgs.builder()
///                                 .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet")
///                                 .build())
///                             .build())
///                         .excludeFromLatest(false)
///                         .name("West US")
///                         .regionalReplicaCount(1)
///                         .build(),
///                     TargetRegionArgs.builder()
///                         .encryption(EncryptionImagesArgs.builder()
///                             .dataDiskImages(DataDiskImageEncryptionArgs.builder()
///                                 .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet")
///                                 .lun(1)
///                                 .build())
///                             .osDiskImage(OSDiskImageEncryptionArgs.builder()
///                                 .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet")
///                                 .build())
///                             .build())
///                         .excludeFromLatest(false)
///                         .name("East US")
///                         .regionalReplicaCount(2)
///                         .storageAccountType("Standard_ZRS")
///                         .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .safetyProfile(GalleryImageVersionSafetyProfileArgs.builder()
///                 .allowDeletionOfReplicatedLocations(false)
///                 .blockDeletionBeforeEndOfLife(false)
///                 .build())
///             .storageProfile(GalleryImageVersionStorageProfileArgs.builder()
///                 .dataDiskImages(GalleryDataDiskImageArgs.builder()
///                     .hostCaching("None")
///                     .lun(1)
///                     .source(GalleryDiskImageSourceArgs.builder()
///                         .id("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/disks/{dataDiskName}")
///                         .build())
///                     .build())
///                 .osDiskImage(GalleryOSDiskImageArgs.builder()
///                     .hostCaching("ReadOnly")
///                     .source(GalleryDiskImageSourceArgs.builder()
///                         .id("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/snapshots/{osSnapshotName}")
///                         .build())
///                     .build())
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
/// const galleryImageVersion = new azure_native.compute.GalleryImageVersion("galleryImageVersion", {
///     galleryImageName: "myGalleryImageName",
///     galleryImageVersionName: "1.0.0",
///     galleryName: "myGalleryName",
///     location: "West US",
///     publishingProfile: {
///         targetRegions: [
///             {
///                 encryption: {
///                     dataDiskImages: [{
///                         diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                         lun: 1,
///                     }],
///                     osDiskImage: {
///                         diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                     },
///                 },
///                 excludeFromLatest: false,
///                 name: "West US",
///                 regionalReplicaCount: 1,
///             },
///             {
///                 encryption: {
///                     dataDiskImages: [{
///                         diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                         lun: 1,
///                     }],
///                     osDiskImage: {
///                         diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                     },
///                 },
///                 excludeFromLatest: false,
///                 name: "East US",
///                 regionalReplicaCount: 2,
///                 storageAccountType: azure_native.compute.StorageAccountType.Standard_ZRS,
///             },
///         ],
///     },
///     resourceGroupName: "myResourceGroup",
///     safetyProfile: {
///         allowDeletionOfReplicatedLocations: false,
///         blockDeletionBeforeEndOfLife: false,
///     },
///     storageProfile: {
///         dataDiskImages: [{
///             hostCaching: azure_native.compute.HostCaching.None,
///             lun: 1,
///             source: {
///                 id: "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/disks/{dataDiskName}",
///             },
///         }],
///         osDiskImage: {
///             hostCaching: azure_native.compute.HostCaching.ReadOnly,
///             source: {
///                 id: "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/snapshots/{osSnapshotName}",
///             },
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gallery_image_version = azure_native.compute.GalleryImageVersion("galleryImageVersion",
///     gallery_image_name="myGalleryImageName",
///     gallery_image_version_name="1.0.0",
///     gallery_name="myGalleryName",
///     location="West US",
///     publishing_profile={
///         "target_regions": [
///             {
///                 "encryption": {
///                     "data_disk_images": [{
///                         "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                         "lun": 1,
///                     }],
///                     "os_disk_image": {
///                         "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                     },
///                 },
///                 "exclude_from_latest": False,
///                 "name": "West US",
///                 "regional_replica_count": 1,
///             },
///             {
///                 "encryption": {
///                     "data_disk_images": [{
///                         "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                         "lun": 1,
///                     }],
///                     "os_disk_image": {
///                         "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                     },
///                 },
///                 "exclude_from_latest": False,
///                 "name": "East US",
///                 "regional_replica_count": 2,
///                 "storage_account_type": azure_native.compute.StorageAccountType.STANDARD_ZRS,
///             },
///         ],
///     },
///     resource_group_name="myResourceGroup",
///     safety_profile={
///         "allow_deletion_of_replicated_locations": False,
///         "block_deletion_before_end_of_life": False,
///     },
///     storage_profile={
///         "data_disk_images": [{
///             "host_caching": azure_native.compute.HostCaching.NONE,
///             "lun": 1,
///             "source": {
///                 "id": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/disks/{dataDiskName}",
///             },
///         }],
///         "os_disk_image": {
///             "host_caching": azure_native.compute.HostCaching.READ_ONLY,
///             "source": {
///                 "id": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/snapshots/{osSnapshotName}",
///             },
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   galleryImageVersion:
///     type: azure-native:compute:GalleryImageVersion
///     properties:
///       galleryImageName: myGalleryImageName
///       galleryImageVersionName: 1.0.0
///       galleryName: myGalleryName
///       location: West US
///       publishingProfile:
///         targetRegions:
///           - encryption:
///               dataDiskImages:
///                 - diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet
///                   lun: 1
///               osDiskImage:
///                 diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet
///             excludeFromLatest: false
///             name: West US
///             regionalReplicaCount: 1
///           - encryption:
///               dataDiskImages:
///                 - diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet
///                   lun: 1
///               osDiskImage:
///                 diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet
///             excludeFromLatest: false
///             name: East US
///             regionalReplicaCount: 2
///             storageAccountType: Standard_ZRS
///       resourceGroupName: myResourceGroup
///       safetyProfile:
///         allowDeletionOfReplicatedLocations: false
///         blockDeletionBeforeEndOfLife: false
///       storageProfile:
///         dataDiskImages:
///           - hostCaching: None
///             lun: 1
///             source:
///               id: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/disks/{dataDiskName}
///         osDiskImage:
///           hostCaching: ReadOnly
///           source:
///             id: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/snapshots/{osSnapshotName}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a simple Gallery Image Version using vhd as a source with custom UEFI keys.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var galleryImageVersion = new AzureNative.Compute.GalleryImageVersion("galleryImageVersion", new()
///     {
///         GalleryImageName = "myGalleryImageName",
///         GalleryImageVersionName = "1.0.0",
///         GalleryName = "myGalleryName",
///         Location = "West US",
///         PublishingProfile = new AzureNative.Compute.Inputs.GalleryImageVersionPublishingProfileArgs
///         {
///             TargetRegions = new[]
///             {
///                 new AzureNative.Compute.Inputs.TargetRegionArgs
///                 {
///                     Encryption = new AzureNative.Compute.Inputs.EncryptionImagesArgs
///                     {
///                         DataDiskImages = new[]
///                         {
///                             new AzureNative.Compute.Inputs.DataDiskImageEncryptionArgs
///                             {
///                                 DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherDiskEncryptionSet",
///                                 Lun = 1,
///                             },
///                         },
///                         OsDiskImage = new AzureNative.Compute.Inputs.OSDiskImageEncryptionArgs
///                         {
///                             DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myDiskEncryptionSet",
///                         },
///                     },
///                     ExcludeFromLatest = false,
///                     Name = "West US",
///                     RegionalReplicaCount = 1,
///                 },
///                 new AzureNative.Compute.Inputs.TargetRegionArgs
///                 {
///                     ExcludeFromLatest = false,
///                     Name = "East US",
///                     RegionalReplicaCount = 2,
///                     StorageAccountType = AzureNative.Compute.StorageAccountType.Standard_ZRS,
///                 },
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         SafetyProfile = new AzureNative.Compute.Inputs.GalleryImageVersionSafetyProfileArgs
///         {
///             AllowDeletionOfReplicatedLocations = false,
///             BlockDeletionBeforeEndOfLife = false,
///         },
///         SecurityProfile = new AzureNative.Compute.Inputs.ImageVersionSecurityProfileArgs
///         {
///             UefiSettings = new AzureNative.Compute.Inputs.GalleryImageVersionUefiSettingsArgs
///             {
///                 AdditionalSignatures = new AzureNative.Compute.Inputs.UefiKeySignaturesArgs
///                 {
///                     Db = new[]
///                     {
///                         new AzureNative.Compute.Inputs.UefiKeyArgs
///                         {
///                             Type = AzureNative.Compute.UefiKeyType.X509,
///                             Value = new[]
///                             {
///                                 "<x509 value>",
///                             },
///                         },
///                     },
///                     Dbx = new[]
///                     {
///                         new AzureNative.Compute.Inputs.UefiKeyArgs
///                         {
///                             Type = AzureNative.Compute.UefiKeyType.X509,
///                             Value = new[]
///                             {
///                                 "<x509 value>",
///                             },
///                         },
///                     },
///                     Kek = new[]
///                     {
///                         new AzureNative.Compute.Inputs.UefiKeyArgs
///                         {
///                             Type = AzureNative.Compute.UefiKeyType.Sha256,
///                             Value = new[]
///                             {
///                                 "<sha256 value>",
///                             },
///                         },
///                     },
///                 },
///                 SignatureTemplateNames = new[]
///                 {
///                     AzureNative.Compute.UefiSignatureTemplateName.MicrosoftUefiCertificateAuthorityTemplate,
///                 },
///             },
///         },
///         StorageProfile = new AzureNative.Compute.Inputs.GalleryImageVersionStorageProfileArgs
///         {
///             DataDiskImages = new[]
///             {
///                 new AzureNative.Compute.Inputs.GalleryDataDiskImageArgs
///                 {
///                     HostCaching = AzureNative.Compute.HostCaching.None,
///                     Lun = 1,
///                     Source = new AzureNative.Compute.Inputs.GalleryDiskImageSourceArgs
///                     {
///                         StorageAccountId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/{storageAccount}",
///                         Uri = "https://gallerysourcencus.blob.core.windows.net/myvhds/Windows-Server-2012-R2-20171216-en.us-128GB.vhd",
///                     },
///                 },
///             },
///             OsDiskImage = new AzureNative.Compute.Inputs.GalleryOSDiskImageArgs
///             {
///                 HostCaching = AzureNative.Compute.HostCaching.ReadOnly,
///                 Source = new AzureNative.Compute.Inputs.GalleryDiskImageSourceArgs
///                 {
///                     StorageAccountId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/{storageAccount}",
///                     Uri = "https://gallerysourcencus.blob.core.windows.net/myvhds/Windows-Server-2012-R2-20171216-en.us-128GB.vhd",
///                 },
///             },
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewGalleryImageVersion(ctx, "galleryImageVersion", &compute.GalleryImageVersionArgs{
/// 			GalleryImageName:        pulumi.String("myGalleryImageName"),
/// 			GalleryImageVersionName: pulumi.String("1.0.0"),
/// 			GalleryName:             pulumi.String("myGalleryName"),
/// 			Location:                pulumi.String("West US"),
/// 			PublishingProfile: &compute.GalleryImageVersionPublishingProfileArgs{
/// 				TargetRegions: compute.TargetRegionArray{
/// 					&compute.TargetRegionArgs{
/// 						Encryption: &compute.EncryptionImagesArgs{
/// 							DataDiskImages: compute.DataDiskImageEncryptionArray{
/// 								&compute.DataDiskImageEncryptionArgs{
/// 									DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherDiskEncryptionSet"),
/// 									Lun:                 pulumi.Int(1),
/// 								},
/// 							},
/// 							OsDiskImage: &compute.OSDiskImageEncryptionArgs{
/// 								DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myDiskEncryptionSet"),
/// 							},
/// 						},
/// 						ExcludeFromLatest:    pulumi.Bool(false),
/// 						Name:                 pulumi.String("West US"),
/// 						RegionalReplicaCount: pulumi.Int(1),
/// 					},
/// 					&compute.TargetRegionArgs{
/// 						ExcludeFromLatest:    pulumi.Bool(false),
/// 						Name:                 pulumi.String("East US"),
/// 						RegionalReplicaCount: pulumi.Int(2),
/// 						StorageAccountType:   pulumi.String(compute.StorageAccountType_Standard_ZRS),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SafetyProfile: &compute.GalleryImageVersionSafetyProfileArgs{
/// 				AllowDeletionOfReplicatedLocations: pulumi.Bool(false),
/// 				BlockDeletionBeforeEndOfLife:       pulumi.Bool(false),
/// 			},
/// 			SecurityProfile: &compute.ImageVersionSecurityProfileArgs{
/// 				UefiSettings: &compute.GalleryImageVersionUefiSettingsArgs{
/// 					AdditionalSignatures: &compute.UefiKeySignaturesArgs{
/// 						Db: compute.UefiKeyArray{
/// 							&compute.UefiKeyArgs{
/// 								Type: pulumi.String(compute.UefiKeyTypeX509),
/// 								Value: pulumi.StringArray{
/// 									pulumi.String("<x509 value>"),
/// 								},
/// 							},
/// 						},
/// 						Dbx: compute.UefiKeyArray{
/// 							&compute.UefiKeyArgs{
/// 								Type: pulumi.String(compute.UefiKeyTypeX509),
/// 								Value: pulumi.StringArray{
/// 									pulumi.String("<x509 value>"),
/// 								},
/// 							},
/// 						},
/// 						Kek: compute.UefiKeyArray{
/// 							&compute.UefiKeyArgs{
/// 								Type: pulumi.String(compute.UefiKeyTypeSha256),
/// 								Value: pulumi.StringArray{
/// 									pulumi.String("<sha256 value>"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					SignatureTemplateNames: pulumi.StringArray{
/// 						pulumi.String(compute.UefiSignatureTemplateNameMicrosoftUefiCertificateAuthorityTemplate),
/// 					},
/// 				},
/// 			},
/// 			StorageProfile: &compute.GalleryImageVersionStorageProfileArgs{
/// 				DataDiskImages: compute.GalleryDataDiskImageArray{
/// 					&compute.GalleryDataDiskImageArgs{
/// 						HostCaching: compute.HostCachingNone,
/// 						Lun:         pulumi.Int(1),
/// 						Source: &compute.GalleryDiskImageSourceArgs{
/// 							StorageAccountId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/{storageAccount}"),
/// 							Uri:              pulumi.String("https://gallerysourcencus.blob.core.windows.net/myvhds/Windows-Server-2012-R2-20171216-en.us-128GB.vhd"),
/// 						},
/// 					},
/// 				},
/// 				OsDiskImage: &compute.GalleryOSDiskImageArgs{
/// 					HostCaching: compute.HostCachingReadOnly,
/// 					Source: &compute.GalleryDiskImageSourceArgs{
/// 						StorageAccountId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/{storageAccount}"),
/// 						Uri:              pulumi.String("https://gallerysourcencus.blob.core.windows.net/myvhds/Windows-Server-2012-R2-20171216-en.us-128GB.vhd"),
/// 					},
/// 				},
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
/// resource "azure-native_compute_galleryimageversion" "galleryImageVersion" {
///   gallery_image_name         = "myGalleryImageName"
///   gallery_image_version_name = "1.0.0"
///   gallery_name               = "myGalleryName"
///   location                   = "West US"
///   publishing_profile = {
///     target_regions = [{
///       "encryption" = {
///         "dataDiskImages" = [{
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherDiskEncryptionSet"
///           "lun"                 = 1
///         }]
///         "osDiskImage" = {
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myDiskEncryptionSet"
///         }
///       }
///       "excludeFromLatest"    = false
///       "name"                 = "West US"
///       "regionalReplicaCount" = 1
///       }, {
///       "excludeFromLatest"    = false
///       "name"                 = "East US"
///       "regionalReplicaCount" = 2
///       "storageAccountType"   = "Standard_ZRS"
///     }]
///   }
///   resource_group_name = "myResourceGroup"
///   safety_profile = {
///     allow_deletion_of_replicated_locations = false
///     block_deletion_before_end_of_life      = false
///   }
///   security_profile = {
///     uefi_settings = {
///       additional_signatures = {
///         db = [{
///           "type"  = "x509"
///           "value" = ["<x509 value>"]
///         }]
///         dbx = [{
///           "type"  = "x509"
///           "value" = ["<x509 value>"]
///         }]
///         kek = [{
///           "type"  = "sha256"
///           "value" = ["<sha256 value>"]
///         }]
///       }
///       signature_template_names = ["MicrosoftUefiCertificateAuthorityTemplate"]
///     }
///   }
///   storage_profile = {
///     data_disk_images = [{
///       "hostCaching" = "None"
///       "lun"         = 1
///       "source" = {
///         "storageAccountId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/{storageAccount}"
///         "uri"              = "https://gallerysourcencus.blob.core.windows.net/myvhds/Windows-Server-2012-R2-20171216-en.us-128GB.vhd"
///       }
///     }]
///     os_disk_image = {
///       host_caching = "ReadOnly"
///       source = {
///         storage_account_id = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/{storageAccount}"
///         uri                = "https://gallerysourcencus.blob.core.windows.net/myvhds/Windows-Server-2012-R2-20171216-en.us-128GB.vhd"
///       }
///     }
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
/// import com.pulumi.azurenative.compute.GalleryImageVersion;
/// import com.pulumi.azurenative.compute.GalleryImageVersionArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageVersionPublishingProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageVersionSafetyProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageVersionSecurityProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageVersionUefiSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.UefiKeySignaturesArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageVersionStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryOSDiskImageArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryDiskImageSourceArgs;
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
///         var galleryImageVersion = new GalleryImageVersion("galleryImageVersion", GalleryImageVersionArgs.builder()
///             .galleryImageName("myGalleryImageName")
///             .galleryImageVersionName("1.0.0")
///             .galleryName("myGalleryName")
///             .location("West US")
///             .publishingProfile(GalleryImageVersionPublishingProfileArgs.builder()
///                 .targetRegions(
///                     TargetRegionArgs.builder()
///                         .encryption(EncryptionImagesArgs.builder()
///                             .dataDiskImages(DataDiskImageEncryptionArgs.builder()
///                                 .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherDiskEncryptionSet")
///                                 .lun(1)
///                                 .build())
///                             .osDiskImage(OSDiskImageEncryptionArgs.builder()
///                                 .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myDiskEncryptionSet")
///                                 .build())
///                             .build())
///                         .excludeFromLatest(false)
///                         .name("West US")
///                         .regionalReplicaCount(1)
///                         .build(),
///                     TargetRegionArgs.builder()
///                         .excludeFromLatest(false)
///                         .name("East US")
///                         .regionalReplicaCount(2)
///                         .storageAccountType("Standard_ZRS")
///                         .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .safetyProfile(GalleryImageVersionSafetyProfileArgs.builder()
///                 .allowDeletionOfReplicatedLocations(false)
///                 .blockDeletionBeforeEndOfLife(false)
///                 .build())
///             .securityProfile(ImageVersionSecurityProfileArgs.builder()
///                 .uefiSettings(GalleryImageVersionUefiSettingsArgs.builder()
///                     .additionalSignatures(UefiKeySignaturesArgs.builder()
///                         .db(UefiKeyArgs.builder()
///                             .type("x509")
///                             .value("<x509 value>")
///                             .build())
///                         .dbx(UefiKeyArgs.builder()
///                             .type("x509")
///                             .value("<x509 value>")
///                             .build())
///                         .kek(UefiKeyArgs.builder()
///                             .type("sha256")
///                             .value("<sha256 value>")
///                             .build())
///                         .build())
///                     .signatureTemplateNames("MicrosoftUefiCertificateAuthorityTemplate")
///                     .build())
///                 .build())
///             .storageProfile(GalleryImageVersionStorageProfileArgs.builder()
///                 .dataDiskImages(GalleryDataDiskImageArgs.builder()
///                     .hostCaching("None")
///                     .lun(1)
///                     .source(GalleryDiskImageSourceArgs.builder()
///                         .storageAccountId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/{storageAccount}")
///                         .uri("https://gallerysourcencus.blob.core.windows.net/myvhds/Windows-Server-2012-R2-20171216-en.us-128GB.vhd")
///                         .build())
///                     .build())
///                 .osDiskImage(GalleryOSDiskImageArgs.builder()
///                     .hostCaching("ReadOnly")
///                     .source(GalleryDiskImageSourceArgs.builder()
///                         .storageAccountId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/{storageAccount}")
///                         .uri("https://gallerysourcencus.blob.core.windows.net/myvhds/Windows-Server-2012-R2-20171216-en.us-128GB.vhd")
///                         .build())
///                     .build())
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
/// const galleryImageVersion = new azure_native.compute.GalleryImageVersion("galleryImageVersion", {
///     galleryImageName: "myGalleryImageName",
///     galleryImageVersionName: "1.0.0",
///     galleryName: "myGalleryName",
///     location: "West US",
///     publishingProfile: {
///         targetRegions: [
///             {
///                 encryption: {
///                     dataDiskImages: [{
///                         diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherDiskEncryptionSet",
///                         lun: 1,
///                     }],
///                     osDiskImage: {
///                         diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myDiskEncryptionSet",
///                     },
///                 },
///                 excludeFromLatest: false,
///                 name: "West US",
///                 regionalReplicaCount: 1,
///             },
///             {
///                 excludeFromLatest: false,
///                 name: "East US",
///                 regionalReplicaCount: 2,
///                 storageAccountType: azure_native.compute.StorageAccountType.Standard_ZRS,
///             },
///         ],
///     },
///     resourceGroupName: "myResourceGroup",
///     safetyProfile: {
///         allowDeletionOfReplicatedLocations: false,
///         blockDeletionBeforeEndOfLife: false,
///     },
///     securityProfile: {
///         uefiSettings: {
///             additionalSignatures: {
///                 db: [{
///                     type: azure_native.compute.UefiKeyType.X509,
///                     value: ["<x509 value>"],
///                 }],
///                 dbx: [{
///                     type: azure_native.compute.UefiKeyType.X509,
///                     value: ["<x509 value>"],
///                 }],
///                 kek: [{
///                     type: azure_native.compute.UefiKeyType.Sha256,
///                     value: ["<sha256 value>"],
///                 }],
///             },
///             signatureTemplateNames: [azure_native.compute.UefiSignatureTemplateName.MicrosoftUefiCertificateAuthorityTemplate],
///         },
///     },
///     storageProfile: {
///         dataDiskImages: [{
///             hostCaching: azure_native.compute.HostCaching.None,
///             lun: 1,
///             source: {
///                 storageAccountId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/{storageAccount}",
///                 uri: "https://gallerysourcencus.blob.core.windows.net/myvhds/Windows-Server-2012-R2-20171216-en.us-128GB.vhd",
///             },
///         }],
///         osDiskImage: {
///             hostCaching: azure_native.compute.HostCaching.ReadOnly,
///             source: {
///                 storageAccountId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/{storageAccount}",
///                 uri: "https://gallerysourcencus.blob.core.windows.net/myvhds/Windows-Server-2012-R2-20171216-en.us-128GB.vhd",
///             },
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gallery_image_version = azure_native.compute.GalleryImageVersion("galleryImageVersion",
///     gallery_image_name="myGalleryImageName",
///     gallery_image_version_name="1.0.0",
///     gallery_name="myGalleryName",
///     location="West US",
///     publishing_profile={
///         "target_regions": [
///             {
///                 "encryption": {
///                     "data_disk_images": [{
///                         "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherDiskEncryptionSet",
///                         "lun": 1,
///                     }],
///                     "os_disk_image": {
///                         "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myDiskEncryptionSet",
///                     },
///                 },
///                 "exclude_from_latest": False,
///                 "name": "West US",
///                 "regional_replica_count": 1,
///             },
///             {
///                 "exclude_from_latest": False,
///                 "name": "East US",
///                 "regional_replica_count": 2,
///                 "storage_account_type": azure_native.compute.StorageAccountType.STANDARD_ZRS,
///             },
///         ],
///     },
///     resource_group_name="myResourceGroup",
///     safety_profile={
///         "allow_deletion_of_replicated_locations": False,
///         "block_deletion_before_end_of_life": False,
///     },
///     security_profile={
///         "uefi_settings": {
///             "additional_signatures": {
///                 "db": [{
///                     "type": azure_native.compute.UefiKeyType.X509,
///                     "value": ["<x509 value>"],
///                 }],
///                 "dbx": [{
///                     "type": azure_native.compute.UefiKeyType.X509,
///                     "value": ["<x509 value>"],
///                 }],
///                 "kek": [{
///                     "type": azure_native.compute.UefiKeyType.SHA256,
///                     "value": ["<sha256 value>"],
///                 }],
///             },
///             "signature_template_names": [azure_native.compute.UefiSignatureTemplateName.MICROSOFT_UEFI_CERTIFICATE_AUTHORITY_TEMPLATE],
///         },
///     },
///     storage_profile={
///         "data_disk_images": [{
///             "host_caching": azure_native.compute.HostCaching.NONE,
///             "lun": 1,
///             "source": {
///                 "storage_account_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/{storageAccount}",
///                 "uri": "https://gallerysourcencus.blob.core.windows.net/myvhds/Windows-Server-2012-R2-20171216-en.us-128GB.vhd",
///             },
///         }],
///         "os_disk_image": {
///             "host_caching": azure_native.compute.HostCaching.READ_ONLY,
///             "source": {
///                 "storage_account_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/{storageAccount}",
///                 "uri": "https://gallerysourcencus.blob.core.windows.net/myvhds/Windows-Server-2012-R2-20171216-en.us-128GB.vhd",
///             },
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   galleryImageVersion:
///     type: azure-native:compute:GalleryImageVersion
///     properties:
///       galleryImageName: myGalleryImageName
///       galleryImageVersionName: 1.0.0
///       galleryName: myGalleryName
///       location: West US
///       publishingProfile:
///         targetRegions:
///           - encryption:
///               dataDiskImages:
///                 - diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherDiskEncryptionSet
///                   lun: 1
///               osDiskImage:
///                 diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myDiskEncryptionSet
///             excludeFromLatest: false
///             name: West US
///             regionalReplicaCount: 1
///           - excludeFromLatest: false
///             name: East US
///             regionalReplicaCount: 2
///             storageAccountType: Standard_ZRS
///       resourceGroupName: myResourceGroup
///       safetyProfile:
///         allowDeletionOfReplicatedLocations: false
///         blockDeletionBeforeEndOfLife: false
///       securityProfile:
///         uefiSettings:
///           additionalSignatures:
///             db:
///               - type: x509
///                 value:
///                   - <x509 value>
///             dbx:
///               - type: x509
///                 value:
///                   - <x509 value>
///             kek:
///               - type: sha256
///                 value:
///                   - <sha256 value>
///           signatureTemplateNames:
///             - MicrosoftUefiCertificateAuthorityTemplate
///       storageProfile:
///         dataDiskImages:
///           - hostCaching: None
///             lun: 1
///             source:
///               storageAccountId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/{storageAccount}
///               uri: https://gallerysourcencus.blob.core.windows.net/myvhds/Windows-Server-2012-R2-20171216-en.us-128GB.vhd
///         osDiskImage:
///           hostCaching: ReadOnly
///           source:
///             storageAccountId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/{storageAccount}
///             uri: https://gallerysourcencus.blob.core.windows.net/myvhds/Windows-Server-2012-R2-20171216-en.us-128GB.vhd
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a simple Gallery Image Version using vhd as a source.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var galleryImageVersion = new AzureNative.Compute.GalleryImageVersion("galleryImageVersion", new()
///     {
///         GalleryImageName = "myGalleryImageName",
///         GalleryImageVersionName = "1.0.0",
///         GalleryName = "myGalleryName",
///         Location = "West US",
///         PublishingProfile = new AzureNative.Compute.Inputs.GalleryImageVersionPublishingProfileArgs
///         {
///             TargetRegions = new[]
///             {
///                 new AzureNative.Compute.Inputs.TargetRegionArgs
///                 {
///                     Encryption = new AzureNative.Compute.Inputs.EncryptionImagesArgs
///                     {
///                         DataDiskImages = new[]
///                         {
///                             new AzureNative.Compute.Inputs.DataDiskImageEncryptionArgs
///                             {
///                                 DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherDiskEncryptionSet",
///                                 Lun = 1,
///                             },
///                         },
///                         OsDiskImage = new AzureNative.Compute.Inputs.OSDiskImageEncryptionArgs
///                         {
///                             DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myDiskEncryptionSet",
///                         },
///                     },
///                     ExcludeFromLatest = false,
///                     Name = "West US",
///                     RegionalReplicaCount = 1,
///                 },
///                 new AzureNative.Compute.Inputs.TargetRegionArgs
///                 {
///                     ExcludeFromLatest = false,
///                     Name = "East US",
///                     RegionalReplicaCount = 2,
///                     StorageAccountType = AzureNative.Compute.StorageAccountType.Standard_ZRS,
///                 },
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         SafetyProfile = new AzureNative.Compute.Inputs.GalleryImageVersionSafetyProfileArgs
///         {
///             AllowDeletionOfReplicatedLocations = false,
///             BlockDeletionBeforeEndOfLife = false,
///         },
///         StorageProfile = new AzureNative.Compute.Inputs.GalleryImageVersionStorageProfileArgs
///         {
///             DataDiskImages = new[]
///             {
///                 new AzureNative.Compute.Inputs.GalleryDataDiskImageArgs
///                 {
///                     HostCaching = AzureNative.Compute.HostCaching.None,
///                     Lun = 1,
///                     Source = new AzureNative.Compute.Inputs.GalleryDiskImageSourceArgs
///                     {
///                         StorageAccountId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/{storageAccount}",
///                         Uri = "https://gallerysourcencus.blob.core.windows.net/myvhds/Windows-Server-2012-R2-20171216-en.us-128GB.vhd",
///                     },
///                 },
///             },
///             OsDiskImage = new AzureNative.Compute.Inputs.GalleryOSDiskImageArgs
///             {
///                 HostCaching = AzureNative.Compute.HostCaching.ReadOnly,
///                 Source = new AzureNative.Compute.Inputs.GalleryDiskImageSourceArgs
///                 {
///                     StorageAccountId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/{storageAccount}",
///                     Uri = "https://gallerysourcencus.blob.core.windows.net/myvhds/Windows-Server-2012-R2-20171216-en.us-128GB.vhd",
///                 },
///             },
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewGalleryImageVersion(ctx, "galleryImageVersion", &compute.GalleryImageVersionArgs{
/// 			GalleryImageName:        pulumi.String("myGalleryImageName"),
/// 			GalleryImageVersionName: pulumi.String("1.0.0"),
/// 			GalleryName:             pulumi.String("myGalleryName"),
/// 			Location:                pulumi.String("West US"),
/// 			PublishingProfile: &compute.GalleryImageVersionPublishingProfileArgs{
/// 				TargetRegions: compute.TargetRegionArray{
/// 					&compute.TargetRegionArgs{
/// 						Encryption: &compute.EncryptionImagesArgs{
/// 							DataDiskImages: compute.DataDiskImageEncryptionArray{
/// 								&compute.DataDiskImageEncryptionArgs{
/// 									DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherDiskEncryptionSet"),
/// 									Lun:                 pulumi.Int(1),
/// 								},
/// 							},
/// 							OsDiskImage: &compute.OSDiskImageEncryptionArgs{
/// 								DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myDiskEncryptionSet"),
/// 							},
/// 						},
/// 						ExcludeFromLatest:    pulumi.Bool(false),
/// 						Name:                 pulumi.String("West US"),
/// 						RegionalReplicaCount: pulumi.Int(1),
/// 					},
/// 					&compute.TargetRegionArgs{
/// 						ExcludeFromLatest:    pulumi.Bool(false),
/// 						Name:                 pulumi.String("East US"),
/// 						RegionalReplicaCount: pulumi.Int(2),
/// 						StorageAccountType:   pulumi.String(compute.StorageAccountType_Standard_ZRS),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SafetyProfile: &compute.GalleryImageVersionSafetyProfileArgs{
/// 				AllowDeletionOfReplicatedLocations: pulumi.Bool(false),
/// 				BlockDeletionBeforeEndOfLife:       pulumi.Bool(false),
/// 			},
/// 			StorageProfile: &compute.GalleryImageVersionStorageProfileArgs{
/// 				DataDiskImages: compute.GalleryDataDiskImageArray{
/// 					&compute.GalleryDataDiskImageArgs{
/// 						HostCaching: compute.HostCachingNone,
/// 						Lun:         pulumi.Int(1),
/// 						Source: &compute.GalleryDiskImageSourceArgs{
/// 							StorageAccountId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/{storageAccount}"),
/// 							Uri:              pulumi.String("https://gallerysourcencus.blob.core.windows.net/myvhds/Windows-Server-2012-R2-20171216-en.us-128GB.vhd"),
/// 						},
/// 					},
/// 				},
/// 				OsDiskImage: &compute.GalleryOSDiskImageArgs{
/// 					HostCaching: compute.HostCachingReadOnly,
/// 					Source: &compute.GalleryDiskImageSourceArgs{
/// 						StorageAccountId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/{storageAccount}"),
/// 						Uri:              pulumi.String("https://gallerysourcencus.blob.core.windows.net/myvhds/Windows-Server-2012-R2-20171216-en.us-128GB.vhd"),
/// 					},
/// 				},
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
/// resource "azure-native_compute_galleryimageversion" "galleryImageVersion" {
///   gallery_image_name         = "myGalleryImageName"
///   gallery_image_version_name = "1.0.0"
///   gallery_name               = "myGalleryName"
///   location                   = "West US"
///   publishing_profile = {
///     target_regions = [{
///       "encryption" = {
///         "dataDiskImages" = [{
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherDiskEncryptionSet"
///           "lun"                 = 1
///         }]
///         "osDiskImage" = {
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myDiskEncryptionSet"
///         }
///       }
///       "excludeFromLatest"    = false
///       "name"                 = "West US"
///       "regionalReplicaCount" = 1
///       }, {
///       "excludeFromLatest"    = false
///       "name"                 = "East US"
///       "regionalReplicaCount" = 2
///       "storageAccountType"   = "Standard_ZRS"
///     }]
///   }
///   resource_group_name = "myResourceGroup"
///   safety_profile = {
///     allow_deletion_of_replicated_locations = false
///     block_deletion_before_end_of_life      = false
///   }
///   storage_profile = {
///     data_disk_images = [{
///       "hostCaching" = "None"
///       "lun"         = 1
///       "source" = {
///         "storageAccountId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/{storageAccount}"
///         "uri"              = "https://gallerysourcencus.blob.core.windows.net/myvhds/Windows-Server-2012-R2-20171216-en.us-128GB.vhd"
///       }
///     }]
///     os_disk_image = {
///       host_caching = "ReadOnly"
///       source = {
///         storage_account_id = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/{storageAccount}"
///         uri                = "https://gallerysourcencus.blob.core.windows.net/myvhds/Windows-Server-2012-R2-20171216-en.us-128GB.vhd"
///       }
///     }
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
/// import com.pulumi.azurenative.compute.GalleryImageVersion;
/// import com.pulumi.azurenative.compute.GalleryImageVersionArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageVersionPublishingProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageVersionSafetyProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageVersionStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryOSDiskImageArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryDiskImageSourceArgs;
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
///         var galleryImageVersion = new GalleryImageVersion("galleryImageVersion", GalleryImageVersionArgs.builder()
///             .galleryImageName("myGalleryImageName")
///             .galleryImageVersionName("1.0.0")
///             .galleryName("myGalleryName")
///             .location("West US")
///             .publishingProfile(GalleryImageVersionPublishingProfileArgs.builder()
///                 .targetRegions(
///                     TargetRegionArgs.builder()
///                         .encryption(EncryptionImagesArgs.builder()
///                             .dataDiskImages(DataDiskImageEncryptionArgs.builder()
///                                 .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherDiskEncryptionSet")
///                                 .lun(1)
///                                 .build())
///                             .osDiskImage(OSDiskImageEncryptionArgs.builder()
///                                 .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myDiskEncryptionSet")
///                                 .build())
///                             .build())
///                         .excludeFromLatest(false)
///                         .name("West US")
///                         .regionalReplicaCount(1)
///                         .build(),
///                     TargetRegionArgs.builder()
///                         .excludeFromLatest(false)
///                         .name("East US")
///                         .regionalReplicaCount(2)
///                         .storageAccountType("Standard_ZRS")
///                         .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .safetyProfile(GalleryImageVersionSafetyProfileArgs.builder()
///                 .allowDeletionOfReplicatedLocations(false)
///                 .blockDeletionBeforeEndOfLife(false)
///                 .build())
///             .storageProfile(GalleryImageVersionStorageProfileArgs.builder()
///                 .dataDiskImages(GalleryDataDiskImageArgs.builder()
///                     .hostCaching("None")
///                     .lun(1)
///                     .source(GalleryDiskImageSourceArgs.builder()
///                         .storageAccountId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/{storageAccount}")
///                         .uri("https://gallerysourcencus.blob.core.windows.net/myvhds/Windows-Server-2012-R2-20171216-en.us-128GB.vhd")
///                         .build())
///                     .build())
///                 .osDiskImage(GalleryOSDiskImageArgs.builder()
///                     .hostCaching("ReadOnly")
///                     .source(GalleryDiskImageSourceArgs.builder()
///                         .storageAccountId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/{storageAccount}")
///                         .uri("https://gallerysourcencus.blob.core.windows.net/myvhds/Windows-Server-2012-R2-20171216-en.us-128GB.vhd")
///                         .build())
///                     .build())
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
/// const galleryImageVersion = new azure_native.compute.GalleryImageVersion("galleryImageVersion", {
///     galleryImageName: "myGalleryImageName",
///     galleryImageVersionName: "1.0.0",
///     galleryName: "myGalleryName",
///     location: "West US",
///     publishingProfile: {
///         targetRegions: [
///             {
///                 encryption: {
///                     dataDiskImages: [{
///                         diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherDiskEncryptionSet",
///                         lun: 1,
///                     }],
///                     osDiskImage: {
///                         diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myDiskEncryptionSet",
///                     },
///                 },
///                 excludeFromLatest: false,
///                 name: "West US",
///                 regionalReplicaCount: 1,
///             },
///             {
///                 excludeFromLatest: false,
///                 name: "East US",
///                 regionalReplicaCount: 2,
///                 storageAccountType: azure_native.compute.StorageAccountType.Standard_ZRS,
///             },
///         ],
///     },
///     resourceGroupName: "myResourceGroup",
///     safetyProfile: {
///         allowDeletionOfReplicatedLocations: false,
///         blockDeletionBeforeEndOfLife: false,
///     },
///     storageProfile: {
///         dataDiskImages: [{
///             hostCaching: azure_native.compute.HostCaching.None,
///             lun: 1,
///             source: {
///                 storageAccountId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/{storageAccount}",
///                 uri: "https://gallerysourcencus.blob.core.windows.net/myvhds/Windows-Server-2012-R2-20171216-en.us-128GB.vhd",
///             },
///         }],
///         osDiskImage: {
///             hostCaching: azure_native.compute.HostCaching.ReadOnly,
///             source: {
///                 storageAccountId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/{storageAccount}",
///                 uri: "https://gallerysourcencus.blob.core.windows.net/myvhds/Windows-Server-2012-R2-20171216-en.us-128GB.vhd",
///             },
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gallery_image_version = azure_native.compute.GalleryImageVersion("galleryImageVersion",
///     gallery_image_name="myGalleryImageName",
///     gallery_image_version_name="1.0.0",
///     gallery_name="myGalleryName",
///     location="West US",
///     publishing_profile={
///         "target_regions": [
///             {
///                 "encryption": {
///                     "data_disk_images": [{
///                         "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherDiskEncryptionSet",
///                         "lun": 1,
///                     }],
///                     "os_disk_image": {
///                         "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myDiskEncryptionSet",
///                     },
///                 },
///                 "exclude_from_latest": False,
///                 "name": "West US",
///                 "regional_replica_count": 1,
///             },
///             {
///                 "exclude_from_latest": False,
///                 "name": "East US",
///                 "regional_replica_count": 2,
///                 "storage_account_type": azure_native.compute.StorageAccountType.STANDARD_ZRS,
///             },
///         ],
///     },
///     resource_group_name="myResourceGroup",
///     safety_profile={
///         "allow_deletion_of_replicated_locations": False,
///         "block_deletion_before_end_of_life": False,
///     },
///     storage_profile={
///         "data_disk_images": [{
///             "host_caching": azure_native.compute.HostCaching.NONE,
///             "lun": 1,
///             "source": {
///                 "storage_account_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/{storageAccount}",
///                 "uri": "https://gallerysourcencus.blob.core.windows.net/myvhds/Windows-Server-2012-R2-20171216-en.us-128GB.vhd",
///             },
///         }],
///         "os_disk_image": {
///             "host_caching": azure_native.compute.HostCaching.READ_ONLY,
///             "source": {
///                 "storage_account_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/{storageAccount}",
///                 "uri": "https://gallerysourcencus.blob.core.windows.net/myvhds/Windows-Server-2012-R2-20171216-en.us-128GB.vhd",
///             },
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   galleryImageVersion:
///     type: azure-native:compute:GalleryImageVersion
///     properties:
///       galleryImageName: myGalleryImageName
///       galleryImageVersionName: 1.0.0
///       galleryName: myGalleryName
///       location: West US
///       publishingProfile:
///         targetRegions:
///           - encryption:
///               dataDiskImages:
///                 - diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherDiskEncryptionSet
///                   lun: 1
///               osDiskImage:
///                 diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myDiskEncryptionSet
///             excludeFromLatest: false
///             name: West US
///             regionalReplicaCount: 1
///           - excludeFromLatest: false
///             name: East US
///             regionalReplicaCount: 2
///             storageAccountType: Standard_ZRS
///       resourceGroupName: myResourceGroup
///       safetyProfile:
///         allowDeletionOfReplicatedLocations: false
///         blockDeletionBeforeEndOfLife: false
///       storageProfile:
///         dataDiskImages:
///           - hostCaching: None
///             lun: 1
///             source:
///               storageAccountId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/{storageAccount}
///               uri: https://gallerysourcencus.blob.core.windows.net/myvhds/Windows-Server-2012-R2-20171216-en.us-128GB.vhd
///         osDiskImage:
///           hostCaching: ReadOnly
///           source:
///             storageAccountId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/{storageAccount}
///             uri: https://gallerysourcencus.blob.core.windows.net/myvhds/Windows-Server-2012-R2-20171216-en.us-128GB.vhd
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a simple Gallery Image Version with Direct Drive replicas
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var galleryImageVersion = new AzureNative.Compute.GalleryImageVersion("galleryImageVersion", new()
///     {
///         GalleryImageName = "myGalleryImageName",
///         GalleryImageVersionName = "1.0.0",
///         GalleryName = "myGalleryName",
///         Location = "West US",
///         PublishingProfile = new AzureNative.Compute.Inputs.GalleryImageVersionPublishingProfileArgs
///         {
///             TargetRegions = new[]
///             {
///                 new AzureNative.Compute.Inputs.TargetRegionArgs
///                 {
///                     AdditionalReplicaSets = new[]
///                     {
///                         new AzureNative.Compute.Inputs.AdditionalReplicaSetArgs
///                         {
///                             RegionalReplicaCount = 1,
///                             StorageAccountType = AzureNative.Compute.StorageAccountType.PremiumV2_LRS,
///                         },
///                     },
///                     Encryption = new AzureNative.Compute.Inputs.EncryptionImagesArgs
///                     {
///                         DataDiskImages = new[]
///                         {
///                             new AzureNative.Compute.Inputs.DataDiskImageEncryptionArgs
///                             {
///                                 DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet",
///                                 Lun = 0,
///                             },
///                             new AzureNative.Compute.Inputs.DataDiskImageEncryptionArgs
///                             {
///                                 DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                                 Lun = 1,
///                             },
///                         },
///                         OsDiskImage = new AzureNative.Compute.Inputs.OSDiskImageEncryptionArgs
///                         {
///                             DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                         },
///                     },
///                     ExcludeFromLatest = false,
///                     Name = "West US",
///                     RegionalReplicaCount = 1,
///                 },
///                 new AzureNative.Compute.Inputs.TargetRegionArgs
///                 {
///                     Encryption = new AzureNative.Compute.Inputs.EncryptionImagesArgs
///                     {
///                         DataDiskImages = new[]
///                         {
///                             new AzureNative.Compute.Inputs.DataDiskImageEncryptionArgs
///                             {
///                                 DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet",
///                                 Lun = 0,
///                             },
///                             new AzureNative.Compute.Inputs.DataDiskImageEncryptionArgs
///                             {
///                                 DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                                 Lun = 1,
///                             },
///                         },
///                         OsDiskImage = new AzureNative.Compute.Inputs.OSDiskImageEncryptionArgs
///                         {
///                             DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                         },
///                     },
///                     ExcludeFromLatest = false,
///                     Name = "East US",
///                     RegionalReplicaCount = 2,
///                     StorageAccountType = AzureNative.Compute.StorageAccountType.Standard_ZRS,
///                 },
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         SafetyProfile = new AzureNative.Compute.Inputs.GalleryImageVersionSafetyProfileArgs
///         {
///             AllowDeletionOfReplicatedLocations = false,
///         },
///         StorageProfile = new AzureNative.Compute.Inputs.GalleryImageVersionStorageProfileArgs
///         {
///             Source = new AzureNative.Compute.Inputs.GalleryArtifactVersionFullSourceArgs
///             {
///                 Id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/images/{imageName}",
///             },
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewGalleryImageVersion(ctx, "galleryImageVersion", &compute.GalleryImageVersionArgs{
/// 			GalleryImageName:        pulumi.String("myGalleryImageName"),
/// 			GalleryImageVersionName: pulumi.String("1.0.0"),
/// 			GalleryName:             pulumi.String("myGalleryName"),
/// 			Location:                pulumi.String("West US"),
/// 			PublishingProfile: &compute.GalleryImageVersionPublishingProfileArgs{
/// 				TargetRegions: compute.TargetRegionArray{
/// 					&compute.TargetRegionArgs{
/// 						AdditionalReplicaSets: compute.AdditionalReplicaSetArray{
/// 							&compute.AdditionalReplicaSetArgs{
/// 								RegionalReplicaCount: pulumi.Int(1),
/// 								StorageAccountType:   pulumi.String(compute.StorageAccountType_PremiumV2_LRS),
/// 							},
/// 						},
/// 						Encryption: &compute.EncryptionImagesArgs{
/// 							DataDiskImages: compute.DataDiskImageEncryptionArray{
/// 								&compute.DataDiskImageEncryptionArgs{
/// 									DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet"),
/// 									Lun:                 pulumi.Int(0),
/// 								},
/// 								&compute.DataDiskImageEncryptionArgs{
/// 									DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet"),
/// 									Lun:                 pulumi.Int(1),
/// 								},
/// 							},
/// 							OsDiskImage: &compute.OSDiskImageEncryptionArgs{
/// 								DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet"),
/// 							},
/// 						},
/// 						ExcludeFromLatest:    pulumi.Bool(false),
/// 						Name:                 pulumi.String("West US"),
/// 						RegionalReplicaCount: pulumi.Int(1),
/// 					},
/// 					&compute.TargetRegionArgs{
/// 						Encryption: &compute.EncryptionImagesArgs{
/// 							DataDiskImages: compute.DataDiskImageEncryptionArray{
/// 								&compute.DataDiskImageEncryptionArgs{
/// 									DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet"),
/// 									Lun:                 pulumi.Int(0),
/// 								},
/// 								&compute.DataDiskImageEncryptionArgs{
/// 									DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet"),
/// 									Lun:                 pulumi.Int(1),
/// 								},
/// 							},
/// 							OsDiskImage: &compute.OSDiskImageEncryptionArgs{
/// 								DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet"),
/// 							},
/// 						},
/// 						ExcludeFromLatest:    pulumi.Bool(false),
/// 						Name:                 pulumi.String("East US"),
/// 						RegionalReplicaCount: pulumi.Int(2),
/// 						StorageAccountType:   pulumi.String(compute.StorageAccountType_Standard_ZRS),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SafetyProfile: &compute.GalleryImageVersionSafetyProfileArgs{
/// 				AllowDeletionOfReplicatedLocations: pulumi.Bool(false),
/// 			},
/// 			StorageProfile: &compute.GalleryImageVersionStorageProfileArgs{
/// 				Source: &compute.GalleryArtifactVersionFullSourceArgs{
/// 					Id: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/images/{imageName}"),
/// 				},
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
/// resource "azure-native_compute_galleryimageversion" "galleryImageVersion" {
///   gallery_image_name         = "myGalleryImageName"
///   gallery_image_version_name = "1.0.0"
///   gallery_name               = "myGalleryName"
///   location                   = "West US"
///   publishing_profile = {
///     target_regions = [{
///       "additionalReplicaSets" = [{
///         "regionalReplicaCount" = 1
///         "storageAccountType"   = "PremiumV2_LRS"
///       }]
///       "encryption" = {
///         "dataDiskImages" = [{
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet"
///           "lun"                 = 0
///           }, {
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet"
///           "lun"                 = 1
///         }]
///         "osDiskImage" = {
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet"
///         }
///       }
///       "excludeFromLatest"    = false
///       "name"                 = "West US"
///       "regionalReplicaCount" = 1
///       }, {
///       "encryption" = {
///         "dataDiskImages" = [{
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet"
///           "lun"                 = 0
///           }, {
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet"
///           "lun"                 = 1
///         }]
///         "osDiskImage" = {
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet"
///         }
///       }
///       "excludeFromLatest"    = false
///       "name"                 = "East US"
///       "regionalReplicaCount" = 2
///       "storageAccountType"   = "Standard_ZRS"
///     }]
///   }
///   resource_group_name = "myResourceGroup"
///   safety_profile = {
///     allow_deletion_of_replicated_locations = false
///   }
///   storage_profile = {
///     source = {
///       id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/images/{imageName}"
///     }
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
/// import com.pulumi.azurenative.compute.GalleryImageVersion;
/// import com.pulumi.azurenative.compute.GalleryImageVersionArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageVersionPublishingProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageVersionSafetyProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageVersionStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryArtifactVersionFullSourceArgs;
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
///         var galleryImageVersion = new GalleryImageVersion("galleryImageVersion", GalleryImageVersionArgs.builder()
///             .galleryImageName("myGalleryImageName")
///             .galleryImageVersionName("1.0.0")
///             .galleryName("myGalleryName")
///             .location("West US")
///             .publishingProfile(GalleryImageVersionPublishingProfileArgs.builder()
///                 .targetRegions(
///                     TargetRegionArgs.builder()
///                         .additionalReplicaSets(AdditionalReplicaSetArgs.builder()
///                             .regionalReplicaCount(1)
///                             .storageAccountType("PremiumV2_LRS")
///                             .build())
///                         .encryption(EncryptionImagesArgs.builder()
///                             .dataDiskImages(
///                                 DataDiskImageEncryptionArgs.builder()
///                                     .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet")
///                                     .lun(0)
///                                     .build(),
///                                 DataDiskImageEncryptionArgs.builder()
///                                     .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet")
///                                     .lun(1)
///                                     .build())
///                             .osDiskImage(OSDiskImageEncryptionArgs.builder()
///                                 .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet")
///                                 .build())
///                             .build())
///                         .excludeFromLatest(false)
///                         .name("West US")
///                         .regionalReplicaCount(1)
///                         .build(),
///                     TargetRegionArgs.builder()
///                         .encryption(EncryptionImagesArgs.builder()
///                             .dataDiskImages(
///                                 DataDiskImageEncryptionArgs.builder()
///                                     .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet")
///                                     .lun(0)
///                                     .build(),
///                                 DataDiskImageEncryptionArgs.builder()
///                                     .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet")
///                                     .lun(1)
///                                     .build())
///                             .osDiskImage(OSDiskImageEncryptionArgs.builder()
///                                 .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet")
///                                 .build())
///                             .build())
///                         .excludeFromLatest(false)
///                         .name("East US")
///                         .regionalReplicaCount(2)
///                         .storageAccountType("Standard_ZRS")
///                         .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .safetyProfile(GalleryImageVersionSafetyProfileArgs.builder()
///                 .allowDeletionOfReplicatedLocations(false)
///                 .build())
///             .storageProfile(GalleryImageVersionStorageProfileArgs.builder()
///                 .source(GalleryArtifactVersionFullSourceArgs.builder()
///                     .id("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/images/{imageName}")
///                     .build())
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
/// const galleryImageVersion = new azure_native.compute.GalleryImageVersion("galleryImageVersion", {
///     galleryImageName: "myGalleryImageName",
///     galleryImageVersionName: "1.0.0",
///     galleryName: "myGalleryName",
///     location: "West US",
///     publishingProfile: {
///         targetRegions: [
///             {
///                 additionalReplicaSets: [{
///                     regionalReplicaCount: 1,
///                     storageAccountType: azure_native.compute.StorageAccountType.PremiumV2_LRS,
///                 }],
///                 encryption: {
///                     dataDiskImages: [
///                         {
///                             diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet",
///                             lun: 0,
///                         },
///                         {
///                             diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                             lun: 1,
///                         },
///                     ],
///                     osDiskImage: {
///                         diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                     },
///                 },
///                 excludeFromLatest: false,
///                 name: "West US",
///                 regionalReplicaCount: 1,
///             },
///             {
///                 encryption: {
///                     dataDiskImages: [
///                         {
///                             diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet",
///                             lun: 0,
///                         },
///                         {
///                             diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                             lun: 1,
///                         },
///                     ],
///                     osDiskImage: {
///                         diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                     },
///                 },
///                 excludeFromLatest: false,
///                 name: "East US",
///                 regionalReplicaCount: 2,
///                 storageAccountType: azure_native.compute.StorageAccountType.Standard_ZRS,
///             },
///         ],
///     },
///     resourceGroupName: "myResourceGroup",
///     safetyProfile: {
///         allowDeletionOfReplicatedLocations: false,
///     },
///     storageProfile: {
///         source: {
///             id: "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/images/{imageName}",
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gallery_image_version = azure_native.compute.GalleryImageVersion("galleryImageVersion",
///     gallery_image_name="myGalleryImageName",
///     gallery_image_version_name="1.0.0",
///     gallery_name="myGalleryName",
///     location="West US",
///     publishing_profile={
///         "target_regions": [
///             {
///                 "additional_replica_sets": [{
///                     "regional_replica_count": 1,
///                     "storage_account_type": azure_native.compute.StorageAccountType.PREMIUM_V2_LRS,
///                 }],
///                 "encryption": {
///                     "data_disk_images": [
///                         {
///                             "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet",
///                             "lun": 0,
///                         },
///                         {
///                             "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                             "lun": 1,
///                         },
///                     ],
///                     "os_disk_image": {
///                         "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                     },
///                 },
///                 "exclude_from_latest": False,
///                 "name": "West US",
///                 "regional_replica_count": 1,
///             },
///             {
///                 "encryption": {
///                     "data_disk_images": [
///                         {
///                             "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet",
///                             "lun": 0,
///                         },
///                         {
///                             "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                             "lun": 1,
///                         },
///                     ],
///                     "os_disk_image": {
///                         "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                     },
///                 },
///                 "exclude_from_latest": False,
///                 "name": "East US",
///                 "regional_replica_count": 2,
///                 "storage_account_type": azure_native.compute.StorageAccountType.STANDARD_ZRS,
///             },
///         ],
///     },
///     resource_group_name="myResourceGroup",
///     safety_profile={
///         "allow_deletion_of_replicated_locations": False,
///     },
///     storage_profile={
///         "source": {
///             "id": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/images/{imageName}",
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   galleryImageVersion:
///     type: azure-native:compute:GalleryImageVersion
///     properties:
///       galleryImageName: myGalleryImageName
///       galleryImageVersionName: 1.0.0
///       galleryName: myGalleryName
///       location: West US
///       publishingProfile:
///         targetRegions:
///           - additionalReplicaSets:
///               - regionalReplicaCount: 1
///                 storageAccountType: PremiumV2_LRS
///             encryption:
///               dataDiskImages:
///                 - diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet
///                   lun: 0
///                 - diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet
///                   lun: 1
///               osDiskImage:
///                 diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet
///             excludeFromLatest: false
///             name: West US
///             regionalReplicaCount: 1
///           - encryption:
///               dataDiskImages:
///                 - diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet
///                   lun: 0
///                 - diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet
///                   lun: 1
///               osDiskImage:
///                 diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet
///             excludeFromLatest: false
///             name: East US
///             regionalReplicaCount: 2
///             storageAccountType: Standard_ZRS
///       resourceGroupName: myResourceGroup
///       safetyProfile:
///         allowDeletionOfReplicatedLocations: false
///       storageProfile:
///         source:
///           id: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/images/{imageName}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a simple gallery image version with target extended locations specified.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var galleryImageVersion = new AzureNative.Compute.GalleryImageVersion("galleryImageVersion", new()
///     {
///         GalleryImageName = "myGalleryImageName",
///         GalleryImageVersionName = "1.0.0",
///         GalleryName = "myGalleryName",
///         Location = "West US",
///         PublishingProfile = new AzureNative.Compute.Inputs.GalleryImageVersionPublishingProfileArgs
///         {
///             TargetRegions = new[]
///             {
///                 new AzureNative.Compute.Inputs.TargetRegionArgs
///                 {
///                     Encryption = new AzureNative.Compute.Inputs.EncryptionImagesArgs
///                     {
///                         DataDiskImages = new[]
///                         {
///                             new AzureNative.Compute.Inputs.DataDiskImageEncryptionArgs
///                             {
///                                 DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet",
///                                 Lun = 0,
///                             },
///                             new AzureNative.Compute.Inputs.DataDiskImageEncryptionArgs
///                             {
///                                 DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                                 Lun = 1,
///                             },
///                         },
///                         OsDiskImage = new AzureNative.Compute.Inputs.OSDiskImageEncryptionArgs
///                         {
///                             DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                         },
///                     },
///                     ExcludeFromLatest = false,
///                     Name = "West US",
///                     RegionalReplicaCount = 1,
///                 },
///                 new AzureNative.Compute.Inputs.TargetRegionArgs
///                 {
///                     Encryption = new AzureNative.Compute.Inputs.EncryptionImagesArgs
///                     {
///                         DataDiskImages = new[]
///                         {
///                             new AzureNative.Compute.Inputs.DataDiskImageEncryptionArgs
///                             {
///                                 DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet",
///                                 Lun = 0,
///                             },
///                             new AzureNative.Compute.Inputs.DataDiskImageEncryptionArgs
///                             {
///                                 DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                                 Lun = 1,
///                             },
///                         },
///                         OsDiskImage = new AzureNative.Compute.Inputs.OSDiskImageEncryptionArgs
///                         {
///                             DiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                         },
///                     },
///                     ExcludeFromLatest = false,
///                     Name = "East US",
///                     RegionalReplicaCount = 2,
///                     StorageAccountType = AzureNative.Compute.StorageAccountType.Standard_ZRS,
///                 },
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         SafetyProfile = new AzureNative.Compute.Inputs.GalleryImageVersionSafetyProfileArgs
///         {
///             AllowDeletionOfReplicatedLocations = false,
///             BlockDeletionBeforeEndOfLife = false,
///         },
///         StorageProfile = new AzureNative.Compute.Inputs.GalleryImageVersionStorageProfileArgs
///         {
///             Source = new AzureNative.Compute.Inputs.GalleryArtifactVersionFullSourceArgs
///             {
///                 Id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/images/{imageName}",
///             },
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewGalleryImageVersion(ctx, "galleryImageVersion", &compute.GalleryImageVersionArgs{
/// 			GalleryImageName:        pulumi.String("myGalleryImageName"),
/// 			GalleryImageVersionName: pulumi.String("1.0.0"),
/// 			GalleryName:             pulumi.String("myGalleryName"),
/// 			Location:                pulumi.String("West US"),
/// 			PublishingProfile: &compute.GalleryImageVersionPublishingProfileArgs{
/// 				TargetRegions: compute.TargetRegionArray{
/// 					&compute.TargetRegionArgs{
/// 						Encryption: &compute.EncryptionImagesArgs{
/// 							DataDiskImages: compute.DataDiskImageEncryptionArray{
/// 								&compute.DataDiskImageEncryptionArgs{
/// 									DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet"),
/// 									Lun:                 pulumi.Int(0),
/// 								},
/// 								&compute.DataDiskImageEncryptionArgs{
/// 									DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet"),
/// 									Lun:                 pulumi.Int(1),
/// 								},
/// 							},
/// 							OsDiskImage: &compute.OSDiskImageEncryptionArgs{
/// 								DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet"),
/// 							},
/// 						},
/// 						ExcludeFromLatest:    pulumi.Bool(false),
/// 						Name:                 pulumi.String("West US"),
/// 						RegionalReplicaCount: pulumi.Int(1),
/// 					},
/// 					&compute.TargetRegionArgs{
/// 						Encryption: &compute.EncryptionImagesArgs{
/// 							DataDiskImages: compute.DataDiskImageEncryptionArray{
/// 								&compute.DataDiskImageEncryptionArgs{
/// 									DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet"),
/// 									Lun:                 pulumi.Int(0),
/// 								},
/// 								&compute.DataDiskImageEncryptionArgs{
/// 									DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet"),
/// 									Lun:                 pulumi.Int(1),
/// 								},
/// 							},
/// 							OsDiskImage: &compute.OSDiskImageEncryptionArgs{
/// 								DiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet"),
/// 							},
/// 						},
/// 						ExcludeFromLatest:    pulumi.Bool(false),
/// 						Name:                 pulumi.String("East US"),
/// 						RegionalReplicaCount: pulumi.Int(2),
/// 						StorageAccountType:   pulumi.String(compute.StorageAccountType_Standard_ZRS),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SafetyProfile: &compute.GalleryImageVersionSafetyProfileArgs{
/// 				AllowDeletionOfReplicatedLocations: pulumi.Bool(false),
/// 				BlockDeletionBeforeEndOfLife:       pulumi.Bool(false),
/// 			},
/// 			StorageProfile: &compute.GalleryImageVersionStorageProfileArgs{
/// 				Source: &compute.GalleryArtifactVersionFullSourceArgs{
/// 					Id: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/images/{imageName}"),
/// 				},
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
/// resource "azure-native_compute_galleryimageversion" "galleryImageVersion" {
///   gallery_image_name         = "myGalleryImageName"
///   gallery_image_version_name = "1.0.0"
///   gallery_name               = "myGalleryName"
///   location                   = "West US"
///   publishing_profile = {
///     target_regions = [{
///       "encryption" = {
///         "dataDiskImages" = [{
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet"
///           "lun"                 = 0
///           }, {
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet"
///           "lun"                 = 1
///         }]
///         "osDiskImage" = {
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet"
///         }
///       }
///       "excludeFromLatest"    = false
///       "name"                 = "West US"
///       "regionalReplicaCount" = 1
///       }, {
///       "encryption" = {
///         "dataDiskImages" = [{
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet"
///           "lun"                 = 0
///           }, {
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet"
///           "lun"                 = 1
///         }]
///         "osDiskImage" = {
///           "diskEncryptionSetId" = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet"
///         }
///       }
///       "excludeFromLatest"    = false
///       "name"                 = "East US"
///       "regionalReplicaCount" = 2
///       "storageAccountType"   = "Standard_ZRS"
///     }]
///   }
///   resource_group_name = "myResourceGroup"
///   safety_profile = {
///     allow_deletion_of_replicated_locations = false
///     block_deletion_before_end_of_life      = false
///   }
///   storage_profile = {
///     source = {
///       id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/images/{imageName}"
///     }
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
/// import com.pulumi.azurenative.compute.GalleryImageVersion;
/// import com.pulumi.azurenative.compute.GalleryImageVersionArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageVersionPublishingProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageVersionSafetyProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageVersionStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryArtifactVersionFullSourceArgs;
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
///         var galleryImageVersion = new GalleryImageVersion("galleryImageVersion", GalleryImageVersionArgs.builder()
///             .galleryImageName("myGalleryImageName")
///             .galleryImageVersionName("1.0.0")
///             .galleryName("myGalleryName")
///             .location("West US")
///             .publishingProfile(GalleryImageVersionPublishingProfileArgs.builder()
///                 .targetRegions(
///                     TargetRegionArgs.builder()
///                         .encryption(EncryptionImagesArgs.builder()
///                             .dataDiskImages(
///                                 DataDiskImageEncryptionArgs.builder()
///                                     .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet")
///                                     .lun(0)
///                                     .build(),
///                                 DataDiskImageEncryptionArgs.builder()
///                                     .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet")
///                                     .lun(1)
///                                     .build())
///                             .osDiskImage(OSDiskImageEncryptionArgs.builder()
///                                 .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet")
///                                 .build())
///                             .build())
///                         .excludeFromLatest(false)
///                         .name("West US")
///                         .regionalReplicaCount(1)
///                         .build(),
///                     TargetRegionArgs.builder()
///                         .encryption(EncryptionImagesArgs.builder()
///                             .dataDiskImages(
///                                 DataDiskImageEncryptionArgs.builder()
///                                     .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet")
///                                     .lun(0)
///                                     .build(),
///                                 DataDiskImageEncryptionArgs.builder()
///                                     .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet")
///                                     .lun(1)
///                                     .build())
///                             .osDiskImage(OSDiskImageEncryptionArgs.builder()
///                                 .diskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet")
///                                 .build())
///                             .build())
///                         .excludeFromLatest(false)
///                         .name("East US")
///                         .regionalReplicaCount(2)
///                         .storageAccountType("Standard_ZRS")
///                         .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .safetyProfile(GalleryImageVersionSafetyProfileArgs.builder()
///                 .allowDeletionOfReplicatedLocations(false)
///                 .blockDeletionBeforeEndOfLife(false)
///                 .build())
///             .storageProfile(GalleryImageVersionStorageProfileArgs.builder()
///                 .source(GalleryArtifactVersionFullSourceArgs.builder()
///                     .id("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/images/{imageName}")
///                     .build())
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
/// const galleryImageVersion = new azure_native.compute.GalleryImageVersion("galleryImageVersion", {
///     galleryImageName: "myGalleryImageName",
///     galleryImageVersionName: "1.0.0",
///     galleryName: "myGalleryName",
///     location: "West US",
///     publishingProfile: {
///         targetRegions: [
///             {
///                 encryption: {
///                     dataDiskImages: [
///                         {
///                             diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet",
///                             lun: 0,
///                         },
///                         {
///                             diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                             lun: 1,
///                         },
///                     ],
///                     osDiskImage: {
///                         diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                     },
///                 },
///                 excludeFromLatest: false,
///                 name: "West US",
///                 regionalReplicaCount: 1,
///             },
///             {
///                 encryption: {
///                     dataDiskImages: [
///                         {
///                             diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet",
///                             lun: 0,
///                         },
///                         {
///                             diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                             lun: 1,
///                         },
///                     ],
///                     osDiskImage: {
///                         diskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                     },
///                 },
///                 excludeFromLatest: false,
///                 name: "East US",
///                 regionalReplicaCount: 2,
///                 storageAccountType: azure_native.compute.StorageAccountType.Standard_ZRS,
///             },
///         ],
///     },
///     resourceGroupName: "myResourceGroup",
///     safetyProfile: {
///         allowDeletionOfReplicatedLocations: false,
///         blockDeletionBeforeEndOfLife: false,
///     },
///     storageProfile: {
///         source: {
///             id: "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/images/{imageName}",
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gallery_image_version = azure_native.compute.GalleryImageVersion("galleryImageVersion",
///     gallery_image_name="myGalleryImageName",
///     gallery_image_version_name="1.0.0",
///     gallery_name="myGalleryName",
///     location="West US",
///     publishing_profile={
///         "target_regions": [
///             {
///                 "encryption": {
///                     "data_disk_images": [
///                         {
///                             "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet",
///                             "lun": 0,
///                         },
///                         {
///                             "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                             "lun": 1,
///                         },
///                     ],
///                     "os_disk_image": {
///                         "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet",
///                     },
///                 },
///                 "exclude_from_latest": False,
///                 "name": "West US",
///                 "regional_replica_count": 1,
///             },
///             {
///                 "encryption": {
///                     "data_disk_images": [
///                         {
///                             "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet",
///                             "lun": 0,
///                         },
///                         {
///                             "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                             "lun": 1,
///                         },
///                     ],
///                     "os_disk_image": {
///                         "disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet",
///                     },
///                 },
///                 "exclude_from_latest": False,
///                 "name": "East US",
///                 "regional_replica_count": 2,
///                 "storage_account_type": azure_native.compute.StorageAccountType.STANDARD_ZRS,
///             },
///         ],
///     },
///     resource_group_name="myResourceGroup",
///     safety_profile={
///         "allow_deletion_of_replicated_locations": False,
///         "block_deletion_before_end_of_life": False,
///     },
///     storage_profile={
///         "source": {
///             "id": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/images/{imageName}",
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   galleryImageVersion:
///     type: azure-native:compute:GalleryImageVersion
///     properties:
///       galleryImageName: myGalleryImageName
///       galleryImageVersionName: 1.0.0
///       galleryName: myGalleryName
///       location: West US
///       publishingProfile:
///         targetRegions:
///           - encryption:
///               dataDiskImages:
///                 - diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherWestUSDiskEncryptionSet
///                   lun: 0
///                 - diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet
///                   lun: 1
///               osDiskImage:
///                 diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myWestUSDiskEncryptionSet
///             excludeFromLatest: false
///             name: West US
///             regionalReplicaCount: 1
///           - encryption:
///               dataDiskImages:
///                 - diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myOtherEastUSDiskEncryptionSet
///                   lun: 0
///                 - diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet
///                   lun: 1
///               osDiskImage:
///                 diskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSet/myEastUSDiskEncryptionSet
///             excludeFromLatest: false
///             name: East US
///             regionalReplicaCount: 2
///             storageAccountType: Standard_ZRS
///       resourceGroupName: myResourceGroup
///       safetyProfile:
///         allowDeletionOfReplicatedLocations: false
///         blockDeletionBeforeEndOfLife: false
///       storageProfile:
///         source:
///           id: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/images/{imageName}
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
/// $ pulumi import azure-native:compute:GalleryImageVersion 1.0.0 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/galleries/{galleryName}/images/{galleryImageName}/versions/{galleryImageVersionName}
/// ```
class GalleryImageVersion extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state, which only appears in the response.
  late final pulumi.Output<String> provisioningState;
  /// The publishing profile of a gallery image Version.
  late final pulumi.Output<GalleryImageVersionPublishingProfileResponse?> publishingProfile;
  /// This is the replication status of the gallery image version.
  late final pulumi.Output<ReplicationStatusResponse> replicationStatus;
  /// Indicates if this is a soft-delete resource restoration request.
  late final pulumi.Output<bool?> restore;
  /// This is the safety profile of the Gallery Image Version.
  late final pulumi.Output<GalleryImageVersionSafetyProfileResponse?> safetyProfile;
  /// The security profile of a gallery image version
  late final pulumi.Output<ImageVersionSecurityProfileResponse?> securityProfile;
  /// This is the storage profile of a Gallery Image Version.
  late final pulumi.Output<GalleryImageVersionStorageProfileResponse> storageProfile;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// This is the validations profile of a Gallery Image Version.
  late final pulumi.Output<ValidationsProfileResponse> validationsProfile;

  /// Creates a new [GalleryImageVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GalleryImageVersion]. {@macro pulumi_compute_gallery_image_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GalleryImageVersion(
    String name, {
    GalleryImageVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:compute:GalleryImageVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    publishingProfile = registerOutput<GalleryImageVersionPublishingProfileResponse?>('publishingProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GalleryImageVersionPublishingProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    replicationStatus = registerOutput<ReplicationStatusResponse>('replicationStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReplicationStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    restore = registerOutput<bool?>('restore');
    safetyProfile = registerOutput<GalleryImageVersionSafetyProfileResponse?>('safetyProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GalleryImageVersionSafetyProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    securityProfile = registerOutput<ImageVersionSecurityProfileResponse?>('securityProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageVersionSecurityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageProfile = registerOutput<GalleryImageVersionStorageProfileResponse>('storageProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GalleryImageVersionStorageProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    validationsProfile = registerOutput<ValidationsProfileResponse>('validationsProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ValidationsProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
