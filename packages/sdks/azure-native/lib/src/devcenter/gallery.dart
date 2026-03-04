import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_args.dart';
import 'system_data_response.dart';

/// Represents a gallery.
///
/// Uses Azure REST API version 2024-02-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-04-01, 2023-08-01-preview, 2023-10-01-preview, 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Galleries_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var gallery = new AzureNative.DevCenter.Gallery("gallery", new()
///     {
///         DevCenterName = "Contoso",
///         GalleryName = "StandardGallery",
///         GalleryResourceId = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/rg1/providers/Microsoft.Compute/galleries/StandardGallery",
///         ResourceGroupName = "rg1",
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
/// 	devcenter "github.com/pulumi/pulumi-azure-native-sdk/devcenter/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devcenter.NewGallery(ctx, "gallery", &devcenter.GalleryArgs{
/// 			DevCenterName:     pulumi.String("Contoso"),
/// 			GalleryName:       pulumi.String("StandardGallery"),
/// 			GalleryResourceId: pulumi.String("/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/rg1/providers/Microsoft.Compute/galleries/StandardGallery"),
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.devcenter.Gallery;
/// import com.pulumi.azurenative.devcenter.GalleryArgs;
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
///         var gallery = new Gallery("gallery", GalleryArgs.builder()
///             .devCenterName("Contoso")
///             .galleryName("StandardGallery")
///             .galleryResourceId("/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/rg1/providers/Microsoft.Compute/galleries/StandardGallery")
///             .resourceGroupName("rg1")
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
/// const gallery = new azure_native.devcenter.Gallery("gallery", {
///     devCenterName: "Contoso",
///     galleryName: "StandardGallery",
///     galleryResourceId: "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/rg1/providers/Microsoft.Compute/galleries/StandardGallery",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gallery = azure_native.devcenter.Gallery("gallery",
///     dev_center_name="Contoso",
///     gallery_name="StandardGallery",
///     gallery_resource_id="/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/rg1/providers/Microsoft.Compute/galleries/StandardGallery",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   gallery:
///     type: azure-native:devcenter:Gallery
///     properties:
///       devCenterName: Contoso
///       galleryName: StandardGallery
///       galleryResourceId: /subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/rg1/providers/Microsoft.Compute/galleries/StandardGallery
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:devcenter:Gallery StandardGallery /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevCenter/devcenters/{devCenterName}/galleries/{galleryName}
/// ```
class Gallery extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The resource ID of the backing Azure Compute Gallery.
  late final pulumi.Output<String> galleryResourceId;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Gallery].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Gallery]. {@macro pulumi_devcenter_gallery_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Gallery(
    String name, {
    GalleryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:devcenter:Gallery',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    galleryResourceId = registerOutput<String>('galleryResourceId');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
