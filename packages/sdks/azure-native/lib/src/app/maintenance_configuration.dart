import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_configuration_args.dart';
import 'system_data_response.dart';

/// Information about the Maintenance Configuration resource.
///
/// Uses Azure REST API version 2025-02-02-preview. In version 2.x of the Azure Native provider, it used API version 2024-10-02-preview.
///
/// Other available API versions: 2024-10-02-preview, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ManagedEnvironmentMaintenanceConfigurationsCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var maintenanceConfiguration = new AzureNative.App.MaintenanceConfiguration("maintenanceConfiguration", new()
///     {
///         ConfigName = "default",
///         EnvironmentName = "managedEnv",
///         ResourceGroupName = "rg1",
///         ScheduledEntries = new[]
///         {
///             new AzureNative.App.Inputs.ScheduledEntryArgs
///             {
///                 DurationHours = 9,
///                 StartHourUtc = 12,
///                 WeekDay = AzureNative.App.WeekDay.Sunday,
///             },
///         },
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
/// 		_, err := app.NewMaintenanceConfiguration(ctx, "maintenanceConfiguration", &app.MaintenanceConfigurationArgs{
/// 			ConfigName:        pulumi.String("default"),
/// 			EnvironmentName:   pulumi.String("managedEnv"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ScheduledEntries: app.ScheduledEntryArray{
/// 				&app.ScheduledEntryArgs{
/// 					DurationHours: pulumi.Int(9),
/// 					StartHourUtc:  pulumi.Int(12),
/// 					WeekDay:       app.WeekDaySunday,
/// 				},
/// 			},
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
/// import com.pulumi.azurenative.app.MaintenanceConfiguration;
/// import com.pulumi.azurenative.app.MaintenanceConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.ScheduledEntryArgs;
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
///         var maintenanceConfiguration = new MaintenanceConfiguration("maintenanceConfiguration", MaintenanceConfigurationArgs.builder()
///             .configName("default")
///             .environmentName("managedEnv")
///             .resourceGroupName("rg1")
///             .scheduledEntries(ScheduledEntryArgs.builder()
///                 .durationHours(9)
///                 .startHourUtc(12)
///                 .weekDay("Sunday")
///                 .build())
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
/// const maintenanceConfiguration = new azure_native.app.MaintenanceConfiguration("maintenanceConfiguration", {
///     configName: "default",
///     environmentName: "managedEnv",
///     resourceGroupName: "rg1",
///     scheduledEntries: [{
///         durationHours: 9,
///         startHourUtc: 12,
///         weekDay: azure_native.app.WeekDay.Sunday,
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// maintenance_configuration = azure_native.app.MaintenanceConfiguration("maintenanceConfiguration",
///     config_name="default",
///     environment_name="managedEnv",
///     resource_group_name="rg1",
///     scheduled_entries=[{
///         "duration_hours": 9,
///         "start_hour_utc": 12,
///         "week_day": azure_native.app.WeekDay.SUNDAY,
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   maintenanceConfiguration:
///     type: azure-native:app:MaintenanceConfiguration
///     properties:
///       configName: default
///       environmentName: managedEnv
///       resourceGroupName: rg1
///       scheduledEntries:
///         - durationHours: 9
///           startHourUtc: 12
///           weekDay: Sunday
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
/// $ pulumi import azure-native:app:MaintenanceConfiguration default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.App/managedEnvironments/{environmentName}/maintenanceConfigurations/{configName}
/// ```
class MaintenanceConfiguration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// List of maintenance schedules for a managed environment.
  late final pulumi.Output<List<Map<String, dynamic>>> scheduledEntries;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [MaintenanceConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MaintenanceConfiguration]. {@macro pulumi_app_maintenance_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MaintenanceConfiguration(
    String name, {
    MaintenanceConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:app:MaintenanceConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    scheduledEntries = registerOutput<List<Map<String, dynamic>>>('scheduledEntries');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
