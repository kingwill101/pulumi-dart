import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_profile_properties_response.dart';
import 'configuration_profiles_version_args.dart';
import 'system_data_response.dart';

/// Definition of the configuration profile.
///
/// Uses Azure REST API version 2022-05-04. In version 2.x of the Azure Native provider, it used API version 2022-05-04.
///
/// Other available API versions: 2021-04-30-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automanage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update configuration profile version
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var configurationProfilesVersion = new AzureNative.Automanage.ConfigurationProfilesVersion("configurationProfilesVersion", new()
///     {
///         ConfigurationProfileName = "customConfigurationProfile",
///         Location = "East US",
///         Properties = new AzureNative.Automanage.Inputs.ConfigurationProfilePropertiesArgs
///         {
///             Configuration = new Dictionary<string, object?>
///             {
///                 ["Antimalware/Enable"] = false,
///                 ["AzureSecurityCenter/Enable"] = true,
///                 ["Backup/Enable"] = false,
///                 ["BootDiagnostics/Enable"] = true,
///                 ["ChangeTrackingAndInventory/Enable"] = true,
///                 ["GuestConfiguration/Enable"] = true,
///                 ["LogAnalytics/Enable"] = true,
///                 ["UpdateManagement/Enable"] = true,
///                 ["VMInsights/Enable"] = true,
///             },
///         },
///         ResourceGroupName = "myResourceGroupName",
///         Tags =
///         {
///             { "Organization", "Administration" },
///         },
///         VersionName = "version1",
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
/// 	automanage "github.com/pulumi/pulumi-azure-native-sdk/automanage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := automanage.NewConfigurationProfilesVersion(ctx, "configurationProfilesVersion", &automanage.ConfigurationProfilesVersionArgs{
/// 			ConfigurationProfileName: pulumi.String("customConfigurationProfile"),
/// 			Location:                 pulumi.String("East US"),
/// 			Properties: &automanage.ConfigurationProfilePropertiesArgs{
/// 				Configuration: pulumi.Any(map[string]interface{}{
/// 					"Antimalware/Enable":                false,
/// 					"AzureSecurityCenter/Enable":        true,
/// 					"Backup/Enable":                     false,
/// 					"BootDiagnostics/Enable":            true,
/// 					"ChangeTrackingAndInventory/Enable": true,
/// 					"GuestConfiguration/Enable":         true,
/// 					"LogAnalytics/Enable":               true,
/// 					"UpdateManagement/Enable":           true,
/// 					"VMInsights/Enable":                 true,
/// 				}),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroupName"),
/// 			Tags: pulumi.StringMap{
/// 				"Organization": pulumi.String("Administration"),
/// 			},
/// 			VersionName: pulumi.String("version1"),
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
/// import com.pulumi.azurenative.automanage.ConfigurationProfilesVersion;
/// import com.pulumi.azurenative.automanage.ConfigurationProfilesVersionArgs;
/// import com.pulumi.azurenative.automanage.inputs.ConfigurationProfilePropertiesArgs;
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
///         var configurationProfilesVersion = new ConfigurationProfilesVersion("configurationProfilesVersion", ConfigurationProfilesVersionArgs.builder()
///             .configurationProfileName("customConfigurationProfile")
///             .location("East US")
///             .properties(ConfigurationProfilePropertiesArgs.builder()
///                 .configuration(Map.ofEntries(
///                     Map.entry("Antimalware/Enable", false),
///                     Map.entry("AzureSecurityCenter/Enable", true),
///                     Map.entry("Backup/Enable", false),
///                     Map.entry("BootDiagnostics/Enable", true),
///                     Map.entry("ChangeTrackingAndInventory/Enable", true),
///                     Map.entry("GuestConfiguration/Enable", true),
///                     Map.entry("LogAnalytics/Enable", true),
///                     Map.entry("UpdateManagement/Enable", true),
///                     Map.entry("VMInsights/Enable", true)
///                 ))
///                 .build())
///             .resourceGroupName("myResourceGroupName")
///             .tags(Map.of("Organization", "Administration"))
///             .versionName("version1")
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
/// const configurationProfilesVersion = new azure_native.automanage.ConfigurationProfilesVersion("configurationProfilesVersion", {
///     configurationProfileName: "customConfigurationProfile",
///     location: "East US",
///     properties: {
///         configuration: {
///             "Antimalware/Enable": false,
///             "AzureSecurityCenter/Enable": true,
///             "Backup/Enable": false,
///             "BootDiagnostics/Enable": true,
///             "ChangeTrackingAndInventory/Enable": true,
///             "GuestConfiguration/Enable": true,
///             "LogAnalytics/Enable": true,
///             "UpdateManagement/Enable": true,
///             "VMInsights/Enable": true,
///         },
///     },
///     resourceGroupName: "myResourceGroupName",
///     tags: {
///         Organization: "Administration",
///     },
///     versionName: "version1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// configuration_profiles_version = azure_native.automanage.ConfigurationProfilesVersion("configurationProfilesVersion",
///     configuration_profile_name="customConfigurationProfile",
///     location="East US",
///     properties={
///         "configuration": {
///             "Antimalware/Enable": False,
///             "AzureSecurityCenter/Enable": True,
///             "Backup/Enable": False,
///             "BootDiagnostics/Enable": True,
///             "ChangeTrackingAndInventory/Enable": True,
///             "GuestConfiguration/Enable": True,
///             "LogAnalytics/Enable": True,
///             "UpdateManagement/Enable": True,
///             "VMInsights/Enable": True,
///         },
///     },
///     resource_group_name="myResourceGroupName",
///     tags={
///         "Organization": "Administration",
///     },
///     version_name="version1")
///
/// ```
///
/// ```yaml
/// resources:
///   configurationProfilesVersion:
///     type: azure-native:automanage:ConfigurationProfilesVersion
///     properties:
///       configurationProfileName: customConfigurationProfile
///       location: East US
///       properties:
///         configuration:
///           Antimalware/Enable: false
///           AzureSecurityCenter/Enable: true
///           Backup/Enable: false
///           BootDiagnostics/Enable: true
///           ChangeTrackingAndInventory/Enable: true
///           GuestConfiguration/Enable: true
///           LogAnalytics/Enable: true
///           UpdateManagement/Enable: true
///           VMInsights/Enable: true
///       resourceGroupName: myResourceGroupName
///       tags:
///         Organization: Administration
///       versionName: version1
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
/// $ pulumi import azure-native:automanage:ConfigurationProfilesVersion customConfigurationProfile/version1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automanage/configurationProfiles/{configurationProfileName}/versions/{versionName}
/// ```
class ConfigurationProfilesVersion extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Properties of the configuration profile.
  late final pulumi.Output<ConfigurationProfilePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ConfigurationProfilesVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigurationProfilesVersion]. {@macro pulumi_automanage_configuration_profiles_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigurationProfilesVersion(
    String name, {
    ConfigurationProfilesVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:automanage:ConfigurationProfilesVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<ConfigurationProfilePropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
