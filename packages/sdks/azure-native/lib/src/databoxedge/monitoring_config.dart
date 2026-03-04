import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_config_args.dart';
import 'system_data_response.dart';

/// The metric setting details for the role
///
/// Uses Azure REST API version 2023-07-01. In version 2.x of the Azure Native provider, it used API version 2022-03-01.
///
/// Other available API versions: 2022-03-01, 2022-04-01-preview, 2022-12-01-preview, 2023-01-01-preview, 2023-12-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databoxedge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutMonitoringConfig
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var monitoringConfig = new AzureNative.DataBoxEdge.MonitoringConfig("monitoringConfig", new()
///     {
///         DeviceName = "testedgedevice",
///         MetricConfigurations = new[]
///         {
///             new AzureNative.DataBoxEdge.Inputs.MetricConfigurationArgs
///             {
///                 CounterSets = new[]
///                 {
///                     new AzureNative.DataBoxEdge.Inputs.MetricCounterSetArgs
///                     {
///                         Counters = new[]
///                         {
///                             new AzureNative.DataBoxEdge.Inputs.MetricCounterArgs
///                             {
///                                 Name = "test",
///                             },
///                         },
///                     },
///                 },
///                 MdmAccount = "test",
///                 MetricNameSpace = "test",
///                 ResourceId = "test",
///             },
///         },
///         ResourceGroupName = "GroupForEdgeAutomation",
///         RoleName = "testrole",
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
/// 		_, err := databoxedge.NewMonitoringConfig(ctx, "monitoringConfig", &databoxedge.MonitoringConfigArgs{
/// 			DeviceName: pulumi.String("testedgedevice"),
/// 			MetricConfigurations: databoxedge.MetricConfigurationArray{
/// 				&databoxedge.MetricConfigurationArgs{
/// 					CounterSets: databoxedge.MetricCounterSetArray{
/// 						&databoxedge.MetricCounterSetArgs{
/// 							Counters: databoxedge.MetricCounterArray{
/// 								&databoxedge.MetricCounterArgs{
/// 									Name: pulumi.String("test"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					MdmAccount:      pulumi.String("test"),
/// 					MetricNameSpace: pulumi.String("test"),
/// 					ResourceId:      pulumi.String("test"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("GroupForEdgeAutomation"),
/// 			RoleName:          pulumi.String("testrole"),
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
/// import com.pulumi.azurenative.databoxedge.MonitoringConfig;
/// import com.pulumi.azurenative.databoxedge.MonitoringConfigArgs;
/// import com.pulumi.azurenative.databoxedge.inputs.MetricConfigurationArgs;
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
///         var monitoringConfig = new MonitoringConfig("monitoringConfig", MonitoringConfigArgs.builder()
///             .deviceName("testedgedevice")
///             .metricConfigurations(MetricConfigurationArgs.builder()
///                 .counterSets(MetricCounterSetArgs.builder()
///                     .counters(MetricCounterArgs.builder()
///                         .name("test")
///                         .build())
///                     .build())
///                 .mdmAccount("test")
///                 .metricNameSpace("test")
///                 .resourceId("test")
///                 .build())
///             .resourceGroupName("GroupForEdgeAutomation")
///             .roleName("testrole")
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
/// const monitoringConfig = new azure_native.databoxedge.MonitoringConfig("monitoringConfig", {
///     deviceName: "testedgedevice",
///     metricConfigurations: [{
///         counterSets: [{
///             counters: [{
///                 name: "test",
///             }],
///         }],
///         mdmAccount: "test",
///         metricNameSpace: "test",
///         resourceId: "test",
///     }],
///     resourceGroupName: "GroupForEdgeAutomation",
///     roleName: "testrole",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// monitoring_config = azure_native.databoxedge.MonitoringConfig("monitoringConfig",
///     device_name="testedgedevice",
///     metric_configurations=[{
///         "counter_sets": [{
///             "counters": [{
///                 "name": "test",
///             }],
///         }],
///         "mdm_account": "test",
///         "metric_name_space": "test",
///         "resource_id": "test",
///     }],
///     resource_group_name="GroupForEdgeAutomation",
///     role_name="testrole")
///
/// ```
///
/// ```yaml
/// resources:
///   monitoringConfig:
///     type: azure-native:databoxedge:MonitoringConfig
///     properties:
///       deviceName: testedgedevice
///       metricConfigurations:
///         - counterSets:
///             - counters:
///                 - name: test
///           mdmAccount: test
///           metricNameSpace: test
///           resourceId: test
///       resourceGroupName: GroupForEdgeAutomation
///       roleName: testrole
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
/// $ pulumi import azure-native:databoxedge:MonitoringConfig myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/{deviceName}/roles/{roleName}/monitoringConfig/default
/// ```
class MonitoringConfig extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The metrics configuration details
  late final pulumi.Output<List<Map<String, dynamic>>> metricConfigurations;

  /// The object name.
  late final pulumi.Output<String> name;

  /// Metadata pertaining to creation and last modification of MonitoringConfiguration
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The hierarchical type of the object.
  late final pulumi.Output<String> type;

  /// Creates a new [MonitoringConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MonitoringConfig]. {@macro pulumi_databoxedge_monitoring_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MonitoringConfig(
    String name, {
    MonitoringConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:databoxedge:MonitoringConfig',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    metricConfigurations = registerOutput<List<Map<String, dynamic>>>(
      'metricConfigurations',
    );
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
