import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_args.dart';

/// Manages a Dev Center Gallery.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const testUserAssignedIdentity = new azure.authorization.UserAssignedIdentity("test", {
///     name: "example-uai",
///     location: testAzurermResourceGroup.location,
///     resourceGroupName: testAzurermResourceGroup.name,
/// });
/// const test = new azure.devcenter.DevCenter("test", {
///     name: "example-devcenter",
///     resourceGroupName: testAzurermResourceGroup.name,
///     location: testAzurermResourceGroup.location,
///     identity: {
///         type: "UserAssigned",
///         identityIds: [testUserAssignedIdentity.id],
///     },
/// });
/// const exampleSharedImageGallery = new azure.compute.SharedImageGallery("example", {
///     name: "example-image-gallery",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleGallery = new azure.devcenter.Gallery("example", {
///     devCenterId: exampleAzurermDevCenter.id,
///     sharedGalleryId: exampleSharedImageGallery.id,
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// test_user_assigned_identity = azure.authorization.UserAssignedIdentity("test",
///     name="example-uai",
///     location=test_azurerm_resource_group["location"],
///     resource_group_name=test_azurerm_resource_group["name"])
/// test = azure.devcenter.DevCenter("test",
///     name="example-devcenter",
///     resource_group_name=test_azurerm_resource_group["name"],
///     location=test_azurerm_resource_group["location"],
///     identity={
///         "type": "UserAssigned",
///         "identity_ids": [test_user_assigned_identity.id],
///     })
/// example_shared_image_gallery = azure.compute.SharedImageGallery("example",
///     name="example-image-gallery",
///     location=example.location,
///     resource_group_name=example.name)
/// example_gallery = azure.devcenter.Gallery("example",
///     dev_center_id=example_azurerm_dev_center["id"],
///     shared_gallery_id=example_shared_image_gallery.id,
///     name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var testUserAssignedIdentity = new Azure.Authorization.UserAssignedIdentity("test", new()
///     {
///         Name = "example-uai",
///         Location = testAzurermResourceGroup.Location,
///         ResourceGroupName = testAzurermResourceGroup.Name,
///     });
///
///     var test = new Azure.DevCenter.DevCenter("test", new()
///     {
///         Name = "example-devcenter",
///         ResourceGroupName = testAzurermResourceGroup.Name,
///         Location = testAzurermResourceGroup.Location,
///         Identity = new Azure.DevCenter.Inputs.DevCenterIdentityArgs
///         {
///             Type = "UserAssigned",
///             IdentityIds = new[]
///             {
///                 testUserAssignedIdentity.Id,
///             },
///         },
///     });
///
///     var exampleSharedImageGallery = new Azure.Compute.SharedImageGallery("example", new()
///     {
///         Name = "example-image-gallery",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleGallery = new Azure.DevCenter.Gallery("example", new()
///     {
///         DevCenterId = exampleAzurermDevCenter.Id,
///         SharedGalleryId = exampleSharedImageGallery.Id,
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/devcenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testUserAssignedIdentity, err := authorization.NewUserAssignedIdentity(ctx, "test", &authorization.UserAssignedIdentityArgs{
/// 			Name:              pulumi.String("example-uai"),
/// 			Location:          pulumi.Any(testAzurermResourceGroup.Location),
/// 			ResourceGroupName: pulumi.Any(testAzurermResourceGroup.Name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = devcenter.NewDevCenter(ctx, "test", &devcenter.DevCenterArgs{
/// 			Name:              pulumi.String("example-devcenter"),
/// 			ResourceGroupName: pulumi.Any(testAzurermResourceGroup.Name),
/// 			Location:          pulumi.Any(testAzurermResourceGroup.Location),
/// 			Identity: &devcenter.DevCenterIdentityArgs{
/// 				Type: pulumi.String("UserAssigned"),
/// 				IdentityIds: pulumi.StringArray{
/// 					testUserAssignedIdentity.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSharedImageGallery, err := compute.NewSharedImageGallery(ctx, "example", &compute.SharedImageGalleryArgs{
/// 			Name:              pulumi.String("example-image-gallery"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = devcenter.NewGallery(ctx, "example", &devcenter.GalleryArgs{
/// 			DevCenterId:     pulumi.Any(exampleAzurermDevCenter.Id),
/// 			SharedGalleryId: exampleSharedImageGallery.ID(),
/// 			Name:            pulumi.String("example"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.authorization.UserAssignedIdentity;
/// import com.pulumi.azure.authorization.UserAssignedIdentityArgs;
/// import com.pulumi.azure.devcenter.DevCenter;
/// import com.pulumi.azure.devcenter.DevCenterArgs;
/// import com.pulumi.azure.devcenter.inputs.DevCenterIdentityArgs;
/// import com.pulumi.azure.compute.SharedImageGallery;
/// import com.pulumi.azure.compute.SharedImageGalleryArgs;
/// import com.pulumi.azure.devcenter.Gallery;
/// import com.pulumi.azure.devcenter.GalleryArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var testUserAssignedIdentity = new UserAssignedIdentity("testUserAssignedIdentity", UserAssignedIdentityArgs.builder()
///             .name("example-uai")
///             .location(testAzurermResourceGroup.location())
///             .resourceGroupName(testAzurermResourceGroup.name())
///             .build());
///
///         var test = new DevCenter("test", DevCenterArgs.builder()
///             .name("example-devcenter")
///             .resourceGroupName(testAzurermResourceGroup.name())
///             .location(testAzurermResourceGroup.location())
///             .identity(DevCenterIdentityArgs.builder()
///                 .type("UserAssigned")
///                 .identityIds(testUserAssignedIdentity.id())
///                 .build())
///             .build());
///
///         var exampleSharedImageGallery = new SharedImageGallery("exampleSharedImageGallery", SharedImageGalleryArgs.builder()
///             .name("example-image-gallery")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleGallery = new Gallery("exampleGallery", GalleryArgs.builder()
///             .devCenterId(exampleAzurermDevCenter.id())
///             .sharedGalleryId(exampleSharedImageGallery.id())
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   test:
///     type: azure:devcenter:DevCenter
///     properties:
///       name: example-devcenter
///       resourceGroupName: ${testAzurermResourceGroup.name}
///       location: ${testAzurermResourceGroup.location}
///       identity:
///         type: UserAssigned
///         identityIds:
///           - ${testUserAssignedIdentity.id}
///   testUserAssignedIdentity:
///     type: azure:authorization:UserAssignedIdentity
///     name: test
///     properties:
///       name: example-uai
///       location: ${testAzurermResourceGroup.location}
///       resourceGroupName: ${testAzurermResourceGroup.name}
///   exampleSharedImageGallery:
///     type: azure:compute:SharedImageGallery
///     name: example
///     properties:
///       name: example-image-gallery
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleGallery:
///     type: azure:devcenter:Gallery
///     name: example
///     properties:
///       devCenterId: ${exampleAzurermDevCenter.id}
///       sharedGalleryId: ${exampleSharedImageGallery.id}
///       name: example
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DevCenter` - 2025-02-01
///
/// ## Import
///
/// An existing Dev Center Gallery can be imported into Pulumi using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:devcenter/gallery:Gallery example /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevCenter/devCenters/{devCenterName}/galleries/{galleryName}
/// ```
///
/// * Where `{subscriptionId}` is the ID of the Azure Subscription where the Dev Center Gallery exists. For example `12345678-1234-9876-4563-123456789012`.
/// * Where `{resourceGroupName}` is the name of Resource Group where this Dev Center Gallery exists. For example `example-resource-group`.
/// * Where `{devCenterName}` is the name of the Dev Center. For example `devCenterValue`.
/// * Where `{galleryName}` is the name of the Gallery. For example `galleryValue`.
class Gallery extends pulumi.CustomResource {
  /// Specifies the ID of the Dev Center within which this Dev Center Gallery should exist. Changing this forces a new Dev Center Gallery to be created.
  late final pulumi.Output<String> devCenterId;
  /// Specifies the name of this Dev Center Gallery. Changing this forces a new Dev Center Gallery to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Shared Gallery which should be connected to the Dev Center Gallery. Changing this forces a new Dev Center Gallery to be created.
  late final pulumi.Output<String> sharedGalleryId;

  /// Creates a new [Gallery].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Gallery]. {@macro pulumi_devcenter_gallery_gallery_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Gallery(
    String name, {
    GalleryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:devcenter/gallery:Gallery',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.devCenterId = registerOutput<String>('devCenterId');
    this.name = registerOutput<String>('name');
    this.sharedGalleryId = registerOutput<String>('sharedGalleryId');
  }
}
