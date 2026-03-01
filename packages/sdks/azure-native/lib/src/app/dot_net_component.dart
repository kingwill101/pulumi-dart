import 'package:pulumi/pulumi.dart' as pulumi;
import 'dot_net_component_args.dart';
import 'dot_net_component_configuration_property_response.dart';
import 'dot_net_component_service_bind_response.dart';
import 'system_data_response.dart';

/// .NET Component.
///
/// Uses Azure REST API version 2025-02-02-preview. In version 2.x of the Azure Native provider, it used API version 2023-11-02-preview.
///
/// Other available API versions: 2023-11-02-preview, 2024-02-02-preview, 2024-08-02-preview, 2024-10-02-preview, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update .NET Component
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dotNetComponent = new AzureNative.App.DotNetComponent("dotNetComponent", new()
///     {
///         ComponentType = AzureNative.App.DotNetComponentType.AspireDashboard,
///         Configurations = new[]
///         {
///             new AzureNative.App.Inputs.DotNetComponentConfigurationPropertyArgs
///             {
///                 PropertyName = "dashboard-theme",
///                 Value = "dark",
///             },
///         },
///         EnvironmentName = "myenvironment",
///         Name = "mydotnetcomponent",
///         ResourceGroupName = "examplerg",
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
/// 	app "github.com/pulumi/pulumi-azure-native-sdk/app/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := app.NewDotNetComponent(ctx, "dotNetComponent", &app.DotNetComponentArgs{
/// 			ComponentType: pulumi.String(app.DotNetComponentTypeAspireDashboard),
/// 			Configurations: app.DotNetComponentConfigurationPropertyArray{
/// 				&app.DotNetComponentConfigurationPropertyArgs{
/// 					PropertyName: pulumi.String("dashboard-theme"),
/// 					Value:        pulumi.String("dark"),
/// 				},
/// 			},
/// 			EnvironmentName:   pulumi.String("myenvironment"),
/// 			Name:              pulumi.String("mydotnetcomponent"),
/// 			ResourceGroupName: pulumi.String("examplerg"),
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
/// import com.pulumi.azurenative.app.DotNetComponent;
/// import com.pulumi.azurenative.app.DotNetComponentArgs;
/// import com.pulumi.azurenative.app.inputs.DotNetComponentConfigurationPropertyArgs;
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
///         var dotNetComponent = new DotNetComponent("dotNetComponent", DotNetComponentArgs.builder()
///             .componentType("AspireDashboard")
///             .configurations(DotNetComponentConfigurationPropertyArgs.builder()
///                 .propertyName("dashboard-theme")
///                 .value("dark")
///                 .build())
///             .environmentName("myenvironment")
///             .name("mydotnetcomponent")
///             .resourceGroupName("examplerg")
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
/// const dotNetComponent = new azure_native.app.DotNetComponent("dotNetComponent", {
///     componentType: azure_native.app.DotNetComponentType.AspireDashboard,
///     configurations: [{
///         propertyName: "dashboard-theme",
///         value: "dark",
///     }],
///     environmentName: "myenvironment",
///     name: "mydotnetcomponent",
///     resourceGroupName: "examplerg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dot_net_component = azure_native.app.DotNetComponent("dotNetComponent",
///     component_type=azure_native.app.DotNetComponentType.ASPIRE_DASHBOARD,
///     configurations=[{
///         "property_name": "dashboard-theme",
///         "value": "dark",
///     }],
///     environment_name="myenvironment",
///     name="mydotnetcomponent",
///     resource_group_name="examplerg")
///
/// ```
///
/// ```yaml
/// resources:
///   dotNetComponent:
///     type: azure-native:app:DotNetComponent
///     properties:
///       componentType: AspireDashboard
///       configurations:
///         - propertyName: dashboard-theme
///           value: dark
///       environmentName: myenvironment
///       name: mydotnetcomponent
///       resourceGroupName: examplerg
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update .NET Component with ServiceBinds
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dotNetComponent = new AzureNative.App.DotNetComponent("dotNetComponent", new()
///     {
///         ComponentType = AzureNative.App.DotNetComponentType.AspireDashboard,
///         Configurations = new[]
///         {
///             new AzureNative.App.Inputs.DotNetComponentConfigurationPropertyArgs
///             {
///                 PropertyName = "dashboard-theme",
///                 Value = "dark",
///             },
///         },
///         EnvironmentName = "myenvironment",
///         Name = "mydotnetcomponent",
///         ResourceGroupName = "examplerg",
///         ServiceBinds = new[]
///         {
///             new AzureNative.App.Inputs.DotNetComponentServiceBindArgs
///             {
///                 Name = "yellowcat",
///                 ServiceId = "/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/myenvironment/dotNetComponents/yellowcat",
///             },
///         },
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
/// 	app "github.com/pulumi/pulumi-azure-native-sdk/app/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := app.NewDotNetComponent(ctx, "dotNetComponent", &app.DotNetComponentArgs{
/// 			ComponentType: pulumi.String(app.DotNetComponentTypeAspireDashboard),
/// 			Configurations: app.DotNetComponentConfigurationPropertyArray{
/// 				&app.DotNetComponentConfigurationPropertyArgs{
/// 					PropertyName: pulumi.String("dashboard-theme"),
/// 					Value:        pulumi.String("dark"),
/// 				},
/// 			},
/// 			EnvironmentName:   pulumi.String("myenvironment"),
/// 			Name:              pulumi.String("mydotnetcomponent"),
/// 			ResourceGroupName: pulumi.String("examplerg"),
/// 			ServiceBinds: app.DotNetComponentServiceBindArray{
/// 				&app.DotNetComponentServiceBindArgs{
/// 					Name:      pulumi.String("yellowcat"),
/// 					ServiceId: pulumi.String("/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/myenvironment/dotNetComponents/yellowcat"),
/// 				},
/// 			},
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
/// import com.pulumi.azurenative.app.DotNetComponent;
/// import com.pulumi.azurenative.app.DotNetComponentArgs;
/// import com.pulumi.azurenative.app.inputs.DotNetComponentConfigurationPropertyArgs;
/// import com.pulumi.azurenative.app.inputs.DotNetComponentServiceBindArgs;
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
///         var dotNetComponent = new DotNetComponent("dotNetComponent", DotNetComponentArgs.builder()
///             .componentType("AspireDashboard")
///             .configurations(DotNetComponentConfigurationPropertyArgs.builder()
///                 .propertyName("dashboard-theme")
///                 .value("dark")
///                 .build())
///             .environmentName("myenvironment")
///             .name("mydotnetcomponent")
///             .resourceGroupName("examplerg")
///             .serviceBinds(DotNetComponentServiceBindArgs.builder()
///                 .name("yellowcat")
///                 .serviceId("/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/myenvironment/dotNetComponents/yellowcat")
///                 .build())
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
/// const dotNetComponent = new azure_native.app.DotNetComponent("dotNetComponent", {
///     componentType: azure_native.app.DotNetComponentType.AspireDashboard,
///     configurations: [{
///         propertyName: "dashboard-theme",
///         value: "dark",
///     }],
///     environmentName: "myenvironment",
///     name: "mydotnetcomponent",
///     resourceGroupName: "examplerg",
///     serviceBinds: [{
///         name: "yellowcat",
///         serviceId: "/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/myenvironment/dotNetComponents/yellowcat",
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dot_net_component = azure_native.app.DotNetComponent("dotNetComponent",
///     component_type=azure_native.app.DotNetComponentType.ASPIRE_DASHBOARD,
///     configurations=[{
///         "property_name": "dashboard-theme",
///         "value": "dark",
///     }],
///     environment_name="myenvironment",
///     name="mydotnetcomponent",
///     resource_group_name="examplerg",
///     service_binds=[{
///         "name": "yellowcat",
///         "service_id": "/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/myenvironment/dotNetComponents/yellowcat",
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   dotNetComponent:
///     type: azure-native:app:DotNetComponent
///     properties:
///       componentType: AspireDashboard
///       configurations:
///         - propertyName: dashboard-theme
///           value: dark
///       environmentName: myenvironment
///       name: mydotnetcomponent
///       resourceGroupName: examplerg
///       serviceBinds:
///         - name: yellowcat
///           serviceId: /subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/myenvironment/dotNetComponents/yellowcat
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
/// $ pulumi import azure-native:app:DotNetComponent mydotnetcomponent /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.App/managedEnvironments/{environmentName}/dotNetComponents/{name}
/// ```
class DotNetComponent extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Type of the .NET Component.
  late final pulumi.Output<String?> componentType;
  /// List of .NET Components configuration properties
  late final pulumi.Output<List<DotNetComponentConfigurationPropertyResponse>?> configurations;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning state of the .NET Component.
  late final pulumi.Output<String> provisioningState;
  /// List of .NET Components that are bound to the .NET component
  late final pulumi.Output<List<DotNetComponentServiceBindResponse>?> serviceBinds;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DotNetComponent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DotNetComponent]. {@macro pulumi_app_dot_net_component_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DotNetComponent(
    String name, {
    DotNetComponentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:app:DotNetComponent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.componentType = registerOutput<String?>('componentType');
    this.configurations = registerOutput<List<DotNetComponentConfigurationPropertyResponse>?>('configurations');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.serviceBinds = registerOutput<List<DotNetComponentServiceBindResponse>?>('serviceBinds');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
