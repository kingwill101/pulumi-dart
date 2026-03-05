import 'package:pulumi/pulumi.dart' as pulumi;
import 'apm_args.dart';
import 'apm_properties_response.dart';
import 'system_data_response.dart';

/// APM Resource object
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Apms_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apm = new AzureNative.AppPlatform.Apm("apm", new()
///     {
///         ApmName = "myappinsights",
///         Properties = new AzureNative.AppPlatform.Inputs.ApmPropertiesArgs
///         {
///             Properties =
///             {
///                 { "any-string", "any-string" },
///                 { "sampling-rate", "12.0" },
///             },
///             Secrets =
///             {
///                 { "connection-string", "XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXX-XXXXXXXXXXXXXXXXXXX;XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXXXXXXXX" },
///             },
///             Type = "ApplicationInsights",
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
/// 		_, err := appplatform.NewApm(ctx, "apm", &appplatform.ApmArgs{
/// 			ApmName: pulumi.String("myappinsights"),
/// 			Properties: &appplatform.ApmPropertiesArgs{
/// 				Properties: pulumi.StringMap{
/// 					"any-string":    pulumi.String("any-string"),
/// 					"sampling-rate": pulumi.String("12.0"),
/// 				},
/// 				Secrets: pulumi.StringMap{
/// 					"connection-string": pulumi.String("XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXX-XXXXXXXXXXXXXXXXXXX;XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXXXXXXXX"),
/// 				},
/// 				Type: pulumi.String("ApplicationInsights"),
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
/// import com.pulumi.azurenative.appplatform.Apm;
/// import com.pulumi.azurenative.appplatform.ApmArgs;
/// import com.pulumi.azurenative.appplatform.inputs.ApmPropertiesArgs;
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
///         var apm = new Apm("apm", ApmArgs.builder()
///             .apmName("myappinsights")
///             .properties(ApmPropertiesArgs.builder()
///                 .properties(Map.ofEntries(
///                     Map.entry("any-string", "any-string"),
///                     Map.entry("sampling-rate", "12.0")
///                 ))
///                 .secrets(Map.of("connection-string", "XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXX-XXXXXXXXXXXXXXXXXXX;XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXXXXXXXX"))
///                 .type("ApplicationInsights")
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
/// const apm = new azure_native.appplatform.Apm("apm", {
///     apmName: "myappinsights",
///     properties: {
///         properties: {
///             "any-string": "any-string",
///             "sampling-rate": "12.0",
///         },
///         secrets: {
///             "connection-string": "XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXX-XXXXXXXXXXXXXXXXXXX;XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXXXXXXXX",
///         },
///         type: "ApplicationInsights",
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
/// apm = azure_native.appplatform.Apm("apm",
///     apm_name="myappinsights",
///     properties={
///         "properties": {
///             "any-string": "any-string",
///             "sampling-rate": "12.0",
///         },
///         "secrets": {
///             "connection-string": "XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXX-XXXXXXXXXXXXXXXXXXX;XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXXXXXXXX",
///         },
///         "type": "ApplicationInsights",
///     },
///     resource_group_name="myResourceGroup",
///     service_name="myservice")
///
/// ```
///
/// ```yaml
/// resources:
///   apm:
///     type: azure-native:appplatform:Apm
///     properties:
///       apmName: myappinsights
///       properties:
///         properties:
///           any-string: any-string
///           sampling-rate: '12.0'
///         secrets:
///           connection-string: XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXX-XXXXXXXXXXXXXXXXXXX;XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXXXXXXXX
///         type: ApplicationInsights
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
/// $ pulumi import azure-native:appplatform:Apm myappinsights /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppPlatform/Spring/{serviceName}/apms/{apmName}
/// ```
class Apm extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// Properties of an APM
  late final pulumi.Output<ApmPropertiesResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Apm].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Apm]. {@macro pulumi_appplatform_apm_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Apm(
    String name, {
    ApmArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:appplatform:Apm',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ApmPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApmPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
