import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_update_response.dart';
import 'system_data_response.dart';
import 'update_run_args.dart';
import 'update_run_status_response.dart';
import 'update_run_strategy_response.dart';

/// A multi-stage process to perform update operations across members of a Fleet.
///
/// Uses Azure REST API version 2024-05-02-preview. In version 2.x of the Azure Native provider, it used API version 2023-03-15-preview.
///
/// Other available API versions: 2023-03-15-preview, 2023-06-15-preview, 2023-08-15-preview, 2023-10-15, 2024-02-02-preview, 2024-04-01, 2025-03-01, 2025-04-01-preview, 2025-08-01-preview, 2026-02-01-preview, 2026-03-02-preview, 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create an UpdateRun.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var updateRun = new AzureNative.ContainerService.UpdateRun("updateRun", new()
///     {
///         FleetName = "fleet1",
///         ManagedClusterUpdate = new AzureNative.ContainerService.Inputs.ManagedClusterUpdateArgs
///         {
///             NodeImageSelection = new AzureNative.ContainerService.Inputs.NodeImageSelectionArgs
///             {
///                 Type = AzureNative.ContainerService.NodeImageSelectionType.Latest,
///             },
///             Upgrade = new AzureNative.ContainerService.Inputs.ManagedClusterUpgradeSpecArgs
///             {
///                 KubernetesVersion = "1.26.1",
///                 Type = AzureNative.ContainerService.ManagedClusterUpgradeType.Full,
///             },
///         },
///         ResourceGroupName = "rg1",
///         Strategy = new AzureNative.ContainerService.Inputs.UpdateRunStrategyArgs
///         {
///             Stages = new[]
///             {
///                 new AzureNative.ContainerService.Inputs.UpdateStageArgs
///                 {
///                     AfterStageWaitInSeconds = 3600,
///                     Groups = new[]
///                     {
///                         new AzureNative.ContainerService.Inputs.UpdateGroupArgs
///                         {
///                             Name = "group-a",
///                         },
///                     },
///                     Name = "stage1",
///                 },
///             },
///         },
///         UpdateRunName = "run1",
///         UpdateStrategyId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ContainerService/fleets/myFleet/updateStrategies/strategy1",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewUpdateRun(ctx, "updateRun", &containerservice.UpdateRunArgs{
/// 			FleetName: pulumi.String("fleet1"),
/// 			ManagedClusterUpdate: &containerservice.ManagedClusterUpdateArgs{
/// 				NodeImageSelection: &containerservice.NodeImageSelectionArgs{
/// 					Type: pulumi.String(containerservice.NodeImageSelectionTypeLatest),
/// 				},
/// 				Upgrade: &containerservice.ManagedClusterUpgradeSpecArgs{
/// 					KubernetesVersion: pulumi.String("1.26.1"),
/// 					Type:              pulumi.String(containerservice.ManagedClusterUpgradeTypeFull),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Strategy: &containerservice.UpdateRunStrategyArgs{
/// 				Stages: containerservice.UpdateStageArray{
/// 					&containerservice.UpdateStageArgs{
/// 						AfterStageWaitInSeconds: pulumi.Int(3600),
/// 						Groups: containerservice.UpdateGroupArray{
/// 							&containerservice.UpdateGroupArgs{
/// 								Name: pulumi.String("group-a"),
/// 							},
/// 						},
/// 						Name: pulumi.String("stage1"),
/// 					},
/// 				},
/// 			},
/// 			UpdateRunName:    pulumi.String("run1"),
/// 			UpdateStrategyId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ContainerService/fleets/myFleet/updateStrategies/strategy1"),
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
/// resource "azure-native_containerservice_updaterun" "updateRun" {
///   fleet_name = "fleet1"
///   managed_cluster_update = {
///     node_image_selection = {
///       type = "Latest"
///     }
///     upgrade = {
///       kubernetes_version = "1.26.1"
///       type               = "Full"
///     }
///   }
///   resource_group_name = "rg1"
///   strategy = {
///     stages = [{
///       "afterStageWaitInSeconds" = 3600
///       "groups" = [{
///         "name" = "group-a"
///       }]
///       "name" = "stage1"
///     }]
///   }
///   update_run_name    = "run1"
///   update_strategy_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ContainerService/fleets/myFleet/updateStrategies/strategy1"
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
/// import com.pulumi.azurenative.containerservice.UpdateRun;
/// import com.pulumi.azurenative.containerservice.UpdateRunArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterUpdateArgs;
/// import com.pulumi.azurenative.containerservice.inputs.NodeImageSelectionArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterUpgradeSpecArgs;
/// import com.pulumi.azurenative.containerservice.inputs.UpdateRunStrategyArgs;
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
///         var updateRun = new UpdateRun("updateRun", UpdateRunArgs.builder()
///             .fleetName("fleet1")
///             .managedClusterUpdate(ManagedClusterUpdateArgs.builder()
///                 .nodeImageSelection(NodeImageSelectionArgs.builder()
///                     .type("Latest")
///                     .build())
///                 .upgrade(ManagedClusterUpgradeSpecArgs.builder()
///                     .kubernetesVersion("1.26.1")
///                     .type("Full")
///                     .build())
///                 .build())
///             .resourceGroupName("rg1")
///             .strategy(UpdateRunStrategyArgs.builder()
///                 .stages(UpdateStageArgs.builder()
///                     .afterStageWaitInSeconds(3600)
///                     .groups(UpdateGroupArgs.builder()
///                         .name("group-a")
///                         .build())
///                     .name("stage1")
///                     .build())
///                 .build())
///             .updateRunName("run1")
///             .updateStrategyId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ContainerService/fleets/myFleet/updateStrategies/strategy1")
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
/// const updateRun = new azure_native.containerservice.UpdateRun("updateRun", {
///     fleetName: "fleet1",
///     managedClusterUpdate: {
///         nodeImageSelection: {
///             type: azure_native.containerservice.NodeImageSelectionType.Latest,
///         },
///         upgrade: {
///             kubernetesVersion: "1.26.1",
///             type: azure_native.containerservice.ManagedClusterUpgradeType.Full,
///         },
///     },
///     resourceGroupName: "rg1",
///     strategy: {
///         stages: [{
///             afterStageWaitInSeconds: 3600,
///             groups: [{
///                 name: "group-a",
///             }],
///             name: "stage1",
///         }],
///     },
///     updateRunName: "run1",
///     updateStrategyId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ContainerService/fleets/myFleet/updateStrategies/strategy1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// update_run = azure_native.containerservice.UpdateRun("updateRun",
///     fleet_name="fleet1",
///     managed_cluster_update={
///         "node_image_selection": {
///             "type": azure_native.containerservice.NodeImageSelectionType.LATEST,
///         },
///         "upgrade": {
///             "kubernetes_version": "1.26.1",
///             "type": azure_native.containerservice.ManagedClusterUpgradeType.FULL,
///         },
///     },
///     resource_group_name="rg1",
///     strategy={
///         "stages": [{
///             "after_stage_wait_in_seconds": 3600,
///             "groups": [{
///                 "name": "group-a",
///             }],
///             "name": "stage1",
///         }],
///     },
///     update_run_name="run1",
///     update_strategy_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ContainerService/fleets/myFleet/updateStrategies/strategy1")
///
/// ```
///
/// ```yaml
/// resources:
///   updateRun:
///     type: azure-native:containerservice:UpdateRun
///     properties:
///       fleetName: fleet1
///       managedClusterUpdate:
///         nodeImageSelection:
///           type: Latest
///         upgrade:
///           kubernetesVersion: 1.26.1
///           type: Full
///       resourceGroupName: rg1
///       strategy:
///         stages:
///           - afterStageWaitInSeconds: 3600
///             groups:
///               - name: group-a
///             name: stage1
///       updateRunName: run1
///       updateStrategyId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ContainerService/fleets/myFleet/updateStrategies/strategy1
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
/// $ pulumi import azure-native:containerservice:UpdateRun run1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/fleets/{fleetName}/updateRuns/{updateRunName}
/// ```
class UpdateRun extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> eTag;
  /// The update to be applied to all clusters in the UpdateRun. The managedClusterUpdate can be modified until the run is started.
  late final pulumi.Output<ManagedClusterUpdateResponse> managedClusterUpdate;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state of the UpdateRun resource.
  late final pulumi.Output<String> provisioningState;
  /// The status of the UpdateRun.
  late final pulumi.Output<UpdateRunStatusResponse> status;
  /// The strategy defines the order in which the clusters will be updated.
  /// If not set, all members will be updated sequentially. The UpdateRun status will show a single UpdateStage and a single UpdateGroup targeting all members.
  /// The strategy of the UpdateRun can be modified until the run is started.
  late final pulumi.Output<UpdateRunStrategyResponse?> strategy;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The resource id of the FleetUpdateStrategy resource to reference.
  ///
  /// When creating a new run, there are three ways to define a strategy for the run:
  /// 1. Define a new strategy in place: Set the "strategy" field.
  /// 2. Use an existing strategy: Set the "updateStrategyId" field. (since 2023-08-15-preview)
  /// 3. Use the default strategy to update all the members one by one: Leave both "updateStrategyId" and "strategy" unset. (since 2023-08-15-preview)
  ///
  /// Setting both "updateStrategyId" and "strategy" is invalid.
  ///
  /// UpdateRuns created by "updateStrategyId" snapshot the referenced UpdateStrategy at the time of creation and store it in the "strategy" field.
  /// Subsequent changes to the referenced FleetUpdateStrategy resource do not propagate.
  /// UpdateRunStrategy changes can be made directly on the "strategy" field before launching the UpdateRun.
  late final pulumi.Output<String?> updateStrategyId;

  /// Creates a new [UpdateRun].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UpdateRun]. {@macro pulumi_containerservice_update_run_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UpdateRun(
    String name, {
    UpdateRunArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:containerservice:UpdateRun',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    managedClusterUpdate = registerOutput<ManagedClusterUpdateResponse>('managedClusterUpdate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterUpdateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<UpdateRunStatusResponse>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UpdateRunStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    strategy = registerOutput<UpdateRunStrategyResponse?>('strategy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UpdateRunStrategyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    updateStrategyId = registerOutput<String?>('updateStrategyId');
  }

  /// Creates a typed reference to an existing [UpdateRun] resource.
  UpdateRun.reference(String urn)
    : super(
        'azure-native:containerservice:UpdateRun',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    managedClusterUpdate = registerOutput<ManagedClusterUpdateResponse>('managedClusterUpdate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterUpdateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<UpdateRunStatusResponse>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UpdateRunStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    strategy = registerOutput<UpdateRunStrategyResponse?>('strategy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UpdateRunStrategyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    updateStrategyId = registerOutput<String?>('updateStrategyId');
  }
}
