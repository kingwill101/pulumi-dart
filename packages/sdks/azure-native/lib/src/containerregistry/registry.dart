import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_property_response.dart';
import 'identity_properties_response.dart';
import 'network_rule_set_response.dart';
import 'policies_response.dart';
import 'registry_args.dart';
import 'sku_response.dart';
import 'status_response.dart';
import 'system_data_response.dart';

/// An object that represents a container registry.
///
/// Uses Azure REST API version 2023-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-12-01.
///
/// Other available API versions: 2019-12-01-preview, 2020-11-01-preview, 2021-06-01-preview, 2021-08-01-preview, 2021-09-01, 2021-12-01-preview, 2022-02-01-preview, 2022-12-01, 2023-06-01-preview, 2023-07-01, 2023-08-01-preview, 2023-11-01-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01, 2025-05-01-preview, 2025-06-01-preview, 2025-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RegistryCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var registry = new AzureNative.ContainerRegistry.Registry("registry", new()
///     {
///         AdminUserEnabled = true,
///         Location = "westus",
///         RegistryName = "myRegistry",
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.ContainerRegistry.Inputs.SkuArgs
///         {
///             Name = AzureNative.ContainerRegistry.SkuName.Standard,
///         },
///         Tags =
///         {
///             { "key", "value" },
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
/// 	containerregistry "github.com/pulumi/pulumi-azure-native-sdk/containerregistry/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerregistry.NewRegistry(ctx, "registry", &containerregistry.RegistryArgs{
/// 			AdminUserEnabled:  pulumi.Bool(true),
/// 			Location:          pulumi.String("westus"),
/// 			RegistryName:      pulumi.String("myRegistry"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &containerregistry.SkuArgs{
/// 				Name: pulumi.String(containerregistry.SkuNameStandard),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
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
/// import com.pulumi.azurenative.containerregistry.Registry;
/// import com.pulumi.azurenative.containerregistry.RegistryArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.SkuArgs;
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
///         var registry = new Registry("registry", RegistryArgs.builder()
///             .adminUserEnabled(true)
///             .location("westus")
///             .registryName("myRegistry")
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .name("Standard")
///                 .build())
///             .tags(Map.of("key", "value"))
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
/// const registry = new azure_native.containerregistry.Registry("registry", {
///     adminUserEnabled: true,
///     location: "westus",
///     registryName: "myRegistry",
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         name: azure_native.containerregistry.SkuName.Standard,
///     },
///     tags: {
///         key: "value",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// registry = azure_native.containerregistry.Registry("registry",
///     admin_user_enabled=True,
///     location="westus",
///     registry_name="myRegistry",
///     resource_group_name="myResourceGroup",
///     sku={
///         "name": azure_native.containerregistry.SkuName.STANDARD,
///     },
///     tags={
///         "key": "value",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   registry:
///     type: azure-native:containerregistry:Registry
///     properties:
///       adminUserEnabled: true
///       location: westus
///       registryName: myRegistry
///       resourceGroupName: myResourceGroup
///       sku:
///         name: Standard
///       tags:
///         key: value
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### RegistryCreateZoneRedundant
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var registry = new AzureNative.ContainerRegistry.Registry("registry", new()
///     {
///         Location = "westus",
///         RegistryName = "myRegistry",
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.ContainerRegistry.Inputs.SkuArgs
///         {
///             Name = AzureNative.ContainerRegistry.SkuName.Standard,
///         },
///         Tags =
///         {
///             { "key", "value" },
///         },
///         ZoneRedundancy = AzureNative.ContainerRegistry.ZoneRedundancy.Enabled,
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
/// 	containerregistry "github.com/pulumi/pulumi-azure-native-sdk/containerregistry/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerregistry.NewRegistry(ctx, "registry", &containerregistry.RegistryArgs{
/// 			Location:          pulumi.String("westus"),
/// 			RegistryName:      pulumi.String("myRegistry"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &containerregistry.SkuArgs{
/// 				Name: pulumi.String(containerregistry.SkuNameStandard),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 			ZoneRedundancy: pulumi.String(containerregistry.ZoneRedundancyEnabled),
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
/// import com.pulumi.azurenative.containerregistry.Registry;
/// import com.pulumi.azurenative.containerregistry.RegistryArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.SkuArgs;
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
///         var registry = new Registry("registry", RegistryArgs.builder()
///             .location("westus")
///             .registryName("myRegistry")
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .name("Standard")
///                 .build())
///             .tags(Map.of("key", "value"))
///             .zoneRedundancy("Enabled")
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
/// const registry = new azure_native.containerregistry.Registry("registry", {
///     location: "westus",
///     registryName: "myRegistry",
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         name: azure_native.containerregistry.SkuName.Standard,
///     },
///     tags: {
///         key: "value",
///     },
///     zoneRedundancy: azure_native.containerregistry.ZoneRedundancy.Enabled,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// registry = azure_native.containerregistry.Registry("registry",
///     location="westus",
///     registry_name="myRegistry",
///     resource_group_name="myResourceGroup",
///     sku={
///         "name": azure_native.containerregistry.SkuName.STANDARD,
///     },
///     tags={
///         "key": "value",
///     },
///     zone_redundancy=azure_native.containerregistry.ZoneRedundancy.ENABLED)
///
/// ```
///
/// ```yaml
/// resources:
///   registry:
///     type: azure-native:containerregistry:Registry
///     properties:
///       location: westus
///       registryName: myRegistry
///       resourceGroupName: myResourceGroup
///       sku:
///         name: Standard
///       tags:
///         key: value
///       zoneRedundancy: Enabled
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
/// $ pulumi import azure-native:containerregistry:Registry myRegistry /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerRegistry/registries/{registryName}
/// ```
class Registry extends pulumi.CustomResource {
  /// The value that indicates whether the admin user is enabled.
  late final pulumi.Output<bool?> adminUserEnabled;

  /// Enables registry-wide pull from unauthenticated clients.
  late final pulumi.Output<bool?> anonymousPullEnabled;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The creation date of the container registry in ISO8601 format.
  late final pulumi.Output<String> creationDate;

  /// Enable a single data endpoint per region for serving data.
  late final pulumi.Output<bool?> dataEndpointEnabled;

  /// List of host names that will serve data when dataEndpointEnabled is true.
  late final pulumi.Output<List<String>> dataEndpointHostNames;

  /// The encryption settings of container registry.
  late final pulumi.Output<EncryptionPropertyResponse?> encryption;

  /// The identity of the container registry.
  late final pulumi.Output<IdentityPropertiesResponse?> identity;

  /// The location of the resource. This cannot be changed after the resource is created.
  late final pulumi.Output<String> location;

  /// The URL that can be used to log into the container registry.
  late final pulumi.Output<String> loginServer;

  /// The name of the resource.
  late final pulumi.Output<String> name;

  /// Whether to allow trusted Azure services to access a network restricted registry.
  late final pulumi.Output<String?> networkRuleBypassOptions;

  /// The network rule set for a container registry.
  late final pulumi.Output<NetworkRuleSetResponse?> networkRuleSet;

  /// The policies for a container registry.
  late final pulumi.Output<PoliciesResponse?> policies;

  /// List of private endpoint connections for a container registry.
  late final pulumi.Output<List<Map<String, dynamic>>>
  privateEndpointConnections;

  /// The provisioning state of the container registry at the time the operation was called.
  late final pulumi.Output<String> provisioningState;

  /// Whether or not public network access is allowed for the container registry.
  late final pulumi.Output<String?> publicNetworkAccess;

  /// The SKU of the container registry.
  late final pulumi.Output<SkuResponse> sku;

  /// The status of the container registry at the time the operation was called.
  late final pulumi.Output<StatusResponse> status;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The tags of the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Whether or not zone redundancy is enabled for this container registry
  late final pulumi.Output<String?> zoneRedundancy;

  /// Creates a new [Registry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Registry]. {@macro pulumi_containerregistry_registry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Registry(
    String name, {
    RegistryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:containerregistry:Registry',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    adminUserEnabled = registerOutput<bool?>('adminUserEnabled');
    anonymousPullEnabled = registerOutput<bool?>('anonymousPullEnabled');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationDate = registerOutput<String>('creationDate');
    dataEndpointEnabled = registerOutput<bool?>('dataEndpointEnabled');
    dataEndpointHostNames = registerOutput<List<String>>(
      'dataEndpointHostNames',
    );
    encryption = registerOutput<EncryptionPropertyResponse?>('encryption');
    identity = registerOutput<IdentityPropertiesResponse?>('identity');
    location = registerOutput<String>('location');
    loginServer = registerOutput<String>('loginServer');
    this.name = registerOutput<String>('name');
    networkRuleBypassOptions = registerOutput<String?>(
      'networkRuleBypassOptions',
    );
    networkRuleSet = registerOutput<NetworkRuleSetResponse?>('networkRuleSet');
    policies = registerOutput<PoliciesResponse?>('policies');
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>(
      'privateEndpointConnections',
    );
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    sku = registerOutput<SkuResponse>('sku');
    status = registerOutput<StatusResponse>('status');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    zoneRedundancy = registerOutput<String?>('zoneRedundancy');
  }
}
