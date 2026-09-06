import 'package:pulumi/pulumi.dart' as pulumi;
import 'buildpack_binding_args.dart';
import 'buildpack_binding_properties_response.dart';
import 'system_data_response.dart';

/// Buildpack Binding Resource object
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### BuildpackBinding_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var buildpackBinding = new AzureNative.AppPlatform.BuildpackBinding("buildpackBinding", new()
///     {
///         BuildServiceName = "default",
///         BuilderName = "default",
///         BuildpackBindingName = "myBuildpackBinding",
///         Properties = new AzureNative.AppPlatform.Inputs.BuildpackBindingPropertiesArgs
///         {
///             BindingType = AzureNative.AppPlatform.BindingType.ApplicationInsights,
///             LaunchProperties = new AzureNative.AppPlatform.Inputs.BuildpackBindingLaunchPropertiesArgs
///             {
///                 Properties =
///                 {
///                     { "abc", "def" },
///                     { "any-string", "any-string" },
///                     { "sampling-rate", "12.0" },
///                 },
///                 Secrets =
///                 {
///                     { "connection-string", "XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXX-XXXXXXXXXXXXXXXXXXX;XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXXXXXXXX" },
///                 },
///             },
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
/// 		_, err := appplatform.NewBuildpackBinding(ctx, "buildpackBinding", &appplatform.BuildpackBindingArgs{
/// 			BuildServiceName:     pulumi.String("default"),
/// 			BuilderName:          pulumi.String("default"),
/// 			BuildpackBindingName: pulumi.String("myBuildpackBinding"),
/// 			Properties: &appplatform.BuildpackBindingPropertiesArgs{
/// 				BindingType: pulumi.String(appplatform.BindingTypeApplicationInsights),
/// 				LaunchProperties: &appplatform.BuildpackBindingLaunchPropertiesArgs{
/// 					Properties: pulumi.StringMap{
/// 						"abc":           pulumi.String("def"),
/// 						"any-string":    pulumi.String("any-string"),
/// 						"sampling-rate": pulumi.String("12.0"),
/// 					},
/// 					Secrets: pulumi.StringMap{
/// 						"connection-string": pulumi.String("XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXX-XXXXXXXXXXXXXXXXXXX;XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXXXXXXXX"),
/// 					},
/// 				},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_appplatform_buildpackbinding" "buildpackBinding" {
///   build_service_name     = "default"
///   builder_name           = "default"
///   buildpack_binding_name = "myBuildpackBinding"
///   properties = {
///     binding_type = "ApplicationInsights"
///     launch_properties = {
///       properties = {
///         "abc"           = "def"
///         "any-string"    = "any-string"
///         "sampling-rate" = "12.0"
///       }
///       secrets = {
///         "connection-string" = "XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXX-XXXXXXXXXXXXXXXXXXX;XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXXXXXXXX"
///       }
///     }
///   }
///   resource_group_name = "myResourceGroup"
///   service_name        = "myservice"
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
/// import com.pulumi.azurenative.appplatform.BuildpackBinding;
/// import com.pulumi.azurenative.appplatform.BuildpackBindingArgs;
/// import com.pulumi.azurenative.appplatform.inputs.BuildpackBindingPropertiesArgs;
/// import com.pulumi.azurenative.appplatform.inputs.BuildpackBindingLaunchPropertiesArgs;
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
///         var buildpackBinding = new BuildpackBinding("buildpackBinding", BuildpackBindingArgs.builder()
///             .buildServiceName("default")
///             .builderName("default")
///             .buildpackBindingName("myBuildpackBinding")
///             .properties(BuildpackBindingPropertiesArgs.builder()
///                 .bindingType("ApplicationInsights")
///                 .launchProperties(BuildpackBindingLaunchPropertiesArgs.builder()
///                     .properties(Map.ofEntries(
///                         Map.entry("abc", "def"),
///                         Map.entry("any-string", "any-string"),
///                         Map.entry("sampling-rate", "12.0")
///                     ))
///                     .secrets(Map.of("connection-string", "XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXX-XXXXXXXXXXXXXXXXXXX;XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXXXXXXXX"))
///                     .build())
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
/// const buildpackBinding = new azure_native.appplatform.BuildpackBinding("buildpackBinding", {
///     buildServiceName: "default",
///     builderName: "default",
///     buildpackBindingName: "myBuildpackBinding",
///     properties: {
///         bindingType: azure_native.appplatform.BindingType.ApplicationInsights,
///         launchProperties: {
///             properties: {
///                 abc: "def",
///                 "any-string": "any-string",
///                 "sampling-rate": "12.0",
///             },
///             secrets: {
///                 "connection-string": "XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXX-XXXXXXXXXXXXXXXXXXX;XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXXXXXXXX",
///             },
///         },
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
/// buildpack_binding = azure_native.appplatform.BuildpackBinding("buildpackBinding",
///     build_service_name="default",
///     builder_name="default",
///     buildpack_binding_name="myBuildpackBinding",
///     properties={
///         "binding_type": azure_native.appplatform.BindingType.APPLICATION_INSIGHTS,
///         "launch_properties": {
///             "properties": {
///                 "abc": "def",
///                 "any-string": "any-string",
///                 "sampling-rate": "12.0",
///             },
///             "secrets": {
///                 "connection-string": "XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXX-XXXXXXXXXXXXXXXXXXX;XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXXXXXXXX",
///             },
///         },
///     },
///     resource_group_name="myResourceGroup",
///     service_name="myservice")
///
/// ```
///
/// ```yaml
/// resources:
///   buildpackBinding:
///     type: azure-native:appplatform:BuildpackBinding
///     properties:
///       buildServiceName: default
///       builderName: default
///       buildpackBindingName: myBuildpackBinding
///       properties:
///         bindingType: ApplicationInsights
///         launchProperties:
///           properties:
///             abc: def
///             any-string: any-string
///             sampling-rate: '12.0'
///           secrets:
///             connection-string: XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXX-XXXXXXXXXXXXXXXXXXX;XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXXXXXXXX
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
/// $ pulumi import azure-native:appplatform:BuildpackBinding myBuildpackBinding /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppPlatform/Spring/{serviceName}/buildServices/{buildServiceName}/builders/{builderName}/buildpackBindings/{buildpackBindingName}
/// ```
class BuildpackBinding extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// Properties of a buildpack binding
  late final pulumi.Output<BuildpackBindingPropertiesResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [BuildpackBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BuildpackBinding]. {@macro pulumi_appplatform_buildpack_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BuildpackBinding(
    String name, {
    BuildpackBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:appplatform:BuildpackBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<BuildpackBindingPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BuildpackBindingPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [BuildpackBinding] resource.
  BuildpackBinding.reference(String urn)
    : super(
        'azure-native:appplatform:BuildpackBinding',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<BuildpackBindingPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BuildpackBindingPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
