import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_store_args.dart';
import 'data_plane_proxy_properties_response.dart';
import 'encryption_properties_response.dart';
import 'private_endpoint_connection_reference_response.dart';
import 'resource_identity_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// The configuration store along with all resource properties. The Configuration Store will have all information to begin utilizing it.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2023-03-01, 2023-08-01-preview, 2023-09-01-preview, 2024-06-01, 2024-06-15-preview, 2025-02-01-preview, 2025-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appconfiguration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ConfigurationStores_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var configurationStore = new AzureNative.AppConfiguration.ConfigurationStore("configurationStore", new()
///     {
///         ConfigStoreName = "contoso",
///         Location = "westus",
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.AppConfiguration.Inputs.SkuArgs
///         {
///             Name = "Standard",
///         },
///         Tags =
///         {
///             { "myTag", "myTagValue" },
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
/// 	appconfiguration "github.com/pulumi/pulumi-azure-native-sdk/appconfiguration/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appconfiguration.NewConfigurationStore(ctx, "configurationStore", &appconfiguration.ConfigurationStoreArgs{
/// 			ConfigStoreName:   pulumi.String("contoso"),
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &appconfiguration.SkuArgs{
/// 				Name: pulumi.String("Standard"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"myTag": pulumi.String("myTagValue"),
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
/// import com.pulumi.azurenative.appconfiguration.ConfigurationStore;
/// import com.pulumi.azurenative.appconfiguration.ConfigurationStoreArgs;
/// import com.pulumi.azurenative.appconfiguration.inputs.SkuArgs;
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
///         var configurationStore = new ConfigurationStore("configurationStore", ConfigurationStoreArgs.builder()
///             .configStoreName("contoso")
///             .location("westus")
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .name("Standard")
///                 .build())
///             .tags(Map.of("myTag", "myTagValue"))
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
/// const configurationStore = new azure_native.appconfiguration.ConfigurationStore("configurationStore", {
///     configStoreName: "contoso",
///     location: "westus",
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         name: "Standard",
///     },
///     tags: {
///         myTag: "myTagValue",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// configuration_store = azure_native.appconfiguration.ConfigurationStore("configurationStore",
///     config_store_name="contoso",
///     location="westus",
///     resource_group_name="myResourceGroup",
///     sku={
///         "name": "Standard",
///     },
///     tags={
///         "myTag": "myTagValue",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   configurationStore:
///     type: azure-native:appconfiguration:ConfigurationStore
///     properties:
///       configStoreName: contoso
///       location: westus
///       resourceGroupName: myResourceGroup
///       sku:
///         name: Standard
///       tags:
///         myTag: myTagValue
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ConfigurationStores_Create_With_Data_Plane_Proxy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var configurationStore = new AzureNative.AppConfiguration.ConfigurationStore("configurationStore", new()
///     {
///         ConfigStoreName = "contoso",
///         DataPlaneProxy = new AzureNative.AppConfiguration.Inputs.DataPlaneProxyPropertiesArgs
///         {
///             AuthenticationMode = AzureNative.AppConfiguration.AuthenticationMode.Pass_through,
///             PrivateLinkDelegation = AzureNative.AppConfiguration.PrivateLinkDelegation.Enabled,
///         },
///         Location = "westus",
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.AppConfiguration.Inputs.SkuArgs
///         {
///             Name = "Standard",
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
/// 	appconfiguration "github.com/pulumi/pulumi-azure-native-sdk/appconfiguration/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appconfiguration.NewConfigurationStore(ctx, "configurationStore", &appconfiguration.ConfigurationStoreArgs{
/// 			ConfigStoreName: pulumi.String("contoso"),
/// 			DataPlaneProxy: &appconfiguration.DataPlaneProxyPropertiesArgs{
/// 				AuthenticationMode:    pulumi.String(appconfiguration.AuthenticationMode_Pass_Through),
/// 				PrivateLinkDelegation: pulumi.String(appconfiguration.PrivateLinkDelegationEnabled),
/// 			},
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &appconfiguration.SkuArgs{
/// 				Name: pulumi.String("Standard"),
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
/// import com.pulumi.azurenative.appconfiguration.ConfigurationStore;
/// import com.pulumi.azurenative.appconfiguration.ConfigurationStoreArgs;
/// import com.pulumi.azurenative.appconfiguration.inputs.DataPlaneProxyPropertiesArgs;
/// import com.pulumi.azurenative.appconfiguration.inputs.SkuArgs;
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
///         var configurationStore = new ConfigurationStore("configurationStore", ConfigurationStoreArgs.builder()
///             .configStoreName("contoso")
///             .dataPlaneProxy(DataPlaneProxyPropertiesArgs.builder()
///                 .authenticationMode("Pass-through")
///                 .privateLinkDelegation("Enabled")
///                 .build())
///             .location("westus")
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .name("Standard")
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
/// const configurationStore = new azure_native.appconfiguration.ConfigurationStore("configurationStore", {
///     configStoreName: "contoso",
///     dataPlaneProxy: {
///         authenticationMode: azure_native.appconfiguration.AuthenticationMode.Pass_through,
///         privateLinkDelegation: azure_native.appconfiguration.PrivateLinkDelegation.Enabled,
///     },
///     location: "westus",
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         name: "Standard",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// configuration_store = azure_native.appconfiguration.ConfigurationStore("configurationStore",
///     config_store_name="contoso",
///     data_plane_proxy={
///         "authentication_mode": azure_native.appconfiguration.AuthenticationMode.PASS_THROUGH,
///         "private_link_delegation": azure_native.appconfiguration.PrivateLinkDelegation.ENABLED,
///     },
///     location="westus",
///     resource_group_name="myResourceGroup",
///     sku={
///         "name": "Standard",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   configurationStore:
///     type: azure-native:appconfiguration:ConfigurationStore
///     properties:
///       configStoreName: contoso
///       dataPlaneProxy:
///         authenticationMode: Pass-through
///         privateLinkDelegation: Enabled
///       location: westus
///       resourceGroupName: myResourceGroup
///       sku:
///         name: Standard
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ConfigurationStores_Create_With_Local_Auth_Disabled
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var configurationStore = new AzureNative.AppConfiguration.ConfigurationStore("configurationStore", new()
///     {
///         ConfigStoreName = "contoso",
///         DisableLocalAuth = true,
///         Location = "westus",
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.AppConfiguration.Inputs.SkuArgs
///         {
///             Name = "Standard",
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
/// 	appconfiguration "github.com/pulumi/pulumi-azure-native-sdk/appconfiguration/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appconfiguration.NewConfigurationStore(ctx, "configurationStore", &appconfiguration.ConfigurationStoreArgs{
/// 			ConfigStoreName:   pulumi.String("contoso"),
/// 			DisableLocalAuth:  pulumi.Bool(true),
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &appconfiguration.SkuArgs{
/// 				Name: pulumi.String("Standard"),
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
/// import com.pulumi.azurenative.appconfiguration.ConfigurationStore;
/// import com.pulumi.azurenative.appconfiguration.ConfigurationStoreArgs;
/// import com.pulumi.azurenative.appconfiguration.inputs.SkuArgs;
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
///         var configurationStore = new ConfigurationStore("configurationStore", ConfigurationStoreArgs.builder()
///             .configStoreName("contoso")
///             .disableLocalAuth(true)
///             .location("westus")
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .name("Standard")
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
/// const configurationStore = new azure_native.appconfiguration.ConfigurationStore("configurationStore", {
///     configStoreName: "contoso",
///     disableLocalAuth: true,
///     location: "westus",
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         name: "Standard",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// configuration_store = azure_native.appconfiguration.ConfigurationStore("configurationStore",
///     config_store_name="contoso",
///     disable_local_auth=True,
///     location="westus",
///     resource_group_name="myResourceGroup",
///     sku={
///         "name": "Standard",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   configurationStore:
///     type: azure-native:appconfiguration:ConfigurationStore
///     properties:
///       configStoreName: contoso
///       disableLocalAuth: true
///       location: westus
///       resourceGroupName: myResourceGroup
///       sku:
///         name: Standard
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
/// $ pulumi import azure-native:appconfiguration:ConfigurationStore contoso /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppConfiguration/configurationStores/{configStoreName}
/// ```
class ConfigurationStore extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The creation date of configuration store.
  late final pulumi.Output<String> creationDate;
  /// Property specifying the configuration of data plane proxy for Azure Resource Manager (ARM).
  late final pulumi.Output<DataPlaneProxyPropertiesResponse?> dataPlaneProxy;
  /// Disables all authentication methods other than AAD authentication.
  late final pulumi.Output<bool?> disableLocalAuth;
  /// Property specifying whether protection against purge is enabled for this configuration store.
  late final pulumi.Output<bool?> enablePurgeProtection;
  /// The encryption settings of the configuration store.
  late final pulumi.Output<EncryptionPropertiesResponse?> encryption;
  /// The DNS endpoint where the configuration store API will be available.
  late final pulumi.Output<String> endpoint;
  /// The managed identity information, if configured.
  late final pulumi.Output<ResourceIdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The list of private endpoint connections that are set up for this resource.
  late final pulumi.Output<List<PrivateEndpointConnectionReferenceResponse>> privateEndpointConnections;
  /// The provisioning state of the configuration store.
  late final pulumi.Output<String> provisioningState;
  /// Control permission for data plane traffic coming from public networks while private endpoint is enabled.
  late final pulumi.Output<String?> publicNetworkAccess;
  /// The sku of the configuration store.
  late final pulumi.Output<SkuResponse> sku;
  /// The amount of time in days that the configuration store will be retained when it is soft deleted.
  late final pulumi.Output<int?> softDeleteRetentionInDays;
  /// Resource system metadata.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ConfigurationStore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigurationStore]. {@macro pulumi_appconfiguration_configuration_store_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigurationStore(
    String name, {
    ConfigurationStoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:appconfiguration:ConfigurationStore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.creationDate = registerOutput<String>('creationDate');
    this.dataPlaneProxy = registerOutput<DataPlaneProxyPropertiesResponse?>('dataPlaneProxy');
    this.disableLocalAuth = registerOutput<bool?>('disableLocalAuth');
    this.enablePurgeProtection = registerOutput<bool?>('enablePurgeProtection');
    this.encryption = registerOutput<EncryptionPropertiesResponse?>('encryption');
    this.endpoint = registerOutput<String>('endpoint');
    this.identity = registerOutput<ResourceIdentityResponse?>('identity');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.privateEndpointConnections = registerOutput<List<PrivateEndpointConnectionReferenceResponse>>('privateEndpointConnections');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    this.sku = registerOutput<SkuResponse>('sku');
    this.softDeleteRetentionInDays = registerOutput<int?>('softDeleteRetentionInDays');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
