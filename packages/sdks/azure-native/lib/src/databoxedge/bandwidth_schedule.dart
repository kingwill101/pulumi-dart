import 'package:pulumi/pulumi.dart' as pulumi;
import 'bandwidth_schedule_args.dart';
import 'system_data_response.dart';

/// The bandwidth schedule details.
///
/// Uses Azure REST API version 2023-07-01. In version 2.x of the Azure Native provider, it used API version 2022-03-01.
///
/// Other available API versions: 2022-03-01, 2022-04-01-preview, 2022-12-01-preview, 2023-01-01-preview, 2023-12-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databoxedge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### BandwidthSchedulePut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bandwidthSchedule = new AzureNative.DataBoxEdge.BandwidthSchedule("bandwidthSchedule", new()
///     {
///         Days = new[]
///         {
///             AzureNative.DataBoxEdge.DayOfWeek.Sunday,
///             AzureNative.DataBoxEdge.DayOfWeek.Monday,
///         },
///         DeviceName = "testedgedevice",
///         Name = "bandwidth-1",
///         RateInMbps = 100,
///         ResourceGroupName = "GroupForEdgeAutomation",
///         Start = "0:0:0",
///         Stop = "13:59:0",
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
/// 		_, err := databoxedge.NewBandwidthSchedule(ctx, "bandwidthSchedule", &databoxedge.BandwidthScheduleArgs{
/// 			Days: pulumi.StringArray{
/// 				pulumi.String(databoxedge.DayOfWeekSunday),
/// 				pulumi.String(databoxedge.DayOfWeekMonday),
/// 			},
/// 			DeviceName:        pulumi.String("testedgedevice"),
/// 			Name:              pulumi.String("bandwidth-1"),
/// 			RateInMbps:        pulumi.Int(100),
/// 			ResourceGroupName: pulumi.String("GroupForEdgeAutomation"),
/// 			Start:             pulumi.String("0:0:0"),
/// 			Stop:              pulumi.String("13:59:0"),
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
/// resource "azure-native_databoxedge_bandwidthschedule" "bandwidthSchedule" {
///   days                = ["Sunday", "Monday"]
///   device_name         = "testedgedevice"
///   name                = "bandwidth-1"
///   rate_in_mbps        = 100
///   resource_group_name = "GroupForEdgeAutomation"
///   start               = "0:0:0"
///   stop                = "13:59:0"
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
/// import com.pulumi.azurenative.databoxedge.BandwidthSchedule;
/// import com.pulumi.azurenative.databoxedge.BandwidthScheduleArgs;
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
///         var bandwidthSchedule = new BandwidthSchedule("bandwidthSchedule", BandwidthScheduleArgs.builder()
///             .days(
///                 "Sunday",
///                 "Monday")
///             .deviceName("testedgedevice")
///             .name("bandwidth-1")
///             .rateInMbps(100)
///             .resourceGroupName("GroupForEdgeAutomation")
///             .start("0:0:0")
///             .stop("13:59:0")
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
/// const bandwidthSchedule = new azure_native.databoxedge.BandwidthSchedule("bandwidthSchedule", {
///     days: [
///         azure_native.databoxedge.DayOfWeek.Sunday,
///         azure_native.databoxedge.DayOfWeek.Monday,
///     ],
///     deviceName: "testedgedevice",
///     name: "bandwidth-1",
///     rateInMbps: 100,
///     resourceGroupName: "GroupForEdgeAutomation",
///     start: "0:0:0",
///     stop: "13:59:0",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// bandwidth_schedule = azure_native.databoxedge.BandwidthSchedule("bandwidthSchedule",
///     days=[
///         azure_native.databoxedge.DayOfWeek.SUNDAY,
///         azure_native.databoxedge.DayOfWeek.MONDAY,
///     ],
///     device_name="testedgedevice",
///     name="bandwidth-1",
///     rate_in_mbps=100,
///     resource_group_name="GroupForEdgeAutomation",
///     start="0:0:0",
///     stop="13:59:0")
///
/// ```
///
/// ```yaml
/// resources:
///   bandwidthSchedule:
///     type: azure-native:databoxedge:BandwidthSchedule
///     properties:
///       days:
///         - Sunday
///         - Monday
///       deviceName: testedgedevice
///       name: bandwidth-1
///       rateInMbps: 100
///       resourceGroupName: GroupForEdgeAutomation
///       start: 0:0:0
///       stop: 13:59:0
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
/// $ pulumi import azure-native:databoxedge:BandwidthSchedule bandwidth-1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/{deviceName}/bandwidthSchedules/{name}
/// ```
class BandwidthSchedule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The days of the week when this schedule is applicable.
  late final pulumi.Output<List<String>> days;
  /// The object name.
  late final pulumi.Output<String> name;
  /// The bandwidth rate in Mbps.
  late final pulumi.Output<int> rateInMbps;
  /// The start time of the schedule in UTC.
  late final pulumi.Output<String> start;
  /// The stop time of the schedule in UTC.
  late final pulumi.Output<String> stop;
  /// Metadata pertaining to creation and last modification of BandwidthSchedule
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The hierarchical type of the object.
  late final pulumi.Output<String> type;

  /// Creates a new [BandwidthSchedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BandwidthSchedule]. {@macro pulumi_databoxedge_bandwidth_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BandwidthSchedule(
    String name, {
    BandwidthScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:databoxedge:BandwidthSchedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    days = registerOutput<List<String>>('days');
    this.name = registerOutput<String>('name');
    rateInMbps = registerOutput<int>('rateInMbps');
    start = registerOutput<String>('start');
    stop = registerOutput<String>('stop');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
