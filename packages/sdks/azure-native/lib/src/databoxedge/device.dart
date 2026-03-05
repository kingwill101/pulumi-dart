import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_residency_response.dart';
import 'device_args.dart';
import 'edge_profile_response.dart';
import 'resource_identity_response.dart';
import 'resource_move_details_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// The Data Box Edge/Gateway device.
///
/// Uses Azure REST API version 2023-07-01. In version 2.x of the Azure Native provider, it used API version 2022-03-01.
///
/// Other available API versions: 2022-03-01, 2022-04-01-preview, 2022-12-01-preview, 2023-01-01-preview, 2023-12-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databoxedge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DataBoxEdgeDevicePut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var device = new AzureNative.DataBoxEdge.Device("device", new()
///     {
///         DeviceName = "testedgedevice",
///         Location = "WUS",
///         ResourceGroupName = "GroupForEdgeAutomation",
///         Sku = new AzureNative.DataBoxEdge.Inputs.SkuArgs
///         {
///             Name = AzureNative.DataBoxEdge.SkuName.Edge,
///             Tier = AzureNative.DataBoxEdge.SkuTier.Standard,
///         },
///         Tags = null,
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
/// 		_, err := databoxedge.NewDevice(ctx, "device", &databoxedge.DeviceArgs{
/// 			DeviceName:        pulumi.String("testedgedevice"),
/// 			Location:          pulumi.String("WUS"),
/// 			ResourceGroupName: pulumi.String("GroupForEdgeAutomation"),
/// 			Sku: &databoxedge.SkuArgs{
/// 				Name: pulumi.String(databoxedge.SkuNameEdge),
/// 				Tier: pulumi.String(databoxedge.SkuTierStandard),
/// 			},
/// 			Tags: pulumi.StringMap{},
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
/// import com.pulumi.azurenative.databoxedge.Device;
/// import com.pulumi.azurenative.databoxedge.DeviceArgs;
/// import com.pulumi.azurenative.databoxedge.inputs.SkuArgs;
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
///             .deviceName("testedgedevice")
///             .location("WUS")
///             .resourceGroupName("GroupForEdgeAutomation")
///             .sku(SkuArgs.builder()
///                 .name("Edge")
///                 .tier("Standard")
///                 .build())
///             .tags(Map.ofEntries(
///             ))
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
/// const device = new azure_native.databoxedge.Device("device", {
///     deviceName: "testedgedevice",
///     location: "WUS",
///     resourceGroupName: "GroupForEdgeAutomation",
///     sku: {
///         name: azure_native.databoxedge.SkuName.Edge,
///         tier: azure_native.databoxedge.SkuTier.Standard,
///     },
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// device = azure_native.databoxedge.Device("device",
///     device_name="testedgedevice",
///     location="WUS",
///     resource_group_name="GroupForEdgeAutomation",
///     sku={
///         "name": azure_native.databoxedge.SkuName.EDGE,
///         "tier": azure_native.databoxedge.SkuTier.STANDARD,
///     },
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   device:
///     type: azure-native:databoxedge:Device
///     properties:
///       deviceName: testedgedevice
///       location: WUS
///       resourceGroupName: GroupForEdgeAutomation
///       sku:
///         name: Edge
///         tier: Standard
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataBoxEdgeDevicePutWithDataResidency
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var device = new AzureNative.DataBoxEdge.Device("device", new()
///     {
///         DataResidency = new AzureNative.DataBoxEdge.Inputs.DataResidencyArgs
///         {
///             Type = AzureNative.DataBoxEdge.DataResidencyType.ZoneReplication,
///         },
///         DeviceName = "testedgedevice",
///         Location = "WUS",
///         ResourceGroupName = "GroupForEdgeAutomation",
///         Sku = new AzureNative.DataBoxEdge.Inputs.SkuArgs
///         {
///             Name = AzureNative.DataBoxEdge.SkuName.Edge,
///             Tier = AzureNative.DataBoxEdge.SkuTier.Standard,
///         },
///         Tags = null,
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
/// 		_, err := databoxedge.NewDevice(ctx, "device", &databoxedge.DeviceArgs{
/// 			DataResidency: &databoxedge.DataResidencyArgs{
/// 				Type: pulumi.String(databoxedge.DataResidencyTypeZoneReplication),
/// 			},
/// 			DeviceName:        pulumi.String("testedgedevice"),
/// 			Location:          pulumi.String("WUS"),
/// 			ResourceGroupName: pulumi.String("GroupForEdgeAutomation"),
/// 			Sku: &databoxedge.SkuArgs{
/// 				Name: pulumi.String(databoxedge.SkuNameEdge),
/// 				Tier: pulumi.String(databoxedge.SkuTierStandard),
/// 			},
/// 			Tags: pulumi.StringMap{},
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
/// import com.pulumi.azurenative.databoxedge.Device;
/// import com.pulumi.azurenative.databoxedge.DeviceArgs;
/// import com.pulumi.azurenative.databoxedge.inputs.DataResidencyArgs;
/// import com.pulumi.azurenative.databoxedge.inputs.SkuArgs;
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
///             .dataResidency(DataResidencyArgs.builder()
///                 .type("ZoneReplication")
///                 .build())
///             .deviceName("testedgedevice")
///             .location("WUS")
///             .resourceGroupName("GroupForEdgeAutomation")
///             .sku(SkuArgs.builder()
///                 .name("Edge")
///                 .tier("Standard")
///                 .build())
///             .tags(Map.ofEntries(
///             ))
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
/// const device = new azure_native.databoxedge.Device("device", {
///     dataResidency: {
///         type: azure_native.databoxedge.DataResidencyType.ZoneReplication,
///     },
///     deviceName: "testedgedevice",
///     location: "WUS",
///     resourceGroupName: "GroupForEdgeAutomation",
///     sku: {
///         name: azure_native.databoxedge.SkuName.Edge,
///         tier: azure_native.databoxedge.SkuTier.Standard,
///     },
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// device = azure_native.databoxedge.Device("device",
///     data_residency={
///         "type": azure_native.databoxedge.DataResidencyType.ZONE_REPLICATION,
///     },
///     device_name="testedgedevice",
///     location="WUS",
///     resource_group_name="GroupForEdgeAutomation",
///     sku={
///         "name": azure_native.databoxedge.SkuName.EDGE,
///         "tier": azure_native.databoxedge.SkuTier.STANDARD,
///     },
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   device:
///     type: azure-native:databoxedge:Device
///     properties:
///       dataResidency:
///         type: ZoneReplication
///       deviceName: testedgedevice
///       location: WUS
///       resourceGroupName: GroupForEdgeAutomation
///       sku:
///         name: Edge
///         tier: Standard
///       tags: {}
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
/// $ pulumi import azure-native:databoxedge:Device testedgedevice /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/{deviceName}
/// ```
class Device extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Type of compute roles configured.
  late final pulumi.Output<List<String>> configuredRoleTypes;
  /// The Data Box Edge/Gateway device culture.
  late final pulumi.Output<String> culture;
  /// The status of the Data Box Edge/Gateway device.
  late final pulumi.Output<String> dataBoxEdgeDeviceStatus;
  /// The details of data-residency related properties for this resource
  late final pulumi.Output<DataResidencyResponse?> dataResidency;
  /// The Description of the Data Box Edge/Gateway device.
  late final pulumi.Output<String> description;
  /// The device software version number of the device (eg: 1.2.18105.6).
  late final pulumi.Output<String> deviceHcsVersion;
  /// The Data Box Edge/Gateway device local capacity in MB.
  late final pulumi.Output<double> deviceLocalCapacity;
  /// The Data Box Edge/Gateway device model.
  late final pulumi.Output<String> deviceModel;
  /// The Data Box Edge/Gateway device software version.
  late final pulumi.Output<String> deviceSoftwareVersion;
  /// The type of the Data Box Edge/Gateway device.
  late final pulumi.Output<String> deviceType;
  /// The details of Edge Profile for this resource
  late final pulumi.Output<EdgeProfileResponse> edgeProfile;
  /// The etag for the devices.
  late final pulumi.Output<String?> etag;
  /// The Data Box Edge/Gateway device name.
  late final pulumi.Output<String> friendlyName;
  /// Msi identity of the resource
  late final pulumi.Output<ResourceIdentityResponse?> identity;
  /// The kind of the device.
  late final pulumi.Output<String> kind;
  /// Kubernetes Workload Profile
  late final pulumi.Output<String> kubernetesWorkloadProfile;
  /// The location of the device. This is a supported and registered Azure geographical region (for example, West US, East US, or Southeast Asia). The geographical region of a device cannot be changed once it is created, but if an identical geographical region is specified on update, the request will succeed.
  late final pulumi.Output<String> location;
  /// The description of the Data Box Edge/Gateway device model.
  late final pulumi.Output<String> modelDescription;
  /// The object name.
  late final pulumi.Output<String> name;
  /// The number of nodes in the cluster.
  late final pulumi.Output<int> nodeCount;
  /// The details of the move operation on this resource.
  late final pulumi.Output<ResourceMoveDetailsResponse> resourceMoveDetails;
  /// The Serial Number of Data Box Edge/Gateway device.
  late final pulumi.Output<String> serialNumber;
  /// The SKU type.
  late final pulumi.Output<SkuResponse?> sku;
  /// DataBoxEdge Resource
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The list of tags that describe the device. These tags can be used to view and group this device (across resource groups).
  late final pulumi.Output<Map<String, String>?> tags;
  /// The Data Box Edge/Gateway device timezone.
  late final pulumi.Output<String> timeZone;
  /// The hierarchical type of the object.
  late final pulumi.Output<String> type;

  /// Creates a new [Device].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Device]. {@macro pulumi_databoxedge_device_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Device(
    String name, {
    DeviceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:databoxedge:Device',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    configuredRoleTypes = registerOutput<List<String>>('configuredRoleTypes');
    culture = registerOutput<String>('culture');
    dataBoxEdgeDeviceStatus = registerOutput<String>('dataBoxEdgeDeviceStatus');
    dataResidency = registerOutput<DataResidencyResponse?>('dataResidency', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataResidencyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String>('description');
    deviceHcsVersion = registerOutput<String>('deviceHcsVersion');
    deviceLocalCapacity = registerOutput<double>('deviceLocalCapacity');
    deviceModel = registerOutput<String>('deviceModel');
    deviceSoftwareVersion = registerOutput<String>('deviceSoftwareVersion');
    deviceType = registerOutput<String>('deviceType');
    edgeProfile = registerOutput<EdgeProfileResponse>('edgeProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EdgeProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String?>('etag');
    friendlyName = registerOutput<String>('friendlyName');
    identity = registerOutput<ResourceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String>('kind');
    kubernetesWorkloadProfile = registerOutput<String>('kubernetesWorkloadProfile');
    location = registerOutput<String>('location');
    modelDescription = registerOutput<String>('modelDescription');
    this.name = registerOutput<String>('name');
    nodeCount = registerOutput<int>('nodeCount');
    resourceMoveDetails = registerOutput<ResourceMoveDetailsResponse>('resourceMoveDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceMoveDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serialNumber = registerOutput<String>('serialNumber');
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    timeZone = registerOutput<String>('timeZone');
    type = registerOutput<String>('type');
  }
}
