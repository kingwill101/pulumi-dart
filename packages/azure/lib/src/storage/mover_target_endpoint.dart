import 'package:pulumi/pulumi.dart' as pulumi;
import 'mover_target_endpoint_args.dart';

/// Manages a Storage Mover Target Endpoint.
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
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplestr",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
///     allowNestedItemsToBePublic: true,
/// });
/// const exampleContainer = new azure.storage.Container("example", {
///     name: "example-sc",
///     storageAccountName: exampleAccount.name,
///     containerAccessType: "blob",
/// });
/// const exampleMover = new azure.storage.Mover("example", {
///     name: "example-ssm",
///     resourceGroupName: example.name,
///     location: "West Europe",
/// });
/// const exampleMoverTargetEndpoint = new azure.storage.MoverTargetEndpoint("example", {
///     name: "example-se",
///     storageMoverId: exampleMover.id,
///     storageAccountId: exampleAccount.id,
///     storageContainerName: exampleContainer.name,
///     description: "Example Storage Container Endpoint Description",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="examplestr",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS",
///     allow_nested_items_to_be_public=True)
/// example_container = azure.storage.Container("example",
///     name="example-sc",
///     storage_account_name=example_account.name,
///     container_access_type="blob")
/// example_mover = azure.storage.Mover("example",
///     name="example-ssm",
///     resource_group_name=example.name,
///     location="West Europe")
/// example_mover_target_endpoint = azure.storage.MoverTargetEndpoint("example",
///     name="example-se",
///     storage_mover_id=example_mover.id,
///     storage_account_id=example_account.id,
///     storage_container_name=example_container.name,
///     description="Example Storage Container Endpoint Description")
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
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplestr",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///         AllowNestedItemsToBePublic = true,
///     });
///
///     var exampleContainer = new Azure.Storage.Container("example", new()
///     {
///         Name = "example-sc",
///         StorageAccountName = exampleAccount.Name,
///         ContainerAccessType = "blob",
///     });
///
///     var exampleMover = new Azure.Storage.Mover("example", new()
///     {
///         Name = "example-ssm",
///         ResourceGroupName = example.Name,
///         Location = "West Europe",
///     });
///
///     var exampleMoverTargetEndpoint = new Azure.Storage.MoverTargetEndpoint("example", new()
///     {
///         Name = "example-se",
///         StorageMoverId = exampleMover.Id,
///         StorageAccountId = exampleAccount.Id,
///         StorageContainerName = exampleContainer.Name,
///         Description = "Example Storage Container Endpoint Description",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
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
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                       pulumi.String("examplestr"),
/// 			ResourceGroupName:          example.Name,
/// 			Location:                   example.Location,
/// 			AccountTier:                pulumi.String("Standard"),
/// 			AccountReplicationType:     pulumi.String("LRS"),
/// 			AllowNestedItemsToBePublic: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleContainer, err := storage.NewContainer(ctx, "example", &storage.ContainerArgs{
/// 			Name:                pulumi.String("example-sc"),
/// 			StorageAccountName:  exampleAccount.Name,
/// 			ContainerAccessType: pulumi.String("blob"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleMover, err := storage.NewMover(ctx, "example", &storage.MoverArgs{
/// 			Name:              pulumi.String("example-ssm"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewMoverTargetEndpoint(ctx, "example", &storage.MoverTargetEndpointArgs{
/// 			Name:                 pulumi.String("example-se"),
/// 			StorageMoverId:       exampleMover.ID(),
/// 			StorageAccountId:     exampleAccount.ID(),
/// 			StorageContainerName: exampleContainer.Name,
/// 			Description:          pulumi.String("Example Storage Container Endpoint Description"),
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.Container;
/// import com.pulumi.azure.storage.ContainerArgs;
/// import com.pulumi.azure.storage.Mover;
/// import com.pulumi.azure.storage.MoverArgs;
/// import com.pulumi.azure.storage.MoverTargetEndpoint;
/// import com.pulumi.azure.storage.MoverTargetEndpointArgs;
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
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplestr")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .allowNestedItemsToBePublic(true)
///             .build());
///
///         var exampleContainer = new Container("exampleContainer", ContainerArgs.builder()
///             .name("example-sc")
///             .storageAccountName(exampleAccount.name())
///             .containerAccessType("blob")
///             .build());
///
///         var exampleMover = new Mover("exampleMover", MoverArgs.builder()
///             .name("example-ssm")
///             .resourceGroupName(example.name())
///             .location("West Europe")
///             .build());
///
///         var exampleMoverTargetEndpoint = new MoverTargetEndpoint("exampleMoverTargetEndpoint", MoverTargetEndpointArgs.builder()
///             .name("example-se")
///             .storageMoverId(exampleMover.id())
///             .storageAccountId(exampleAccount.id())
///             .storageContainerName(exampleContainer.name())
///             .description("Example Storage Container Endpoint Description")
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
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplestr
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///       allowNestedItemsToBePublic: true
///   exampleContainer:
///     type: azure:storage:Container
///     name: example
///     properties:
///       name: example-sc
///       storageAccountName: ${exampleAccount.name}
///       containerAccessType: blob
///   exampleMover:
///     type: azure:storage:Mover
///     name: example
///     properties:
///       name: example-ssm
///       resourceGroupName: ${example.name}
///       location: West Europe
///   exampleMoverTargetEndpoint:
///     type: azure:storage:MoverTargetEndpoint
///     name: example
///     properties:
///       name: example-se
///       storageMoverId: ${exampleMover.id}
///       storageAccountId: ${exampleAccount.id}
///       storageContainerName: ${exampleContainer.name}
///       description: Example Storage Container Endpoint Description
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.StorageMover` - 2025-07-01
///
/// ## Import
///
/// Storage Mover Target Endpoint can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:storage/moverTargetEndpoint:MoverTargetEndpoint example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.StorageMover/storageMovers/storageMover1/endpoints/endpoint1
/// ```
class MoverTargetEndpoint extends pulumi.CustomResource {
  /// Specifies a description for the Storage Mover Target Endpoint.
  late final pulumi.Output<String?> description;
  /// Specifies the name which should be used for this Storage Mover Target Endpoint. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the ID of the storage account for this Storage Mover Target Endpoint. Changing this forces a new resource to be created.
  late final pulumi.Output<String> storageAccountId;
  /// Specifies the name of the storage blob container for this Storage Mover Target Endpoint. Changing this forces a new resource to be created.
  late final pulumi.Output<String> storageContainerName;
  /// Specifies the ID of the storage mover for this Storage Mover Target Endpoint. Changing this forces a new resource to be created.
  late final pulumi.Output<String> storageMoverId;

  /// Creates a new [MoverTargetEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MoverTargetEndpoint]. {@macro pulumi_storage_mover_target_endpoint_mover_target_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MoverTargetEndpoint(
    String name, {
    MoverTargetEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/moverTargetEndpoint:MoverTargetEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.storageAccountId = registerOutput<String>('storageAccountId');
    this.storageContainerName = registerOutput<String>('storageContainerName');
    this.storageMoverId = registerOutput<String>('storageMoverId');
  }
}
