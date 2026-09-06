import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_in_vmaccess_control_profile_args.dart';
import 'gallery_in_vmaccess_control_profile_properties_response.dart';
import 'system_data_response.dart';

/// Specifies information about the gallery inVMAccessControlProfile that you want to create or update.
///
/// Uses Azure REST API version 2024-03-03. In version 2.x of the Azure Native provider, it used API version 2024-03-03.
///
/// Other available API versions: 2025-03-03, 2025-12-03. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a gallery inVMAccessControlProfile.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var galleryInVMAccessControlProfile = new AzureNative.Compute.GalleryInVMAccessControlProfile("galleryInVMAccessControlProfile", new()
///     {
///         GalleryName = "myGalleryName",
///         InVMAccessControlProfileName = "myInVMAccessControlProfileName",
///         Location = "West US",
///         Properties = new AzureNative.Compute.Inputs.GalleryInVMAccessControlProfilePropertiesArgs
///         {
///             ApplicableHostEndpoint = AzureNative.Compute.EndpointTypes.WireServer,
///             OsType = AzureNative.Compute.OperatingSystemTypes.Linux,
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
/// 		_, err := compute.NewGalleryInVMAccessControlProfile(ctx, "galleryInVMAccessControlProfile", &compute.GalleryInVMAccessControlProfileArgs{
/// 			GalleryName:                  pulumi.String("myGalleryName"),
/// 			InVMAccessControlProfileName: pulumi.String("myInVMAccessControlProfileName"),
/// 			Location:                     pulumi.String("West US"),
/// 			Properties: &compute.GalleryInVMAccessControlProfilePropertiesArgs{
/// 				ApplicableHostEndpoint: compute.EndpointTypesWireServer,
/// 				OsType:                 compute.OperatingSystemTypesLinux,
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
/// resource "azure-native_compute_galleryinvmaccesscontrolprofile" "galleryInVMAccessControlProfile" {
///   gallery_name                      = "myGalleryName"
///   in_vm_access_control_profile_name = "myInVMAccessControlProfileName"
///   location                          = "West US"
///   properties = {
///     applicable_host_endpoint = "WireServer"
///     os_type                  = "Linux"
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
/// import com.pulumi.azurenative.compute.GalleryInVMAccessControlProfile;
/// import com.pulumi.azurenative.compute.GalleryInVMAccessControlProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryInVMAccessControlProfilePropertiesArgs;
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
///         var galleryInVMAccessControlProfile = new GalleryInVMAccessControlProfile("galleryInVMAccessControlProfile", GalleryInVMAccessControlProfileArgs.builder()
///             .galleryName("myGalleryName")
///             .inVMAccessControlProfileName("myInVMAccessControlProfileName")
///             .location("West US")
///             .properties(GalleryInVMAccessControlProfilePropertiesArgs.builder()
///                 .applicableHostEndpoint("WireServer")
///                 .osType("Linux")
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
/// const galleryInVMAccessControlProfile = new azure_native.compute.GalleryInVMAccessControlProfile("galleryInVMAccessControlProfile", {
///     galleryName: "myGalleryName",
///     inVMAccessControlProfileName: "myInVMAccessControlProfileName",
///     location: "West US",
///     properties: {
///         applicableHostEndpoint: azure_native.compute.EndpointTypes.WireServer,
///         osType: azure_native.compute.OperatingSystemTypes.Linux,
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
/// gallery_in_vm_access_control_profile = azure_native.compute.GalleryInVMAccessControlProfile("galleryInVMAccessControlProfile",
///     gallery_name="myGalleryName",
///     in_vm_access_control_profile_name="myInVMAccessControlProfileName",
///     location="West US",
///     properties={
///         "applicable_host_endpoint": azure_native.compute.EndpointTypes.WIRE_SERVER,
///         "os_type": azure_native.compute.OperatingSystemTypes.LINUX,
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   galleryInVMAccessControlProfile:
///     type: azure-native:compute:GalleryInVMAccessControlProfile
///     properties:
///       galleryName: myGalleryName
///       inVMAccessControlProfileName: myInVMAccessControlProfileName
///       location: West US
///       properties:
///         applicableHostEndpoint: WireServer
///         osType: Linux
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
/// $ pulumi import azure-native:compute:GalleryInVMAccessControlProfile myInVMAccessControlProfileName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/galleries/{galleryName}/inVMAccessControlProfiles/{inVMAccessControlProfileName}
/// ```
class GalleryInVMAccessControlProfile extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Describes the properties of a gallery inVMAccessControlProfile.
  late final pulumi.Output<GalleryInVMAccessControlProfilePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [GalleryInVMAccessControlProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GalleryInVMAccessControlProfile]. {@macro pulumi_compute_gallery_in_vmaccess_control_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GalleryInVMAccessControlProfile(
    String name, {
    GalleryInVMAccessControlProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:compute:GalleryInVMAccessControlProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<GalleryInVMAccessControlProfilePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GalleryInVMAccessControlProfilePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [GalleryInVMAccessControlProfile] resource.
  GalleryInVMAccessControlProfile.reference(String urn)
    : super(
        'azure-native:compute:GalleryInVMAccessControlProfile',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<GalleryInVMAccessControlProfilePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GalleryInVMAccessControlProfilePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
