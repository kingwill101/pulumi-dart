import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_application_version_args.dart';
import 'gallery_application_version_publishing_profile_response.dart';
import 'gallery_application_version_safety_profile_response.dart';
import 'replication_status_response.dart';
import 'system_data_response.dart';

/// Specifies information about the gallery Application Version that you want to create or update.
///
/// Uses Azure REST API version 2024-03-03. In version 2.x of the Azure Native provider, it used API version 2022-03-03.
///
/// Other available API versions: 2022-03-03, 2022-08-03, 2023-07-03, 2025-03-03. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a simple gallery Application Version.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var galleryApplicationVersion = new AzureNative.Compute.GalleryApplicationVersion("galleryApplicationVersion", new()
///     {
///         GalleryApplicationName = "myGalleryApplicationName",
///         GalleryApplicationVersionName = "1.0.0",
///         GalleryName = "myGalleryName",
///         Location = "West US",
///         PublishingProfile = new AzureNative.Compute.Inputs.GalleryApplicationVersionPublishingProfileArgs
///         {
///             CustomActions = new[]
///             {
///                 new AzureNative.Compute.Inputs.GalleryApplicationCustomActionArgs
///                 {
///                     Description = "This is the custom action description.",
///                     Name = "myCustomAction",
///                     Parameters = new[]
///                     {
///                         new AzureNative.Compute.Inputs.GalleryApplicationCustomActionParameterArgs
///                         {
///                             DefaultValue = "default value of parameter.",
///                             Description = "This is the description of the parameter",
///                             Name = "myCustomActionParameter",
///                             Required = false,
///                             Type = AzureNative.Compute.GalleryApplicationCustomActionParameterType.String,
///                         },
///                     },
///                     Script = "myCustomActionScript",
///                 },
///             },
///             EndOfLifeDate = "2019-07-01T07:00:00Z",
///             ManageActions = new AzureNative.Compute.Inputs.UserArtifactManageArgs
///             {
///                 Install = "powershell -command \"Expand-Archive -Path package.zip -DestinationPath C:\\package\"",
///                 Remove = "del C:\\package ",
///             },
///             ReplicaCount = 1,
///             Source = new AzureNative.Compute.Inputs.UserArtifactSourceArgs
///             {
///                 MediaLink = "https://mystorageaccount.blob.core.windows.net/mycontainer/package.zip?{sasKey}",
///             },
///             StorageAccountType = AzureNative.Compute.StorageAccountType.Standard_LRS,
///             TargetRegions = new[]
///             {
///                 new AzureNative.Compute.Inputs.TargetRegionArgs
///                 {
///                     ExcludeFromLatest = false,
///                     Name = "West US",
///                     RegionalReplicaCount = 1,
///                     StorageAccountType = AzureNative.Compute.StorageAccountType.Standard_LRS,
///                 },
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         SafetyProfile = new AzureNative.Compute.Inputs.GalleryApplicationVersionSafetyProfileArgs
///         {
///             AllowDeletionOfReplicatedLocations = false,
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
/// 		_, err := compute.NewGalleryApplicationVersion(ctx, "galleryApplicationVersion", &compute.GalleryApplicationVersionArgs{
/// 			GalleryApplicationName:        pulumi.String("myGalleryApplicationName"),
/// 			GalleryApplicationVersionName: pulumi.String("1.0.0"),
/// 			GalleryName:                   pulumi.String("myGalleryName"),
/// 			Location:                      pulumi.String("West US"),
/// 			PublishingProfile: &compute.GalleryApplicationVersionPublishingProfileArgs{
/// 				CustomActions: compute.GalleryApplicationCustomActionArray{
/// 					&compute.GalleryApplicationCustomActionArgs{
/// 						Description: pulumi.String("This is the custom action description."),
/// 						Name:        pulumi.String("myCustomAction"),
/// 						Parameters: compute.GalleryApplicationCustomActionParameterArray{
/// 							&compute.GalleryApplicationCustomActionParameterArgs{
/// 								DefaultValue: pulumi.String("default value of parameter."),
/// 								Description:  pulumi.String("This is the description of the parameter"),
/// 								Name:         pulumi.String("myCustomActionParameter"),
/// 								Required:     pulumi.Bool(false),
/// 								Type:         compute.GalleryApplicationCustomActionParameterTypeString,
/// 							},
/// 						},
/// 						Script: pulumi.String("myCustomActionScript"),
/// 					},
/// 				},
/// 				EndOfLifeDate: pulumi.String("2019-07-01T07:00:00Z"),
/// 				ManageActions: &compute.UserArtifactManageArgs{
/// 					Install: pulumi.String("powershell -command \"Expand-Archive -Path package.zip -DestinationPath C:\\package\""),
/// 					Remove:  pulumi.String("del C:\\package "),
/// 				},
/// 				ReplicaCount: pulumi.Int(1),
/// 				Source: &compute.UserArtifactSourceArgs{
/// 					MediaLink: pulumi.String("https://mystorageaccount.blob.core.windows.net/mycontainer/package.zip?{sasKey}"),
/// 				},
/// 				StorageAccountType: pulumi.String(compute.StorageAccountType_Standard_LRS),
/// 				TargetRegions: compute.TargetRegionArray{
/// 					&compute.TargetRegionArgs{
/// 						ExcludeFromLatest:    pulumi.Bool(false),
/// 						Name:                 pulumi.String("West US"),
/// 						RegionalReplicaCount: pulumi.Int(1),
/// 						StorageAccountType:   pulumi.String(compute.StorageAccountType_Standard_LRS),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SafetyProfile: &compute.GalleryApplicationVersionSafetyProfileArgs{
/// 				AllowDeletionOfReplicatedLocations: pulumi.Bool(false),
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
/// import com.pulumi.azurenative.compute.GalleryApplicationVersion;
/// import com.pulumi.azurenative.compute.GalleryApplicationVersionArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryApplicationVersionPublishingProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.UserArtifactManageArgs;
/// import com.pulumi.azurenative.compute.inputs.UserArtifactSourceArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryApplicationVersionSafetyProfileArgs;
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
///         var galleryApplicationVersion = new GalleryApplicationVersion("galleryApplicationVersion", GalleryApplicationVersionArgs.builder()
///             .galleryApplicationName("myGalleryApplicationName")
///             .galleryApplicationVersionName("1.0.0")
///             .galleryName("myGalleryName")
///             .location("West US")
///             .publishingProfile(GalleryApplicationVersionPublishingProfileArgs.builder()
///                 .customActions(GalleryApplicationCustomActionArgs.builder()
///                     .description("This is the custom action description.")
///                     .name("myCustomAction")
///                     .parameters(GalleryApplicationCustomActionParameterArgs.builder()
///                         .defaultValue("default value of parameter.")
///                         .description("This is the description of the parameter")
///                         .name("myCustomActionParameter")
///                         .required(false)
///                         .type("String")
///                         .build())
///                     .script("myCustomActionScript")
///                     .build())
///                 .endOfLifeDate("2019-07-01T07:00:00Z")
///                 .manageActions(UserArtifactManageArgs.builder()
///                     .install("powershell -command \"Expand-Archive -Path package.zip -DestinationPath C:\\package\"")
///                     .remove("del C:\\package ")
///                     .build())
///                 .replicaCount(1)
///                 .source(UserArtifactSourceArgs.builder()
///                     .mediaLink("https://mystorageaccount.blob.core.windows.net/mycontainer/package.zip?{sasKey}")
///                     .build())
///                 .storageAccountType("Standard_LRS")
///                 .targetRegions(TargetRegionArgs.builder()
///                     .excludeFromLatest(false)
///                     .name("West US")
///                     .regionalReplicaCount(1)
///                     .storageAccountType("Standard_LRS")
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .safetyProfile(GalleryApplicationVersionSafetyProfileArgs.builder()
///                 .allowDeletionOfReplicatedLocations(false)
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
/// const galleryApplicationVersion = new azure_native.compute.GalleryApplicationVersion("galleryApplicationVersion", {
///     galleryApplicationName: "myGalleryApplicationName",
///     galleryApplicationVersionName: "1.0.0",
///     galleryName: "myGalleryName",
///     location: "West US",
///     publishingProfile: {
///         customActions: [{
///             description: "This is the custom action description.",
///             name: "myCustomAction",
///             parameters: [{
///                 defaultValue: "default value of parameter.",
///                 description: "This is the description of the parameter",
///                 name: "myCustomActionParameter",
///                 required: false,
///                 type: azure_native.compute.GalleryApplicationCustomActionParameterType.String,
///             }],
///             script: "myCustomActionScript",
///         }],
///         endOfLifeDate: "2019-07-01T07:00:00Z",
///         manageActions: {
///             install: "powershell -command \"Expand-Archive -Path package.zip -DestinationPath C:\\package\"",
///             remove: "del C:\\package ",
///         },
///         replicaCount: 1,
///         source: {
///             mediaLink: "https://mystorageaccount.blob.core.windows.net/mycontainer/package.zip?{sasKey}",
///         },
///         storageAccountType: azure_native.compute.StorageAccountType.Standard_LRS,
///         targetRegions: [{
///             excludeFromLatest: false,
///             name: "West US",
///             regionalReplicaCount: 1,
///             storageAccountType: azure_native.compute.StorageAccountType.Standard_LRS,
///         }],
///     },
///     resourceGroupName: "myResourceGroup",
///     safetyProfile: {
///         allowDeletionOfReplicatedLocations: false,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gallery_application_version = azure_native.compute.GalleryApplicationVersion("galleryApplicationVersion",
///     gallery_application_name="myGalleryApplicationName",
///     gallery_application_version_name="1.0.0",
///     gallery_name="myGalleryName",
///     location="West US",
///     publishing_profile={
///         "custom_actions": [{
///             "description": "This is the custom action description.",
///             "name": "myCustomAction",
///             "parameters": [{
///                 "default_value": "default value of parameter.",
///                 "description": "This is the description of the parameter",
///                 "name": "myCustomActionParameter",
///                 "required": False,
///                 "type": azure_native.compute.GalleryApplicationCustomActionParameterType.STRING,
///             }],
///             "script": "myCustomActionScript",
///         }],
///         "end_of_life_date": "2019-07-01T07:00:00Z",
///         "manage_actions": {
///             "install": "powershell -command \"Expand-Archive -Path package.zip -DestinationPath C:\\package\"",
///             "remove": "del C:\\package ",
///         },
///         "replica_count": 1,
///         "source": {
///             "media_link": "https://mystorageaccount.blob.core.windows.net/mycontainer/package.zip?{sasKey}",
///         },
///         "storage_account_type": azure_native.compute.StorageAccountType.STANDARD_LRS,
///         "target_regions": [{
///             "exclude_from_latest": False,
///             "name": "West US",
///             "regional_replica_count": 1,
///             "storage_account_type": azure_native.compute.StorageAccountType.STANDARD_LRS,
///         }],
///     },
///     resource_group_name="myResourceGroup",
///     safety_profile={
///         "allow_deletion_of_replicated_locations": False,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   galleryApplicationVersion:
///     type: azure-native:compute:GalleryApplicationVersion
///     properties:
///       galleryApplicationName: myGalleryApplicationName
///       galleryApplicationVersionName: 1.0.0
///       galleryName: myGalleryName
///       location: West US
///       publishingProfile:
///         customActions:
///           - description: This is the custom action description.
///             name: myCustomAction
///             parameters:
///               - defaultValue: default value of parameter.
///                 description: This is the description of the parameter
///                 name: myCustomActionParameter
///                 required: false
///                 type: String
///             script: myCustomActionScript
///         endOfLifeDate: 2019-07-01T07:00:00Z
///         manageActions:
///           install: powershell -command "Expand-Archive -Path package.zip -DestinationPath C:\package"
///           remove: 'del C:\package '
///         replicaCount: 1
///         source:
///           mediaLink: https://mystorageaccount.blob.core.windows.net/mycontainer/package.zip?{sasKey}
///         storageAccountType: Standard_LRS
///         targetRegions:
///           - excludeFromLatest: false
///             name: West US
///             regionalReplicaCount: 1
///             storageAccountType: Standard_LRS
///       resourceGroupName: myResourceGroup
///       safetyProfile:
///         allowDeletionOfReplicatedLocations: false
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
/// $ pulumi import azure-native:compute:GalleryApplicationVersion 1.0.0 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/galleries/{galleryName}/applications/{galleryApplicationName}/versions/{galleryApplicationVersionName}
/// ```
class GalleryApplicationVersion extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state, which only appears in the response.
  late final pulumi.Output<String> provisioningState;
  /// The publishing profile of a gallery image version.
  late final pulumi.Output<GalleryApplicationVersionPublishingProfileResponse> publishingProfile;
  /// This is the replication status of the gallery image version.
  late final pulumi.Output<ReplicationStatusResponse> replicationStatus;
  /// The safety profile of the Gallery Application Version.
  late final pulumi.Output<GalleryApplicationVersionSafetyProfileResponse?> safetyProfile;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [GalleryApplicationVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GalleryApplicationVersion]. {@macro pulumi_compute_gallery_application_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GalleryApplicationVersion(
    String name, {
    GalleryApplicationVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:compute:GalleryApplicationVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    publishingProfile = registerOutput<GalleryApplicationVersionPublishingProfileResponse>('publishingProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GalleryApplicationVersionPublishingProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    replicationStatus = registerOutput<ReplicationStatusResponse>('replicationStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReplicationStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    safetyProfile = registerOutput<GalleryApplicationVersionSafetyProfileResponse?>('safetyProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GalleryApplicationVersionSafetyProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
