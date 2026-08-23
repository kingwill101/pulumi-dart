import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_resource_response.dart';
import 'io_tdevice_info_response.dart';
import 'io_tedge_agent_info_response.dart';
import 'io_trole_args.dart';
import 'system_data_response.dart';

/// Compute role.
///
/// Uses Azure REST API version 2023-07-01. In version 2.x of the Azure Native provider, it used API version 2022-03-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RolePut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ioTRole = new AzureNative.DataBoxEdge.IoTRole("ioTRole", new()
///     {
///         DeviceName = "testedgedevice",
///         HostPlatform = AzureNative.DataBoxEdge.PlatformType.Linux,
///         IoTDeviceDetails = new AzureNative.DataBoxEdge.Inputs.IoTDeviceInfoArgs
///         {
///             Authentication = new AzureNative.DataBoxEdge.Inputs.AuthenticationArgs
///             {
///                 SymmetricKey = new AzureNative.DataBoxEdge.Inputs.SymmetricKeyArgs
///                 {
///                     ConnectionString = new AzureNative.DataBoxEdge.Inputs.AsymmetricEncryptedSecretArgs
///                     {
///                         EncryptionAlgorithm = AzureNative.DataBoxEdge.EncryptionAlgorithm.AES256,
///                         EncryptionCertThumbprint = "348586569999244",
///                         Value = "Encrypted<<HostName=iothub.azure-devices.net;DeviceId=iotDevice;SharedAccessKey=2C750FscEas3JmQ8Bnui5yQWZPyml0/UiRt1bQwd8=>>",
///                     },
///                 },
///             },
///             DeviceId = "iotdevice",
///             IoTHostHub = "iothub.azure-devices.net",
///         },
///         IoTEdgeDeviceDetails = new AzureNative.DataBoxEdge.Inputs.IoTDeviceInfoArgs
///         {
///             Authentication = new AzureNative.DataBoxEdge.Inputs.AuthenticationArgs
///             {
///                 SymmetricKey = new AzureNative.DataBoxEdge.Inputs.SymmetricKeyArgs
///                 {
///                     ConnectionString = new AzureNative.DataBoxEdge.Inputs.AsymmetricEncryptedSecretArgs
///                     {
///                         EncryptionAlgorithm = AzureNative.DataBoxEdge.EncryptionAlgorithm.AES256,
///                         EncryptionCertThumbprint = "1245475856069999244",
///                         Value = "Encrypted<<HostName=iothub.azure-devices.net;DeviceId=iotEdge;SharedAccessKey=2C750FscEas3JmQ8Bnui5yQWZPyml0/UiRt1bQwd8=>>",
///                     },
///                 },
///             },
///             DeviceId = "iotEdge",
///             IoTHostHub = "iothub.azure-devices.net",
///         },
///         Kind = "IOT",
///         Name = "IoTRole1",
///         ResourceGroupName = "GroupForEdgeAutomation",
///         RoleStatus = AzureNative.DataBoxEdge.RoleStatus.Enabled,
///         ShareMappings = new[] {},
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
/// 		_, err := databoxedge.NewIoTRole(ctx, "ioTRole", &databoxedge.IoTRoleArgs{
/// 			DeviceName:   pulumi.String("testedgedevice"),
/// 			HostPlatform: pulumi.String(databoxedge.PlatformTypeLinux),
/// 			IoTDeviceDetails: &databoxedge.IoTDeviceInfoArgs{
/// 				Authentication: &databoxedge.AuthenticationArgs{
/// 					SymmetricKey: &databoxedge.SymmetricKeyArgs{
/// 						ConnectionString: &databoxedge.AsymmetricEncryptedSecretArgs{
/// 							EncryptionAlgorithm:      pulumi.String(databoxedge.EncryptionAlgorithmAES256),
/// 							EncryptionCertThumbprint: pulumi.String("348586569999244"),
/// 							Value:                    pulumi.String("Encrypted<<HostName=iothub.azure-devices.net;DeviceId=iotDevice;SharedAccessKey=2C750FscEas3JmQ8Bnui5yQWZPyml0/UiRt1bQwd8=>>"),
/// 						},
/// 					},
/// 				},
/// 				DeviceId:   pulumi.String("iotdevice"),
/// 				IoTHostHub: pulumi.String("iothub.azure-devices.net"),
/// 			},
/// 			IoTEdgeDeviceDetails: &databoxedge.IoTDeviceInfoArgs{
/// 				Authentication: &databoxedge.AuthenticationArgs{
/// 					SymmetricKey: &databoxedge.SymmetricKeyArgs{
/// 						ConnectionString: &databoxedge.AsymmetricEncryptedSecretArgs{
/// 							EncryptionAlgorithm:      pulumi.String(databoxedge.EncryptionAlgorithmAES256),
/// 							EncryptionCertThumbprint: pulumi.String("1245475856069999244"),
/// 							Value:                    pulumi.String("Encrypted<<HostName=iothub.azure-devices.net;DeviceId=iotEdge;SharedAccessKey=2C750FscEas3JmQ8Bnui5yQWZPyml0/UiRt1bQwd8=>>"),
/// 						},
/// 					},
/// 				},
/// 				DeviceId:   pulumi.String("iotEdge"),
/// 				IoTHostHub: pulumi.String("iothub.azure-devices.net"),
/// 			},
/// 			Kind:              pulumi.String("IOT"),
/// 			Name:              pulumi.String("IoTRole1"),
/// 			ResourceGroupName: pulumi.String("GroupForEdgeAutomation"),
/// 			RoleStatus:        pulumi.String(databoxedge.RoleStatusEnabled),
/// 			ShareMappings:     databoxedge.MountPointMapArray{},
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
/// resource "azure-native_databoxedge_iotrole" "ioTRole" {
///   device_name   = "testedgedevice"
///   host_platform = "Linux"
///   io_t_device_details = {
///     authentication = {
///       symmetric_key = {
///         connection_string = {
///           encryption_algorithm       = "AES256"
///           encryption_cert_thumbprint = "348586569999244"
///           value                      = "Encrypted<<HostName=iothub.azure-devices.net;DeviceId=iotDevice;SharedAccessKey=2C750FscEas3JmQ8Bnui5yQWZPyml0/UiRt1bQwd8=>>"
///         }
///       }
///     }
///     device_id     = "iotdevice"
///     io_t_host_hub = "iothub.azure-devices.net"
///   }
///   io_t_edge_device_details = {
///     authentication = {
///       symmetric_key = {
///         connection_string = {
///           encryption_algorithm       = "AES256"
///           encryption_cert_thumbprint = "1245475856069999244"
///           value                      = "Encrypted<<HostName=iothub.azure-devices.net;DeviceId=iotEdge;SharedAccessKey=2C750FscEas3JmQ8Bnui5yQWZPyml0/UiRt1bQwd8=>>"
///         }
///       }
///     }
///     device_id     = "iotEdge"
///     io_t_host_hub = "iothub.azure-devices.net"
///   }
///   kind                = "IOT"
///   name                = "IoTRole1"
///   resource_group_name = "GroupForEdgeAutomation"
///   role_status         = "Enabled"
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
/// import com.pulumi.azurenative.databoxedge.IoTRole;
/// import com.pulumi.azurenative.databoxedge.IoTRoleArgs;
/// import com.pulumi.azurenative.databoxedge.inputs.IoTDeviceInfoArgs;
/// import com.pulumi.azurenative.databoxedge.inputs.AuthenticationArgs;
/// import com.pulumi.azurenative.databoxedge.inputs.SymmetricKeyArgs;
/// import com.pulumi.azurenative.databoxedge.inputs.AsymmetricEncryptedSecretArgs;
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
///         var ioTRole = new IoTRole("ioTRole", IoTRoleArgs.builder()
///             .deviceName("testedgedevice")
///             .hostPlatform("Linux")
///             .ioTDeviceDetails(IoTDeviceInfoArgs.builder()
///                 .authentication(AuthenticationArgs.builder()
///                     .symmetricKey(SymmetricKeyArgs.builder()
///                         .connectionString(AsymmetricEncryptedSecretArgs.builder()
///                             .encryptionAlgorithm("AES256")
///                             .encryptionCertThumbprint("348586569999244")
///                             .value("Encrypted<<HostName=iothub.azure-devices.net;DeviceId=iotDevice;SharedAccessKey=2C750FscEas3JmQ8Bnui5yQWZPyml0/UiRt1bQwd8=>>")
///                             .build())
///                         .build())
///                     .build())
///                 .deviceId("iotdevice")
///                 .ioTHostHub("iothub.azure-devices.net")
///                 .build())
///             .ioTEdgeDeviceDetails(IoTDeviceInfoArgs.builder()
///                 .authentication(AuthenticationArgs.builder()
///                     .symmetricKey(SymmetricKeyArgs.builder()
///                         .connectionString(AsymmetricEncryptedSecretArgs.builder()
///                             .encryptionAlgorithm("AES256")
///                             .encryptionCertThumbprint("1245475856069999244")
///                             .value("Encrypted<<HostName=iothub.azure-devices.net;DeviceId=iotEdge;SharedAccessKey=2C750FscEas3JmQ8Bnui5yQWZPyml0/UiRt1bQwd8=>>")
///                             .build())
///                         .build())
///                     .build())
///                 .deviceId("iotEdge")
///                 .ioTHostHub("iothub.azure-devices.net")
///                 .build())
///             .kind("IOT")
///             .name("IoTRole1")
///             .resourceGroupName("GroupForEdgeAutomation")
///             .roleStatus("Enabled")
///             .shareMappings()
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
/// const ioTRole = new azure_native.databoxedge.IoTRole("ioTRole", {
///     deviceName: "testedgedevice",
///     hostPlatform: azure_native.databoxedge.PlatformType.Linux,
///     ioTDeviceDetails: {
///         authentication: {
///             symmetricKey: {
///                 connectionString: {
///                     encryptionAlgorithm: azure_native.databoxedge.EncryptionAlgorithm.AES256,
///                     encryptionCertThumbprint: "348586569999244",
///                     value: "Encrypted<<HostName=iothub.azure-devices.net;DeviceId=iotDevice;SharedAccessKey=2C750FscEas3JmQ8Bnui5yQWZPyml0/UiRt1bQwd8=>>",
///                 },
///             },
///         },
///         deviceId: "iotdevice",
///         ioTHostHub: "iothub.azure-devices.net",
///     },
///     ioTEdgeDeviceDetails: {
///         authentication: {
///             symmetricKey: {
///                 connectionString: {
///                     encryptionAlgorithm: azure_native.databoxedge.EncryptionAlgorithm.AES256,
///                     encryptionCertThumbprint: "1245475856069999244",
///                     value: "Encrypted<<HostName=iothub.azure-devices.net;DeviceId=iotEdge;SharedAccessKey=2C750FscEas3JmQ8Bnui5yQWZPyml0/UiRt1bQwd8=>>",
///                 },
///             },
///         },
///         deviceId: "iotEdge",
///         ioTHostHub: "iothub.azure-devices.net",
///     },
///     kind: "IOT",
///     name: "IoTRole1",
///     resourceGroupName: "GroupForEdgeAutomation",
///     roleStatus: azure_native.databoxedge.RoleStatus.Enabled,
///     shareMappings: [],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// io_t_role = azure_native.databoxedge.IoTRole("ioTRole",
///     device_name="testedgedevice",
///     host_platform=azure_native.databoxedge.PlatformType.LINUX,
///     io_t_device_details={
///         "authentication": {
///             "symmetric_key": {
///                 "connection_string": {
///                     "encryption_algorithm": azure_native.databoxedge.EncryptionAlgorithm.AES256,
///                     "encryption_cert_thumbprint": "348586569999244",
///                     "value": "Encrypted<<HostName=iothub.azure-devices.net;DeviceId=iotDevice;SharedAccessKey=2C750FscEas3JmQ8Bnui5yQWZPyml0/UiRt1bQwd8=>>",
///                 },
///             },
///         },
///         "device_id": "iotdevice",
///         "io_t_host_hub": "iothub.azure-devices.net",
///     },
///     io_t_edge_device_details={
///         "authentication": {
///             "symmetric_key": {
///                 "connection_string": {
///                     "encryption_algorithm": azure_native.databoxedge.EncryptionAlgorithm.AES256,
///                     "encryption_cert_thumbprint": "1245475856069999244",
///                     "value": "Encrypted<<HostName=iothub.azure-devices.net;DeviceId=iotEdge;SharedAccessKey=2C750FscEas3JmQ8Bnui5yQWZPyml0/UiRt1bQwd8=>>",
///                 },
///             },
///         },
///         "device_id": "iotEdge",
///         "io_t_host_hub": "iothub.azure-devices.net",
///     },
///     kind="IOT",
///     name="IoTRole1",
///     resource_group_name="GroupForEdgeAutomation",
///     role_status=azure_native.databoxedge.RoleStatus.ENABLED,
///     share_mappings=[])
///
/// ```
///
/// ```yaml
/// resources:
///   ioTRole:
///     type: azure-native:databoxedge:IoTRole
///     properties:
///       deviceName: testedgedevice
///       hostPlatform: Linux
///       ioTDeviceDetails:
///         authentication:
///           symmetricKey:
///             connectionString:
///               encryptionAlgorithm: AES256
///               encryptionCertThumbprint: '348586569999244'
///               value: Encrypted<<HostName=iothub.azure-devices.net;DeviceId=iotDevice;SharedAccessKey=2C750FscEas3JmQ8Bnui5yQWZPyml0/UiRt1bQwd8=>>
///         deviceId: iotdevice
///         ioTHostHub: iothub.azure-devices.net
///       ioTEdgeDeviceDetails:
///         authentication:
///           symmetricKey:
///             connectionString:
///               encryptionAlgorithm: AES256
///               encryptionCertThumbprint: '1245475856069999244'
///               value: Encrypted<<HostName=iothub.azure-devices.net;DeviceId=iotEdge;SharedAccessKey=2C750FscEas3JmQ8Bnui5yQWZPyml0/UiRt1bQwd8=>>
///         deviceId: iotEdge
///         ioTHostHub: iothub.azure-devices.net
///       kind: IOT
///       name: IoTRole1
///       resourceGroupName: GroupForEdgeAutomation
///       roleStatus: Enabled
///       shareMappings: []
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
/// $ pulumi import azure-native:databoxedge:IoTRole IoTRole1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/{deviceName}/roles/{name}
/// ```
class IoTRole extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource allocation
  late final pulumi.Output<ComputeResourceResponse?> computeResource;
  /// Host OS supported by the IoT role.
  late final pulumi.Output<String> hostPlatform;
  /// Platform where the Iot runtime is hosted.
  late final pulumi.Output<String> hostPlatformType;
  /// IoT device metadata to which data box edge device needs to be connected.
  late final pulumi.Output<IoTDeviceInfoResponse> ioTDeviceDetails;
  /// Iot edge agent details to download the agent and bootstrap iot runtime.
  late final pulumi.Output<IoTEdgeAgentInfoResponse?> ioTEdgeAgentInfo;
  /// IoT edge device to which the IoT role needs to be configured.
  late final pulumi.Output<IoTDeviceInfoResponse> ioTEdgeDeviceDetails;
  /// Role type.
  /// Expected value is 'IOT'.
  late final pulumi.Output<String> kind;
  /// The object name.
  late final pulumi.Output<String> name;
  /// Role status.
  late final pulumi.Output<String> roleStatus;
  /// Mount points of shares in role(s).
  late final pulumi.Output<List<Map<String, dynamic>>?> shareMappings;
  /// Metadata pertaining to creation and last modification of Role
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The hierarchical type of the object.
  late final pulumi.Output<String> type;

  /// Creates a new [IoTRole].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IoTRole]. {@macro pulumi_databoxedge_io_trole_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IoTRole(
    String name, {
    IoTRoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:databoxedge:IoTRole',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    computeResource = registerOutput<ComputeResourceResponse?>('computeResource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ComputeResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hostPlatform = registerOutput<String>('hostPlatform');
    hostPlatformType = registerOutput<String>('hostPlatformType');
    ioTDeviceDetails = registerOutput<IoTDeviceInfoResponse>('ioTDeviceDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IoTDeviceInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ioTEdgeAgentInfo = registerOutput<IoTEdgeAgentInfoResponse?>('ioTEdgeAgentInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IoTEdgeAgentInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ioTEdgeDeviceDetails = registerOutput<IoTDeviceInfoResponse>('ioTEdgeDeviceDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IoTDeviceInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    roleStatus = registerOutput<String>('roleStatus');
    shareMappings = registerOutput<List<Map<String, dynamic>>?>('shareMappings');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
