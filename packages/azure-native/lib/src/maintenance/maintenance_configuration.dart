import 'package:pulumi/pulumi.dart' as pulumi;
import 'input_patch_configuration_response.dart';
import 'maintenance_configuration_args.dart';
import 'system_data_response.dart';

/// Maintenance configuration record type
///
/// Uses Azure REST API version 2023-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-11-01-preview.
///
/// Other available API versions: 2022-11-01-preview, 2023-04-01, 2023-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native maintenance [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### MaintenanceConfigurations_CreateOrUpdateForResource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var maintenanceConfiguration = new AzureNative.Maintenance.MaintenanceConfiguration("maintenanceConfiguration", new()
///     {
///         Duration = "05:00",
///         ExpirationDateTime = "9999-12-31 00:00",
///         Location = "westus2",
///         MaintenanceScope = AzureNative.Maintenance.MaintenanceScope.OSImage,
///         Namespace = "Microsoft.Maintenance",
///         RecurEvery = "Day",
///         ResourceGroupName = "examplerg",
///         ResourceName = "configuration1",
///         StartDateTime = "2020-04-30 08:00",
///         TimeZone = "Pacific Standard Time",
///         Visibility = AzureNative.Maintenance.Visibility.Custom,
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
/// 	maintenance "github.com/pulumi/pulumi-azure-native-sdk/maintenance/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := maintenance.NewMaintenanceConfiguration(ctx, "maintenanceConfiguration", &maintenance.MaintenanceConfigurationArgs{
/// 			Duration:           pulumi.String("05:00"),
/// 			ExpirationDateTime: pulumi.String("9999-12-31 00:00"),
/// 			Location:           pulumi.String("westus2"),
/// 			MaintenanceScope:   pulumi.String(maintenance.MaintenanceScopeOSImage),
/// 			Namespace:          pulumi.String("Microsoft.Maintenance"),
/// 			RecurEvery:         pulumi.String("Day"),
/// 			ResourceGroupName:  pulumi.String("examplerg"),
/// 			ResourceName:       pulumi.String("configuration1"),
/// 			StartDateTime:      pulumi.String("2020-04-30 08:00"),
/// 			TimeZone:           pulumi.String("Pacific Standard Time"),
/// 			Visibility:         pulumi.String(maintenance.VisibilityCustom),
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
/// import com.pulumi.azurenative.maintenance.MaintenanceConfiguration;
/// import com.pulumi.azurenative.maintenance.MaintenanceConfigurationArgs;
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
///             .duration("05:00")
///             .expirationDateTime("9999-12-31 00:00")
///             .location("westus2")
///             .maintenanceScope("OSImage")
///             .namespace("Microsoft.Maintenance")
///             .recurEvery("Day")
///             .resourceGroupName("examplerg")
///             .resourceName("configuration1")
///             .startDateTime("2020-04-30 08:00")
///             .timeZone("Pacific Standard Time")
///             .visibility("Custom")
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
/// const maintenanceConfiguration = new azure_native.maintenance.MaintenanceConfiguration("maintenanceConfiguration", {
///     duration: "05:00",
///     expirationDateTime: "9999-12-31 00:00",
///     location: "westus2",
///     maintenanceScope: azure_native.maintenance.MaintenanceScope.OSImage,
///     namespace: "Microsoft.Maintenance",
///     recurEvery: "Day",
///     resourceGroupName: "examplerg",
///     resourceName: "configuration1",
///     startDateTime: "2020-04-30 08:00",
///     timeZone: "Pacific Standard Time",
///     visibility: azure_native.maintenance.Visibility.Custom,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// maintenance_configuration = azure_native.maintenance.MaintenanceConfiguration("maintenanceConfiguration",
///     duration="05:00",
///     expiration_date_time="9999-12-31 00:00",
///     location="westus2",
///     maintenance_scope=azure_native.maintenance.MaintenanceScope.OS_IMAGE,
///     namespace="Microsoft.Maintenance",
///     recur_every="Day",
///     resource_group_name="examplerg",
///     resource_name_="configuration1",
///     start_date_time="2020-04-30 08:00",
///     time_zone="Pacific Standard Time",
///     visibility=azure_native.maintenance.Visibility.CUSTOM)
///
/// ```
///
/// ```yaml
/// resources:
///   maintenanceConfiguration:
///     type: azure-native:maintenance:MaintenanceConfiguration
///     properties:
///       duration: 05:00
///       expirationDateTime: 9999-12-31 00:00
///       location: westus2
///       maintenanceScope: OSImage
///       namespace: Microsoft.Maintenance
///       recurEvery: Day
///       resourceGroupName: examplerg
///       resourceName: configuration1
///       startDateTime: 2020-04-30 08:00
///       timeZone: Pacific Standard Time
///       visibility: Custom
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
/// $ pulumi import azure-native:maintenance:MaintenanceConfiguration configuration1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Maintenance/maintenanceConfigurations/{resourceName}
/// ```
class MaintenanceConfiguration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Duration of the maintenance window in HH:mm format. If not provided, default value will be used based on maintenance scope provided. Example: 05:00.
  late final pulumi.Output<String?> duration;
  /// Effective expiration date of the maintenance window in YYYY-MM-DD hh:mm format. The window will be created in the time zone provided and adjusted to daylight savings according to that time zone. Expiration date must be set to a future date. If not provided, it will be set to the maximum datetime 9999-12-31 23:59:59.
  late final pulumi.Output<String?> expirationDateTime;
  /// Gets or sets extensionProperties of the maintenanceConfiguration
  late final pulumi.Output<Map<String, String>?> extensionProperties;
  /// The input parameters to be passed to the patch run operation.
  late final pulumi.Output<InputPatchConfigurationResponse?> installPatches;
  /// Gets or sets location of the resource
  late final pulumi.Output<String?> location;
  /// Gets or sets maintenanceScope of the configuration
  late final pulumi.Output<String?> maintenanceScope;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Gets or sets namespace of the resource
  late final pulumi.Output<String?> namespace;
  /// Rate at which a Maintenance window is expected to recur. The rate can be expressed as daily, weekly, or monthly schedules. Daily schedule are formatted as recurEvery: [Frequency as integer]['Day(s)']. If no frequency is provided, the default frequency is 1. Daily schedule examples are recurEvery: Day, recurEvery: 3Days.  Weekly schedule are formatted as recurEvery: [Frequency as integer]['Week(s)'] [Optional comma separated list of weekdays Monday-Sunday]. Weekly schedule examples are recurEvery: 3Weeks, recurEvery: Week Saturday,Sunday. Monthly schedules are formatted as [Frequency as integer]['Month(s)'] [Comma separated list of month days] or [Frequency as integer]['Month(s)'] [Week of Month (First, Second, Third, Fourth, Last)] [Weekday Monday-Sunday] [Optional Offset(No. of days)]. Offset value must be between -6 to 6 inclusive. Monthly schedule examples are recurEvery: Month, recurEvery: 2Months, recurEvery: Month day23,day24, recurEvery: Month Last Sunday, recurEvery: Month Fourth Monday, recurEvery: Month Last Sunday Offset-3, recurEvery: Month Third Sunday Offset6.
  late final pulumi.Output<String?> recurEvery;
  /// Effective start date of the maintenance window in YYYY-MM-DD hh:mm format. The start date can be set to either the current date or future date. The window will be created in the time zone provided and adjusted to daylight savings according to that time zone.
  late final pulumi.Output<String?> startDateTime;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Gets or sets tags of the resource
  late final pulumi.Output<Map<String, String>?> tags;
  /// Name of the timezone. List of timezones can be obtained by executing [System.TimeZoneInfo]::GetSystemTimeZones() in PowerShell. Example: Pacific Standard Time, UTC, W. Europe Standard Time, Korea Standard Time, Cen. Australia Standard Time.
  late final pulumi.Output<String?> timeZone;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Gets or sets the visibility of the configuration. The default value is 'Custom'
  late final pulumi.Output<String?> visibility;

  /// Creates a new [MaintenanceConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MaintenanceConfiguration]. {@macro pulumi_maintenance_maintenance_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MaintenanceConfiguration(
    String name, {
    MaintenanceConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:maintenance:MaintenanceConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.duration = registerOutput<String?>('duration');
    this.expirationDateTime = registerOutput<String?>('expirationDateTime');
    this.extensionProperties = registerOutput<Map<String, String>?>('extensionProperties');
    this.installPatches = registerOutput<InputPatchConfigurationResponse?>('installPatches');
    this.location = registerOutput<String?>('location');
    this.maintenanceScope = registerOutput<String?>('maintenanceScope');
    this.name = registerOutput<String>('name');
    this.namespace = registerOutput<String?>('namespace');
    this.recurEvery = registerOutput<String?>('recurEvery');
    this.startDateTime = registerOutput<String?>('startDateTime');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.timeZone = registerOutput<String?>('timeZone');
    this.type = registerOutput<String>('type');
    this.visibility = registerOutput<String?>('visibility');
  }
}
