import 'package:pulumi/pulumi.dart' as pulumi;
import 'dev_box_definition_args.dart';
import 'image_reference_response.dart';
import 'image_validation_error_details_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Represents a definition for a Developer Machine.
///
/// Uses Azure REST API version 2024-02-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-04-01, 2023-08-01-preview, 2023-10-01-preview, 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DevBoxDefinitions_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var devBoxDefinition = new AzureNative.DevCenter.DevBoxDefinition("devBoxDefinition", new()
///     {
///         DevBoxDefinitionName = "WebDevBox",
///         DevCenterName = "Contoso",
///         HibernateSupport = AzureNative.DevCenter.HibernateSupport.Enabled,
///         ImageReference = new AzureNative.DevCenter.Inputs.ImageReferenceArgs
///         {
///             Id = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/Example/providers/Microsoft.DevCenter/devcenters/Contoso/galleries/contosogallery/images/exampleImage/version/1.0.0",
///         },
///         Location = "centralus",
///         ResourceGroupName = "rg1",
///         Sku = new AzureNative.DevCenter.Inputs.SkuArgs
///         {
///             Name = "Preview",
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
/// 	devcenter "github.com/pulumi/pulumi-azure-native-sdk/devcenter/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devcenter.NewDevBoxDefinition(ctx, "devBoxDefinition", &devcenter.DevBoxDefinitionArgs{
/// 			DevBoxDefinitionName: pulumi.String("WebDevBox"),
/// 			DevCenterName:        pulumi.String("Contoso"),
/// 			HibernateSupport:     pulumi.String(devcenter.HibernateSupportEnabled),
/// 			ImageReference: &devcenter.ImageReferenceArgs{
/// 				Id: pulumi.String("/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/Example/providers/Microsoft.DevCenter/devcenters/Contoso/galleries/contosogallery/images/exampleImage/version/1.0.0"),
/// 			},
/// 			Location:          pulumi.String("centralus"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Sku: &devcenter.SkuArgs{
/// 				Name: pulumi.String("Preview"),
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
/// import com.pulumi.azurenative.devcenter.DevBoxDefinition;
/// import com.pulumi.azurenative.devcenter.DevBoxDefinitionArgs;
/// import com.pulumi.azurenative.devcenter.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.devcenter.inputs.SkuArgs;
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
///         var devBoxDefinition = new DevBoxDefinition("devBoxDefinition", DevBoxDefinitionArgs.builder()
///             .devBoxDefinitionName("WebDevBox")
///             .devCenterName("Contoso")
///             .hibernateSupport("Enabled")
///             .imageReference(ImageReferenceArgs.builder()
///                 .id("/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/Example/providers/Microsoft.DevCenter/devcenters/Contoso/galleries/contosogallery/images/exampleImage/version/1.0.0")
///                 .build())
///             .location("centralus")
///             .resourceGroupName("rg1")
///             .sku(SkuArgs.builder()
///                 .name("Preview")
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
/// const devBoxDefinition = new azure_native.devcenter.DevBoxDefinition("devBoxDefinition", {
///     devBoxDefinitionName: "WebDevBox",
///     devCenterName: "Contoso",
///     hibernateSupport: azure_native.devcenter.HibernateSupport.Enabled,
///     imageReference: {
///         id: "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/Example/providers/Microsoft.DevCenter/devcenters/Contoso/galleries/contosogallery/images/exampleImage/version/1.0.0",
///     },
///     location: "centralus",
///     resourceGroupName: "rg1",
///     sku: {
///         name: "Preview",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dev_box_definition = azure_native.devcenter.DevBoxDefinition("devBoxDefinition",
///     dev_box_definition_name="WebDevBox",
///     dev_center_name="Contoso",
///     hibernate_support=azure_native.devcenter.HibernateSupport.ENABLED,
///     image_reference={
///         "id": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/Example/providers/Microsoft.DevCenter/devcenters/Contoso/galleries/contosogallery/images/exampleImage/version/1.0.0",
///     },
///     location="centralus",
///     resource_group_name="rg1",
///     sku={
///         "name": "Preview",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   devBoxDefinition:
///     type: azure-native:devcenter:DevBoxDefinition
///     properties:
///       devBoxDefinitionName: WebDevBox
///       devCenterName: Contoso
///       hibernateSupport: Enabled
///       imageReference:
///         id: /subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/Example/providers/Microsoft.DevCenter/devcenters/Contoso/galleries/contosogallery/images/exampleImage/version/1.0.0
///       location: centralus
///       resourceGroupName: rg1
///       sku:
///         name: Preview
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
/// $ pulumi import azure-native:devcenter:DevBoxDefinition WebDevBox /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevCenter/devcenters/{devCenterName}/devboxdefinitions/{devBoxDefinitionName}
/// ```
class DevBoxDefinition extends pulumi.CustomResource {
  /// Image reference information for the currently active image (only populated during updates).
  late final pulumi.Output<ImageReferenceResponse> activeImageReference;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Indicates whether Dev Boxes created with this definition are capable of hibernation. Not all images are capable of supporting hibernation. To find out more see https://aka.ms/devbox/hibernate
  late final pulumi.Output<String?> hibernateSupport;

  /// Image reference information.
  late final pulumi.Output<ImageReferenceResponse> imageReference;

  /// Details for image validator error. Populated when the image validation is not successful.
  late final pulumi.Output<ImageValidationErrorDetailsResponse>
  imageValidationErrorDetails;

  /// Validation status of the configured image.
  late final pulumi.Output<String> imageValidationStatus;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The storage type used for the Operating System disk of Dev Boxes created using this definition.
  late final pulumi.Output<String?> osStorageType;

  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// The SKU for Dev Boxes created using this definition.
  late final pulumi.Output<SkuResponse> sku;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Validation status for the Dev Box Definition.
  late final pulumi.Output<String> validationStatus;

  /// Creates a new [DevBoxDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DevBoxDefinition]. {@macro pulumi_devcenter_dev_box_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DevBoxDefinition(
    String name, {
    DevBoxDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:devcenter:DevBoxDefinition',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    activeImageReference = registerOutput<ImageReferenceResponse>(
      'activeImageReference',
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    hibernateSupport = registerOutput<String?>('hibernateSupport');
    imageReference = registerOutput<ImageReferenceResponse>('imageReference');
    imageValidationErrorDetails =
        registerOutput<ImageValidationErrorDetailsResponse>(
          'imageValidationErrorDetails',
        );
    imageValidationStatus = registerOutput<String>('imageValidationStatus');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    osStorageType = registerOutput<String?>('osStorageType');
    provisioningState = registerOutput<String>('provisioningState');
    sku = registerOutput<SkuResponse>('sku');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    validationStatus = registerOutput<String>('validationStatus');
  }
}
