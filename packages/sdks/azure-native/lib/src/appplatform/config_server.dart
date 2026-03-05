import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_server_args.dart';
import 'config_server_properties_response.dart';
import 'system_data_response.dart';

/// Config Server resource
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ConfigServers_UpdatePut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var configServer = new AzureNative.AppPlatform.ConfigServer("configServer", new()
///     {
///         Properties = new AzureNative.AppPlatform.Inputs.ConfigServerPropertiesArgs
///         {
///             ConfigServer = new AzureNative.AppPlatform.Inputs.ConfigServerSettingsArgs
///             {
///                 GitProperty = new AzureNative.AppPlatform.Inputs.ConfigServerGitPropertyArgs
///                 {
///                     Label = "master",
///                     SearchPaths = new[]
///                     {
///                         "/",
///                     },
///                     Uri = "https://github.com/fake-user/fake-repository.git",
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
/// 		_, err := appplatform.NewConfigServer(ctx, "configServer", &appplatform.ConfigServerArgs{
/// 			Properties: &appplatform.ConfigServerPropertiesArgs{
/// 				ConfigServer: &appplatform.ConfigServerSettingsArgs{
/// 					GitProperty: &appplatform.ConfigServerGitPropertyArgs{
/// 						Label: pulumi.String("master"),
/// 						SearchPaths: pulumi.StringArray{
/// 							pulumi.String("/"),
/// 						},
/// 						Uri: pulumi.String("https://github.com/fake-user/fake-repository.git"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.appplatform.ConfigServer;
/// import com.pulumi.azurenative.appplatform.ConfigServerArgs;
/// import com.pulumi.azurenative.appplatform.inputs.ConfigServerPropertiesArgs;
/// import com.pulumi.azurenative.appplatform.inputs.ConfigServerSettingsArgs;
/// import com.pulumi.azurenative.appplatform.inputs.ConfigServerGitPropertyArgs;
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
///         var configServer = new ConfigServer("configServer", ConfigServerArgs.builder()
///             .properties(ConfigServerPropertiesArgs.builder()
///                 .configServer(ConfigServerSettingsArgs.builder()
///                     .gitProperty(ConfigServerGitPropertyArgs.builder()
///                         .label("master")
///                         .searchPaths("/")
///                         .uri("https://github.com/fake-user/fake-repository.git")
///                         .build())
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
/// const configServer = new azure_native.appplatform.ConfigServer("configServer", {
///     properties: {
///         configServer: {
///             gitProperty: {
///                 label: "master",
///                 searchPaths: ["/"],
///                 uri: "https://github.com/fake-user/fake-repository.git",
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
/// config_server = azure_native.appplatform.ConfigServer("configServer",
///     properties={
///         "config_server": {
///             "git_property": {
///                 "label": "master",
///                 "search_paths": ["/"],
///                 "uri": "https://github.com/fake-user/fake-repository.git",
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
///   configServer:
///     type: azure-native:appplatform:ConfigServer
///     properties:
///       properties:
///         configServer:
///           gitProperty:
///             label: master
///             searchPaths:
///               - /
///             uri: https://github.com/fake-user/fake-repository.git
///       resourceGroupName: myResourceGroup
///       serviceName: myservice
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ConfigServers_UpdatePut_Consumption
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var configServer = new AzureNative.AppPlatform.ConfigServer("configServer", new()
///     {
///         Properties = new AzureNative.AppPlatform.Inputs.ConfigServerPropertiesArgs
///         {
///             ConfigServer = new AzureNative.AppPlatform.Inputs.ConfigServerSettingsArgs
///             {
///                 GitProperty = new AzureNative.AppPlatform.Inputs.ConfigServerGitPropertyArgs
///                 {
///                     Label = "master",
///                     SearchPaths = new[]
///                     {
///                         "/",
///                     },
///                     Uri = "https://github.com/fake-user/fake-repository.git",
///                 },
///             },
///             EnabledState = AzureNative.AppPlatform.ConfigServerEnabledState.Enabled,
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
/// 		_, err := appplatform.NewConfigServer(ctx, "configServer", &appplatform.ConfigServerArgs{
/// 			Properties: &appplatform.ConfigServerPropertiesArgs{
/// 				ConfigServer: &appplatform.ConfigServerSettingsArgs{
/// 					GitProperty: &appplatform.ConfigServerGitPropertyArgs{
/// 						Label: pulumi.String("master"),
/// 						SearchPaths: pulumi.StringArray{
/// 							pulumi.String("/"),
/// 						},
/// 						Uri: pulumi.String("https://github.com/fake-user/fake-repository.git"),
/// 					},
/// 				},
/// 				EnabledState: pulumi.String(appplatform.ConfigServerEnabledStateEnabled),
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
/// import com.pulumi.azurenative.appplatform.ConfigServer;
/// import com.pulumi.azurenative.appplatform.ConfigServerArgs;
/// import com.pulumi.azurenative.appplatform.inputs.ConfigServerPropertiesArgs;
/// import com.pulumi.azurenative.appplatform.inputs.ConfigServerSettingsArgs;
/// import com.pulumi.azurenative.appplatform.inputs.ConfigServerGitPropertyArgs;
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
///         var configServer = new ConfigServer("configServer", ConfigServerArgs.builder()
///             .properties(ConfigServerPropertiesArgs.builder()
///                 .configServer(ConfigServerSettingsArgs.builder()
///                     .gitProperty(ConfigServerGitPropertyArgs.builder()
///                         .label("master")
///                         .searchPaths("/")
///                         .uri("https://github.com/fake-user/fake-repository.git")
///                         .build())
///                     .build())
///                 .enabledState("Enabled")
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
/// const configServer = new azure_native.appplatform.ConfigServer("configServer", {
///     properties: {
///         configServer: {
///             gitProperty: {
///                 label: "master",
///                 searchPaths: ["/"],
///                 uri: "https://github.com/fake-user/fake-repository.git",
///             },
///         },
///         enabledState: azure_native.appplatform.ConfigServerEnabledState.Enabled,
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
/// config_server = azure_native.appplatform.ConfigServer("configServer",
///     properties={
///         "config_server": {
///             "git_property": {
///                 "label": "master",
///                 "search_paths": ["/"],
///                 "uri": "https://github.com/fake-user/fake-repository.git",
///             },
///         },
///         "enabled_state": azure_native.appplatform.ConfigServerEnabledState.ENABLED,
///     },
///     resource_group_name="myResourceGroup",
///     service_name="myservice")
///
/// ```
///
/// ```yaml
/// resources:
///   configServer:
///     type: azure-native:appplatform:ConfigServer
///     properties:
///       properties:
///         configServer:
///           gitProperty:
///             label: master
///             searchPaths:
///               - /
///             uri: https://github.com/fake-user/fake-repository.git
///         enabledState: Enabled
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
/// $ pulumi import azure-native:appplatform:ConfigServer default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppPlatform/Spring/{serviceName}/configServers/default
/// ```
class ConfigServer extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// Properties of the Config Server resource
  late final pulumi.Output<ConfigServerPropertiesResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [ConfigServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigServer]. {@macro pulumi_appplatform_config_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigServer(
    String name, {
    ConfigServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:appplatform:ConfigServer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ConfigServerPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigServerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
