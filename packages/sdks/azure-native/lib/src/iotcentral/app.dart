import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_args.dart';
import 'app_sku_info_response.dart';
import 'network_rule_sets_response.dart';
import 'system_assigned_service_identity_response.dart';
import 'system_data_response.dart';

/// The IoT Central application.
///
/// Uses Azure REST API version 2021-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-06-01.
///
/// Other available API versions: 2021-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iotcentral [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Apps_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var app = new AzureNative.IoTCentral.App("app", new()
///     {
///         DisplayName = "My IoT Central App",
///         Identity = new AzureNative.IoTCentral.Inputs.SystemAssignedServiceIdentityArgs
///         {
///             Type = AzureNative.IoTCentral.SystemAssignedServiceIdentityType.SystemAssigned,
///         },
///         Location = "westus",
///         ResourceGroupName = "resRg",
///         ResourceName = "myIoTCentralApp",
///         Sku = new AzureNative.IoTCentral.Inputs.AppSkuInfoArgs
///         {
///             Name = AzureNative.IoTCentral.AppSku.ST2,
///         },
///         Subdomain = "my-iot-central-app",
///         Template = "iotc-pnp-preview@1.0.0",
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
/// 	iotcentral "github.com/pulumi/pulumi-azure-native-sdk/iotcentral/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iotcentral.NewApp(ctx, "app", &iotcentral.AppArgs{
/// 			DisplayName: pulumi.String("My IoT Central App"),
/// 			Identity: &iotcentral.SystemAssignedServiceIdentityArgs{
/// 				Type: pulumi.String(iotcentral.SystemAssignedServiceIdentityTypeSystemAssigned),
/// 			},
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("resRg"),
/// 			ResourceName:      pulumi.String("myIoTCentralApp"),
/// 			Sku: &iotcentral.AppSkuInfoArgs{
/// 				Name: pulumi.String(iotcentral.AppSkuST2),
/// 			},
/// 			Subdomain: pulumi.String("my-iot-central-app"),
/// 			Template:  pulumi.String("iotc-pnp-preview@1.0.0"),
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
/// resource "azure-native_iotcentral_app" "app" {
///   display_name = "My IoT Central App"
///   identity = {
///     type = "SystemAssigned"
///   }
///   location            = "westus"
///   resource_group_name = "resRg"
///   resource_name       = "myIoTCentralApp"
///   sku = {
///     name = "ST2"
///   }
///   subdomain = "my-iot-central-app"
///   template  = "iotc-pnp-preview@1.0.0"
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
/// import com.pulumi.azurenative.iotcentral.App;
/// import com.pulumi.azurenative.iotcentral.AppArgs;
/// import com.pulumi.azurenative.iotcentral.inputs.SystemAssignedServiceIdentityArgs;
/// import com.pulumi.azurenative.iotcentral.inputs.AppSkuInfoArgs;
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
///         var app = new App("app", AppArgs.builder()
///             .displayName("My IoT Central App")
///             .identity(SystemAssignedServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("westus")
///             .resourceGroupName("resRg")
///             .resourceName("myIoTCentralApp")
///             .sku(AppSkuInfoArgs.builder()
///                 .name("ST2")
///                 .build())
///             .subdomain("my-iot-central-app")
///             .template("iotc-pnp-preview@1.0.0")
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
/// const app = new azure_native.iotcentral.App("app", {
///     displayName: "My IoT Central App",
///     identity: {
///         type: azure_native.iotcentral.SystemAssignedServiceIdentityType.SystemAssigned,
///     },
///     location: "westus",
///     resourceGroupName: "resRg",
///     resourceName: "myIoTCentralApp",
///     sku: {
///         name: azure_native.iotcentral.AppSku.ST2,
///     },
///     subdomain: "my-iot-central-app",
///     template: "iotc-pnp-preview@1.0.0",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// app = azure_native.iotcentral.App("app",
///     display_name="My IoT Central App",
///     identity={
///         "type": azure_native.iotcentral.SystemAssignedServiceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="westus",
///     resource_group_name="resRg",
///     resource_name_="myIoTCentralApp",
///     sku={
///         "name": azure_native.iotcentral.AppSku.ST2,
///     },
///     subdomain="my-iot-central-app",
///     template="iotc-pnp-preview@1.0.0")
///
/// ```
///
/// ```yaml
/// resources:
///   app:
///     type: azure-native:iotcentral:App
///     properties:
///       displayName: My IoT Central App
///       identity:
///         type: SystemAssigned
///       location: westus
///       resourceGroupName: resRg
///       resourceName: myIoTCentralApp
///       sku:
///         name: ST2
///       subdomain: my-iot-central-app
///       template: iotc-pnp-preview@1.0.0
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
/// $ pulumi import azure-native:iotcentral:App myIoTCentralApp /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.IoTCentral/iotApps/{resourceName}
/// ```
class App extends pulumi.CustomResource {
  /// The ID of the application.
  late final pulumi.Output<String> applicationId;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The display name of the application.
  late final pulumi.Output<String?> displayName;
  /// The managed identities for the IoT Central application.
  late final pulumi.Output<SystemAssignedServiceIdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Network Rule Set Properties of this IoT Central application.
  late final pulumi.Output<NetworkRuleSetsResponse?> networkRuleSets;
  /// Private endpoint connections created on this IoT Central application.
  late final pulumi.Output<List<Map<String, dynamic>>> privateEndpointConnections;
  /// The provisioning state of the application.
  late final pulumi.Output<String> provisioningState;
  /// Whether requests from the public network are allowed.
  late final pulumi.Output<String?> publicNetworkAccess;
  /// A valid instance SKU.
  late final pulumi.Output<AppSkuInfoResponse> sku;
  /// The current state of the application.
  late final pulumi.Output<String> state;
  /// The subdomain of the application.
  late final pulumi.Output<String?> subdomain;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The ID of the application template, which is a blueprint that defines the characteristics and behaviors of an application. Optional; if not specified, defaults to a blank blueprint and allows the application to be defined from scratch.
  late final pulumi.Output<String?> template;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [App].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [App]. {@macro pulumi_iotcentral_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  App(
    String name, {
    AppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:iotcentral:App',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationId = registerOutput<String>('applicationId');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    displayName = registerOutput<String?>('displayName');
    identity = registerOutput<SystemAssignedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemAssignedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkRuleSets = registerOutput<NetworkRuleSetsResponse?>('networkRuleSets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkRuleSetsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>('privateEndpointConnections');
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    sku = registerOutput<AppSkuInfoResponse>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppSkuInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    subdomain = registerOutput<String?>('subdomain');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    template = registerOutput<String?>('template');
    type = registerOutput<String>('type');
  }
}
