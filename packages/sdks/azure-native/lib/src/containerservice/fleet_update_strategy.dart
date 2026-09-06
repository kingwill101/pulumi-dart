import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_update_strategy_args.dart';
import 'system_data_response.dart';
import 'update_run_strategy_response.dart';

/// Defines a multi-stage process to perform update operations across members of a Fleet.
///
/// Uses Azure REST API version 2024-05-02-preview. In version 2.x of the Azure Native provider, it used API version 2023-08-15-preview.
///
/// Other available API versions: 2023-08-15-preview, 2023-10-15, 2024-02-02-preview, 2024-04-01, 2025-03-01, 2025-04-01-preview, 2025-08-01-preview, 2026-02-01-preview, 2026-03-02-preview, 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a FleetUpdateStrategy.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fleetUpdateStrategy = new AzureNative.ContainerService.FleetUpdateStrategy("fleetUpdateStrategy", new()
///     {
///         FleetName = "fleet1",
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
///         UpdateStrategyName = "strartegy1",
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
/// 		_, err := containerservice.NewFleetUpdateStrategy(ctx, "fleetUpdateStrategy", &containerservice.FleetUpdateStrategyArgs{
/// 			FleetName:         pulumi.String("fleet1"),
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
/// 			UpdateStrategyName: pulumi.String("strartegy1"),
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
/// resource "azure-native_containerservice_fleetupdatestrategy" "fleetUpdateStrategy" {
///   fleet_name          = "fleet1"
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
///   update_strategy_name = "strartegy1"
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
/// import com.pulumi.azurenative.containerservice.FleetUpdateStrategy;
/// import com.pulumi.azurenative.containerservice.FleetUpdateStrategyArgs;
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
///         var fleetUpdateStrategy = new FleetUpdateStrategy("fleetUpdateStrategy", FleetUpdateStrategyArgs.builder()
///             .fleetName("fleet1")
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
///             .updateStrategyName("strartegy1")
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
/// const fleetUpdateStrategy = new azure_native.containerservice.FleetUpdateStrategy("fleetUpdateStrategy", {
///     fleetName: "fleet1",
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
///     updateStrategyName: "strartegy1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// fleet_update_strategy = azure_native.containerservice.FleetUpdateStrategy("fleetUpdateStrategy",
///     fleet_name="fleet1",
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
///     update_strategy_name="strartegy1")
///
/// ```
///
/// ```yaml
/// resources:
///   fleetUpdateStrategy:
///     type: azure-native:containerservice:FleetUpdateStrategy
///     properties:
///       fleetName: fleet1
///       resourceGroupName: rg1
///       strategy:
///         stages:
///           - afterStageWaitInSeconds: 3600
///             groups:
///               - name: group-a
///             name: stage1
///       updateStrategyName: strartegy1
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
/// $ pulumi import azure-native:containerservice:FleetUpdateStrategy strategy1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/fleets/{fleetName}/updateStrategies/{updateStrategyName}
/// ```
class FleetUpdateStrategy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> eTag;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state of the UpdateStrategy resource.
  late final pulumi.Output<String> provisioningState;
  /// Defines the update sequence of the clusters.
  late final pulumi.Output<UpdateRunStrategyResponse> strategy;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [FleetUpdateStrategy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FleetUpdateStrategy]. {@macro pulumi_containerservice_fleet_update_strategy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FleetUpdateStrategy(
    String name, {
    FleetUpdateStrategyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:containerservice:FleetUpdateStrategy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    strategy = registerOutput<UpdateRunStrategyResponse>('strategy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UpdateRunStrategyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [FleetUpdateStrategy] resource.
  FleetUpdateStrategy.reference(String urn)
    : super(
        'azure-native:containerservice:FleetUpdateStrategy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    strategy = registerOutput<UpdateRunStrategyResponse>('strategy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UpdateRunStrategyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
