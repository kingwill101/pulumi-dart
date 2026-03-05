import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_device_args.dart';
import 'system_data_response.dart';

/// The Network Device resource definition.
///
/// Uses Azure REST API version 2023-06-15. In version 2.x of the Azure Native provider, it used API version 2023-02-01-preview.
///
/// Other available API versions: 2023-02-01-preview, 2024-02-15-preview, 2024-06-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NetworkDevices_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkDevice = new AzureNative.ManagedNetworkFabric.NetworkDevice("networkDevice", new()
///     {
///         Annotation = "annotation",
///         HostName = "NFA-Device",
///         Location = "eastuseuap",
///         NetworkDeviceName = "example-device",
///         NetworkDeviceSku = "DeviceSku",
///         ResourceGroupName = "example-rg",
///         SerialNumber = "Vendor;DCS-7280XXX-24;12.05;JPE2111XXXX",
///         Tags =
///         {
///             { "keyID", "KeyValue" },
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
/// 	managednetworkfabric "github.com/pulumi/pulumi-azure-native-sdk/managednetworkfabric/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := managednetworkfabric.NewNetworkDevice(ctx, "networkDevice", &managednetworkfabric.NetworkDeviceArgs{
/// 			Annotation:        pulumi.String("annotation"),
/// 			HostName:          pulumi.String("NFA-Device"),
/// 			Location:          pulumi.String("eastuseuap"),
/// 			NetworkDeviceName: pulumi.String("example-device"),
/// 			NetworkDeviceSku:  pulumi.String("DeviceSku"),
/// 			ResourceGroupName: pulumi.String("example-rg"),
/// 			SerialNumber:      pulumi.String("Vendor;DCS-7280XXX-24;12.05;JPE2111XXXX"),
/// 			Tags: pulumi.StringMap{
/// 				"keyID": pulumi.String("KeyValue"),
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
/// import com.pulumi.azurenative.managednetworkfabric.NetworkDevice;
/// import com.pulumi.azurenative.managednetworkfabric.NetworkDeviceArgs;
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
///         var networkDevice = new NetworkDevice("networkDevice", NetworkDeviceArgs.builder()
///             .annotation("annotation")
///             .hostName("NFA-Device")
///             .location("eastuseuap")
///             .networkDeviceName("example-device")
///             .networkDeviceSku("DeviceSku")
///             .resourceGroupName("example-rg")
///             .serialNumber("Vendor;DCS-7280XXX-24;12.05;JPE2111XXXX")
///             .tags(Map.of("keyID", "KeyValue"))
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
/// const networkDevice = new azure_native.managednetworkfabric.NetworkDevice("networkDevice", {
///     annotation: "annotation",
///     hostName: "NFA-Device",
///     location: "eastuseuap",
///     networkDeviceName: "example-device",
///     networkDeviceSku: "DeviceSku",
///     resourceGroupName: "example-rg",
///     serialNumber: "Vendor;DCS-7280XXX-24;12.05;JPE2111XXXX",
///     tags: {
///         keyID: "KeyValue",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_device = azure_native.managednetworkfabric.NetworkDevice("networkDevice",
///     annotation="annotation",
///     host_name="NFA-Device",
///     location="eastuseuap",
///     network_device_name="example-device",
///     network_device_sku="DeviceSku",
///     resource_group_name="example-rg",
///     serial_number="Vendor;DCS-7280XXX-24;12.05;JPE2111XXXX",
///     tags={
///         "keyID": "KeyValue",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   networkDevice:
///     type: azure-native:managednetworkfabric:NetworkDevice
///     properties:
///       annotation: annotation
///       hostName: NFA-Device
///       location: eastuseuap
///       networkDeviceName: example-device
///       networkDeviceSku: DeviceSku
///       resourceGroupName: example-rg
///       serialNumber: Vendor;DCS-7280XXX-24;12.05;JPE2111XXXX
///       tags:
///         keyID: KeyValue
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
/// $ pulumi import azure-native:managednetworkfabric:NetworkDevice example-device /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedNetworkFabric/networkDevices/{networkDeviceName}
/// ```
class NetworkDevice extends pulumi.CustomResource {
  /// Administrative state of the resource.
  late final pulumi.Output<String> administrativeState;

  /// Switch configuration description.
  late final pulumi.Output<String?> annotation;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Configuration state of the resource.
  late final pulumi.Output<String> configurationState;

  /// The host name of the device.
  late final pulumi.Output<String?> hostName;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// Management IPv4 Address.
  late final pulumi.Output<String> managementIpv4Address;

  /// Management IPv6 Address.
  late final pulumi.Output<String> managementIpv6Address;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// NetworkDeviceRole is the device role: Example: CE | ToR.
  late final pulumi.Output<String> networkDeviceRole;

  /// Network Device SKU name.
  late final pulumi.Output<String?> networkDeviceSku;

  /// Reference to network rack resource id.
  late final pulumi.Output<String> networkRackId;

  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// Serial number of the device. Format of serial Number - Make;Model;HardwareRevisionId;SerialNumber.
  late final pulumi.Output<String> serialNumber;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Current version of the device as defined in SKU.
  late final pulumi.Output<String> version;

  /// Creates a new [NetworkDevice].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkDevice]. {@macro pulumi_managednetworkfabric_network_device_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkDevice(
    String name, {
    NetworkDeviceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:managednetworkfabric:NetworkDevice',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    administrativeState = registerOutput<String>('administrativeState');
    annotation = registerOutput<String?>('annotation');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    configurationState = registerOutput<String>('configurationState');
    hostName = registerOutput<String?>('hostName');
    location = registerOutput<String>('location');
    managementIpv4Address = registerOutput<String>('managementIpv4Address');
    managementIpv6Address = registerOutput<String>('managementIpv6Address');
    this.name = registerOutput<String>('name');
    networkDeviceRole = registerOutput<String>('networkDeviceRole');
    networkDeviceSku = registerOutput<String?>('networkDeviceSku');
    networkRackId = registerOutput<String>('networkRackId');
    provisioningState = registerOutput<String>('provisioningState');
    serialNumber = registerOutput<String>('serialNumber');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    version = registerOutput<String>('version');
  }
}
