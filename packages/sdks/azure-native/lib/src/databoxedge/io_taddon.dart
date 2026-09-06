import 'package:pulumi/pulumi.dart' as pulumi;
import 'io_taddon_args.dart';
import 'io_tdevice_info_response.dart';
import 'system_data_response.dart';

/// IoT Addon.
///
/// Uses Azure REST API version 2023-07-01. In version 2.x of the Azure Native provider, it used API version 2022-03-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutAddOns
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ioTAddon = new AzureNative.DataBoxEdge.IoTAddon("ioTAddon", new()
///     {
///         AddonName = "arcName",
///         DeviceName = "testedgedevice",
///         ResourceGroupName = "GroupForEdgeAutomation",
///         RoleName = "KubernetesRole",
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
/// 	databoxedge "github.com/pulumi/pulumi-azure-native-sdk/databoxedge/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databoxedge.NewIoTAddon(ctx, "ioTAddon", &databoxedge.IoTAddonArgs{
/// 			AddonName:         pulumi.String("arcName"),
/// 			DeviceName:        pulumi.String("testedgedevice"),
/// 			ResourceGroupName: pulumi.String("GroupForEdgeAutomation"),
/// 			RoleName:          pulumi.String("KubernetesRole"),
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
/// resource "azure-native_databoxedge_iotaddon" "ioTAddon" {
///   addon_name          = "arcName"
///   device_name         = "testedgedevice"
///   resource_group_name = "GroupForEdgeAutomation"
///   role_name           = "KubernetesRole"
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
/// import com.pulumi.azurenative.databoxedge.IoTAddon;
/// import com.pulumi.azurenative.databoxedge.IoTAddonArgs;
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
///         var ioTAddon = new IoTAddon("ioTAddon", IoTAddonArgs.builder()
///             .addonName("arcName")
///             .deviceName("testedgedevice")
///             .resourceGroupName("GroupForEdgeAutomation")
///             .roleName("KubernetesRole")
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
/// const ioTAddon = new azure_native.databoxedge.IoTAddon("ioTAddon", {
///     addonName: "arcName",
///     deviceName: "testedgedevice",
///     resourceGroupName: "GroupForEdgeAutomation",
///     roleName: "KubernetesRole",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// io_t_addon = azure_native.databoxedge.IoTAddon("ioTAddon",
///     addon_name="arcName",
///     device_name="testedgedevice",
///     resource_group_name="GroupForEdgeAutomation",
///     role_name="KubernetesRole")
///
/// ```
///
/// ```yaml
/// resources:
///   ioTAddon:
///     type: azure-native:databoxedge:IoTAddon
///     properties:
///       addonName: arcName
///       deviceName: testedgedevice
///       resourceGroupName: GroupForEdgeAutomation
///       roleName: KubernetesRole
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
/// $ pulumi import azure-native:databoxedge:IoTAddon arcName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/{deviceName}/roles/{roleName}/addons/{addonName}
/// ```
class IoTAddon extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Host OS supported by the IoT addon.
  late final pulumi.Output<String> hostPlatform;
  /// Platform where the runtime is hosted.
  late final pulumi.Output<String> hostPlatformType;
  /// IoT device metadata to which appliance needs to be connected.
  late final pulumi.Output<IoTDeviceInfoResponse> ioTDeviceDetails;
  /// IoT edge device to which the IoT Addon needs to be configured.
  late final pulumi.Output<IoTDeviceInfoResponse> ioTEdgeDeviceDetails;
  /// Addon type.
  /// Expected value is 'IotEdge'.
  late final pulumi.Output<String> kind;
  /// The object name.
  late final pulumi.Output<String> name;
  /// Addon Provisioning State
  late final pulumi.Output<String> provisioningState;
  /// Metadata pertaining to creation and last modification of Addon
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The hierarchical type of the object.
  late final pulumi.Output<String> type;
  /// Version of IoT running on the appliance.
  late final pulumi.Output<String> version;

  /// Creates a new [IoTAddon].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IoTAddon]. {@macro pulumi_databoxedge_io_taddon_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IoTAddon(
    String name, {
    IoTAddonArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:databoxedge:IoTAddon',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    hostPlatform = registerOutput<String>('hostPlatform');
    hostPlatformType = registerOutput<String>('hostPlatformType');
    ioTDeviceDetails = registerOutput<IoTDeviceInfoResponse>('ioTDeviceDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IoTDeviceInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ioTEdgeDeviceDetails = registerOutput<IoTDeviceInfoResponse>('ioTEdgeDeviceDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IoTDeviceInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    version = registerOutput<String>('version');
  }

  /// Creates a typed reference to an existing [IoTAddon] resource.
  IoTAddon.reference(String urn)
    : super(
        'azure-native:databoxedge:IoTAddon',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    hostPlatform = registerOutput<String>('hostPlatform');
    hostPlatformType = registerOutput<String>('hostPlatformType');
    ioTDeviceDetails = registerOutput<IoTDeviceInfoResponse>('ioTDeviceDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IoTDeviceInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ioTEdgeDeviceDetails = registerOutput<IoTDeviceInfoResponse>('ioTEdgeDeviceDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IoTDeviceInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    version = registerOutput<String>('version');
  }
}
