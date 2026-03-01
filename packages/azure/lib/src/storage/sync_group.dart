import 'package:pulumi/pulumi.dart' as pulumi;
import 'sync_group_args.dart';

/// Manages a Storage Sync Group.
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
/// const exampleSync = new azure.storage.Sync("example", {
///     name: "example-ss",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleSyncGroup = new azure.storage.SyncGroup("example", {
///     name: "example-ss-group",
///     storageSyncId: exampleSync.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_sync = azure.storage.Sync("example",
///     name="example-ss",
///     resource_group_name=example.name,
///     location=example.location)
/// example_sync_group = azure.storage.SyncGroup("example",
///     name="example-ss-group",
///     storage_sync_id=example_sync.id)
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
///     var exampleSync = new Azure.Storage.Sync("example", new()
///     {
///         Name = "example-ss",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleSyncGroup = new Azure.Storage.SyncGroup("example", new()
///     {
///         Name = "example-ss-group",
///         StorageSyncId = exampleSync.Id,
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
/// 		exampleSync, err := storage.NewSync(ctx, "example", &storage.SyncArgs{
/// 			Name:              pulumi.String("example-ss"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewSyncGroup(ctx, "example", &storage.SyncGroupArgs{
/// 			Name:          pulumi.String("example-ss-group"),
/// 			StorageSyncId: exampleSync.ID(),
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
/// import com.pulumi.azure.storage.Sync;
/// import com.pulumi.azure.storage.SyncArgs;
/// import com.pulumi.azure.storage.SyncGroup;
/// import com.pulumi.azure.storage.SyncGroupArgs;
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
///         var exampleSync = new Sync("exampleSync", SyncArgs.builder()
///             .name("example-ss")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleSyncGroup = new SyncGroup("exampleSyncGroup", SyncGroupArgs.builder()
///             .name("example-ss-group")
///             .storageSyncId(exampleSync.id())
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
///   exampleSync:
///     type: azure:storage:Sync
///     name: example
///     properties:
///       name: example-ss
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleSyncGroup:
///     type: azure:storage:SyncGroup
///     name: example
///     properties:
///       name: example-ss-group
///       storageSyncId: ${exampleSync.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.StorageSync` - 2020-03-01
///
/// ## Import
///
/// Storage Sync Groups can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:storage/syncGroup:SyncGroup example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.StorageSync/storageSyncServices/sync1/syncGroups/group1
/// ```
class SyncGroup extends pulumi.CustomResource {
  /// The name which should be used for this Storage Sync Group. Changing this forces a new Storage Sync Group to be created.
  late final pulumi.Output<String> name;
  /// The resource ID of the Storage Sync where this Storage Sync Group is. Changing this forces a new Storage Sync Group to be created.
  late final pulumi.Output<String> storageSyncId;

  /// Creates a new [SyncGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SyncGroup]. {@macro pulumi_storage_sync_group_sync_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SyncGroup(
    String name, {
    SyncGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/syncGroup:SyncGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.storageSyncId = registerOutput<String>('storageSyncId');
  }
}
