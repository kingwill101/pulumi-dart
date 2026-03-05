import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_synchronization_setting_args.dart';
import 'system_data_response.dart';

/// A type of synchronization setting based on schedule
///
/// Uses Azure REST API version 2021-08-01. In version 2.x of the Azure Native provider, it used API version 2021-08-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SynchronizationSettings_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var scheduledSynchronizationSetting = new AzureNative.DataShare.ScheduledSynchronizationSetting("scheduledSynchronizationSetting", new()
///     {
///         AccountName = "Account1",
///         Kind = "ScheduleBased",
///         RecurrenceInterval = AzureNative.DataShare.RecurrenceInterval.Day,
///         ResourceGroupName = "SampleResourceGroup",
///         ShareName = "Share1",
///         SynchronizationSettingName = "Dataset1",
///         SynchronizationTime = "2018-11-14T04:47:52.9614956Z",
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
/// 	datashare "github.com/pulumi/pulumi-azure-native-sdk/datashare/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datashare.NewScheduledSynchronizationSetting(ctx, "scheduledSynchronizationSetting", &datashare.ScheduledSynchronizationSettingArgs{
/// 			AccountName:                pulumi.String("Account1"),
/// 			Kind:                       pulumi.String("ScheduleBased"),
/// 			RecurrenceInterval:         pulumi.String(datashare.RecurrenceIntervalDay),
/// 			ResourceGroupName:          pulumi.String("SampleResourceGroup"),
/// 			ShareName:                  pulumi.String("Share1"),
/// 			SynchronizationSettingName: pulumi.String("Dataset1"),
/// 			SynchronizationTime:        pulumi.String("2018-11-14T04:47:52.9614956Z"),
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
/// import com.pulumi.azurenative.datashare.ScheduledSynchronizationSetting;
/// import com.pulumi.azurenative.datashare.ScheduledSynchronizationSettingArgs;
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
///         var scheduledSynchronizationSetting = new ScheduledSynchronizationSetting("scheduledSynchronizationSetting", ScheduledSynchronizationSettingArgs.builder()
///             .accountName("Account1")
///             .kind("ScheduleBased")
///             .recurrenceInterval("Day")
///             .resourceGroupName("SampleResourceGroup")
///             .shareName("Share1")
///             .synchronizationSettingName("Dataset1")
///             .synchronizationTime("2018-11-14T04:47:52.9614956Z")
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
/// const scheduledSynchronizationSetting = new azure_native.datashare.ScheduledSynchronizationSetting("scheduledSynchronizationSetting", {
///     accountName: "Account1",
///     kind: "ScheduleBased",
///     recurrenceInterval: azure_native.datashare.RecurrenceInterval.Day,
///     resourceGroupName: "SampleResourceGroup",
///     shareName: "Share1",
///     synchronizationSettingName: "Dataset1",
///     synchronizationTime: "2018-11-14T04:47:52.9614956Z",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// scheduled_synchronization_setting = azure_native.datashare.ScheduledSynchronizationSetting("scheduledSynchronizationSetting",
///     account_name="Account1",
///     kind="ScheduleBased",
///     recurrence_interval=azure_native.datashare.RecurrenceInterval.DAY,
///     resource_group_name="SampleResourceGroup",
///     share_name="Share1",
///     synchronization_setting_name="Dataset1",
///     synchronization_time="2018-11-14T04:47:52.9614956Z")
///
/// ```
///
/// ```yaml
/// resources:
///   scheduledSynchronizationSetting:
///     type: azure-native:datashare:ScheduledSynchronizationSetting
///     properties:
///       accountName: Account1
///       kind: ScheduleBased
///       recurrenceInterval: Day
///       resourceGroupName: SampleResourceGroup
///       shareName: Share1
///       synchronizationSettingName: Dataset1
///       synchronizationTime: 2018-11-14T04:47:52.9614956Z
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
/// $ pulumi import azure-native:datashare:ScheduledSynchronizationSetting SynchronizationSetting1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataShare/accounts/{accountName}/shares/{shareName}/synchronizationSettings/{synchronizationSettingName}
/// ```
class ScheduledSynchronizationSetting extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Time at which the synchronization setting was created.
  late final pulumi.Output<String> createdAt;
  /// Kind of synchronization setting.
  /// Expected value is 'ScheduleBased'.
  late final pulumi.Output<String> kind;
  /// Name of the azure resource
  late final pulumi.Output<String> name;
  /// Gets or sets the provisioning state
  late final pulumi.Output<String> provisioningState;
  /// Recurrence Interval
  late final pulumi.Output<String> recurrenceInterval;
  /// Synchronization time
  late final pulumi.Output<String> synchronizationTime;
  /// System Data of the Azure resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Type of the azure resource
  late final pulumi.Output<String> type;
  /// Name of the user who created the synchronization setting.
  late final pulumi.Output<String> userName;

  /// Creates a new [ScheduledSynchronizationSetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScheduledSynchronizationSetting]. {@macro pulumi_datashare_scheduled_synchronization_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScheduledSynchronizationSetting(
    String name, {
    ScheduledSynchronizationSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datashare:ScheduledSynchronizationSetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdAt = registerOutput<String>('createdAt');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    recurrenceInterval = registerOutput<String>('recurrenceInterval');
    synchronizationTime = registerOutput<String>('synchronizationTime');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    userName = registerOutput<String>('userName');
  }
}
