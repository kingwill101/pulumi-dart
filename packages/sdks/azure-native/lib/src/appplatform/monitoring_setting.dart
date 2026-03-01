import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_setting_args.dart';
import 'monitoring_setting_properties_response.dart';
import 'system_data_response.dart';

/// Monitoring Setting resource
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### MonitoringSettings_UpdatePut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var monitoringSetting = new AzureNative.AppPlatform.MonitoringSetting("monitoringSetting", new()
///     {
///         Properties = new AzureNative.AppPlatform.Inputs.MonitoringSettingPropertiesArgs
///         {
///             AppInsightsInstrumentationKey = "00000000-0000-0000-0000-000000000000",
///             AppInsightsSamplingRate = 10,
///             TraceEnabled = true,
///         },
///         ResourceGroupName = "myResourceGroup",
///         ServiceName = "myservice",
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
/// 	appplatform "github.com/pulumi/pulumi-azure-native-sdk/appplatform/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appplatform.NewMonitoringSetting(ctx, "monitoringSetting", &appplatform.MonitoringSettingArgs{
/// 			Properties: &appplatform.MonitoringSettingPropertiesArgs{
/// 				AppInsightsInstrumentationKey: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 				AppInsightsSamplingRate:       pulumi.Float64(10),
/// 				TraceEnabled:                  pulumi.Bool(true),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ServiceName:       pulumi.String("myservice"),
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
/// import com.pulumi.azurenative.appplatform.MonitoringSetting;
/// import com.pulumi.azurenative.appplatform.MonitoringSettingArgs;
/// import com.pulumi.azurenative.appplatform.inputs.MonitoringSettingPropertiesArgs;
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
///         var monitoringSetting = new MonitoringSetting("monitoringSetting", MonitoringSettingArgs.builder()
///             .properties(MonitoringSettingPropertiesArgs.builder()
///                 .appInsightsInstrumentationKey("00000000-0000-0000-0000-000000000000")
///                 .appInsightsSamplingRate(10.0)
///                 .traceEnabled(true)
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .serviceName("myservice")
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
/// const monitoringSetting = new azure_native.appplatform.MonitoringSetting("monitoringSetting", {
///     properties: {
///         appInsightsInstrumentationKey: "00000000-0000-0000-0000-000000000000",
///         appInsightsSamplingRate: 10,
///         traceEnabled: true,
///     },
///     resourceGroupName: "myResourceGroup",
///     serviceName: "myservice",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// monitoring_setting = azure_native.appplatform.MonitoringSetting("monitoringSetting",
///     properties={
///         "app_insights_instrumentation_key": "00000000-0000-0000-0000-000000000000",
///         "app_insights_sampling_rate": 10,
///         "trace_enabled": True,
///     },
///     resource_group_name="myResourceGroup",
///     service_name="myservice")
///
/// ```
///
/// ```yaml
/// resources:
///   monitoringSetting:
///     type: azure-native:appplatform:MonitoringSetting
///     properties:
///       properties:
///         appInsightsInstrumentationKey: 00000000-0000-0000-0000-000000000000
///         appInsightsSamplingRate: 10
///         traceEnabled: true
///       resourceGroupName: myResourceGroup
///       serviceName: myservice
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
/// $ pulumi import azure-native:appplatform:MonitoringSetting default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppPlatform/Spring/{serviceName}/monitoringSettings/default
/// ```
class MonitoringSetting extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// Properties of the Monitoring Setting resource
  late final pulumi.Output<MonitoringSettingPropertiesResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [MonitoringSetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MonitoringSetting]. {@macro pulumi_appplatform_monitoring_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MonitoringSetting(
    String name, {
    MonitoringSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:appplatform:MonitoringSetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<MonitoringSettingPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
