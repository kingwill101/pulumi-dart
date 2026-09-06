import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_edge_device_args.dart';
import 'hci_edge_device_properties_response.dart';
import 'system_data_response.dart';

/// Arc-enabled edge device with HCI OS.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2023-08-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create HCI Edge Device
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var hciEdgeDevice = new AzureNative.AzureStackHCI.HciEdgeDevice("hciEdgeDevice", new()
///     {
///         EdgeDeviceName = "default",
///         Kind = "HCI",
///         Properties = new AzureNative.AzureStackHCI.Inputs.HciEdgeDevicePropertiesArgs
///         {
///             DeviceConfiguration = new AzureNative.AzureStackHCI.Inputs.DeviceConfigurationArgs
///             {
///                 DeviceMetadata = "",
///                 NicDetails = new[]
///                 {
///                     new AzureNative.AzureStackHCI.Inputs.NicDetailArgs
///                     {
///                         AdapterName = "ethernet",
///                         ComponentId = "VMBUS{f8615163-df3e-46c5-913f-f2d2f965ed0g} ",
///                         DefaultGateway = "10.10.10.1",
///                         DefaultIsolationId = "0",
///                         DnsServers = new[]
///                         {
///                             "100.10.10.1",
///                         },
///                         DriverVersion = "10.0.20348.1547 ",
///                         InterfaceDescription = "NDIS 6.70 ",
///                         Ip4Address = "10.10.10.10",
///                         SubnetMask = "255.255.255.0",
///                     },
///                 },
///             },
///         },
///         ResourceUri = "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1",
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
/// 		_, err := azurestackhci.NewHciEdgeDevice(ctx, "hciEdgeDevice", &azurestackhci.HciEdgeDeviceArgs{
/// 			EdgeDeviceName: pulumi.String("default"),
/// 			Kind:           pulumi.String("HCI"),
/// 			Properties: &azurestackhci.HciEdgeDevicePropertiesArgs{
/// 				DeviceConfiguration: &azurestackhci.DeviceConfigurationArgs{
/// 					DeviceMetadata: pulumi.String(""),
/// 					NicDetails: azurestackhci.NicDetailArray{
/// 						&azurestackhci.NicDetailArgs{
/// 							AdapterName:        pulumi.String("ethernet"),
/// 							ComponentId:        pulumi.String("VMBUS{f8615163-df3e-46c5-913f-f2d2f965ed0g} "),
/// 							DefaultGateway:     pulumi.String("10.10.10.1"),
/// 							DefaultIsolationId: pulumi.String("0"),
/// 							DnsServers: pulumi.StringArray{
/// 								pulumi.String("100.10.10.1"),
/// 							},
/// 							DriverVersion:        pulumi.String("10.0.20348.1547 "),
/// 							InterfaceDescription: pulumi.String("NDIS 6.70 "),
/// 							Ip4Address:           pulumi.String("10.10.10.10"),
/// 							SubnetMask:           pulumi.String("255.255.255.0"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceUri: pulumi.String("subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1"),
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
/// resource "azure-native_azurestackhci_hciedgedevice" "hciEdgeDevice" {
///   edge_device_name = "default"
///   kind             = "HCI"
///   properties = {
///     device_configuration = {
///       device_metadata = ""
///       nic_details = [{
///         "adapterName"          = "ethernet"
///         "componentId"          = "VMBUS{f8615163-df3e-46c5-913f-f2d2f965ed0g} "
///         "defaultGateway"       = "10.10.10.1"
///         "defaultIsolationId"   = "0"
///         "dnsServers"           = ["100.10.10.1"]
///         "driverVersion"        = "10.0.20348.1547 "
///         "interfaceDescription" = "NDIS 6.70 "
///         "ip4Address"           = "10.10.10.10"
///         "subnetMask"           = "255.255.255.0"
///       }]
///     }
///   }
///   resource_uri = "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1"
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
/// import com.pulumi.azurenative.azurestackhci.HciEdgeDevice;
/// import com.pulumi.azurenative.azurestackhci.HciEdgeDeviceArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.HciEdgeDevicePropertiesArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.DeviceConfigurationArgs;
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
///         var hciEdgeDevice = new HciEdgeDevice("hciEdgeDevice", HciEdgeDeviceArgs.builder()
///             .edgeDeviceName("default")
///             .kind("HCI")
///             .properties(HciEdgeDevicePropertiesArgs.builder()
///                 .deviceConfiguration(DeviceConfigurationArgs.builder()
///                     .deviceMetadata("")
///                     .nicDetails(NicDetailArgs.builder()
///                         .adapterName("ethernet")
///                         .componentId("VMBUS{f8615163-df3e-46c5-913f-f2d2f965ed0g} ")
///                         .defaultGateway("10.10.10.1")
///                         .defaultIsolationId("0")
///                         .dnsServers("100.10.10.1")
///                         .driverVersion("10.0.20348.1547 ")
///                         .interfaceDescription("NDIS 6.70 ")
///                         .ip4Address("10.10.10.10")
///                         .subnetMask("255.255.255.0")
///                         .build())
///                     .build())
///                 .build())
///             .resourceUri("subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1")
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
/// const hciEdgeDevice = new azure_native.azurestackhci.HciEdgeDevice("hciEdgeDevice", {
///     edgeDeviceName: "default",
///     kind: "HCI",
///     properties: {
///         deviceConfiguration: {
///             deviceMetadata: "",
///             nicDetails: [{
///                 adapterName: "ethernet",
///                 componentId: "VMBUS{f8615163-df3e-46c5-913f-f2d2f965ed0g} ",
///                 defaultGateway: "10.10.10.1",
///                 defaultIsolationId: "0",
///                 dnsServers: ["100.10.10.1"],
///                 driverVersion: "10.0.20348.1547 ",
///                 interfaceDescription: "NDIS 6.70 ",
///                 ip4Address: "10.10.10.10",
///                 subnetMask: "255.255.255.0",
///             }],
///         },
///     },
///     resourceUri: "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// hci_edge_device = azure_native.azurestackhci.HciEdgeDevice("hciEdgeDevice",
///     edge_device_name="default",
///     kind="HCI",
///     properties={
///         "device_configuration": {
///             "device_metadata": "",
///             "nic_details": [{
///                 "adapter_name": "ethernet",
///                 "component_id": "VMBUS{f8615163-df3e-46c5-913f-f2d2f965ed0g} ",
///                 "default_gateway": "10.10.10.1",
///                 "default_isolation_id": "0",
///                 "dns_servers": ["100.10.10.1"],
///                 "driver_version": "10.0.20348.1547 ",
///                 "interface_description": "NDIS 6.70 ",
///                 "ip4_address": "10.10.10.10",
///                 "subnet_mask": "255.255.255.0",
///             }],
///         },
///     },
///     resource_uri="subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1")
///
/// ```
///
/// ```yaml
/// resources:
///   hciEdgeDevice:
///     type: azure-native:azurestackhci:HciEdgeDevice
///     properties:
///       edgeDeviceName: default
///       kind: HCI
///       properties:
///         deviceConfiguration:
///           deviceMetadata: ""
///           nicDetails:
///             - adapterName: ethernet
///               componentId: 'VMBUS{f8615163-df3e-46c5-913f-f2d2f965ed0g} '
///               defaultGateway: 10.10.10.1
///               defaultIsolationId: '0'
///               dnsServers:
///                 - 100.10.10.1
///               driverVersion: '10.0.20348.1547 '
///               interfaceDescription: 'NDIS 6.70 '
///               ip4Address: 10.10.10.10
///               subnetMask: 255.255.255.0
///       resourceUri: subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1
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
/// $ pulumi import azure-native:azurestackhci:HciEdgeDevice default /{resourceUri}/providers/Microsoft.AzureStackHCI/edgeDevices/{edgeDeviceName}
/// ```
class HciEdgeDevice extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Edge device kind.
  /// Expected value is 'HCI'.
  late final pulumi.Output<String> kind;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// properties for Arc-enabled edge device with HCI OS.
  late final pulumi.Output<HciEdgeDevicePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [HciEdgeDevice].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HciEdgeDevice]. {@macro pulumi_azurestackhci_hci_edge_device_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HciEdgeDevice(
    String name, {
    HciEdgeDeviceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurestackhci:HciEdgeDevice',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    properties = registerOutput<HciEdgeDevicePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HciEdgeDevicePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [HciEdgeDevice] resource.
  HciEdgeDevice.reference(String urn)
    : super(
        'azure-native:azurestackhci:HciEdgeDevice',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    properties = registerOutput<HciEdgeDevicePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HciEdgeDevicePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
