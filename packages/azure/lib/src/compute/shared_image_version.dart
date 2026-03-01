import 'package:pulumi/pulumi.dart' as pulumi;
import 'shared_image_version_args.dart';
import 'shared_image_version_target_region.dart';

/// Manages a Version of a Shared Image within a Shared Image Gallery.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const existing = azure.compute.getImage({
///     name: "search-api",
///     resourceGroupName: "packerimages",
/// });
/// const existingGetSharedImage = azure.compute.getSharedImage({
///     name: "existing-image",
///     galleryName: "existing_gallery",
///     resourceGroupName: "existing-resources",
/// });
/// const example = new azure.compute.SharedImageVersion("example", {
///     name: "0.0.1",
///     galleryName: existingGetSharedImage.then(existingGetSharedImage => existingGetSharedImage.galleryName),
///     imageName: existingGetSharedImage.then(existingGetSharedImage => existingGetSharedImage.name),
///     resourceGroupName: existingGetSharedImage.then(existingGetSharedImage => existingGetSharedImage.resourceGroupName),
///     location: existingGetSharedImage.then(existingGetSharedImage => existingGetSharedImage.location),
///     managedImageId: existing.then(existing => existing.id),
///     targetRegions: [{
///         name: existingGetSharedImage.then(existingGetSharedImage => existingGetSharedImage.location),
///         regionalReplicaCount: 5,
///         storageAccountType: "Standard_LRS",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// existing = azure.compute.get_image(name="search-api",
///     resource_group_name="packerimages")
/// existing_get_shared_image = azure.compute.get_shared_image(name="existing-image",
///     gallery_name="existing_gallery",
///     resource_group_name="existing-resources")
/// example = azure.compute.SharedImageVersion("example",
///     name="0.0.1",
///     gallery_name=existing_get_shared_image.gallery_name,
///     image_name=existing_get_shared_image.name,
///     resource_group_name=existing_get_shared_image.resource_group_name,
///     location=existing_get_shared_image.location,
///     managed_image_id=existing.id,
///     target_regions=[{
///         "name": existing_get_shared_image.location,
///         "regional_replica_count": 5,
///         "storage_account_type": "Standard_LRS",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var existing = Azure.Compute.GetImage.Invoke(new()
///     {
///         Name = "search-api",
///         ResourceGroupName = "packerimages",
///     });
///
///     var existingGetSharedImage = Azure.Compute.GetSharedImage.Invoke(new()
///     {
///         Name = "existing-image",
///         GalleryName = "existing_gallery",
///         ResourceGroupName = "existing-resources",
///     });
///
///     var example = new Azure.Compute.SharedImageVersion("example", new()
///     {
///         Name = "0.0.1",
///         GalleryName = existingGetSharedImage.Apply(getSharedImageResult => getSharedImageResult.GalleryName),
///         ImageName = existingGetSharedImage.Apply(getSharedImageResult => getSharedImageResult.Name),
///         ResourceGroupName = existingGetSharedImage.Apply(getSharedImageResult => getSharedImageResult.ResourceGroupName),
///         Location = existingGetSharedImage.Apply(getSharedImageResult => getSharedImageResult.Location),
///         ManagedImageId = existing.Apply(getImageResult => getImageResult.Id),
///         TargetRegions = new[]
///         {
///             new Azure.Compute.Inputs.SharedImageVersionTargetRegionArgs
///             {
///                 Name = existingGetSharedImage.Apply(getSharedImageResult => getSharedImageResult.Location),
///                 RegionalReplicaCount = 5,
///                 StorageAccountType = "Standard_LRS",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		existing, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Name:              pulumi.StringRef("search-api"),
/// 			ResourceGroupName: "packerimages",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		existingGetSharedImage, err := compute.LookupSharedImage(ctx, &compute.LookupSharedImageArgs{
/// 			Name:              "existing-image",
/// 			GalleryName:       "existing_gallery",
/// 			ResourceGroupName: "existing-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSharedImageVersion(ctx, "example", &compute.SharedImageVersionArgs{
/// 			Name:              pulumi.String("0.0.1"),
/// 			GalleryName:       pulumi.String(existingGetSharedImage.GalleryName),
/// 			ImageName:         pulumi.String(existingGetSharedImage.Name),
/// 			ResourceGroupName: pulumi.String(existingGetSharedImage.ResourceGroupName),
/// 			Location:          pulumi.String(existingGetSharedImage.Location),
/// 			ManagedImageId:    pulumi.String(existing.Id),
/// 			TargetRegions: compute.SharedImageVersionTargetRegionArray{
/// 				&compute.SharedImageVersionTargetRegionArgs{
/// 					Name:                 pulumi.String(existingGetSharedImage.Location),
/// 					RegionalReplicaCount: pulumi.Int(5),
/// 					StorageAccountType:   pulumi.String("Standard_LRS"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.compute.ComputeFunctions;
/// import com.pulumi.azure.compute.inputs.GetImageArgs;
/// import com.pulumi.azure.compute.inputs.GetSharedImageArgs;
/// import com.pulumi.azure.compute.SharedImageVersion;
/// import com.pulumi.azure.compute.SharedImageVersionArgs;
/// import com.pulumi.azure.compute.inputs.SharedImageVersionTargetRegionArgs;
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
///         final var existing = ComputeFunctions.getImage(GetImageArgs.builder()
///             .name("search-api")
///             .resourceGroupName("packerimages")
///             .build());
///
///         final var existingGetSharedImage = ComputeFunctions.getSharedImage(GetSharedImageArgs.builder()
///             .name("existing-image")
///             .galleryName("existing_gallery")
///             .resourceGroupName("existing-resources")
///             .build());
///
///         var example = new SharedImageVersion("example", SharedImageVersionArgs.builder()
///             .name("0.0.1")
///             .galleryName(existingGetSharedImage.galleryName())
///             .imageName(existingGetSharedImage.name())
///             .resourceGroupName(existingGetSharedImage.resourceGroupName())
///             .location(existingGetSharedImage.location())
///             .managedImageId(existing.id())
///             .targetRegions(SharedImageVersionTargetRegionArgs.builder()
///                 .name(existingGetSharedImage.location())
///                 .regionalReplicaCount(5)
///                 .storageAccountType("Standard_LRS")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:compute:SharedImageVersion
///     properties:
///       name: 0.0.1
///       galleryName: ${existingGetSharedImage.galleryName}
///       imageName: ${existingGetSharedImage.name}
///       resourceGroupName: ${existingGetSharedImage.resourceGroupName}
///       location: ${existingGetSharedImage.location}
///       managedImageId: ${existing.id}
///       targetRegions:
///         - name: ${existingGetSharedImage.location}
///           regionalReplicaCount: 5
///           storageAccountType: Standard_LRS
/// variables:
///   existing:
///     fn::invoke:
///       function: azure:compute:getImage
///       arguments:
///         name: search-api
///         resourceGroupName: packerimages
///   existingGetSharedImage:
///     fn::invoke:
///       function: azure:compute:getSharedImage
///       arguments:
///         name: existing-image
///         galleryName: existing_gallery
///         resourceGroupName: existing-resources
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2023-07-03
///
/// ## Import
///
/// Shared Image Versions can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/sharedImageVersion:SharedImageVersion version /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Compute/galleries/gallery1/images/image1/versions/1.2.3
/// ```
class SharedImageVersion extends pulumi.CustomResource {
  /// URI of the Azure Storage Blob used to create the Image Version. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** You must specify exact one of `blob_uri`, `managed_image_id` and `os_disk_snapshot_id`.
  ///
  /// > **NOTE:** `blob_uri` and `storage_account_id` must be specified together
  late final pulumi.Output<String?> blobUri;
  /// Specifies whether this Shared Image Version can be deleted from the Azure Regions this is replicated to. Defaults to `false`. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> deletionOfReplicatedLocationsEnabled;
  /// The end of life date in RFC3339 format of the Image Version.
  late final pulumi.Output<String?> endOfLifeDate;
  /// Should this Image Version be excluded from the `latest` filter? If set to `true` this Image Version won't be returned for the `latest` version. Defaults to `false`.
  late final pulumi.Output<bool?> excludeFromLatest;
  /// The name of the Shared Image Gallery in which the Shared Image exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> galleryName;
  /// The name of the Shared Image within the Shared Image Gallery in which this Version should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> imageName;
  /// The Azure Region in which the Shared Image Gallery exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The ID of the Managed Image or Virtual Machine ID which should be used for this Shared Image Version. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** The ID can be sourced from the `azure.compute.Image` data source or resource
  ///
  /// > **NOTE:** You must specify exact one of `blob_uri`, `managed_image_id` and `os_disk_snapshot_id`.
  late final pulumi.Output<String?> managedImageId;
  /// The version number for this Image Version, such as `1.0.0`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The ID of the OS disk snapshot which should be used for this Shared Image Version. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** You must specify exact one of `blob_uri`, `managed_image_id` and `os_disk_snapshot_id`.
  late final pulumi.Output<String?> osDiskSnapshotId;
  /// Mode to be used for replication. Possible values are `Full` and `Shallow`. Defaults to `Full`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> replicationMode;
  /// The name of the Resource Group in which the Shared Image Gallery exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The ID of the Storage Account where the Blob exists. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** `blob_uri` and `storage_account_id` must be specified together
  late final pulumi.Output<String?> storageAccountId;
  /// A collection of tags which should be applied to this resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// One or more `target_region` blocks as documented below.
  late final pulumi.Output<List<SharedImageVersionTargetRegion>> targetRegions;

  /// Creates a new [SharedImageVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SharedImageVersion]. {@macro pulumi_compute_shared_image_version_shared_image_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SharedImageVersion(
    String name, {
    SharedImageVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/sharedImageVersion:SharedImageVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.blobUri = registerOutput<String?>('blobUri');
    this.deletionOfReplicatedLocationsEnabled = registerOutput<bool?>('deletionOfReplicatedLocationsEnabled');
    this.endOfLifeDate = registerOutput<String?>('endOfLifeDate');
    this.excludeFromLatest = registerOutput<bool?>('excludeFromLatest');
    this.galleryName = registerOutput<String>('galleryName');
    this.imageName = registerOutput<String>('imageName');
    this.location = registerOutput<String>('location');
    this.managedImageId = registerOutput<String?>('managedImageId');
    this.name = registerOutput<String>('name');
    this.osDiskSnapshotId = registerOutput<String?>('osDiskSnapshotId');
    this.replicationMode = registerOutput<String?>('replicationMode');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.storageAccountId = registerOutput<String?>('storageAccountId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.targetRegions = registerOutput<List<SharedImageVersionTargetRegion>>('targetRegions');
  }
}
