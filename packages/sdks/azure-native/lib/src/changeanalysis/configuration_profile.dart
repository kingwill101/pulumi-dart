import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_profile_args.dart';
import 'configuration_profile_resource_properties_response.dart';
import 'resource_identity_response.dart';
import 'system_data_response.dart';

/// A profile object that contains change analysis configuration, such as notification settings, for this subscription
///
/// Uses Azure REST API version 2020-04-01-preview. In version 2.x of the Azure Native provider, it used API version 2020-04-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ConfigurationProfile_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var configurationProfile = new AzureNative.ChangeAnalysis.ConfigurationProfile("configurationProfile", new()
///     {
///         ProfileName = "default",
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
/// 	changeanalysis "github.com/pulumi/pulumi-azure-native-sdk/changeanalysis/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := changeanalysis.NewConfigurationProfile(ctx, "configurationProfile", &changeanalysis.ConfigurationProfileArgs{
/// 			ProfileName: pulumi.String("default"),
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
/// import com.pulumi.azurenative.changeanalysis.ConfigurationProfile;
/// import com.pulumi.azurenative.changeanalysis.ConfigurationProfileArgs;
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
///         var configurationProfile = new ConfigurationProfile("configurationProfile", ConfigurationProfileArgs.builder()
///             .profileName("default")
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
/// const configurationProfile = new azure_native.changeanalysis.ConfigurationProfile("configurationProfile", {profileName: "default"});
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// configuration_profile = azure_native.changeanalysis.ConfigurationProfile("configurationProfile", profile_name="default")
///
/// ```
///
/// ```yaml
/// resources:
///   configurationProfile:
///     type: azure-native:changeanalysis:ConfigurationProfile
///     properties:
///       profileName: default
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ConfigurationProfile_CreateWithIdentity
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var configurationProfile = new AzureNative.ChangeAnalysis.ConfigurationProfile("configurationProfile", new()
///     {
///         ProfileName = "default",
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
/// 	changeanalysis "github.com/pulumi/pulumi-azure-native-sdk/changeanalysis/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := changeanalysis.NewConfigurationProfile(ctx, "configurationProfile", &changeanalysis.ConfigurationProfileArgs{
/// 			ProfileName: pulumi.String("default"),
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
/// import com.pulumi.azurenative.changeanalysis.ConfigurationProfile;
/// import com.pulumi.azurenative.changeanalysis.ConfigurationProfileArgs;
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
///         var configurationProfile = new ConfigurationProfile("configurationProfile", ConfigurationProfileArgs.builder()
///             .profileName("default")
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
/// const configurationProfile = new azure_native.changeanalysis.ConfigurationProfile("configurationProfile", {profileName: "default"});
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// configuration_profile = azure_native.changeanalysis.ConfigurationProfile("configurationProfile", profile_name="default")
///
/// ```
///
/// ```yaml
/// resources:
///   configurationProfile:
///     type: azure-native:changeanalysis:ConfigurationProfile
///     properties:
///       profileName: default
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
/// $ pulumi import azure-native:changeanalysis:ConfigurationProfile default /subscriptions/{subscriptionId}/providers/Microsoft.ChangeAnalysis/profile/{profileName}
/// ```
class ConfigurationProfile extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The identity block returned by ARM resource that supports managed identity.
  late final pulumi.Output<ResourceIdentityResponse?> identity;

  /// The location where the resource is to be deployed.
  late final pulumi.Output<String?> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The properties of a configuration profile.
  late final pulumi.Output<ConfigurationProfileResourcePropertiesResponse>
  properties;

  /// Top level metadata https://github.com/Azure/azure-resource-manager-rpc/blob/master/v1.0/common-api-contracts.md#system-metadata-for-all-azure-resources
  late final pulumi.Output<SystemDataResponse?> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ConfigurationProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigurationProfile]. {@macro pulumi_changeanalysis_configuration_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigurationProfile(
    String name, {
    ConfigurationProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:changeanalysis:ConfigurationProfile',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ResourceIdentityResponse?>('identity');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ConfigurationProfileResourcePropertiesResponse>(
      'properties',
    );
    systemData = registerOutput<SystemDataResponse?>('systemData');
    type = registerOutput<String>('type');
  }
}
