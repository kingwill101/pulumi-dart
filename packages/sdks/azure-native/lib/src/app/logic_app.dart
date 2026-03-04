import 'package:pulumi/pulumi.dart' as pulumi;
import 'logic_app_args.dart';
import 'system_data_response.dart';

/// A logic app extension resource
///
/// Uses Azure REST API version 2025-02-02-preview. In version 2.x of the Azure Native provider, it used API version 2024-02-02-preview.
///
/// Other available API versions: 2024-02-02-preview, 2024-08-02-preview, 2024-10-02-preview, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create logic app extension
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var logicApp = new AzureNative.App.LogicApp("logicApp", new()
///     {
///         ContainerAppName = "testcontainerApp0",
///         LogicAppName = "testcontainerApp0",
///         ResourceGroupName = "examplerg",
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
/// 	app "github.com/pulumi/pulumi-azure-native-sdk/app/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := app.NewLogicApp(ctx, "logicApp", &app.LogicAppArgs{
/// 			ContainerAppName:  pulumi.String("testcontainerApp0"),
/// 			LogicAppName:      pulumi.String("testcontainerApp0"),
/// 			ResourceGroupName: pulumi.String("examplerg"),
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
/// import com.pulumi.azurenative.app.LogicApp;
/// import com.pulumi.azurenative.app.LogicAppArgs;
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
///         var logicApp = new LogicApp("logicApp", LogicAppArgs.builder()
///             .containerAppName("testcontainerApp0")
///             .logicAppName("testcontainerApp0")
///             .resourceGroupName("examplerg")
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
/// const logicApp = new azure_native.app.LogicApp("logicApp", {
///     containerAppName: "testcontainerApp0",
///     logicAppName: "testcontainerApp0",
///     resourceGroupName: "examplerg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// logic_app = azure_native.app.LogicApp("logicApp",
///     container_app_name="testcontainerApp0",
///     logic_app_name="testcontainerApp0",
///     resource_group_name="examplerg")
///
/// ```
///
/// ```yaml
/// resources:
///   logicApp:
///     type: azure-native:app:LogicApp
///     properties:
///       containerAppName: testcontainerApp0
///       logicAppName: testcontainerApp0
///       resourceGroupName: examplerg
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
/// $ pulumi import azure-native:app:LogicApp testcontainerApp0 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.App/containerApps/{containerAppName}/providers/Microsoft.App/logicApps/{logicAppName}
/// ```
class LogicApp extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [LogicApp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogicApp]. {@macro pulumi_app_logic_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogicApp(
    String name, {
    LogicAppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:app:LogicApp',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
