import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_args.dart';
import 'system_data_response.dart';

/// An image resource belonging to a catalog resource.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Image_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var image = new AzureNative.AzureSphere.Image("image", new()
///     {
///         CatalogName = "MyCatalog1",
///         Image = "bXliYXNlNjRzdHJpbmc=",
///         ImageName = "00000000-0000-0000-0000-000000000000",
///         ResourceGroupName = "MyResourceGroup1",
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
/// 	azuresphere "github.com/pulumi/pulumi-azure-native-sdk/azuresphere/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azuresphere.NewImage(ctx, "image", &azuresphere.ImageArgs{
/// 			CatalogName:       pulumi.String("MyCatalog1"),
/// 			Image:             pulumi.String("bXliYXNlNjRzdHJpbmc="),
/// 			ImageName:         pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			ResourceGroupName: pulumi.String("MyResourceGroup1"),
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
/// import com.pulumi.azurenative.azuresphere.Image;
/// import com.pulumi.azurenative.azuresphere.ImageArgs;
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
///         var image = new Image("image", ImageArgs.builder()
///             .catalogName("MyCatalog1")
///             .image("bXliYXNlNjRzdHJpbmc=")
///             .imageName("00000000-0000-0000-0000-000000000000")
///             .resourceGroupName("MyResourceGroup1")
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
/// const image = new azure_native.azuresphere.Image("image", {
///     catalogName: "MyCatalog1",
///     image: "bXliYXNlNjRzdHJpbmc=",
///     imageName: "00000000-0000-0000-0000-000000000000",
///     resourceGroupName: "MyResourceGroup1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// image = azure_native.azuresphere.Image("image",
///     catalog_name="MyCatalog1",
///     image="bXliYXNlNjRzdHJpbmc=",
///     image_name="00000000-0000-0000-0000-000000000000",
///     resource_group_name="MyResourceGroup1")
///
/// ```
///
/// ```yaml
/// resources:
///   image:
///     type: azure-native:azuresphere:Image
///     properties:
///       catalogName: MyCatalog1
///       image: bXliYXNlNjRzdHJpbmc=
///       imageName: 00000000-0000-0000-0000-000000000000
///       resourceGroupName: MyResourceGroup1
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
/// $ pulumi import azure-native:azuresphere:Image MyProduct1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureSphere/catalogs/{catalogName}/images/{imageName}
/// ```
class ImageAzuresphere extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The image component id.
  late final pulumi.Output<String> componentId;
  /// The image description.
  late final pulumi.Output<String> description;
  /// Image as a UTF-8 encoded base 64 string on image create. This field contains the image URI on image reads.
  late final pulumi.Output<String?> image;
  /// Image ID
  late final pulumi.Output<String?> imageId;
  /// Image name
  late final pulumi.Output<String> imageName;
  /// The image type.
  late final pulumi.Output<String> imageType;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;
  /// Regional data boundary for an image
  late final pulumi.Output<String?> regionalDataBoundary;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Location the image
  late final pulumi.Output<String> uri;

  /// Creates a new [ImageAzuresphere].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ImageAzuresphere]. {@macro pulumi_azuresphere_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ImageAzuresphere(
    String name, {
    ImageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azuresphere:Image',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    componentId = registerOutput<String>('componentId');
    description = registerOutput<String>('description');
    image = registerOutput<String?>('image');
    imageId = registerOutput<String?>('imageId');
    imageName = registerOutput<String>('imageName');
    imageType = registerOutput<String>('imageType');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    regionalDataBoundary = registerOutput<String?>('regionalDataBoundary');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    uri = registerOutput<String>('uri');
  }
}
