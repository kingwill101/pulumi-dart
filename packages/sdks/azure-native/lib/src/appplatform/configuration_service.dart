import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_service_args.dart';
import 'configuration_service_properties_response.dart';
import 'system_data_response.dart';

/// Application Configuration Service resource
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ConfigurationServices_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var configurationService = new AzureNative.AppPlatform.ConfigurationService("configurationService", new()
///     {
///         ConfigurationServiceName = "default",
///         Properties = new AzureNative.AppPlatform.Inputs.ConfigurationServicePropertiesArgs
///         {
///             Settings = new AzureNative.AppPlatform.Inputs.ConfigurationServiceSettingsArgs
///             {
///                 GitProperty = new AzureNative.AppPlatform.Inputs.ConfigurationServiceGitPropertyArgs
///                 {
///                     Repositories = new[]
///                     {
///                         new AzureNative.AppPlatform.Inputs.ConfigurationServiceGitRepositoryArgs
///                         {
///                             Label = "master",
///                             Name = "fake",
///                             Patterns = new[]
///                             {
///                                 "app/dev",
///                             },
///                             Uri = "https://github.com/fake-user/fake-repository",
///                         },
///                     },
///                 },
///                 RefreshIntervalInSeconds = 60,
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
/// 		_, err := appplatform.NewConfigurationService(ctx, "configurationService", &appplatform.ConfigurationServiceArgs{
/// 			ConfigurationServiceName: pulumi.String("default"),
/// 			Properties: &appplatform.ConfigurationServicePropertiesArgs{
/// 				Settings: &appplatform.ConfigurationServiceSettingsArgs{
/// 					GitProperty: &appplatform.ConfigurationServiceGitPropertyArgs{
/// 						Repositories: appplatform.ConfigurationServiceGitRepositoryArray{
/// 							&appplatform.ConfigurationServiceGitRepositoryArgs{
/// 								Label: pulumi.String("master"),
/// 								Name:  pulumi.String("fake"),
/// 								Patterns: pulumi.StringArray{
/// 									pulumi.String("app/dev"),
/// 								},
/// 								Uri: pulumi.String("https://github.com/fake-user/fake-repository"),
/// 							},
/// 						},
/// 					},
/// 					RefreshIntervalInSeconds: pulumi.Int(60),
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
/// import com.pulumi.azurenative.appplatform.ConfigurationService;
/// import com.pulumi.azurenative.appplatform.ConfigurationServiceArgs;
/// import com.pulumi.azurenative.appplatform.inputs.ConfigurationServicePropertiesArgs;
/// import com.pulumi.azurenative.appplatform.inputs.ConfigurationServiceSettingsArgs;
/// import com.pulumi.azurenative.appplatform.inputs.ConfigurationServiceGitPropertyArgs;
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
///         var configurationService = new ConfigurationService("configurationService", ConfigurationServiceArgs.builder()
///             .configurationServiceName("default")
///             .properties(ConfigurationServicePropertiesArgs.builder()
///                 .settings(ConfigurationServiceSettingsArgs.builder()
///                     .gitProperty(ConfigurationServiceGitPropertyArgs.builder()
///                         .repositories(ConfigurationServiceGitRepositoryArgs.builder()
///                             .label("master")
///                             .name("fake")
///                             .patterns("app/dev")
///                             .uri("https://github.com/fake-user/fake-repository")
///                             .build())
///                         .build())
///                     .refreshIntervalInSeconds(60)
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
/// const configurationService = new azure_native.appplatform.ConfigurationService("configurationService", {
///     configurationServiceName: "default",
///     properties: {
///         settings: {
///             gitProperty: {
///                 repositories: [{
///                     label: "master",
///                     name: "fake",
///                     patterns: ["app/dev"],
///                     uri: "https://github.com/fake-user/fake-repository",
///                 }],
///             },
///             refreshIntervalInSeconds: 60,
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
/// configuration_service = azure_native.appplatform.ConfigurationService("configurationService",
///     configuration_service_name="default",
///     properties={
///         "settings": {
///             "git_property": {
///                 "repositories": [{
///                     "label": "master",
///                     "name": "fake",
///                     "patterns": ["app/dev"],
///                     "uri": "https://github.com/fake-user/fake-repository",
///                 }],
///             },
///             "refresh_interval_in_seconds": 60,
///         },
///     },
///     resource_group_name="myResourceGroup",
///     service_name="myservice")
///
/// ```
///
/// ```yaml
/// resources:
///   configurationService:
///     type: azure-native:appplatform:ConfigurationService
///     properties:
///       configurationServiceName: default
///       properties:
///         settings:
///           gitProperty:
///             repositories:
///               - label: master
///                 name: fake
///                 patterns:
///                   - app/dev
///                 uri: https://github.com/fake-user/fake-repository
///           refreshIntervalInSeconds: 60
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
/// $ pulumi import azure-native:appplatform:ConfigurationService default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppPlatform/Spring/{serviceName}/configurationServices/{configurationServiceName}
/// ```
class ConfigurationService extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// Application Configuration Service properties payload
  late final pulumi.Output<ConfigurationServicePropertiesResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [ConfigurationService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigurationService]. {@macro pulumi_appplatform_configuration_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigurationService(
    String name, {
    ConfigurationServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:appplatform:ConfigurationService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ConfigurationServicePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationServicePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
