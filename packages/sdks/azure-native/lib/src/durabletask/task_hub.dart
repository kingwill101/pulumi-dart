import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'task_hub_args.dart';
import 'task_hub_properties_response.dart';

/// A Task Hub resource belonging to the scheduler
///
/// Uses Azure REST API version 2024-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-10-01-preview.
///
/// Other available API versions: 2025-04-01-preview, 2025-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native durabletask [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### TaskHubs_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var taskHub = new AzureNative.DurableTask.TaskHub("taskHub", new()
///     {
///         ResourceGroupName = "rgopenapi",
///         SchedulerName = "testscheduler",
///         TaskHubName = "testtaskhub",
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
/// 		_, err := durabletask.NewTaskHub(ctx, "taskHub", &durabletask.TaskHubArgs{
/// 			ResourceGroupName: pulumi.String("rgopenapi"),
/// 			SchedulerName:     pulumi.String("testscheduler"),
/// 			TaskHubName:       pulumi.String("testtaskhub"),
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
/// import com.pulumi.azurenative.durabletask.TaskHub;
/// import com.pulumi.azurenative.durabletask.TaskHubArgs;
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
///         var taskHub = new TaskHub("taskHub", TaskHubArgs.builder()
///             .resourceGroupName("rgopenapi")
///             .schedulerName("testscheduler")
///             .taskHubName("testtaskhub")
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
/// const taskHub = new azure_native.durabletask.TaskHub("taskHub", {
///     resourceGroupName: "rgopenapi",
///     schedulerName: "testscheduler",
///     taskHubName: "testtaskhub",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// task_hub = azure_native.durabletask.TaskHub("taskHub",
///     resource_group_name="rgopenapi",
///     scheduler_name="testscheduler",
///     task_hub_name="testtaskhub")
///
/// ```
///
/// ```yaml
/// resources:
///   taskHub:
///     type: azure-native:durabletask:TaskHub
///     properties:
///       resourceGroupName: rgopenapi
///       schedulerName: testscheduler
///       taskHubName: testtaskhub
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
/// $ pulumi import azure-native:durabletask:TaskHub testtaskhub /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DurableTask/schedulers/{schedulerName}/taskHubs/{taskHubName}
/// ```
class TaskHub extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<TaskHubPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [TaskHub].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TaskHub]. {@macro pulumi_durabletask_task_hub_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TaskHub(
    String name, {
    TaskHubArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:durabletask:TaskHub',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<TaskHubPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskHubPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
