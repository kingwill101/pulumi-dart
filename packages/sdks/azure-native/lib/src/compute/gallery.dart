import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_args.dart';
import 'gallery_identifier_response.dart';
import 'gallery_identity_response.dart';
import 'sharing_profile_response.dart';
import 'sharing_status_response.dart';
import 'soft_delete_policy_response.dart';
import 'system_data_response.dart';

/// Specifies information about the Shared Image Gallery that you want to create or update.
///
/// Uses Azure REST API version 2024-03-03. In version 2.x of the Azure Native provider, it used API version 2022-03-03.
///
/// Other available API versions: 2022-03-03, 2022-08-03, 2023-07-03, 2025-03-03. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a community gallery.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var gallery = new AzureNative.Compute.Gallery("gallery", new()
///     {
///         Description = "This is the gallery description.",
///         GalleryName = "myGalleryName",
///         Location = "West US",
///         ResourceGroupName = "myResourceGroup",
///         SharingProfile = new AzureNative.Compute.Inputs.SharingProfileArgs
///         {
///             CommunityGalleryInfo = new AzureNative.Compute.Inputs.CommunityGalleryInfoArgs
///             {
///                 Eula = "eula",
///                 PublicNamePrefix = "PirPublic",
///                 PublisherContact = "pir@microsoft.com",
///                 PublisherUri = "uri",
///             },
///             Permissions = AzureNative.Compute.GallerySharingPermissionTypes.Community,
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
/// 		_, err := compute.NewGallery(ctx, "gallery", &compute.GalleryArgs{
/// 			Description:       pulumi.String("This is the gallery description."),
/// 			GalleryName:       pulumi.String("myGalleryName"),
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SharingProfile: &compute.SharingProfileArgs{
/// 				CommunityGalleryInfo: &compute.CommunityGalleryInfoArgs{
/// 					Eula:             pulumi.String("eula"),
/// 					PublicNamePrefix: pulumi.String("PirPublic"),
/// 					PublisherContact: pulumi.String("pir@microsoft.com"),
/// 					PublisherUri:     pulumi.String("uri"),
/// 				},
/// 				Permissions: pulumi.String(compute.GallerySharingPermissionTypesCommunity),
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
/// import com.pulumi.azurenative.compute.Gallery;
/// import com.pulumi.azurenative.compute.GalleryArgs;
/// import com.pulumi.azurenative.compute.inputs.SharingProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.CommunityGalleryInfoArgs;
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
///             .description("This is the gallery description.")
///             .galleryName("myGalleryName")
///             .location("West US")
///             .resourceGroupName("myResourceGroup")
///             .sharingProfile(SharingProfileArgs.builder()
///                 .communityGalleryInfo(CommunityGalleryInfoArgs.builder()
///                     .eula("eula")
///                     .publicNamePrefix("PirPublic")
///                     .publisherContact("pir@microsoft.com")
///                     .publisherUri("uri")
///                     .build())
///                 .permissions("Community")
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
/// const gallery = new azure_native.compute.Gallery("gallery", {
///     description: "This is the gallery description.",
///     galleryName: "myGalleryName",
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
///     sharingProfile: {
///         communityGalleryInfo: {
///             eula: "eula",
///             publicNamePrefix: "PirPublic",
///             publisherContact: "pir@microsoft.com",
///             publisherUri: "uri",
///         },
///         permissions: azure_native.compute.GallerySharingPermissionTypes.Community,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gallery = azure_native.compute.Gallery("gallery",
///     description="This is the gallery description.",
///     gallery_name="myGalleryName",
///     location="West US",
///     resource_group_name="myResourceGroup",
///     sharing_profile={
///         "community_gallery_info": {
///             "eula": "eula",
///             "public_name_prefix": "PirPublic",
///             "publisher_contact": "pir@microsoft.com",
///             "publisher_uri": "uri",
///         },
///         "permissions": azure_native.compute.GallerySharingPermissionTypes.COMMUNITY,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   gallery:
///     type: azure-native:compute:Gallery
///     properties:
///       description: This is the gallery description.
///       galleryName: myGalleryName
///       location: West US
///       resourceGroupName: myResourceGroup
///       sharingProfile:
///         communityGalleryInfo:
///           eula: eula
///           publicNamePrefix: PirPublic
///           publisherContact: pir@microsoft.com
///           publisherUri: uri
///         permissions: Community
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a simple gallery with sharing profile.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var gallery = new AzureNative.Compute.Gallery("gallery", new()
///     {
///         Description = "This is the gallery description.",
///         GalleryName = "myGalleryName",
///         Location = "West US",
///         ResourceGroupName = "myResourceGroup",
///         SharingProfile = new AzureNative.Compute.Inputs.SharingProfileArgs
///         {
///             Permissions = AzureNative.Compute.GallerySharingPermissionTypes.Groups,
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
/// 		_, err := compute.NewGallery(ctx, "gallery", &compute.GalleryArgs{
/// 			Description:       pulumi.String("This is the gallery description."),
/// 			GalleryName:       pulumi.String("myGalleryName"),
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SharingProfile: &compute.SharingProfileArgs{
/// 				Permissions: pulumi.String(compute.GallerySharingPermissionTypesGroups),
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
/// import com.pulumi.azurenative.compute.Gallery;
/// import com.pulumi.azurenative.compute.GalleryArgs;
/// import com.pulumi.azurenative.compute.inputs.SharingProfileArgs;
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
///             .description("This is the gallery description.")
///             .galleryName("myGalleryName")
///             .location("West US")
///             .resourceGroupName("myResourceGroup")
///             .sharingProfile(SharingProfileArgs.builder()
///                 .permissions("Groups")
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
/// const gallery = new azure_native.compute.Gallery("gallery", {
///     description: "This is the gallery description.",
///     galleryName: "myGalleryName",
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
///     sharingProfile: {
///         permissions: azure_native.compute.GallerySharingPermissionTypes.Groups,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gallery = azure_native.compute.Gallery("gallery",
///     description="This is the gallery description.",
///     gallery_name="myGalleryName",
///     location="West US",
///     resource_group_name="myResourceGroup",
///     sharing_profile={
///         "permissions": azure_native.compute.GallerySharingPermissionTypes.GROUPS,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   gallery:
///     type: azure-native:compute:Gallery
///     properties:
///       description: This is the gallery description.
///       galleryName: myGalleryName
///       location: West US
///       resourceGroupName: myResourceGroup
///       sharingProfile:
///         permissions: Groups
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a simple gallery with soft deletion enabled.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var gallery = new AzureNative.Compute.Gallery("gallery", new()
///     {
///         Description = "This is the gallery description.",
///         GalleryName = "myGalleryName",
///         Location = "West US",
///         ResourceGroupName = "myResourceGroup",
///         SoftDeletePolicy = new AzureNative.Compute.Inputs.SoftDeletePolicyArgs
///         {
///             IsSoftDeleteEnabled = true,
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
/// 		_, err := compute.NewGallery(ctx, "gallery", &compute.GalleryArgs{
/// 			Description:       pulumi.String("This is the gallery description."),
/// 			GalleryName:       pulumi.String("myGalleryName"),
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SoftDeletePolicy: &compute.SoftDeletePolicyArgs{
/// 				IsSoftDeleteEnabled: pulumi.Bool(true),
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
/// import com.pulumi.azurenative.compute.Gallery;
/// import com.pulumi.azurenative.compute.GalleryArgs;
/// import com.pulumi.azurenative.compute.inputs.SoftDeletePolicyArgs;
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
///             .description("This is the gallery description.")
///             .galleryName("myGalleryName")
///             .location("West US")
///             .resourceGroupName("myResourceGroup")
///             .softDeletePolicy(SoftDeletePolicyArgs.builder()
///                 .isSoftDeleteEnabled(true)
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
/// const gallery = new azure_native.compute.Gallery("gallery", {
///     description: "This is the gallery description.",
///     galleryName: "myGalleryName",
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
///     softDeletePolicy: {
///         isSoftDeleteEnabled: true,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gallery = azure_native.compute.Gallery("gallery",
///     description="This is the gallery description.",
///     gallery_name="myGalleryName",
///     location="West US",
///     resource_group_name="myResourceGroup",
///     soft_delete_policy={
///         "is_soft_delete_enabled": True,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   gallery:
///     type: azure-native:compute:Gallery
///     properties:
///       description: This is the gallery description.
///       galleryName: myGalleryName
///       location: West US
///       resourceGroupName: myResourceGroup
///       softDeletePolicy:
///         isSoftDeleteEnabled: true
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a simple gallery.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var gallery = new AzureNative.Compute.Gallery("gallery", new()
///     {
///         Description = "This is the gallery description.",
///         GalleryName = "myGalleryName",
///         Location = "West US",
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
/// 		_, err := compute.NewGallery(ctx, "gallery", &compute.GalleryArgs{
/// 			Description:       pulumi.String("This is the gallery description."),
/// 			GalleryName:       pulumi.String("myGalleryName"),
/// 			Location:          pulumi.String("West US"),
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
/// import com.pulumi.azurenative.compute.Gallery;
/// import com.pulumi.azurenative.compute.GalleryArgs;
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
///             .description("This is the gallery description.")
///             .galleryName("myGalleryName")
///             .location("West US")
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
/// const gallery = new azure_native.compute.Gallery("gallery", {
///     description: "This is the gallery description.",
///     galleryName: "myGalleryName",
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gallery = azure_native.compute.Gallery("gallery",
///     description="This is the gallery description.",
///     gallery_name="myGalleryName",
///     location="West US",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   gallery:
///     type: azure-native:compute:Gallery
///     properties:
///       description: This is the gallery description.
///       galleryName: myGalleryName
///       location: West US
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
/// $ pulumi import azure-native:compute:Gallery myGalleryName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/galleries/{galleryName}
/// ```
class Gallery extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The description of this Shared Image Gallery resource. This property is updatable.
  late final pulumi.Output<String?> description;

  /// Describes the gallery unique name.
  late final pulumi.Output<GalleryIdentifierResponse?> identifier;

  /// The identity of the gallery, if configured.
  late final pulumi.Output<GalleryIdentityResponse?> identity;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The provisioning state, which only appears in the response.
  late final pulumi.Output<String> provisioningState;

  /// Profile for gallery sharing to subscription or tenant
  late final pulumi.Output<SharingProfileResponse?> sharingProfile;

  /// Sharing status of current gallery.
  late final pulumi.Output<SharingStatusResponse> sharingStatus;

  /// Contains information about the soft deletion policy of the gallery.
  late final pulumi.Output<SoftDeletePolicyResponse?> softDeletePolicy;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Gallery].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Gallery]. {@macro pulumi_compute_gallery_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Gallery(
    String name, {
    GalleryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:compute:Gallery',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    identifier = registerOutput<GalleryIdentifierResponse?>(
      'identifier',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GalleryIdentifierResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    identity = registerOutput<GalleryIdentityResponse?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GalleryIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    sharingProfile = registerOutput<SharingProfileResponse?>(
      'sharingProfile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SharingProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    sharingStatus = registerOutput<SharingStatusResponse>(
      'sharingStatus',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SharingStatusResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    softDeletePolicy = registerOutput<SoftDeletePolicyResponse?>(
      'softDeletePolicy',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SoftDeletePolicyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
