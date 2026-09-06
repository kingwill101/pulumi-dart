import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_trigger_args.dart';
import 'system_data_response.dart';

/// A type of trigger based on schedule
///
/// Uses Azure REST API version 2021-08-01. In version 2.x of the Azure Native provider, it used API version 2021-08-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Triggers_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var scheduledTrigger = new AzureNative.DataShare.ScheduledTrigger("scheduledTrigger", new()
///     {
///         AccountName = "Account1",
///         Kind = "ScheduleBased",
///         RecurrenceInterval = AzureNative.DataShare.RecurrenceInterval.Day,
///         ResourceGroupName = "SampleResourceGroup",
///         ShareSubscriptionName = "ShareSubscription1",
///         SynchronizationMode = AzureNative.DataShare.SynchronizationMode.Incremental,
///         SynchronizationTime = "2018-11-14T04:47:52.9614956Z",
///         TriggerName = "Trigger1",
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
/// 		_, err := datashare.NewScheduledTrigger(ctx, "scheduledTrigger", &datashare.ScheduledTriggerArgs{
/// 			AccountName:           pulumi.String("Account1"),
/// 			Kind:                  pulumi.String("ScheduleBased"),
/// 			RecurrenceInterval:    pulumi.String(datashare.RecurrenceIntervalDay),
/// 			ResourceGroupName:     pulumi.String("SampleResourceGroup"),
/// 			ShareSubscriptionName: pulumi.String("ShareSubscription1"),
/// 			SynchronizationMode:   pulumi.String(datashare.SynchronizationModeIncremental),
/// 			SynchronizationTime:   pulumi.String("2018-11-14T04:47:52.9614956Z"),
/// 			TriggerName:           pulumi.String("Trigger1"),
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
/// resource "azure-native_datashare_scheduledtrigger" "scheduledTrigger" {
///   account_name            = "Account1"
///   kind                    = "ScheduleBased"
///   recurrence_interval     = "Day"
///   resource_group_name     = "SampleResourceGroup"
///   share_subscription_name = "ShareSubscription1"
///   synchronization_mode    = "Incremental"
///   synchronization_time    = "2018-11-14T04:47:52.9614956Z"
///   trigger_name            = "Trigger1"
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
/// import com.pulumi.azurenative.datashare.ScheduledTrigger;
/// import com.pulumi.azurenative.datashare.ScheduledTriggerArgs;
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
///         var scheduledTrigger = new ScheduledTrigger("scheduledTrigger", ScheduledTriggerArgs.builder()
///             .accountName("Account1")
///             .kind("ScheduleBased")
///             .recurrenceInterval("Day")
///             .resourceGroupName("SampleResourceGroup")
///             .shareSubscriptionName("ShareSubscription1")
///             .synchronizationMode("Incremental")
///             .synchronizationTime("2018-11-14T04:47:52.9614956Z")
///             .triggerName("Trigger1")
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
/// const scheduledTrigger = new azure_native.datashare.ScheduledTrigger("scheduledTrigger", {
///     accountName: "Account1",
///     kind: "ScheduleBased",
///     recurrenceInterval: azure_native.datashare.RecurrenceInterval.Day,
///     resourceGroupName: "SampleResourceGroup",
///     shareSubscriptionName: "ShareSubscription1",
///     synchronizationMode: azure_native.datashare.SynchronizationMode.Incremental,
///     synchronizationTime: "2018-11-14T04:47:52.9614956Z",
///     triggerName: "Trigger1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// scheduled_trigger = azure_native.datashare.ScheduledTrigger("scheduledTrigger",
///     account_name="Account1",
///     kind="ScheduleBased",
///     recurrence_interval=azure_native.datashare.RecurrenceInterval.DAY,
///     resource_group_name="SampleResourceGroup",
///     share_subscription_name="ShareSubscription1",
///     synchronization_mode=azure_native.datashare.SynchronizationMode.INCREMENTAL,
///     synchronization_time="2018-11-14T04:47:52.9614956Z",
///     trigger_name="Trigger1")
///
/// ```
///
/// ```yaml
/// resources:
///   scheduledTrigger:
///     type: azure-native:datashare:ScheduledTrigger
///     properties:
///       accountName: Account1
///       kind: ScheduleBased
///       recurrenceInterval: Day
///       resourceGroupName: SampleResourceGroup
///       shareSubscriptionName: ShareSubscription1
///       synchronizationMode: Incremental
///       synchronizationTime: 2018-11-14T04:47:52.9614956Z
///       triggerName: Trigger1
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
/// $ pulumi import azure-native:datashare:ScheduledTrigger Trigger1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataShare/accounts/{accountName}/shareSubscriptions/{shareSubscriptionName}/triggers/{triggerName}
/// ```
class ScheduledTrigger extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Time at which the trigger was created.
  late final pulumi.Output<String> createdAt;
  /// Kind of synchronization on trigger.
  /// Expected value is 'ScheduleBased'.
  late final pulumi.Output<String> kind;
  /// Name of the azure resource
  late final pulumi.Output<String> name;
  /// Gets the provisioning state
  late final pulumi.Output<String> provisioningState;
  /// Recurrence Interval
  late final pulumi.Output<String> recurrenceInterval;
  /// Synchronization mode
  late final pulumi.Output<String?> synchronizationMode;
  /// Synchronization time
  late final pulumi.Output<String> synchronizationTime;
  /// System Data of the Azure resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Gets the trigger state
  late final pulumi.Output<String> triggerStatus;
  /// Type of the azure resource
  late final pulumi.Output<String> type;
  /// Name of the user who created the trigger.
  late final pulumi.Output<String> userName;

  /// Creates a new [ScheduledTrigger].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScheduledTrigger]. {@macro pulumi_datashare_scheduled_trigger_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScheduledTrigger(
    String name, {
    ScheduledTriggerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datashare:ScheduledTrigger',
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
    synchronizationMode = registerOutput<String?>('synchronizationMode');
    synchronizationTime = registerOutput<String>('synchronizationTime');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    triggerStatus = registerOutput<String>('triggerStatus');
    type = registerOutput<String>('type');
    userName = registerOutput<String>('userName');
  }

  /// Creates a typed reference to an existing [ScheduledTrigger] resource.
  ScheduledTrigger.reference(String urn)
    : super(
        'azure-native:datashare:ScheduledTrigger',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdAt = registerOutput<String>('createdAt');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    recurrenceInterval = registerOutput<String>('recurrenceInterval');
    synchronizationMode = registerOutput<String?>('synchronizationMode');
    synchronizationTime = registerOutput<String>('synchronizationTime');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    triggerStatus = registerOutput<String>('triggerStatus');
    type = registerOutput<String>('type');
    userName = registerOutput<String>('userName');
  }
}
