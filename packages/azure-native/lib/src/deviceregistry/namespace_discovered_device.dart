import 'package:pulumi/pulumi.dart' as pulumi;
import 'discovered_messaging_endpoints_response.dart';
import 'extended_location_response.dart';
import 'namespace_discovered_device_args.dart';
import 'system_data_response.dart';

/// Discovered device definition.
///
/// Uses Azure REST API version 2025-07-01-preview.
///
/// Other available API versions: 2025-10-01, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrReplace_NamespaceDiscoveredDevice
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var namespaceDiscoveredDevice = new AzureNative.DeviceRegistry.NamespaceDiscoveredDevice("namespaceDiscoveredDevice", new()
///     {
///         DiscoveredDeviceName = "my-discovereddevice-1",
///         DiscoveryId = "discoveryId1",
///         Endpoints = new AzureNative.DeviceRegistry.Inputs.DiscoveredMessagingEndpointsArgs
///         {
///             Outbound = new AzureNative.DeviceRegistry.Inputs.DiscoveredOutboundEndpointsArgs
///             {
///                 Assigned =
///                 {
///                     { "eventGridEndpoint", new AzureNative.DeviceRegistry.Inputs.DeviceMessagingEndpointArgs
///                     {
///                         Address = "https://myeventgridtopic.westeurope-1.eventgrid.azure.net/api/events",
///                         EndpointType = "Microsoft.EventGrid",
///                     } },
///                 },
///             },
///         },
///         ExtendedLocation = new AzureNative.DeviceRegistry.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///             Type = "CustomLocation",
///         },
///         Location = "West Europe",
///         NamespaceName = "my-namespace-1",
///         ResourceGroupName = "myResourceGroup",
///         Tags =
///         {
///             { "site", "building-1" },
///         },
///         Version = 1,
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
/// 	deviceregistry "github.com/pulumi/pulumi-azure-native-sdk/deviceregistry/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := deviceregistry.NewNamespaceDiscoveredDevice(ctx, "namespaceDiscoveredDevice", &deviceregistry.NamespaceDiscoveredDeviceArgs{
/// 			DiscoveredDeviceName: pulumi.String("my-discovereddevice-1"),
/// 			DiscoveryId:          pulumi.String("discoveryId1"),
/// 			Endpoints: &deviceregistry.DiscoveredMessagingEndpointsArgs{
/// 				Outbound: &deviceregistry.DiscoveredOutboundEndpointsArgs{
/// 					Assigned: deviceregistry.DeviceMessagingEndpointMap{
/// 						"eventGridEndpoint": &deviceregistry.DeviceMessagingEndpointArgs{
/// 							Address:      pulumi.String("https://myeventgridtopic.westeurope-1.eventgrid.azure.net/api/events"),
/// 							EndpointType: pulumi.String("Microsoft.EventGrid"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ExtendedLocation: &deviceregistry.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1"),
/// 				Type: pulumi.String("CustomLocation"),
/// 			},
/// 			Location:          pulumi.String("West Europe"),
/// 			NamespaceName:     pulumi.String("my-namespace-1"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"site": pulumi.String("building-1"),
/// 			},
/// 			Version: pulumi.Float64(1),
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
/// import com.pulumi.azurenative.deviceregistry.NamespaceDiscoveredDevice;
/// import com.pulumi.azurenative.deviceregistry.NamespaceDiscoveredDeviceArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.DiscoveredMessagingEndpointsArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.DiscoveredOutboundEndpointsArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.ExtendedLocationArgs;
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
///         var namespaceDiscoveredDevice = new NamespaceDiscoveredDevice("namespaceDiscoveredDevice", NamespaceDiscoveredDeviceArgs.builder()
///             .discoveredDeviceName("my-discovereddevice-1")
///             .discoveryId("discoveryId1")
///             .endpoints(DiscoveredMessagingEndpointsArgs.builder()
///                 .outbound(DiscoveredOutboundEndpointsArgs.builder()
///                     .assigned(Map.of("eventGridEndpoint", DeviceMessagingEndpointArgs.builder()
///                         .address("https://myeventgridtopic.westeurope-1.eventgrid.azure.net/api/events")
///                         .endpointType("Microsoft.EventGrid")
///                         .build()))
///                     .build())
///                 .build())
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1")
///                 .type("CustomLocation")
///                 .build())
///             .location("West Europe")
///             .namespaceName("my-namespace-1")
///             .resourceGroupName("myResourceGroup")
///             .tags(Map.of("site", "building-1"))
///             .version(1.0)
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
/// const namespaceDiscoveredDevice = new azure_native.deviceregistry.NamespaceDiscoveredDevice("namespaceDiscoveredDevice", {
///     discoveredDeviceName: "my-discovereddevice-1",
///     discoveryId: "discoveryId1",
///     endpoints: {
///         outbound: {
///             assigned: {
///                 eventGridEndpoint: {
///                     address: "https://myeventgridtopic.westeurope-1.eventgrid.azure.net/api/events",
///                     endpointType: "Microsoft.EventGrid",
///                 },
///             },
///         },
///     },
///     extendedLocation: {
///         name: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///         type: "CustomLocation",
///     },
///     location: "West Europe",
///     namespaceName: "my-namespace-1",
///     resourceGroupName: "myResourceGroup",
///     tags: {
///         site: "building-1",
///     },
///     version: 1,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// namespace_discovered_device = azure_native.deviceregistry.NamespaceDiscoveredDevice("namespaceDiscoveredDevice",
///     discovered_device_name="my-discovereddevice-1",
///     discovery_id="discoveryId1",
///     endpoints={
///         "outbound": {
///             "assigned": {
///                 "eventGridEndpoint": {
///                     "address": "https://myeventgridtopic.westeurope-1.eventgrid.azure.net/api/events",
///                     "endpoint_type": "Microsoft.EventGrid",
///                 },
///             },
///         },
///     },
///     extended_location={
///         "name": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///         "type": "CustomLocation",
///     },
///     location="West Europe",
///     namespace_name="my-namespace-1",
///     resource_group_name="myResourceGroup",
///     tags={
///         "site": "building-1",
///     },
///     version=1)
///
/// ```
///
/// ```yaml
/// resources:
///   namespaceDiscoveredDevice:
///     type: azure-native:deviceregistry:NamespaceDiscoveredDevice
///     properties:
///       discoveredDeviceName: my-discovereddevice-1
///       discoveryId: discoveryId1
///       endpoints:
///         outbound:
///           assigned:
///             eventGridEndpoint:
///               address: https://myeventgridtopic.westeurope-1.eventgrid.azure.net/api/events
///               endpointType: Microsoft.EventGrid
///       extendedLocation:
///         name: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1
///         type: CustomLocation
///       location: West Europe
///       namespaceName: my-namespace-1
///       resourceGroupName: myResourceGroup
///       tags:
///         site: building-1
///       version: 1
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
/// $ pulumi import azure-native:deviceregistry:NamespaceDiscoveredDevice my-discovereddevice-1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DeviceRegistry/namespaces/{namespaceName}/discoveredDevices/{discoveredDeviceName}
/// ```
class NamespaceDiscoveredDevice extends pulumi.CustomResource {
  /// A set of key-value pairs that contain custom attributes.
  late final pulumi.Output<dynamic> attributes;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Identifier used to detect changes in the discovered device.
  late final pulumi.Output<String> discoveryId;
  /// Endpoints for discovered devices.
  late final pulumi.Output<DiscoveredMessagingEndpointsResponse?> endpoints;
  /// The extended location.
  late final pulumi.Output<ExtendedLocationResponse> extendedLocation;
  /// A device ID that represents the device in a system external to Azure. Unique within scope of an Azure tenant.
  late final pulumi.Output<String?> externalDeviceId;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Device manufacturer.
  late final pulumi.Output<String?> manufacturer;
  /// Device model.
  late final pulumi.Output<String?> model;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Device operating system name.
  late final pulumi.Output<String?> operatingSystem;
  /// Device operating system version.
  late final pulumi.Output<String?> operatingSystemVersion;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// An integer that is incremented each time the resource is modified.
  late final pulumi.Output<double> version;

  /// Creates a new [NamespaceDiscoveredDevice].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NamespaceDiscoveredDevice]. {@macro pulumi_deviceregistry_namespace_discovered_device_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NamespaceDiscoveredDevice(
    String name, {
    NamespaceDiscoveredDeviceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:deviceregistry:NamespaceDiscoveredDevice',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.attributes = registerOutput<dynamic>('attributes');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.discoveryId = registerOutput<String>('discoveryId');
    this.endpoints = registerOutput<DiscoveredMessagingEndpointsResponse?>('endpoints');
    this.extendedLocation = registerOutput<ExtendedLocationResponse>('extendedLocation');
    this.externalDeviceId = registerOutput<String?>('externalDeviceId');
    this.location = registerOutput<String>('location');
    this.manufacturer = registerOutput<String?>('manufacturer');
    this.model = registerOutput<String?>('model');
    this.name = registerOutput<String>('name');
    this.operatingSystem = registerOutput<String?>('operatingSystem');
    this.operatingSystemVersion = registerOutput<String?>('operatingSystemVersion');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.version = registerOutput<double>('version');
  }
}
