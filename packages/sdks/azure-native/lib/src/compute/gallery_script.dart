import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_script_args.dart';
import 'gallery_script_properties_response.dart';
import 'system_data_response.dart';

/// Specifies information about the gallery Script Definition that you want to create or update.
///
/// Uses Azure REST API version 2025-03-03.
///
/// Other available API versions: 2025-12-03. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a simple gallery Script.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var galleryScript = new AzureNative.Compute.GalleryScript("galleryScript", new()
///     {
///         GalleryName = "myGalleryName",
///         GalleryScriptName = "myGalleryScriptName",
///         Location = "West US",
///         Properties = new AzureNative.Compute.Inputs.GalleryScriptPropertiesArgs
///         {
///             Description = "This is the gallery script description.",
///             Eula = "This is the gallery script EULA.",
///             PrivacyStatementUri = "{myPrivacyStatementUri}",
///             ReleaseNoteUri = "{myReleaseNoteUri}",
///             SupportedOSType = AzureNative.Compute.OperatingSystemTypes.Windows,
///         },
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
/// 		_, err := compute.NewGalleryScript(ctx, "galleryScript", &compute.GalleryScriptArgs{
/// 			GalleryName:       pulumi.String("myGalleryName"),
/// 			GalleryScriptName: pulumi.String("myGalleryScriptName"),
/// 			Location:          pulumi.String("West US"),
/// 			Properties: &compute.GalleryScriptPropertiesArgs{
/// 				Description:         pulumi.String("This is the gallery script description."),
/// 				Eula:                pulumi.String("This is the gallery script EULA."),
/// 				PrivacyStatementUri: pulumi.String("{myPrivacyStatementUri}"),
/// 				ReleaseNoteUri:      pulumi.String("{myReleaseNoteUri}"),
/// 				SupportedOSType:     compute.OperatingSystemTypesWindows,
/// 			},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_compute_galleryscript" "galleryScript" {
///   gallery_name        = "myGalleryName"
///   gallery_script_name = "myGalleryScriptName"
///   location            = "West US"
///   properties = {
///     description           = "This is the gallery script description."
///     eula                  = "This is the gallery script EULA."
///     privacy_statement_uri = "{myPrivacyStatementUri}"
///     release_note_uri      = "{myReleaseNoteUri}"
///     supported_os_type     = "Windows"
///   }
///   resource_group_name = "myResourceGroup"
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
/// import com.pulumi.azurenative.compute.GalleryScript;
/// import com.pulumi.azurenative.compute.GalleryScriptArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryScriptPropertiesArgs;
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
///         var galleryScript = new GalleryScript("galleryScript", GalleryScriptArgs.builder()
///             .galleryName("myGalleryName")
///             .galleryScriptName("myGalleryScriptName")
///             .location("West US")
///             .properties(GalleryScriptPropertiesArgs.builder()
///                 .description("This is the gallery script description.")
///                 .eula("This is the gallery script EULA.")
///                 .privacyStatementUri("{myPrivacyStatementUri}")
///                 .releaseNoteUri("{myReleaseNoteUri}")
///                 .supportedOSType("Windows")
///                 .build())
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
/// const galleryScript = new azure_native.compute.GalleryScript("galleryScript", {
///     galleryName: "myGalleryName",
///     galleryScriptName: "myGalleryScriptName",
///     location: "West US",
///     properties: {
///         description: "This is the gallery script description.",
///         eula: "This is the gallery script EULA.",
///         privacyStatementUri: "{myPrivacyStatementUri}",
///         releaseNoteUri: "{myReleaseNoteUri}",
///         supportedOSType: azure_native.compute.OperatingSystemTypes.Windows,
///     },
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gallery_script = azure_native.compute.GalleryScript("galleryScript",
///     gallery_name="myGalleryName",
///     gallery_script_name="myGalleryScriptName",
///     location="West US",
///     properties={
///         "description": "This is the gallery script description.",
///         "eula": "This is the gallery script EULA.",
///         "privacy_statement_uri": "{myPrivacyStatementUri}",
///         "release_note_uri": "{myReleaseNoteUri}",
///         "supported_os_type": azure_native.compute.OperatingSystemTypes.WINDOWS,
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   galleryScript:
///     type: azure-native:compute:GalleryScript
///     properties:
///       galleryName: myGalleryName
///       galleryScriptName: myGalleryScriptName
///       location: West US
///       properties:
///         description: This is the gallery script description.
///         eula: This is the gallery script EULA.
///         privacyStatementUri: '{myPrivacyStatementUri}'
///         releaseNoteUri: '{myReleaseNoteUri}'
///         supportedOSType: Windows
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
/// $ pulumi import azure-native:compute:GalleryScript myGalleryScriptName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/galleries/{galleryName}/scripts/{galleryScriptName}
/// ```
class GalleryScript extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Describes the properties of a gallery Script Definition.
  late final pulumi.Output<GalleryScriptPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [GalleryScript].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GalleryScript]. {@macro pulumi_compute_gallery_script_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GalleryScript(
    String name, {
    GalleryScriptArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:compute:GalleryScript',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<GalleryScriptPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GalleryScriptPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
