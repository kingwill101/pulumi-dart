import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'watcher_args.dart';

/// Definition of the watcher type.
///
/// Uses Azure REST API version 2023-05-15-preview. In version 2.x of the Azure Native provider, it used API version 2020-01-13-preview.
///
/// Other available API versions: 2015-10-31, 2019-06-01, 2020-01-13-preview, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update watcher
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var watcher = new AzureNative.Automation.Watcher("watcher", new()
///     {
///         AutomationAccountName = "MyTestAutomationAccount",
///         Description = "This is a test watcher.",
///         ExecutionFrequencyInSeconds = 60,
///         ResourceGroupName = "rg",
///         ScriptName = "MyTestWatcherRunbook",
///         ScriptRunOn = "MyTestHybridWorkerGroup",
///         Tags = null,
///         WatcherName = "MyTestWatcher",
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
/// 		_, err := automation.NewWatcher(ctx, "watcher", &automation.WatcherArgs{
/// 			AutomationAccountName:       pulumi.String("MyTestAutomationAccount"),
/// 			Description:                 pulumi.String("This is a test watcher."),
/// 			ExecutionFrequencyInSeconds: pulumi.Float64(60),
/// 			ResourceGroupName:           pulumi.String("rg"),
/// 			ScriptName:                  pulumi.String("MyTestWatcherRunbook"),
/// 			ScriptRunOn:                 pulumi.String("MyTestHybridWorkerGroup"),
/// 			Tags:                        pulumi.StringMap{},
/// 			WatcherName:                 pulumi.String("MyTestWatcher"),
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
/// import com.pulumi.azurenative.automation.Watcher;
/// import com.pulumi.azurenative.automation.WatcherArgs;
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
///         var watcher = new Watcher("watcher", WatcherArgs.builder()
///             .automationAccountName("MyTestAutomationAccount")
///             .description("This is a test watcher.")
///             .executionFrequencyInSeconds(60.0)
///             .resourceGroupName("rg")
///             .scriptName("MyTestWatcherRunbook")
///             .scriptRunOn("MyTestHybridWorkerGroup")
///             .tags(Map.ofEntries(
///             ))
///             .watcherName("MyTestWatcher")
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
/// const watcher = new azure_native.automation.Watcher("watcher", {
///     automationAccountName: "MyTestAutomationAccount",
///     description: "This is a test watcher.",
///     executionFrequencyInSeconds: 60,
///     resourceGroupName: "rg",
///     scriptName: "MyTestWatcherRunbook",
///     scriptRunOn: "MyTestHybridWorkerGroup",
///     tags: {},
///     watcherName: "MyTestWatcher",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// watcher = azure_native.automation.Watcher("watcher",
///     automation_account_name="MyTestAutomationAccount",
///     description="This is a test watcher.",
///     execution_frequency_in_seconds=60,
///     resource_group_name="rg",
///     script_name="MyTestWatcherRunbook",
///     script_run_on="MyTestHybridWorkerGroup",
///     tags={},
///     watcher_name="MyTestWatcher")
///
/// ```
///
/// ```yaml
/// resources:
///   watcher:
///     type: azure-native:automation:Watcher
///     properties:
///       automationAccountName: MyTestAutomationAccount
///       description: This is a test watcher.
///       executionFrequencyInSeconds: 60
///       resourceGroupName: rg
///       scriptName: MyTestWatcherRunbook
///       scriptRunOn: MyTestHybridWorkerGroup
///       tags: {}
///       watcherName: MyTestWatcher
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
/// $ pulumi import azure-native:automation:Watcher MyTestWatcher /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/watchers/{watcherName}
/// ```
class Watcher extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Gets or sets the creation time.
  late final pulumi.Output<String> creationTime;

  /// Gets or sets the description.
  late final pulumi.Output<String?> description;

  /// Gets or sets the etag of the resource.
  late final pulumi.Output<String?> etag;

  /// Gets or sets the frequency at which the watcher is invoked.
  late final pulumi.Output<double?> executionFrequencyInSeconds;

  /// Details of the user who last modified the watcher.
  late final pulumi.Output<String> lastModifiedBy;

  /// Gets or sets the last modified time.
  late final pulumi.Output<String> lastModifiedTime;

  /// The geo-location where the resource lives
  late final pulumi.Output<String?> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Gets or sets the name of the script the watcher is attached to, i.e. the name of an existing runbook.
  late final pulumi.Output<String?> scriptName;

  /// Gets or sets the parameters of the script.
  late final pulumi.Output<Map<String, String>?> scriptParameters;

  /// Gets or sets the name of the hybrid worker group the watcher will run on.
  late final pulumi.Output<String?> scriptRunOn;

  /// Gets the current status of the watcher.
  late final pulumi.Output<String> status;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Watcher].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Watcher]. {@macro pulumi_automation_watcher_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Watcher(
    String name, {
    WatcherArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:automation:Watcher',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationTime = registerOutput<String>('creationTime');
    description = registerOutput<String?>('description');
    etag = registerOutput<String?>('etag');
    executionFrequencyInSeconds = registerOutput<double?>(
      'executionFrequencyInSeconds',
    );
    lastModifiedBy = registerOutput<String>('lastModifiedBy');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    scriptName = registerOutput<String?>('scriptName');
    scriptParameters = registerOutput<Map<String, String>?>('scriptParameters');
    scriptRunOn = registerOutput<String?>('scriptRunOn');
    status = registerOutput<String>('status');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
