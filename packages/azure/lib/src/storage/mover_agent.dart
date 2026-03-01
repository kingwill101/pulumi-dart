import 'package:pulumi/pulumi.dart' as pulumi;
import 'mover_agent_args.dart';

/// Manages a Storage Mover Agent.
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
///     location: "East US",
/// });
/// const exampleMover = new azure.storage.Mover("example", {
///     name: "example-ssm",
///     resourceGroupName: example.name,
/// });
/// const exampleMoverAgent = new azure.storage.MoverAgent("example", {
///     name: "example-sa",
///     storageMoverId: exampleMover.id,
///     arcVirtualMachineId: pulumi.interpolate`${example.id}/providers/Microsoft.HybridCompute/machines/examples-hybridComputeName`,
///     arcVirtualMachineUuid: "3bb2c024-eba9-4d18-9e7a-1d772fcc5fe9",
///     description: "Example Agent Description",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="East US")
/// example_mover = azure.storage.Mover("example",
///     name="example-ssm",
///     resource_group_name=example.name)
/// example_mover_agent = azure.storage.MoverAgent("example",
///     name="example-sa",
///     storage_mover_id=example_mover.id,
///     arc_virtual_machine_id=example.id.apply(lambda id: f"{id}/providers/Microsoft.HybridCompute/machines/examples-hybridComputeName"),
///     arc_virtual_machine_uuid="3bb2c024-eba9-4d18-9e7a-1d772fcc5fe9",
///     description="Example Agent Description")
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
///         Location = "East US",
///     });
///
///     var exampleMover = new Azure.Storage.Mover("example", new()
///     {
///         Name = "example-ssm",
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleMoverAgent = new Azure.Storage.MoverAgent("example", new()
///     {
///         Name = "example-sa",
///         StorageMoverId = exampleMover.Id,
///         ArcVirtualMachineId = example.Id.Apply(id => $"{id}/providers/Microsoft.HybridCompute/machines/examples-hybridComputeName"),
///         ArcVirtualMachineUuid = "3bb2c024-eba9-4d18-9e7a-1d772fcc5fe9",
///         Description = "Example Agent Description",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("East US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleMover, err := storage.NewMover(ctx, "example", &storage.MoverArgs{
/// 			Name:              pulumi.String("example-ssm"),
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewMoverAgent(ctx, "example", &storage.MoverAgentArgs{
/// 			Name:           pulumi.String("example-sa"),
/// 			StorageMoverId: exampleMover.ID(),
/// 			ArcVirtualMachineId: example.ID().ApplyT(func(id string) (string, error) {
/// 				return fmt.Sprintf("%v/providers/Microsoft.HybridCompute/machines/examples-hybridComputeName", id), nil
/// 			}).(pulumi.StringOutput),
/// 			ArcVirtualMachineUuid: pulumi.String("3bb2c024-eba9-4d18-9e7a-1d772fcc5fe9"),
/// 			Description:           pulumi.String("Example Agent Description"),
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
/// import com.pulumi.azure.storage.Mover;
/// import com.pulumi.azure.storage.MoverArgs;
/// import com.pulumi.azure.storage.MoverAgent;
/// import com.pulumi.azure.storage.MoverAgentArgs;
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
///             .location("East US")
///             .build());
///
///         var exampleMover = new Mover("exampleMover", MoverArgs.builder()
///             .name("example-ssm")
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleMoverAgent = new MoverAgent("exampleMoverAgent", MoverAgentArgs.builder()
///             .name("example-sa")
///             .storageMoverId(exampleMover.id())
///             .arcVirtualMachineId(example.id().applyValue(_id -> String.format("%s/providers/Microsoft.HybridCompute/machines/examples-hybridComputeName", _id)))
///             .arcVirtualMachineUuid("3bb2c024-eba9-4d18-9e7a-1d772fcc5fe9")
///             .description("Example Agent Description")
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
///       location: East US
///   exampleMover:
///     type: azure:storage:Mover
///     name: example
///     properties:
///       name: example-ssm
///       resourceGroupName: ${example.name}
///   exampleMoverAgent:
///     type: azure:storage:MoverAgent
///     name: example
///     properties:
///       name: example-sa
///       storageMoverId: ${exampleMover.id}
///       arcVirtualMachineId: ${example.id}/providers/Microsoft.HybridCompute/machines/examples-hybridComputeName
///       arcVirtualMachineUuid: 3bb2c024-eba9-4d18-9e7a-1d772fcc5fe9
///       description: Example Agent Description
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.StorageMover` - 2023-03-01
///
/// ## Import
///
/// Storage Mover Agent can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:storage/moverAgent:MoverAgent example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.StorageMover/storageMovers/storageMover1/agents/agent1
/// ```
class MoverAgent extends pulumi.CustomResource {
  /// Specifies the fully qualified ID of the Hybrid Compute resource for the Storage Mover Agent. Changing this forces a new resource to be created.
  late final pulumi.Output<String> arcVirtualMachineId;
  /// Specifies the Hybrid Compute resource's unique SMBIOS ID. Changing this forces a new resource to be created.
  late final pulumi.Output<String> arcVirtualMachineUuid;
  /// Specifies a description for this Storage Mover Agent.
  late final pulumi.Output<String?> description;
  /// Specifies the name which should be used for this Storage Mover Agent. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the ID of the Storage Mover that this Agent should be connected to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> storageMoverId;

  /// Creates a new [MoverAgent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MoverAgent]. {@macro pulumi_storage_mover_agent_mover_agent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MoverAgent(
    String name, {
    MoverAgentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/moverAgent:MoverAgent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arcVirtualMachineId = registerOutput<String>('arcVirtualMachineId');
    this.arcVirtualMachineUuid = registerOutput<String>('arcVirtualMachineUuid');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.storageMoverId = registerOutput<String>('storageMoverId');
  }
}
