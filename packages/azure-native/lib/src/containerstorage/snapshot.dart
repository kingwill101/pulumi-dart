import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_operational_status_response.dart';
import 'snapshot_args.dart';
import 'system_data_response.dart';

/// Concrete proxy resource types can be created by aliasing this type using a specific property type.
///
/// Uses Azure REST API version 2023-07-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-07-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Snapshots_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var snapshot = new AzureNative.ContainerStorage.Snapshot("snapshot", new()
///     {
///         PoolName = "test-pool",
///         ResourceGroupName = "test-rg",
///         SnapshotName = "test-snapshot",
///         Source = "C0C6I6",
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
/// 	containerstorage "github.com/pulumi/pulumi-azure-native-sdk/containerstorage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerstorage.NewSnapshot(ctx, "snapshot", &containerstorage.SnapshotArgs{
/// 			PoolName:          pulumi.String("test-pool"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			SnapshotName:      pulumi.String("test-snapshot"),
/// 			Source:            pulumi.String("C0C6I6"),
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
/// import com.pulumi.azurenative.containerstorage.Snapshot;
/// import com.pulumi.azurenative.containerstorage.SnapshotArgs;
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
///         var snapshot = new Snapshot("snapshot", SnapshotArgs.builder()
///             .poolName("test-pool")
///             .resourceGroupName("test-rg")
///             .snapshotName("test-snapshot")
///             .source("C0C6I6")
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
/// const snapshot = new azure_native.containerstorage.Snapshot("snapshot", {
///     poolName: "test-pool",
///     resourceGroupName: "test-rg",
///     snapshotName: "test-snapshot",
///     source: "C0C6I6",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// snapshot = azure_native.containerstorage.Snapshot("snapshot",
///     pool_name="test-pool",
///     resource_group_name="test-rg",
///     snapshot_name="test-snapshot",
///     source="C0C6I6")
///
/// ```
///
/// ```yaml
/// resources:
///   snapshot:
///     type: azure-native:containerstorage:Snapshot
///     properties:
///       poolName: test-pool
///       resourceGroupName: test-rg
///       snapshotName: test-snapshot
///       source: C0C6I6
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
/// $ pulumi import azure-native:containerstorage:Snapshot test-snapshot /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerStorage/pools/{poolName}/snapshots/{snapshotName}
/// ```
class Snapshot extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;
  /// Reference to the source volume
  late final pulumi.Output<String> source;
  /// The status of the resource.
  late final pulumi.Output<ResourceOperationalStatusResponse> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Snapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Snapshot]. {@macro pulumi_containerstorage_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Snapshot(
    String name, {
    SnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:containerstorage:Snapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.source = registerOutput<String>('source');
    this.status = registerOutput<ResourceOperationalStatusResponse>('status');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
