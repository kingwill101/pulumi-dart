import 'package:pulumi/pulumi.dart' as pulumi;
import 'logger_args.dart';

/// Logger details.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateAILogger
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var logger = new AzureNative.ApiManagement.Logger("logger", new()
///     {
///         Credentials =
///         {
///             { "instrumentationKey", "11................a1" },
///         },
///         Description = "adding a new logger",
///         LoggerId = "loggerId",
///         LoggerType = AzureNative.ApiManagement.LoggerType.ApplicationInsights,
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewLogger(ctx, "logger", &apimanagement.LoggerArgs{
/// 			Credentials: pulumi.StringMap{
/// 				"instrumentationKey": pulumi.String("11................a1"),
/// 			},
/// 			Description:       pulumi.String("adding a new logger"),
/// 			LoggerId:          pulumi.String("loggerId"),
/// 			LoggerType:        pulumi.String(apimanagement.LoggerTypeApplicationInsights),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
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
/// import com.pulumi.azurenative.apimanagement.Logger;
/// import com.pulumi.azurenative.apimanagement.LoggerArgs;
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
///         var logger = new Logger("logger", LoggerArgs.builder()
///             .credentials(Map.of("instrumentationKey", "11................a1"))
///             .description("adding a new logger")
///             .loggerId("loggerId")
///             .loggerType("applicationInsights")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
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
/// const logger = new azure_native.apimanagement.Logger("logger", {
///     credentials: {
///         instrumentationKey: "11................a1",
///     },
///     description: "adding a new logger",
///     loggerId: "loggerId",
///     loggerType: azure_native.apimanagement.LoggerType.ApplicationInsights,
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// logger = azure_native.apimanagement.Logger("logger",
///     credentials={
///         "instrumentationKey": "11................a1",
///     },
///     description="adding a new logger",
///     logger_id="loggerId",
///     logger_type=azure_native.apimanagement.LoggerType.APPLICATION_INSIGHTS,
///     resource_group_name="rg1",
///     service_name="apimService1")
///
/// ```
///
/// ```yaml
/// resources:
///   logger:
///     type: azure-native:apimanagement:Logger
///     properties:
///       credentials:
///         instrumentationKey: 11................a1
///       description: adding a new logger
///       loggerId: loggerId
///       loggerType: applicationInsights
///       resourceGroupName: rg1
///       serviceName: apimService1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateEHLogger
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var logger = new AzureNative.ApiManagement.Logger("logger", new()
///     {
///         Credentials =
///         {
///             { "connectionString", "Endpoint=sb://hydraeventhub-ns.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=********=" },
///             { "name", "hydraeventhub" },
///         },
///         Description = "adding a new logger",
///         LoggerId = "eh1",
///         LoggerType = AzureNative.ApiManagement.LoggerType.AzureEventHub,
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewLogger(ctx, "logger", &apimanagement.LoggerArgs{
/// 			Credentials: pulumi.StringMap{
/// 				"connectionString": pulumi.String("Endpoint=sb://hydraeventhub-ns.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=********="),
/// 				"name":             pulumi.String("hydraeventhub"),
/// 			},
/// 			Description:       pulumi.String("adding a new logger"),
/// 			LoggerId:          pulumi.String("eh1"),
/// 			LoggerType:        pulumi.String(apimanagement.LoggerTypeAzureEventHub),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
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
/// import com.pulumi.azurenative.apimanagement.Logger;
/// import com.pulumi.azurenative.apimanagement.LoggerArgs;
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
///         var logger = new Logger("logger", LoggerArgs.builder()
///             .credentials(Map.ofEntries(
///                 Map.entry("connectionString", "Endpoint=sb://hydraeventhub-ns.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=********="),
///                 Map.entry("name", "hydraeventhub")
///             ))
///             .description("adding a new logger")
///             .loggerId("eh1")
///             .loggerType("azureEventHub")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
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
/// const logger = new azure_native.apimanagement.Logger("logger", {
///     credentials: {
///         connectionString: "Endpoint=sb://hydraeventhub-ns.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=********=",
///         name: "hydraeventhub",
///     },
///     description: "adding a new logger",
///     loggerId: "eh1",
///     loggerType: azure_native.apimanagement.LoggerType.AzureEventHub,
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// logger = azure_native.apimanagement.Logger("logger",
///     credentials={
///         "connectionString": "Endpoint=sb://hydraeventhub-ns.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=********=",
///         "name": "hydraeventhub",
///     },
///     description="adding a new logger",
///     logger_id="eh1",
///     logger_type=azure_native.apimanagement.LoggerType.AZURE_EVENT_HUB,
///     resource_group_name="rg1",
///     service_name="apimService1")
///
/// ```
///
/// ```yaml
/// resources:
///   logger:
///     type: azure-native:apimanagement:Logger
///     properties:
///       credentials:
///         connectionString: Endpoint=sb://hydraeventhub-ns.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=********=
///         name: hydraeventhub
///       description: adding a new logger
///       loggerId: eh1
///       loggerType: azureEventHub
///       resourceGroupName: rg1
///       serviceName: apimService1
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
/// $ pulumi import azure-native:apimanagement:Logger eh1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/loggers/{loggerId}
/// ```
class Logger extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name and SendRule connection string of the event hub for azureEventHub logger.
  /// Instrumentation key for applicationInsights logger.
  late final pulumi.Output<Map<String, String>?> credentials;
  /// Logger description.
  late final pulumi.Output<String?> description;
  /// Whether records are buffered in the logger before publishing. Default is assumed to be true.
  late final pulumi.Output<bool?> isBuffered;
  /// Logger type.
  late final pulumi.Output<String> loggerType;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Id of a log target (either Azure Event Hub resource or Azure Application Insights resource).
  late final pulumi.Output<String?> resourceId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Logger].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Logger]. {@macro pulumi_apimanagement_logger_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Logger(
    String name, {
    LoggerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:Logger',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    credentials = registerOutput<Map<String, String>?>('credentials');
    description = registerOutput<String?>('description');
    isBuffered = registerOutput<bool?>('isBuffered');
    loggerType = registerOutput<String>('loggerType');
    this.name = registerOutput<String>('name');
    resourceId = registerOutput<String?>('resourceId');
    type = registerOutput<String>('type');
  }
}
