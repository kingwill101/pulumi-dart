import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_pool_args.dart';
import 'device_pool_properties_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// DevicePool details.
///
/// Uses Azure REST API version 2026-03-01-preview.
///
/// Other available API versions: 2026-04-01-preview, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DevicePools_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var devicePool = new AzureNative.AzureStackHCI.DevicePool("devicePool", new()
///     {
///         DevicePoolName = "devicePool-1",
///         Location = "eastus",
///         Properties = null,
///         ResourceGroupName = "ArcInstance-rg",
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestackhci.NewDevicePool(ctx, "devicePool", &azurestackhci.DevicePoolArgs{
/// 			DevicePoolName:    pulumi.String("devicePool-1"),
/// 			Location:          pulumi.String("eastus"),
/// 			Properties:        &azurestackhci.DevicePoolPropertiesArgs{},
/// 			ResourceGroupName: pulumi.String("ArcInstance-rg"),
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
/// resource "azure-native_azurestackhci_devicepool" "devicePool" {
///   device_pool_name    = "devicePool-1"
///   location            = "eastus"
///   properties          = {}
///   resource_group_name = "ArcInstance-rg"
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
/// import com.pulumi.azurenative.azurestackhci.DevicePool;
/// import com.pulumi.azurenative.azurestackhci.DevicePoolArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.DevicePoolPropertiesArgs;
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
///         var devicePool = new DevicePool("devicePool", DevicePoolArgs.builder()
///             .devicePoolName("devicePool-1")
///             .location("eastus")
///             .properties(DevicePoolPropertiesArgs.builder()
///                 .build())
///             .resourceGroupName("ArcInstance-rg")
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
/// const devicePool = new azure_native.azurestackhci.DevicePool("devicePool", {
///     devicePoolName: "devicePool-1",
///     location: "eastus",
///     properties: {},
///     resourceGroupName: "ArcInstance-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// device_pool = azure_native.azurestackhci.DevicePool("devicePool",
///     device_pool_name="devicePool-1",
///     location="eastus",
///     properties={},
///     resource_group_name="ArcInstance-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   devicePool:
///     type: azure-native:azurestackhci:DevicePool
///     properties:
///       devicePoolName: devicePool-1
///       location: eastus
///       properties: {}
///       resourceGroupName: ArcInstance-rg
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DevicePools_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var devicePool = new AzureNative.AzureStackHCI.DevicePool("devicePool", new()
///     {
///         DevicePoolName = "devicePool1",
///         Location = "eastus",
///         Properties = null,
///         ResourceGroupName = "ArcInstance-rg",
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestackhci.NewDevicePool(ctx, "devicePool", &azurestackhci.DevicePoolArgs{
/// 			DevicePoolName:    pulumi.String("devicePool1"),
/// 			Location:          pulumi.String("eastus"),
/// 			Properties:        &azurestackhci.DevicePoolPropertiesArgs{},
/// 			ResourceGroupName: pulumi.String("ArcInstance-rg"),
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
/// resource "azure-native_azurestackhci_devicepool" "devicePool" {
///   device_pool_name    = "devicePool1"
///   location            = "eastus"
///   properties          = {}
///   resource_group_name = "ArcInstance-rg"
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
/// import com.pulumi.azurenative.azurestackhci.DevicePool;
/// import com.pulumi.azurenative.azurestackhci.DevicePoolArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.DevicePoolPropertiesArgs;
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
///         var devicePool = new DevicePool("devicePool", DevicePoolArgs.builder()
///             .devicePoolName("devicePool1")
///             .location("eastus")
///             .properties(DevicePoolPropertiesArgs.builder()
///                 .build())
///             .resourceGroupName("ArcInstance-rg")
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
/// const devicePool = new azure_native.azurestackhci.DevicePool("devicePool", {
///     devicePoolName: "devicePool1",
///     location: "eastus",
///     properties: {},
///     resourceGroupName: "ArcInstance-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// device_pool = azure_native.azurestackhci.DevicePool("devicePool",
///     device_pool_name="devicePool1",
///     location="eastus",
///     properties={},
///     resource_group_name="ArcInstance-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   devicePool:
///     type: azure-native:azurestackhci:DevicePool
///     properties:
///       devicePoolName: devicePool1
///       location: eastus
///       properties: {}
///       resourceGroupName: ArcInstance-rg
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
/// $ pulumi import azure-native:azurestackhci:DevicePool devicePool-1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureStackHCI/devicePools/{devicePoolName}
/// ```
class DevicePool extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The managed service identities assigned to this resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<DevicePoolPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DevicePool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DevicePool]. {@macro pulumi_azurestackhci_device_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DevicePool(
    String name, {
    DevicePoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurestackhci:DevicePool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DevicePoolPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DevicePoolPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
