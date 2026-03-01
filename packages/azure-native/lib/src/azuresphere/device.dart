import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_args.dart';
import 'system_data_response.dart';

/// An device resource belonging to a device group resource.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Devices_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var device = new AzureNative.AzureSphere.Device("device", new()
///     {
///         CatalogName = "MyCatalog1",
///         DeviceGroupName = "myDeviceGroup1",
///         DeviceName = "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
///         ProductName = "MyProduct1",
///         ResourceGroupName = "MyResourceGroup1",
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
/// 	azuresphere "github.com/pulumi/pulumi-azure-native-sdk/azuresphere/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azuresphere.NewDevice(ctx, "device", &azuresphere.DeviceArgs{
/// 			CatalogName:       pulumi.String("MyCatalog1"),
/// 			DeviceGroupName:   pulumi.String("myDeviceGroup1"),
/// 			DeviceName:        pulumi.String("00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"),
/// 			ProductName:       pulumi.String("MyProduct1"),
/// 			ResourceGroupName: pulumi.String("MyResourceGroup1"),
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
/// import com.pulumi.azurenative.azuresphere.Device;
/// import com.pulumi.azurenative.azuresphere.DeviceArgs;
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
///         var device = new Device("device", DeviceArgs.builder()
///             .catalogName("MyCatalog1")
///             .deviceGroupName("myDeviceGroup1")
///             .deviceName("00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000")
///             .productName("MyProduct1")
///             .resourceGroupName("MyResourceGroup1")
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
/// const device = new azure_native.azuresphere.Device("device", {
///     catalogName: "MyCatalog1",
///     deviceGroupName: "myDeviceGroup1",
///     deviceName: "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
///     productName: "MyProduct1",
///     resourceGroupName: "MyResourceGroup1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// device = azure_native.azuresphere.Device("device",
///     catalog_name="MyCatalog1",
///     device_group_name="myDeviceGroup1",
///     device_name="00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
///     product_name="MyProduct1",
///     resource_group_name="MyResourceGroup1")
///
/// ```
///
/// ```yaml
/// resources:
///   device:
///     type: azure-native:azuresphere:Device
///     properties:
///       catalogName: MyCatalog1
///       deviceGroupName: myDeviceGroup1
///       deviceName: '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000'
///       productName: MyProduct1
///       resourceGroupName: MyResourceGroup1
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
/// $ pulumi import azure-native:azuresphere:Device 00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureSphere/catalogs/{catalogName}/products/{productName}/deviceGroups/{deviceGroupName}/devices/{deviceName}
/// ```
class Device extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// SKU of the chip
  late final pulumi.Output<String> chipSku;
  /// Device ID
  late final pulumi.Output<String?> deviceId;
  /// OS version available for installation when update requested
  late final pulumi.Output<String> lastAvailableOsVersion;
  /// OS version running on device when update requested
  late final pulumi.Output<String> lastInstalledOsVersion;
  /// Time when update requested and new OS version available
  late final pulumi.Output<String> lastOsUpdateUtc;
  /// Time when update was last requested
  late final pulumi.Output<String> lastUpdateRequestUtc;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Device].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Device]. {@macro pulumi_azuresphere_device_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Device(
    String name, {
    DeviceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azuresphere:Device',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.chipSku = registerOutput<String>('chipSku');
    this.deviceId = registerOutput<String?>('deviceId');
    this.lastAvailableOsVersion = registerOutput<String>('lastAvailableOsVersion');
    this.lastInstalledOsVersion = registerOutput<String>('lastInstalledOsVersion');
    this.lastOsUpdateUtc = registerOutput<String>('lastOsUpdateUtc');
    this.lastUpdateRequestUtc = registerOutput<String>('lastUpdateRequestUtc');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
