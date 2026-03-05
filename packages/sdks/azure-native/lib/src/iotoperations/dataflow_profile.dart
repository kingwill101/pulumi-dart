import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_profile_args.dart';
import 'dataflow_profile_properties_response.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Instance dataflowProfile resource
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2024-08-15-preview, 2024-09-15-preview, 2025-04-01, 2025-07-01-preview, 2025-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iotoperations [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DataflowProfile_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataflowProfile = new AzureNative.IoTOperations.DataflowProfile("dataflowProfile", new()
///     {
///         DataflowProfileName = "resource-name123",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "qmbrfwcpwwhggszhrdjv",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.DataflowProfilePropertiesArgs
///         {
///             Diagnostics = new AzureNative.IoTOperations.Inputs.ProfileDiagnosticsArgs
///             {
///                 Logs = new AzureNative.IoTOperations.Inputs.DiagnosticsLogsArgs
///                 {
///                     Level = "rnmwokumdmebpmfxxxzvvjfdywotav",
///                 },
///                 Metrics = new AzureNative.IoTOperations.Inputs.MetricsArgs
///                 {
///                     PrometheusPort = 7581,
///                 },
///             },
///             InstanceCount = 14,
///         },
///         ResourceGroupName = "rgiotoperations",
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
/// 	iotoperations "github.com/pulumi/pulumi-azure-native-sdk/iotoperations/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iotoperations.NewDataflowProfile(ctx, "dataflowProfile", &iotoperations.DataflowProfileArgs{
/// 			DataflowProfileName: pulumi.String("resource-name123"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("qmbrfwcpwwhggszhrdjv"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.DataflowProfilePropertiesArgs{
/// 				Diagnostics: &iotoperations.ProfileDiagnosticsArgs{
/// 					Logs: &iotoperations.DiagnosticsLogsArgs{
/// 						Level: pulumi.String("rnmwokumdmebpmfxxxzvvjfdywotav"),
/// 					},
/// 					Metrics: &iotoperations.MetricsArgs{
/// 						PrometheusPort: pulumi.Int(7581),
/// 					},
/// 				},
/// 				InstanceCount: pulumi.Int(14),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgiotoperations"),
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
/// import com.pulumi.azurenative.iotoperations.DataflowProfile;
/// import com.pulumi.azurenative.iotoperations.DataflowProfileArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowProfilePropertiesArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ProfileDiagnosticsArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DiagnosticsLogsArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.MetricsArgs;
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
///         var dataflowProfile = new DataflowProfile("dataflowProfile", DataflowProfileArgs.builder()
///             .dataflowProfileName("resource-name123")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("qmbrfwcpwwhggszhrdjv")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .properties(DataflowProfilePropertiesArgs.builder()
///                 .diagnostics(ProfileDiagnosticsArgs.builder()
///                     .logs(DiagnosticsLogsArgs.builder()
///                         .level("rnmwokumdmebpmfxxxzvvjfdywotav")
///                         .build())
///                     .metrics(MetricsArgs.builder()
///                         .prometheusPort(7581)
///                         .build())
///                     .build())
///                 .instanceCount(14)
///                 .build())
///             .resourceGroupName("rgiotoperations")
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
/// const dataflowProfile = new azure_native.iotoperations.DataflowProfile("dataflowProfile", {
///     dataflowProfileName: "resource-name123",
///     extendedLocation: {
///         name: "qmbrfwcpwwhggszhrdjv",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     properties: {
///         diagnostics: {
///             logs: {
///                 level: "rnmwokumdmebpmfxxxzvvjfdywotav",
///             },
///             metrics: {
///                 prometheusPort: 7581,
///             },
///         },
///         instanceCount: 14,
///     },
///     resourceGroupName: "rgiotoperations",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dataflow_profile = azure_native.iotoperations.DataflowProfile("dataflowProfile",
///     dataflow_profile_name="resource-name123",
///     extended_location={
///         "name": "qmbrfwcpwwhggszhrdjv",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     properties={
///         "diagnostics": {
///             "logs": {
///                 "level": "rnmwokumdmebpmfxxxzvvjfdywotav",
///             },
///             "metrics": {
///                 "prometheus_port": 7581,
///             },
///         },
///         "instance_count": 14,
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   dataflowProfile:
///     type: azure-native:iotoperations:DataflowProfile
///     properties:
///       dataflowProfileName: resource-name123
///       extendedLocation:
///         name: qmbrfwcpwwhggszhrdjv
///         type: CustomLocation
///       instanceName: resource-name123
///       properties:
///         diagnostics:
///           logs:
///             level: rnmwokumdmebpmfxxxzvvjfdywotav
///           metrics:
///             prometheusPort: 7581
///         instanceCount: 14
///       resourceGroupName: rgiotoperations
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataflowProfile_CreateOrUpdate_Minimal
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataflowProfile = new AzureNative.IoTOperations.DataflowProfile("dataflowProfile", new()
///     {
///         DataflowProfileName = "aio-dataflowprofile",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "qmbrfwcpwwhggszhrdjv",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.DataflowProfilePropertiesArgs
///         {
///             InstanceCount = 1,
///         },
///         ResourceGroupName = "rgiotoperations",
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
/// 	iotoperations "github.com/pulumi/pulumi-azure-native-sdk/iotoperations/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iotoperations.NewDataflowProfile(ctx, "dataflowProfile", &iotoperations.DataflowProfileArgs{
/// 			DataflowProfileName: pulumi.String("aio-dataflowprofile"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("qmbrfwcpwwhggszhrdjv"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.DataflowProfilePropertiesArgs{
/// 				InstanceCount: pulumi.Int(1),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgiotoperations"),
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
/// import com.pulumi.azurenative.iotoperations.DataflowProfile;
/// import com.pulumi.azurenative.iotoperations.DataflowProfileArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowProfilePropertiesArgs;
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
///         var dataflowProfile = new DataflowProfile("dataflowProfile", DataflowProfileArgs.builder()
///             .dataflowProfileName("aio-dataflowprofile")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("qmbrfwcpwwhggszhrdjv")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .properties(DataflowProfilePropertiesArgs.builder()
///                 .instanceCount(1)
///                 .build())
///             .resourceGroupName("rgiotoperations")
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
/// const dataflowProfile = new azure_native.iotoperations.DataflowProfile("dataflowProfile", {
///     dataflowProfileName: "aio-dataflowprofile",
///     extendedLocation: {
///         name: "qmbrfwcpwwhggszhrdjv",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     properties: {
///         instanceCount: 1,
///     },
///     resourceGroupName: "rgiotoperations",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dataflow_profile = azure_native.iotoperations.DataflowProfile("dataflowProfile",
///     dataflow_profile_name="aio-dataflowprofile",
///     extended_location={
///         "name": "qmbrfwcpwwhggszhrdjv",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     properties={
///         "instance_count": 1,
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   dataflowProfile:
///     type: azure-native:iotoperations:DataflowProfile
///     properties:
///       dataflowProfileName: aio-dataflowprofile
///       extendedLocation:
///         name: qmbrfwcpwwhggszhrdjv
///         type: CustomLocation
///       instanceName: resource-name123
///       properties:
///         instanceCount: 1
///       resourceGroupName: rgiotoperations
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataflowProfile_CreateOrUpdate_Multi
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataflowProfile = new AzureNative.IoTOperations.DataflowProfile("dataflowProfile", new()
///     {
///         DataflowProfileName = "aio-dataflowprofile",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "qmbrfwcpwwhggszhrdjv",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.DataflowProfilePropertiesArgs
///         {
///             InstanceCount = 3,
///         },
///         ResourceGroupName = "rgiotoperations",
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
/// 	iotoperations "github.com/pulumi/pulumi-azure-native-sdk/iotoperations/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iotoperations.NewDataflowProfile(ctx, "dataflowProfile", &iotoperations.DataflowProfileArgs{
/// 			DataflowProfileName: pulumi.String("aio-dataflowprofile"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("qmbrfwcpwwhggszhrdjv"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.DataflowProfilePropertiesArgs{
/// 				InstanceCount: pulumi.Int(3),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgiotoperations"),
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
/// import com.pulumi.azurenative.iotoperations.DataflowProfile;
/// import com.pulumi.azurenative.iotoperations.DataflowProfileArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowProfilePropertiesArgs;
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
///         var dataflowProfile = new DataflowProfile("dataflowProfile", DataflowProfileArgs.builder()
///             .dataflowProfileName("aio-dataflowprofile")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("qmbrfwcpwwhggszhrdjv")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .properties(DataflowProfilePropertiesArgs.builder()
///                 .instanceCount(3)
///                 .build())
///             .resourceGroupName("rgiotoperations")
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
/// const dataflowProfile = new azure_native.iotoperations.DataflowProfile("dataflowProfile", {
///     dataflowProfileName: "aio-dataflowprofile",
///     extendedLocation: {
///         name: "qmbrfwcpwwhggszhrdjv",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     properties: {
///         instanceCount: 3,
///     },
///     resourceGroupName: "rgiotoperations",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dataflow_profile = azure_native.iotoperations.DataflowProfile("dataflowProfile",
///     dataflow_profile_name="aio-dataflowprofile",
///     extended_location={
///         "name": "qmbrfwcpwwhggszhrdjv",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     properties={
///         "instance_count": 3,
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   dataflowProfile:
///     type: azure-native:iotoperations:DataflowProfile
///     properties:
///       dataflowProfileName: aio-dataflowprofile
///       extendedLocation:
///         name: qmbrfwcpwwhggszhrdjv
///         type: CustomLocation
///       instanceName: resource-name123
///       properties:
///         instanceCount: 3
///       resourceGroupName: rgiotoperations
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
/// $ pulumi import azure-native:iotoperations:DataflowProfile bwhcjsnnfnrmbixamyxjau /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.IoTOperations/instances/{instanceName}/dataflowProfiles/{dataflowProfileName}
/// ```
class DataflowProfile extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Edge location of the resource.
  late final pulumi.Output<ExtendedLocationResponse> extendedLocation;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<DataflowProfilePropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DataflowProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataflowProfile]. {@macro pulumi_iotoperations_dataflow_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataflowProfile(
    String name, {
    DataflowProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:iotoperations:DataflowProfile',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse>(
      'extendedLocation',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ExtendedLocationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    properties = registerOutput<DataflowProfilePropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DataflowProfilePropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
