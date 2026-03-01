import 'package:pulumi/pulumi.dart' as pulumi;
import 'hybrid_runbook_worker_args.dart';
import 'system_data_response.dart';

/// Definition of hybrid runbook worker.
///
/// Uses Azure REST API version 2023-11-01. In version 2.x of the Azure Native provider, it used API version 2022-08-08.
///
/// Other available API versions: 2021-06-22, 2022-08-08, 2023-05-15-preview, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a V2 hybrid runbook worker
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var hybridRunbookWorker = new AzureNative.Automation.HybridRunbookWorker("hybridRunbookWorker", new()
///     {
///         AutomationAccountName = "testaccount",
///         HybridRunbookWorkerGroupName = "TestHybridGroup",
///         HybridRunbookWorkerId = "c010ad12-ef14-4a2a-aa9e-ef22c4745ddd",
///         ResourceGroupName = "rg",
///         VmResourceId = "/subscriptions/vmsubid/resourceGroups/vmrg/providers/Microsoft.Compute/virtualMachines/vmname",
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
/// 	automation "github.com/pulumi/pulumi-azure-native-sdk/automation/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := automation.NewHybridRunbookWorker(ctx, "hybridRunbookWorker", &automation.HybridRunbookWorkerArgs{
/// 			AutomationAccountName:        pulumi.String("testaccount"),
/// 			HybridRunbookWorkerGroupName: pulumi.String("TestHybridGroup"),
/// 			HybridRunbookWorkerId:        pulumi.String("c010ad12-ef14-4a2a-aa9e-ef22c4745ddd"),
/// 			ResourceGroupName:            pulumi.String("rg"),
/// 			VmResourceId:                 pulumi.String("/subscriptions/vmsubid/resourceGroups/vmrg/providers/Microsoft.Compute/virtualMachines/vmname"),
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
/// import com.pulumi.azurenative.automation.HybridRunbookWorker;
/// import com.pulumi.azurenative.automation.HybridRunbookWorkerArgs;
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
///         var hybridRunbookWorker = new HybridRunbookWorker("hybridRunbookWorker", HybridRunbookWorkerArgs.builder()
///             .automationAccountName("testaccount")
///             .hybridRunbookWorkerGroupName("TestHybridGroup")
///             .hybridRunbookWorkerId("c010ad12-ef14-4a2a-aa9e-ef22c4745ddd")
///             .resourceGroupName("rg")
///             .vmResourceId("/subscriptions/vmsubid/resourceGroups/vmrg/providers/Microsoft.Compute/virtualMachines/vmname")
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
/// const hybridRunbookWorker = new azure_native.automation.HybridRunbookWorker("hybridRunbookWorker", {
///     automationAccountName: "testaccount",
///     hybridRunbookWorkerGroupName: "TestHybridGroup",
///     hybridRunbookWorkerId: "c010ad12-ef14-4a2a-aa9e-ef22c4745ddd",
///     resourceGroupName: "rg",
///     vmResourceId: "/subscriptions/vmsubid/resourceGroups/vmrg/providers/Microsoft.Compute/virtualMachines/vmname",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// hybrid_runbook_worker = azure_native.automation.HybridRunbookWorker("hybridRunbookWorker",
///     automation_account_name="testaccount",
///     hybrid_runbook_worker_group_name="TestHybridGroup",
///     hybrid_runbook_worker_id="c010ad12-ef14-4a2a-aa9e-ef22c4745ddd",
///     resource_group_name="rg",
///     vm_resource_id="/subscriptions/vmsubid/resourceGroups/vmrg/providers/Microsoft.Compute/virtualMachines/vmname")
///
/// ```
///
/// ```yaml
/// resources:
///   hybridRunbookWorker:
///     type: azure-native:automation:HybridRunbookWorker
///     properties:
///       automationAccountName: testaccount
///       hybridRunbookWorkerGroupName: TestHybridGroup
///       hybridRunbookWorkerId: c010ad12-ef14-4a2a-aa9e-ef22c4745ddd
///       resourceGroupName: rg
///       vmResourceId: /subscriptions/vmsubid/resourceGroups/vmrg/providers/Microsoft.Compute/virtualMachines/vmname
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
/// $ pulumi import azure-native:automation:HybridRunbookWorker c010ad12-ef14-4a2a-aa9e-ef22c4745ddd /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/hybridRunbookWorkerGroups/{hybridRunbookWorkerGroupName}/hybridRunbookWorkers/{hybridRunbookWorkerId}
/// ```
class HybridRunbookWorker extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the assigned machine IP address.
  late final pulumi.Output<String?> ip;
  /// Last Heartbeat from the Worker
  late final pulumi.Output<String?> lastSeenDateTime;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Gets or sets the registration time of the worker machine.
  late final pulumi.Output<String?> registeredDateTime;
  /// Resource system metadata.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource.
  late final pulumi.Output<String> type;
  /// Azure Resource Manager Id for a virtual machine.
  late final pulumi.Output<String?> vmResourceId;
  /// Name of the HybridWorker.
  late final pulumi.Output<String?> workerName;
  /// Type of the HybridWorker.
  late final pulumi.Output<String?> workerType;

  /// Creates a new [HybridRunbookWorker].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HybridRunbookWorker]. {@macro pulumi_automation_hybrid_runbook_worker_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HybridRunbookWorker(
    String name, {
    HybridRunbookWorkerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:automation:HybridRunbookWorker',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.ip = registerOutput<String?>('ip');
    this.lastSeenDateTime = registerOutput<String?>('lastSeenDateTime');
    this.name = registerOutput<String>('name');
    this.registeredDateTime = registerOutput<String?>('registeredDateTime');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
    this.vmResourceId = registerOutput<String?>('vmResourceId');
    this.workerName = registerOutput<String?>('workerName');
    this.workerType = registerOutput<String?>('workerType');
  }
}
