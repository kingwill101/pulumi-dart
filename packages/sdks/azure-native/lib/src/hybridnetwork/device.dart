import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_args.dart';
import 'system_data_response.dart';

/// Device resource.
///
/// Uses Azure REST API version 2022-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-01-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update device
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var device = new AzureNative.HybridNetwork.Device("device", new()
///     {
///         DeviceName = "TestDevice",
///         DeviceType = AzureNative.HybridNetwork.DeviceType.AzureStackEdge,
///         Location = "eastus",
///         ResourceGroupName = "rg1",
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
/// 	hybridnetwork "github.com/pulumi/pulumi-azure-native-sdk/hybridnetwork/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridnetwork.NewDevice(ctx, "device", &hybridnetwork.DeviceArgs{
/// 			DeviceName:        pulumi.String("TestDevice"),
/// 			DeviceType:        pulumi.String(hybridnetwork.DeviceTypeAzureStackEdge),
/// 			Location:          pulumi.String("eastus"),
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.hybridnetwork.Device;
/// import com.pulumi.azurenative.hybridnetwork.DeviceArgs;
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
///             .deviceName("TestDevice")
///             .deviceType("AzureStackEdge")
///             .location("eastus")
///             .resourceGroupName("rg1")
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
/// const device = new azure_native.hybridnetwork.Device("device", {
///     deviceName: "TestDevice",
///     deviceType: azure_native.hybridnetwork.DeviceType.AzureStackEdge,
///     location: "eastus",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// device = azure_native.hybridnetwork.Device("device",
///     device_name="TestDevice",
///     device_type=azure_native.hybridnetwork.DeviceType.AZURE_STACK_EDGE,
///     location="eastus",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   device:
///     type: azure-native:hybridnetwork:Device
///     properties:
///       deviceName: TestDevice
///       deviceType: AzureStackEdge
///       location: eastus
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:hybridnetwork:Device TestDevice /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridNetwork/devices/{deviceName}
/// ```
class Device extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The type of the device.
  late final pulumi.Output<String> deviceType;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The list of network functions deployed on the device.
  late final pulumi.Output<List<Map<String, dynamic>>> networkFunctions;
  /// The provisioning state of the device resource.
  late final pulumi.Output<String> provisioningState;
  /// The current device status.
  late final pulumi.Output<String> status;
  /// The system meta data relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Device].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Device]. {@macro pulumi_hybridnetwork_device_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Device(
    String name, {
    DeviceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:hybridnetwork:Device',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    deviceType = registerOutput<String>('deviceType');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkFunctions = registerOutput<List<Map<String, dynamic>>>('networkFunctions');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<String>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
