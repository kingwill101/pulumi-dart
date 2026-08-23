import 'package:pulumi/pulumi.dart' as pulumi;
import 'periodic_timer_event_trigger_args.dart';
import 'periodic_timer_source_info_response.dart';
import 'role_sink_info_response.dart';
import 'system_data_response.dart';

/// Trigger details.
///
/// Uses Azure REST API version 2023-07-01. In version 2.x of the Azure Native provider, it used API version 2022-03-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### TriggerPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var periodicTimerEventTrigger = new AzureNative.DataBoxEdge.PeriodicTimerEventTrigger("periodicTimerEventTrigger", new()
///     {
///         DeviceName = "testedgedevice",
///         Name = "trigger1",
///         ResourceGroupName = "GroupForEdgeAutomation",
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
/// 	databoxedge "github.com/pulumi/pulumi-azure-native-sdk/databoxedge/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databoxedge.NewPeriodicTimerEventTrigger(ctx, "periodicTimerEventTrigger", &databoxedge.PeriodicTimerEventTriggerArgs{
/// 			DeviceName:        pulumi.String("testedgedevice"),
/// 			Name:              pulumi.String("trigger1"),
/// 			ResourceGroupName: pulumi.String("GroupForEdgeAutomation"),
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
/// resource "azure-native_databoxedge_periodictimereventtrigger" "periodicTimerEventTrigger" {
///   device_name         = "testedgedevice"
///   name                = "trigger1"
///   resource_group_name = "GroupForEdgeAutomation"
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
/// import com.pulumi.azurenative.databoxedge.PeriodicTimerEventTrigger;
/// import com.pulumi.azurenative.databoxedge.PeriodicTimerEventTriggerArgs;
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
///         var periodicTimerEventTrigger = new PeriodicTimerEventTrigger("periodicTimerEventTrigger", PeriodicTimerEventTriggerArgs.builder()
///             .deviceName("testedgedevice")
///             .name("trigger1")
///             .resourceGroupName("GroupForEdgeAutomation")
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
/// const periodicTimerEventTrigger = new azure_native.databoxedge.PeriodicTimerEventTrigger("periodicTimerEventTrigger", {
///     deviceName: "testedgedevice",
///     name: "trigger1",
///     resourceGroupName: "GroupForEdgeAutomation",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// periodic_timer_event_trigger = azure_native.databoxedge.PeriodicTimerEventTrigger("periodicTimerEventTrigger",
///     device_name="testedgedevice",
///     name="trigger1",
///     resource_group_name="GroupForEdgeAutomation")
///
/// ```
///
/// ```yaml
/// resources:
///   periodicTimerEventTrigger:
///     type: azure-native:databoxedge:PeriodicTimerEventTrigger
///     properties:
///       deviceName: testedgedevice
///       name: trigger1
///       resourceGroupName: GroupForEdgeAutomation
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
/// $ pulumi import azure-native:databoxedge:PeriodicTimerEventTrigger trigger1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/{deviceName}/triggers/{name}
/// ```
class PeriodicTimerEventTrigger extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A custom context tag typically used to correlate the trigger against its usage. For example, if a periodic timer trigger is intended for certain specific IoT modules in the device, the tag can be the name or the image URL of the module.
  late final pulumi.Output<String?> customContextTag;
  /// Trigger Kind.
  /// Expected value is 'PeriodicTimerEvent'.
  late final pulumi.Output<String> kind;
  /// The object name.
  late final pulumi.Output<String> name;
  /// Role Sink information.
  late final pulumi.Output<RoleSinkInfoResponse> sinkInfo;
  /// Periodic timer details.
  late final pulumi.Output<PeriodicTimerSourceInfoResponse> sourceInfo;
  /// Metadata pertaining to creation and last modification of Trigger
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The hierarchical type of the object.
  late final pulumi.Output<String> type;

  /// Creates a new [PeriodicTimerEventTrigger].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PeriodicTimerEventTrigger]. {@macro pulumi_databoxedge_periodic_timer_event_trigger_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PeriodicTimerEventTrigger(
    String name, {
    PeriodicTimerEventTriggerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:databoxedge:PeriodicTimerEventTrigger',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    customContextTag = registerOutput<String?>('customContextTag');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    sinkInfo = registerOutput<RoleSinkInfoResponse>('sinkInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RoleSinkInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceInfo = registerOutput<PeriodicTimerSourceInfoResponse>('sourceInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PeriodicTimerSourceInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
