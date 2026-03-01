import 'package:pulumi/pulumi.dart' as pulumi;
import 'java_component_args.dart';
import 'nacos_component_response.dart';
import 'system_data_response.dart';

/// Java Component.
///
/// Uses Azure REST API version 2025-02-02-preview. In version 2.x of the Azure Native provider, it used API version 2023-11-02-preview.
///
/// Other available API versions: 2023-11-02-preview, 2024-02-02-preview, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update Java Component
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var javaComponent = new AzureNative.App.JavaComponent("javaComponent", new()
///     {
///         EnvironmentName = "myenvironment",
///         Name = "myjavacomponent",
///         Properties = new AzureNative.App.Inputs.SpringBootAdminComponentArgs
///         {
///             ComponentType = "SpringBootAdmin",
///             Configurations = new[]
///             {
///                 new AzureNative.App.Inputs.JavaComponentConfigurationPropertyArgs
///                 {
///                     PropertyName = "spring.boot.admin.ui.enable-toasts",
///                     Value = "true",
///                 },
///                 new AzureNative.App.Inputs.JavaComponentConfigurationPropertyArgs
///                 {
///                     PropertyName = "spring.boot.admin.monitor.status-interval",
///                     Value = "10000ms",
///                 },
///             },
///             Scale = new AzureNative.App.Inputs.JavaComponentPropertiesScaleArgs
///             {
///                 MaxReplicas = 1,
///                 MinReplicas = 1,
///             },
///         },
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
/// 		_, err := app.NewJavaComponent(ctx, "javaComponent", &app.JavaComponentArgs{
/// 			EnvironmentName: pulumi.String("myenvironment"),
/// 			Name:            pulumi.String("myjavacomponent"),
/// 			Properties: &app.SpringBootAdminComponentArgs{
/// 				ComponentType: pulumi.String("SpringBootAdmin"),
/// 				Configurations: app.JavaComponentConfigurationPropertyArray{
/// 					&app.JavaComponentConfigurationPropertyArgs{
/// 						PropertyName: pulumi.String("spring.boot.admin.ui.enable-toasts"),
/// 						Value:        pulumi.String("true"),
/// 					},
/// 					&app.JavaComponentConfigurationPropertyArgs{
/// 						PropertyName: pulumi.String("spring.boot.admin.monitor.status-interval"),
/// 						Value:        pulumi.String("10000ms"),
/// 					},
/// 				},
/// 				Scale: &app.JavaComponentPropertiesScaleArgs{
/// 					MaxReplicas: pulumi.Int(1),
/// 					MinReplicas: pulumi.Int(1),
/// 				},
/// 			},
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
/// import com.pulumi.azurenative.app.JavaComponent;
/// import com.pulumi.azurenative.app.JavaComponentArgs;
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
///         var javaComponent = new JavaComponent("javaComponent", JavaComponentArgs.builder()
///             .environmentName("myenvironment")
///             .name("myjavacomponent")
///             .properties(SpringBootAdminComponentArgs.builder()
///                 .componentType("SpringBootAdmin")
///                 .configurations(
///                     JavaComponentConfigurationPropertyArgs.builder()
///                         .propertyName("spring.boot.admin.ui.enable-toasts")
///                         .value("true")
///                         .build(),
///                     JavaComponentConfigurationPropertyArgs.builder()
///                         .propertyName("spring.boot.admin.monitor.status-interval")
///                         .value("10000ms")
///                         .build())
///                 .scale(JavaComponentPropertiesScaleArgs.builder()
///                     .maxReplicas(1)
///                     .minReplicas(1)
///                     .build())
///                 .build())
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
/// const javaComponent = new azure_native.app.JavaComponent("javaComponent", {
///     environmentName: "myenvironment",
///     name: "myjavacomponent",
///     properties: {
///         componentType: "SpringBootAdmin",
///         configurations: [
///             {
///                 propertyName: "spring.boot.admin.ui.enable-toasts",
///                 value: "true",
///             },
///             {
///                 propertyName: "spring.boot.admin.monitor.status-interval",
///                 value: "10000ms",
///             },
///         ],
///         scale: {
///             maxReplicas: 1,
///             minReplicas: 1,
///         },
///     },
///     resourceGroupName: "examplerg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// java_component = azure_native.app.JavaComponent("javaComponent",
///     environment_name="myenvironment",
///     name="myjavacomponent",
///     properties={
///         "component_type": "SpringBootAdmin",
///         "configurations": [
///             {
///                 "property_name": "spring.boot.admin.ui.enable-toasts",
///                 "value": "true",
///             },
///             {
///                 "property_name": "spring.boot.admin.monitor.status-interval",
///                 "value": "10000ms",
///             },
///         ],
///         "scale": {
///             "max_replicas": 1,
///             "min_replicas": 1,
///         },
///     },
///     resource_group_name="examplerg")
///
/// ```
///
/// ```yaml
/// resources:
///   javaComponent:
///     type: azure-native:app:JavaComponent
///     properties:
///       environmentName: myenvironment
///       name: myjavacomponent
///       properties:
///         componentType: SpringBootAdmin
///         configurations:
///           - propertyName: spring.boot.admin.ui.enable-toasts
///             value: 'true'
///           - propertyName: spring.boot.admin.monitor.status-interval
///             value: 10000ms
///         scale:
///           maxReplicas: 1
///           minReplicas: 1
///       resourceGroupName: examplerg
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update Java Component with ServiceBinds
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var javaComponent = new AzureNative.App.JavaComponent("javaComponent", new()
///     {
///         EnvironmentName = "myenvironment",
///         Name = "myjavacomponent",
///         Properties = new AzureNative.App.Inputs.SpringBootAdminComponentArgs
///         {
///             ComponentType = "SpringBootAdmin",
///             Configurations = new[]
///             {
///                 new AzureNative.App.Inputs.JavaComponentConfigurationPropertyArgs
///                 {
///                     PropertyName = "spring.boot.admin.ui.enable-toasts",
///                     Value = "true",
///                 },
///                 new AzureNative.App.Inputs.JavaComponentConfigurationPropertyArgs
///                 {
///                     PropertyName = "spring.boot.admin.monitor.status-interval",
///                     Value = "10000ms",
///                 },
///             },
///             Scale = new AzureNative.App.Inputs.JavaComponentPropertiesScaleArgs
///             {
///                 MaxReplicas = 1,
///                 MinReplicas = 1,
///             },
///             ServiceBinds = new[]
///             {
///                 new AzureNative.App.Inputs.JavaComponentServiceBindArgs
///                 {
///                     Name = "yellowcat",
///                     ServiceId = "/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/myenvironment/javaComponents/yellowcat",
///                 },
///             },
///         },
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
/// 		_, err := app.NewJavaComponent(ctx, "javaComponent", &app.JavaComponentArgs{
/// 			EnvironmentName: pulumi.String("myenvironment"),
/// 			Name:            pulumi.String("myjavacomponent"),
/// 			Properties: &app.SpringBootAdminComponentArgs{
/// 				ComponentType: pulumi.String("SpringBootAdmin"),
/// 				Configurations: app.JavaComponentConfigurationPropertyArray{
/// 					&app.JavaComponentConfigurationPropertyArgs{
/// 						PropertyName: pulumi.String("spring.boot.admin.ui.enable-toasts"),
/// 						Value:        pulumi.String("true"),
/// 					},
/// 					&app.JavaComponentConfigurationPropertyArgs{
/// 						PropertyName: pulumi.String("spring.boot.admin.monitor.status-interval"),
/// 						Value:        pulumi.String("10000ms"),
/// 					},
/// 				},
/// 				Scale: &app.JavaComponentPropertiesScaleArgs{
/// 					MaxReplicas: pulumi.Int(1),
/// 					MinReplicas: pulumi.Int(1),
/// 				},
/// 				ServiceBinds: app.JavaComponentServiceBindArray{
/// 					&app.JavaComponentServiceBindArgs{
/// 						Name:      pulumi.String("yellowcat"),
/// 						ServiceId: pulumi.String("/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/myenvironment/javaComponents/yellowcat"),
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.azurenative.app.JavaComponent;
/// import com.pulumi.azurenative.app.JavaComponentArgs;
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
///         var javaComponent = new JavaComponent("javaComponent", JavaComponentArgs.builder()
///             .environmentName("myenvironment")
///             .name("myjavacomponent")
///             .properties(SpringBootAdminComponentArgs.builder()
///                 .componentType("SpringBootAdmin")
///                 .configurations(
///                     JavaComponentConfigurationPropertyArgs.builder()
///                         .propertyName("spring.boot.admin.ui.enable-toasts")
///                         .value("true")
///                         .build(),
///                     JavaComponentConfigurationPropertyArgs.builder()
///                         .propertyName("spring.boot.admin.monitor.status-interval")
///                         .value("10000ms")
///                         .build())
///                 .scale(JavaComponentPropertiesScaleArgs.builder()
///                     .maxReplicas(1)
///                     .minReplicas(1)
///                     .build())
///                 .serviceBinds(JavaComponentServiceBindArgs.builder()
///                     .name("yellowcat")
///                     .serviceId("/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/myenvironment/javaComponents/yellowcat")
///                     .build())
///                 .build())
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
/// const javaComponent = new azure_native.app.JavaComponent("javaComponent", {
///     environmentName: "myenvironment",
///     name: "myjavacomponent",
///     properties: {
///         componentType: "SpringBootAdmin",
///         configurations: [
///             {
///                 propertyName: "spring.boot.admin.ui.enable-toasts",
///                 value: "true",
///             },
///             {
///                 propertyName: "spring.boot.admin.monitor.status-interval",
///                 value: "10000ms",
///             },
///         ],
///         scale: {
///             maxReplicas: 1,
///             minReplicas: 1,
///         },
///         serviceBinds: [{
///             name: "yellowcat",
///             serviceId: "/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/myenvironment/javaComponents/yellowcat",
///         }],
///     },
///     resourceGroupName: "examplerg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// java_component = azure_native.app.JavaComponent("javaComponent",
///     environment_name="myenvironment",
///     name="myjavacomponent",
///     properties={
///         "component_type": "SpringBootAdmin",
///         "configurations": [
///             {
///                 "property_name": "spring.boot.admin.ui.enable-toasts",
///                 "value": "true",
///             },
///             {
///                 "property_name": "spring.boot.admin.monitor.status-interval",
///                 "value": "10000ms",
///             },
///         ],
///         "scale": {
///             "max_replicas": 1,
///             "min_replicas": 1,
///         },
///         "service_binds": [{
///             "name": "yellowcat",
///             "service_id": "/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/myenvironment/javaComponents/yellowcat",
///         }],
///     },
///     resource_group_name="examplerg")
///
/// ```
///
/// ```yaml
/// resources:
///   javaComponent:
///     type: azure-native:app:JavaComponent
///     properties:
///       environmentName: myenvironment
///       name: myjavacomponent
///       properties:
///         componentType: SpringBootAdmin
///         configurations:
///           - propertyName: spring.boot.admin.ui.enable-toasts
///             value: 'true'
///           - propertyName: spring.boot.admin.monitor.status-interval
///             value: 10000ms
///         scale:
///           maxReplicas: 1
///           minReplicas: 1
///         serviceBinds:
///           - name: yellowcat
///             serviceId: /subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/myenvironment/javaComponents/yellowcat
///       resourceGroupName: examplerg
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
/// $ pulumi import azure-native:app:JavaComponent myjavacomponent /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.App/managedEnvironments/{environmentName}/javaComponents/{name}
/// ```
class JavaComponent extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Java Component resource specific properties
  late final pulumi.Output<NacosComponentResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [JavaComponent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JavaComponent]. {@macro pulumi_app_java_component_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JavaComponent(
    String name, {
    JavaComponentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:app:JavaComponent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<NacosComponentResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
