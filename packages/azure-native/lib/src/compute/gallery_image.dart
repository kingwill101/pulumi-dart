import 'package:pulumi/pulumi.dart' as pulumi;
import 'disallowed_response.dart';
import 'gallery_image_args.dart';
import 'gallery_image_feature_response.dart';
import 'gallery_image_identifier_response.dart';
import 'image_purchase_plan_response.dart';
import 'recommended_machine_configuration_response.dart';
import 'system_data_response.dart';

/// Specifies information about the gallery image definition that you want to create or update.
///
/// Uses Azure REST API version 2024-03-03. In version 2.x of the Azure Native provider, it used API version 2022-03-03.
///
/// Other available API versions: 2022-03-03, 2022-08-03, 2023-07-03, 2025-03-03. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a simple gallery image.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var galleryImage = new AzureNative.Compute.GalleryImage("galleryImage", new()
///     {
///         GalleryImageName = "myGalleryImageName",
///         GalleryName = "myGalleryName",
///         HyperVGeneration = AzureNative.Compute.HyperVGeneration.V1,
///         Identifier = new AzureNative.Compute.Inputs.GalleryImageIdentifierArgs
///         {
///             Offer = "myOfferName",
///             Publisher = "myPublisherName",
///             Sku = "mySkuName",
///         },
///         Location = "West US",
///         OsState = AzureNative.Compute.OperatingSystemStateTypes.Generalized,
///         OsType = AzureNative.Compute.OperatingSystemTypes.Windows,
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewGalleryImage(ctx, "galleryImage", &compute.GalleryImageArgs{
/// 			GalleryImageName: pulumi.String("myGalleryImageName"),
/// 			GalleryName:      pulumi.String("myGalleryName"),
/// 			HyperVGeneration: pulumi.String(compute.HyperVGenerationV1),
/// 			Identifier: &compute.GalleryImageIdentifierArgs{
/// 				Offer:     pulumi.String("myOfferName"),
/// 				Publisher: pulumi.String("myPublisherName"),
/// 				Sku:       pulumi.String("mySkuName"),
/// 			},
/// 			Location:          pulumi.String("West US"),
/// 			OsState:           compute.OperatingSystemStateTypesGeneralized,
/// 			OsType:            compute.OperatingSystemTypesWindows,
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
/// import com.pulumi.azurenative.compute.GalleryImage;
/// import com.pulumi.azurenative.compute.GalleryImageArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryImageIdentifierArgs;
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
///             .galleryImageName("myGalleryImageName")
///             .galleryName("myGalleryName")
///             .hyperVGeneration("V1")
///             .identifier(GalleryImageIdentifierArgs.builder()
///                 .offer("myOfferName")
///                 .publisher("myPublisherName")
///                 .sku("mySkuName")
///                 .build())
///             .location("West US")
///             .osState("Generalized")
///             .osType("Windows")
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
/// const galleryImage = new azure_native.compute.GalleryImage("galleryImage", {
///     galleryImageName: "myGalleryImageName",
///     galleryName: "myGalleryName",
///     hyperVGeneration: azure_native.compute.HyperVGeneration.V1,
///     identifier: {
///         offer: "myOfferName",
///         publisher: "myPublisherName",
///         sku: "mySkuName",
///     },
///     location: "West US",
///     osState: azure_native.compute.OperatingSystemStateTypes.Generalized,
///     osType: azure_native.compute.OperatingSystemTypes.Windows,
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gallery_image = azure_native.compute.GalleryImage("galleryImage",
///     gallery_image_name="myGalleryImageName",
///     gallery_name="myGalleryName",
///     hyper_v_generation=azure_native.compute.HyperVGeneration.V1,
///     identifier={
///         "offer": "myOfferName",
///         "publisher": "myPublisherName",
///         "sku": "mySkuName",
///     },
///     location="West US",
///     os_state=azure_native.compute.OperatingSystemStateTypes.GENERALIZED,
///     os_type=azure_native.compute.OperatingSystemTypes.WINDOWS,
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   galleryImage:
///     type: azure-native:compute:GalleryImage
///     properties:
///       galleryImageName: myGalleryImageName
///       galleryName: myGalleryName
///       hyperVGeneration: V1
///       identifier:
///         offer: myOfferName
///         publisher: myPublisherName
///         sku: mySkuName
///       location: West US
///       osState: Generalized
///       osType: Windows
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
/// $ pulumi import azure-native:compute:GalleryImage myGalleryImageName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/galleries/{galleryName}/images/{galleryImageName}
/// ```
class GalleryImage extends pulumi.CustomResource {
  /// Optional. Must be set to true if the gallery image features are being updated.
  late final pulumi.Output<bool?> allowUpdateImage;
  /// The architecture of the image. Applicable to OS disks only.
  late final pulumi.Output<String?> architecture;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The description of this gallery image definition resource. This property is updatable.
  late final pulumi.Output<String?> description;
  /// Describes the disallowed disk types.
  late final pulumi.Output<DisallowedResponse?> disallowed;
  /// The end of life date of the gallery image definition. This property can be used for decommissioning purposes. This property is updatable.
  late final pulumi.Output<String?> endOfLifeDate;
  /// The Eula agreement for the gallery image definition.
  late final pulumi.Output<String?> eula;
  /// A list of gallery image features.
  late final pulumi.Output<List<GalleryImageFeatureResponse>?> features;
  /// The hypervisor generation of the Virtual Machine. Applicable to OS disks only.
  late final pulumi.Output<String?> hyperVGeneration;
  /// This is the gallery image definition identifier.
  late final pulumi.Output<GalleryImageIdentifierResponse> identifier;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// This property allows the user to specify whether the virtual machines created under this image are 'Generalized' or 'Specialized'.
  late final pulumi.Output<String> osState;
  /// This property allows you to specify the type of the OS that is included in the disk when creating a VM from a managed image. Possible values are: **Windows,** **Linux.**
  late final pulumi.Output<String> osType;
  /// The privacy statement uri.
  late final pulumi.Output<String?> privacyStatementUri;
  /// The provisioning state, which only appears in the response.
  late final pulumi.Output<String> provisioningState;
  /// Describes the gallery image definition purchase plan. This is used by marketplace images.
  late final pulumi.Output<ImagePurchasePlanResponse?> purchasePlan;
  /// The properties describe the recommended machine configuration for this Image Definition. These properties are updatable.
  late final pulumi.Output<RecommendedMachineConfigurationResponse?> recommended;
  /// The release note uri.
  late final pulumi.Output<String?> releaseNoteUri;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [GalleryImage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GalleryImage]. {@macro pulumi_compute_gallery_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GalleryImage(
    String name, {
    GalleryImageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:compute:GalleryImage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowUpdateImage = registerOutput<bool?>('allowUpdateImage');
    this.architecture = registerOutput<String?>('architecture');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.description = registerOutput<String?>('description');
    this.disallowed = registerOutput<DisallowedResponse?>('disallowed');
    this.endOfLifeDate = registerOutput<String?>('endOfLifeDate');
    this.eula = registerOutput<String?>('eula');
    this.features = registerOutput<List<GalleryImageFeatureResponse>?>('features');
    this.hyperVGeneration = registerOutput<String?>('hyperVGeneration');
    this.identifier = registerOutput<GalleryImageIdentifierResponse>('identifier');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.osState = registerOutput<String>('osState');
    this.osType = registerOutput<String>('osType');
    this.privacyStatementUri = registerOutput<String?>('privacyStatementUri');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.purchasePlan = registerOutput<ImagePurchasePlanResponse?>('purchasePlan');
    this.recommended = registerOutput<RecommendedMachineConfigurationResponse?>('recommended');
    this.releaseNoteUri = registerOutput<String?>('releaseNoteUri');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
