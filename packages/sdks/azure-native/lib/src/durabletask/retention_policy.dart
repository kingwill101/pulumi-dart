import 'package:pulumi/pulumi.dart' as pulumi;
import 'retention_policy_args.dart';
import 'retention_policy_properties_response.dart';
import 'system_data_response.dart';

/// A retention policy resource belonging to the scheduler
///
/// Uses Azure REST API version 2025-04-01-preview.
///
/// Other available API versions: 2025-11-01, 2026-02-01, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native durabletask [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RetentionPolicies_CreateOrReplace_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var retentionPolicy = new AzureNative.DurableTask.RetentionPolicy("retentionPolicy", new()
///     {
///         Properties = new AzureNative.DurableTask.Inputs.RetentionPolicyPropertiesArgs
///         {
///             RetentionPolicies = new[]
///             {
///                 new AzureNative.DurableTask.Inputs.RetentionPolicyDetailsArgs
///                 {
///                     RetentionPeriodInDays = 30,
///                 },
///                 new AzureNative.DurableTask.Inputs.RetentionPolicyDetailsArgs
///                 {
///                     OrchestrationState = AzureNative.DurableTask.PurgeableOrchestrationState.Failed,
///                     RetentionPeriodInDays = 10,
///                 },
///             },
///         },
///         ResourceGroupName = "rgdurabletask",
///         SchedulerName = "testscheduler",
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
/// 	durabletask "github.com/pulumi/pulumi-azure-native-sdk/durabletask/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := durabletask.NewRetentionPolicy(ctx, "retentionPolicy", &durabletask.RetentionPolicyArgs{
/// 			Properties: &durabletask.RetentionPolicyPropertiesArgs{
/// 				RetentionPolicies: durabletask.RetentionPolicyDetailsArray{
/// 					&durabletask.RetentionPolicyDetailsArgs{
/// 						RetentionPeriodInDays: pulumi.Int(30),
/// 					},
/// 					&durabletask.RetentionPolicyDetailsArgs{
/// 						OrchestrationState:    pulumi.String(durabletask.PurgeableOrchestrationStateFailed),
/// 						RetentionPeriodInDays: pulumi.Int(10),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rgdurabletask"),
/// 			SchedulerName:     pulumi.String("testscheduler"),
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
/// resource "azure-native_durabletask_retentionpolicy" "retentionPolicy" {
///   properties = {
///     retention_policies = [{
///       "retentionPeriodInDays" = 30
///       }, {
///       "orchestrationState"    = "Failed"
///       "retentionPeriodInDays" = 10
///     }]
///   }
///   resource_group_name = "rgdurabletask"
///   scheduler_name      = "testscheduler"
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
/// import com.pulumi.azurenative.durabletask.RetentionPolicy;
/// import com.pulumi.azurenative.durabletask.RetentionPolicyArgs;
/// import com.pulumi.azurenative.durabletask.inputs.RetentionPolicyPropertiesArgs;
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
///         var retentionPolicy = new RetentionPolicy("retentionPolicy", RetentionPolicyArgs.builder()
///             .properties(RetentionPolicyPropertiesArgs.builder()
///                 .retentionPolicies(
///                     RetentionPolicyDetailsArgs.builder()
///                         .retentionPeriodInDays(30)
///                         .build(),
///                     RetentionPolicyDetailsArgs.builder()
///                         .orchestrationState("Failed")
///                         .retentionPeriodInDays(10)
///                         .build())
///                 .build())
///             .resourceGroupName("rgdurabletask")
///             .schedulerName("testscheduler")
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
/// const retentionPolicy = new azure_native.durabletask.RetentionPolicy("retentionPolicy", {
///     properties: {
///         retentionPolicies: [
///             {
///                 retentionPeriodInDays: 30,
///             },
///             {
///                 orchestrationState: azure_native.durabletask.PurgeableOrchestrationState.Failed,
///                 retentionPeriodInDays: 10,
///             },
///         ],
///     },
///     resourceGroupName: "rgdurabletask",
///     schedulerName: "testscheduler",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// retention_policy = azure_native.durabletask.RetentionPolicy("retentionPolicy",
///     properties={
///         "retention_policies": [
///             {
///                 "retention_period_in_days": 30,
///             },
///             {
///                 "orchestration_state": azure_native.durabletask.PurgeableOrchestrationState.FAILED,
///                 "retention_period_in_days": 10,
///             },
///         ],
///     },
///     resource_group_name="rgdurabletask",
///     scheduler_name="testscheduler")
///
/// ```
///
/// ```yaml
/// resources:
///   retentionPolicy:
///     type: azure-native:durabletask:RetentionPolicy
///     properties:
///       properties:
///         retentionPolicies:
///           - retentionPeriodInDays: 30
///           - orchestrationState: Failed
///             retentionPeriodInDays: 10
///       resourceGroupName: rgdurabletask
///       schedulerName: testscheduler
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
/// $ pulumi import azure-native:durabletask:RetentionPolicy default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DurableTask/schedulers/{schedulerName}/retentionPolicies/default
/// ```
class RetentionPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<RetentionPolicyPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RetentionPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RetentionPolicy]. {@macro pulumi_durabletask_retention_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RetentionPolicy(
    String name, {
    RetentionPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:durabletask:RetentionPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<RetentionPolicyPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RetentionPolicyPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
