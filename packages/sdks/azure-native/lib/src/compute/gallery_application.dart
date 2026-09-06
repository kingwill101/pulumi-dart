import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_application_args.dart';
import 'gallery_application_custom_action_response.dart';
import 'system_data_response.dart';

/// Specifies information about the gallery Application Definition that you want to create or update.
///
/// Uses Azure REST API version 2024-03-03. In version 2.x of the Azure Native provider, it used API version 2022-03-03.
///
/// Other available API versions: 2022-03-03, 2022-08-03, 2023-07-03, 2025-03-03, 2025-12-03. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a simple gallery Application.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var galleryApplication = new AzureNative.Compute.GalleryApplication("galleryApplication", new()
///     {
///         CustomActions = new[]
///         {
///             new AzureNative.Compute.Inputs.GalleryApplicationCustomActionArgs
///             {
///                 Description = "This is the custom action description.",
///                 Name = "myCustomAction",
///                 Parameters = new[]
///                 {
///                     new AzureNative.Compute.Inputs.GalleryApplicationCustomActionParameterArgs
///                     {
///                         DefaultValue = "default value of parameter.",
///                         Description = "This is the description of the parameter",
///                         Name = "myCustomActionParameter",
///                         Required = false,
///                         Type = AzureNative.Compute.GalleryApplicationCustomActionParameterType.String,
///                     },
///                 },
///                 Script = "myCustomActionScript",
///             },
///         },
///         Description = "This is the gallery application description.",
///         Eula = "This is the gallery application EULA.",
///         GalleryApplicationName = "myGalleryApplicationName",
///         GalleryName = "myGalleryName",
///         Location = "West US",
///         PrivacyStatementUri = "myPrivacyStatementUri}",
///         ReleaseNoteUri = "myReleaseNoteUri",
///         ResourceGroupName = "myResourceGroup",
///         SupportedOSType = AzureNative.Compute.OperatingSystemTypes.Windows,
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
/// 		_, err := compute.NewGalleryApplication(ctx, "galleryApplication", &compute.GalleryApplicationArgs{
/// 			CustomActions: compute.GalleryApplicationCustomActionArray{
/// 				&compute.GalleryApplicationCustomActionArgs{
/// 					Description: pulumi.String("This is the custom action description."),
/// 					Name:        pulumi.String("myCustomAction"),
/// 					Parameters: compute.GalleryApplicationCustomActionParameterArray{
/// 						&compute.GalleryApplicationCustomActionParameterArgs{
/// 							DefaultValue: pulumi.String("default value of parameter."),
/// 							Description:  pulumi.String("This is the description of the parameter"),
/// 							Name:         pulumi.String("myCustomActionParameter"),
/// 							Required:     pulumi.Bool(false),
/// 							Type:         compute.GalleryApplicationCustomActionParameterTypeString,
/// 						},
/// 					},
/// 					Script: pulumi.String("myCustomActionScript"),
/// 				},
/// 			},
/// 			Description:            pulumi.String("This is the gallery application description."),
/// 			Eula:                   pulumi.String("This is the gallery application EULA."),
/// 			GalleryApplicationName: pulumi.String("myGalleryApplicationName"),
/// 			GalleryName:            pulumi.String("myGalleryName"),
/// 			Location:               pulumi.String("West US"),
/// 			PrivacyStatementUri:    pulumi.String("myPrivacyStatementUri}"),
/// 			ReleaseNoteUri:         pulumi.String("myReleaseNoteUri"),
/// 			ResourceGroupName:      pulumi.String("myResourceGroup"),
/// 			SupportedOSType:        compute.OperatingSystemTypesWindows,
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
/// resource "azure-native_compute_galleryapplication" "galleryApplication" {
///   custom_actions {
///     description = "This is the custom action description."
///     name        = "myCustomAction"
///     parameters {
///       default_value = "default value of parameter."
///       description   = "This is the description of the parameter"
///       name          = "myCustomActionParameter"
///       required      = false
///       type          = "String"
///     }
///     script = "myCustomActionScript"
///   }
///   description              = "This is the gallery application description."
///   eula                     = "This is the gallery application EULA."
///   gallery_application_name = "myGalleryApplicationName"
///   gallery_name             = "myGalleryName"
///   location                 = "West US"
///   privacy_statement_uri    = "myPrivacyStatementUri}"
///   release_note_uri         = "myReleaseNoteUri"
///   resource_group_name      = "myResourceGroup"
///   supported_os_type        = "Windows"
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
/// import com.pulumi.azurenative.compute.GalleryApplication;
/// import com.pulumi.azurenative.compute.GalleryApplicationArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryApplicationCustomActionArgs;
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
///         var galleryApplication = new GalleryApplication("galleryApplication", GalleryApplicationArgs.builder()
///             .customActions(GalleryApplicationCustomActionArgs.builder()
///                 .description("This is the custom action description.")
///                 .name("myCustomAction")
///                 .parameters(GalleryApplicationCustomActionParameterArgs.builder()
///                     .defaultValue("default value of parameter.")
///                     .description("This is the description of the parameter")
///                     .name("myCustomActionParameter")
///                     .required(false)
///                     .type("String")
///                     .build())
///                 .script("myCustomActionScript")
///                 .build())
///             .description("This is the gallery application description.")
///             .eula("This is the gallery application EULA.")
///             .galleryApplicationName("myGalleryApplicationName")
///             .galleryName("myGalleryName")
///             .location("West US")
///             .privacyStatementUri("myPrivacyStatementUri}")
///             .releaseNoteUri("myReleaseNoteUri")
///             .resourceGroupName("myResourceGroup")
///             .supportedOSType("Windows")
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
/// const galleryApplication = new azure_native.compute.GalleryApplication("galleryApplication", {
///     customActions: [{
///         description: "This is the custom action description.",
///         name: "myCustomAction",
///         parameters: [{
///             defaultValue: "default value of parameter.",
///             description: "This is the description of the parameter",
///             name: "myCustomActionParameter",
///             required: false,
///             type: azure_native.compute.GalleryApplicationCustomActionParameterType.String,
///         }],
///         script: "myCustomActionScript",
///     }],
///     description: "This is the gallery application description.",
///     eula: "This is the gallery application EULA.",
///     galleryApplicationName: "myGalleryApplicationName",
///     galleryName: "myGalleryName",
///     location: "West US",
///     privacyStatementUri: "myPrivacyStatementUri}",
///     releaseNoteUri: "myReleaseNoteUri",
///     resourceGroupName: "myResourceGroup",
///     supportedOSType: azure_native.compute.OperatingSystemTypes.Windows,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gallery_application = azure_native.compute.GalleryApplication("galleryApplication",
///     custom_actions=[{
///         "description": "This is the custom action description.",
///         "name": "myCustomAction",
///         "parameters": [{
///             "default_value": "default value of parameter.",
///             "description": "This is the description of the parameter",
///             "name": "myCustomActionParameter",
///             "required": False,
///             "type": azure_native.compute.GalleryApplicationCustomActionParameterType.STRING,
///         }],
///         "script": "myCustomActionScript",
///     }],
///     description="This is the gallery application description.",
///     eula="This is the gallery application EULA.",
///     gallery_application_name="myGalleryApplicationName",
///     gallery_name="myGalleryName",
///     location="West US",
///     privacy_statement_uri="myPrivacyStatementUri}",
///     release_note_uri="myReleaseNoteUri",
///     resource_group_name="myResourceGroup",
///     supported_os_type=azure_native.compute.OperatingSystemTypes.WINDOWS)
///
/// ```
///
/// ```yaml
/// resources:
///   galleryApplication:
///     type: azure-native:compute:GalleryApplication
///     properties:
///       customActions:
///         - description: This is the custom action description.
///           name: myCustomAction
///           parameters:
///             - defaultValue: default value of parameter.
///               description: This is the description of the parameter
///               name: myCustomActionParameter
///               required: false
///               type: String
///           script: myCustomActionScript
///       description: This is the gallery application description.
///       eula: This is the gallery application EULA.
///       galleryApplicationName: myGalleryApplicationName
///       galleryName: myGalleryName
///       location: West US
///       privacyStatementUri: myPrivacyStatementUri}
///       releaseNoteUri: myReleaseNoteUri
///       resourceGroupName: myResourceGroup
///       supportedOSType: Windows
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
/// $ pulumi import azure-native:compute:GalleryApplication myGalleryApplicationName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/galleries/{galleryName}/applications/{galleryApplicationName}
/// ```
class GalleryApplication extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A list of custom actions that can be performed with all of the Gallery Application Versions within this Gallery Application.
  late final pulumi.Output<List<GalleryApplicationCustomActionResponse>?> customActions;
  /// The description of this gallery Application Definition resource. This property is updatable.
  late final pulumi.Output<String?> description;
  /// The end of life date of the gallery Application Definition. This property can be used for decommissioning purposes. This property is updatable.
  late final pulumi.Output<String?> endOfLifeDate;
  /// The Eula agreement for the gallery Application Definition.
  late final pulumi.Output<String?> eula;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The privacy statement uri.
  late final pulumi.Output<String?> privacyStatementUri;
  /// The release note uri.
  late final pulumi.Output<String?> releaseNoteUri;
  /// This property allows you to specify the supported type of the OS that application is built for. Possible values are: **Windows,** **Linux.**
  late final pulumi.Output<String> supportedOSType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [GalleryApplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GalleryApplication]. {@macro pulumi_compute_gallery_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GalleryApplication(
    String name, {
    GalleryApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:compute:GalleryApplication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    customActions = registerOutput<List<GalleryApplicationCustomActionResponse>?>('customActions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GalleryApplicationCustomActionResponse>(guardedValue, (value) => GalleryApplicationCustomActionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    endOfLifeDate = registerOutput<String?>('endOfLifeDate');
    eula = registerOutput<String?>('eula');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privacyStatementUri = registerOutput<String?>('privacyStatementUri');
    releaseNoteUri = registerOutput<String?>('releaseNoteUri');
    supportedOSType = registerOutput<String>('supportedOSType');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [GalleryApplication] resource.
  GalleryApplication.reference(String urn)
    : super(
        'azure-native:compute:GalleryApplication',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    customActions = registerOutput<List<GalleryApplicationCustomActionResponse>?>('customActions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GalleryApplicationCustomActionResponse>(guardedValue, (value) => GalleryApplicationCustomActionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    endOfLifeDate = registerOutput<String?>('endOfLifeDate');
    eula = registerOutput<String?>('eula');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privacyStatementUri = registerOutput<String?>('privacyStatementUri');
    releaseNoteUri = registerOutput<String?>('releaseNoteUri');
    supportedOSType = registerOutput<String>('supportedOSType');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
