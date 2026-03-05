import 'package:pulumi/pulumi.dart' as pulumi;
import 'discovered_asset_args.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';
import 'topic_response.dart';

/// Discovered Asset definition.
///
/// Uses Azure REST API version 2024-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create_DiscoveredAsset
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var discoveredAsset = new AzureNative.DeviceRegistry.DiscoveredAsset("discoveredAsset", new()
///     {
///         AssetEndpointProfileRef = "myAssetEndpointProfile",
///         Datasets = new[]
///         {
///             new AzureNative.DeviceRegistry.Inputs.DiscoveredDatasetArgs
///             {
///                 DataPoints = new[]
///                 {
///                     new AzureNative.DeviceRegistry.Inputs.DiscoveredDataPointArgs
///                     {
///                         DataPointConfiguration = "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                         DataSource = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1",
///                         Name = "dataPoint1",
///                     },
///                     new AzureNative.DeviceRegistry.Inputs.DiscoveredDataPointArgs
///                     {
///                         DataPointConfiguration = "{\"publishingInterval\":4,\"samplingInterval\":4,\"queueSize\":7}",
///                         DataSource = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2",
///                         Name = "dataPoint2",
///                     },
///                 },
///                 DatasetConfiguration = "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}",
///                 Name = "dataset1",
///                 Topic = new AzureNative.DeviceRegistry.Inputs.TopicArgs
///                 {
///                     Path = "/path/dataset1",
///                     Retain = AzureNative.DeviceRegistry.TopicRetainType.Keep,
///                 },
///             },
///         },
///         DefaultDatasetsConfiguration = "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}",
///         DefaultEventsConfiguration = "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}",
///         DefaultTopic = new AzureNative.DeviceRegistry.Inputs.TopicArgs
///         {
///             Path = "/path/defaultTopic",
///             Retain = AzureNative.DeviceRegistry.TopicRetainType.Keep,
///         },
///         DiscoveredAssetName = "my-discoveredasset",
///         DiscoveryId = "11111111-1111-1111-1111-111111111111",
///         DocumentationUri = "https://www.example.com/manual",
///         Events = new[]
///         {
///             new AzureNative.DeviceRegistry.Inputs.DiscoveredEventArgs
///             {
///                 EventConfiguration = "{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}",
///                 EventNotifier = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3",
///                 Name = "event1",
///                 Topic = new AzureNative.DeviceRegistry.Inputs.TopicArgs
///                 {
///                     Path = "/path/event1",
///                     Retain = AzureNative.DeviceRegistry.TopicRetainType.Keep,
///                 },
///             },
///             new AzureNative.DeviceRegistry.Inputs.DiscoveredEventArgs
///             {
///                 EventConfiguration = "{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}",
///                 EventNotifier = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4",
///                 Name = "event2",
///             },
///         },
///         ExtendedLocation = new AzureNative.DeviceRegistry.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///             Type = "CustomLocation",
///         },
///         HardwareRevision = "1.0",
///         Location = "West Europe",
///         Manufacturer = "Contoso",
///         ManufacturerUri = "https://www.contoso.com/manufacturerUri",
///         Model = "ContosoModel",
///         ProductCode = "SA34VDG",
///         ResourceGroupName = "myResourceGroup",
///         SerialNumber = "64-103816-519918-8",
///         SoftwareRevision = "2.0",
///         Tags =
///         {
///             { "site", "building-1" },
///         },
///         Version = 73766,
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
/// 		_, err := deviceregistry.NewDiscoveredAsset(ctx, "discoveredAsset", &deviceregistry.DiscoveredAssetArgs{
/// 			AssetEndpointProfileRef: pulumi.String("myAssetEndpointProfile"),
/// 			Datasets: deviceregistry.DiscoveredDatasetArray{
/// 				&deviceregistry.DiscoveredDatasetArgs{
/// 					DataPoints: deviceregistry.DiscoveredDataPointArray{
/// 						&deviceregistry.DiscoveredDataPointArgs{
/// 							DataPointConfiguration: pulumi.String("{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}"),
/// 							DataSource:             pulumi.String("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1"),
/// 							Name:                   pulumi.String("dataPoint1"),
/// 						},
/// 						&deviceregistry.DiscoveredDataPointArgs{
/// 							DataPointConfiguration: pulumi.String("{\"publishingInterval\":4,\"samplingInterval\":4,\"queueSize\":7}"),
/// 							DataSource:             pulumi.String("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2"),
/// 							Name:                   pulumi.String("dataPoint2"),
/// 						},
/// 					},
/// 					DatasetConfiguration: pulumi.String("{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}"),
/// 					Name:                 pulumi.String("dataset1"),
/// 					Topic: &deviceregistry.TopicArgs{
/// 						Path:   pulumi.String("/path/dataset1"),
/// 						Retain: pulumi.String(deviceregistry.TopicRetainTypeKeep),
/// 					},
/// 				},
/// 			},
/// 			DefaultDatasetsConfiguration: pulumi.String("{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}"),
/// 			DefaultEventsConfiguration:   pulumi.String("{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}"),
/// 			DefaultTopic: &deviceregistry.TopicArgs{
/// 				Path:   pulumi.String("/path/defaultTopic"),
/// 				Retain: pulumi.String(deviceregistry.TopicRetainTypeKeep),
/// 			},
/// 			DiscoveredAssetName: pulumi.String("my-discoveredasset"),
/// 			DiscoveryId:         pulumi.String("11111111-1111-1111-1111-111111111111"),
/// 			DocumentationUri:    pulumi.String("https://www.example.com/manual"),
/// 			Events: deviceregistry.DiscoveredEventArray{
/// 				&deviceregistry.DiscoveredEventArgs{
/// 					EventConfiguration: pulumi.String("{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}"),
/// 					EventNotifier:      pulumi.String("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3"),
/// 					Name:               pulumi.String("event1"),
/// 					Topic: &deviceregistry.TopicArgs{
/// 						Path:   pulumi.String("/path/event1"),
/// 						Retain: pulumi.String(deviceregistry.TopicRetainTypeKeep),
/// 					},
/// 				},
/// 				&deviceregistry.DiscoveredEventArgs{
/// 					EventConfiguration: pulumi.String("{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}"),
/// 					EventNotifier:      pulumi.String("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4"),
/// 					Name:               pulumi.String("event2"),
/// 				},
/// 			},
/// 			ExtendedLocation: &deviceregistry.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1"),
/// 				Type: pulumi.String("CustomLocation"),
/// 			},
/// 			HardwareRevision:  pulumi.String("1.0"),
/// 			Location:          pulumi.String("West Europe"),
/// 			Manufacturer:      pulumi.String("Contoso"),
/// 			ManufacturerUri:   pulumi.String("https://www.contoso.com/manufacturerUri"),
/// 			Model:             pulumi.String("ContosoModel"),
/// 			ProductCode:       pulumi.String("SA34VDG"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SerialNumber:      pulumi.String("64-103816-519918-8"),
/// 			SoftwareRevision:  pulumi.String("2.0"),
/// 			Tags: pulumi.StringMap{
/// 				"site": pulumi.String("building-1"),
/// 			},
/// 			Version: pulumi.Float64(73766),
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
/// import com.pulumi.azurenative.deviceregistry.DiscoveredAsset;
/// import com.pulumi.azurenative.deviceregistry.DiscoveredAssetArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.DiscoveredDatasetArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.TopicArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.DiscoveredEventArgs;
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
///         var discoveredAsset = new DiscoveredAsset("discoveredAsset", DiscoveredAssetArgs.builder()
///             .assetEndpointProfileRef("myAssetEndpointProfile")
///             .datasets(DiscoveredDatasetArgs.builder()
///                 .dataPoints(
///                     DiscoveredDataPointArgs.builder()
///                         .dataPointConfiguration("{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}")
///                         .dataSource("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1")
///                         .name("dataPoint1")
///                         .build(),
///                     DiscoveredDataPointArgs.builder()
///                         .dataPointConfiguration("{\"publishingInterval\":4,\"samplingInterval\":4,\"queueSize\":7}")
///                         .dataSource("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2")
///                         .name("dataPoint2")
///                         .build())
///                 .datasetConfiguration("{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}")
///                 .name("dataset1")
///                 .topic(TopicArgs.builder()
///                     .path("/path/dataset1")
///                     .retain("Keep")
///                     .build())
///                 .build())
///             .defaultDatasetsConfiguration("{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}")
///             .defaultEventsConfiguration("{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}")
///             .defaultTopic(TopicArgs.builder()
///                 .path("/path/defaultTopic")
///                 .retain("Keep")
///                 .build())
///             .discoveredAssetName("my-discoveredasset")
///             .discoveryId("11111111-1111-1111-1111-111111111111")
///             .documentationUri("https://www.example.com/manual")
///             .events(
///                 DiscoveredEventArgs.builder()
///                     .eventConfiguration("{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}")
///                     .eventNotifier("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3")
///                     .name("event1")
///                     .topic(TopicArgs.builder()
///                         .path("/path/event1")
///                         .retain("Keep")
///                         .build())
///                     .build(),
///                 DiscoveredEventArgs.builder()
///                     .eventConfiguration("{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}")
///                     .eventNotifier("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4")
///                     .name("event2")
///                     .build())
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1")
///                 .type("CustomLocation")
///                 .build())
///             .hardwareRevision("1.0")
///             .location("West Europe")
///             .manufacturer("Contoso")
///             .manufacturerUri("https://www.contoso.com/manufacturerUri")
///             .model("ContosoModel")
///             .productCode("SA34VDG")
///             .resourceGroupName("myResourceGroup")
///             .serialNumber("64-103816-519918-8")
///             .softwareRevision("2.0")
///             .tags(Map.of("site", "building-1"))
///             .version(73766.0)
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
/// const discoveredAsset = new azure_native.deviceregistry.DiscoveredAsset("discoveredAsset", {
///     assetEndpointProfileRef: "myAssetEndpointProfile",
///     datasets: [{
///         dataPoints: [
///             {
///                 dataPointConfiguration: "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                 dataSource: "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1",
///                 name: "dataPoint1",
///             },
///             {
///                 dataPointConfiguration: "{\"publishingInterval\":4,\"samplingInterval\":4,\"queueSize\":7}",
///                 dataSource: "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2",
///                 name: "dataPoint2",
///             },
///         ],
///         datasetConfiguration: "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}",
///         name: "dataset1",
///         topic: {
///             path: "/path/dataset1",
///             retain: azure_native.deviceregistry.TopicRetainType.Keep,
///         },
///     }],
///     defaultDatasetsConfiguration: "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}",
///     defaultEventsConfiguration: "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}",
///     defaultTopic: {
///         path: "/path/defaultTopic",
///         retain: azure_native.deviceregistry.TopicRetainType.Keep,
///     },
///     discoveredAssetName: "my-discoveredasset",
///     discoveryId: "11111111-1111-1111-1111-111111111111",
///     documentationUri: "https://www.example.com/manual",
///     events: [
///         {
///             eventConfiguration: "{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}",
///             eventNotifier: "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3",
///             name: "event1",
///             topic: {
///                 path: "/path/event1",
///                 retain: azure_native.deviceregistry.TopicRetainType.Keep,
///             },
///         },
///         {
///             eventConfiguration: "{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}",
///             eventNotifier: "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4",
///             name: "event2",
///         },
///     ],
///     extendedLocation: {
///         name: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///         type: "CustomLocation",
///     },
///     hardwareRevision: "1.0",
///     location: "West Europe",
///     manufacturer: "Contoso",
///     manufacturerUri: "https://www.contoso.com/manufacturerUri",
///     model: "ContosoModel",
///     productCode: "SA34VDG",
///     resourceGroupName: "myResourceGroup",
///     serialNumber: "64-103816-519918-8",
///     softwareRevision: "2.0",
///     tags: {
///         site: "building-1",
///     },
///     version: 73766,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// discovered_asset = azure_native.deviceregistry.DiscoveredAsset("discoveredAsset",
///     asset_endpoint_profile_ref="myAssetEndpointProfile",
///     datasets=[{
///         "data_points": [
///             {
///                 "data_point_configuration": "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                 "data_source": "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1",
///                 "name": "dataPoint1",
///             },
///             {
///                 "data_point_configuration": "{\"publishingInterval\":4,\"samplingInterval\":4,\"queueSize\":7}",
///                 "data_source": "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2",
///                 "name": "dataPoint2",
///             },
///         ],
///         "dataset_configuration": "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}",
///         "name": "dataset1",
///         "topic": {
///             "path": "/path/dataset1",
///             "retain": azure_native.deviceregistry.TopicRetainType.KEEP,
///         },
///     }],
///     default_datasets_configuration="{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}",
///     default_events_configuration="{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}",
///     default_topic={
///         "path": "/path/defaultTopic",
///         "retain": azure_native.deviceregistry.TopicRetainType.KEEP,
///     },
///     discovered_asset_name="my-discoveredasset",
///     discovery_id="11111111-1111-1111-1111-111111111111",
///     documentation_uri="https://www.example.com/manual",
///     events=[
///         {
///             "event_configuration": "{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}",
///             "event_notifier": "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3",
///             "name": "event1",
///             "topic": {
///                 "path": "/path/event1",
///                 "retain": azure_native.deviceregistry.TopicRetainType.KEEP,
///             },
///         },
///         {
///             "event_configuration": "{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}",
///             "event_notifier": "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4",
///             "name": "event2",
///         },
///     ],
///     extended_location={
///         "name": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///         "type": "CustomLocation",
///     },
///     hardware_revision="1.0",
///     location="West Europe",
///     manufacturer="Contoso",
///     manufacturer_uri="https://www.contoso.com/manufacturerUri",
///     model="ContosoModel",
///     product_code="SA34VDG",
///     resource_group_name="myResourceGroup",
///     serial_number="64-103816-519918-8",
///     software_revision="2.0",
///     tags={
///         "site": "building-1",
///     },
///     version=73766)
///
/// ```
///
/// ```yaml
/// resources:
///   discoveredAsset:
///     type: azure-native:deviceregistry:DiscoveredAsset
///     properties:
///       assetEndpointProfileRef: myAssetEndpointProfile
///       datasets:
///         - dataPoints:
///             - dataPointConfiguration: '{"publishingInterval":8,"samplingInterval":8,"queueSize":4}'
///               dataSource: nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1
///               name: dataPoint1
///             - dataPointConfiguration: '{"publishingInterval":4,"samplingInterval":4,"queueSize":7}'
///               dataSource: nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2
///               name: dataPoint2
///           datasetConfiguration: '{"publishingInterval":10,"samplingInterval":15,"queueSize":20}'
///           name: dataset1
///           topic:
///             path: /path/dataset1
///             retain: Keep
///       defaultDatasetsConfiguration: '{"publishingInterval":10,"samplingInterval":15,"queueSize":20}'
///       defaultEventsConfiguration: '{"publishingInterval":10,"samplingInterval":15,"queueSize":20}'
///       defaultTopic:
///         path: /path/defaultTopic
///         retain: Keep
///       discoveredAssetName: my-discoveredasset
///       discoveryId: 11111111-1111-1111-1111-111111111111
///       documentationUri: https://www.example.com/manual
///       events:
///         - eventConfiguration: '{"publishingInterval":7,"samplingInterval":1,"queueSize":8}'
///           eventNotifier: nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3
///           name: event1
///           topic:
///             path: /path/event1
///             retain: Keep
///         - eventConfiguration: '{"publishingInterval":7,"samplingInterval":8,"queueSize":4}'
///           eventNotifier: nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4
///           name: event2
///       extendedLocation:
///         name: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1
///         type: CustomLocation
///       hardwareRevision: '1.0'
///       location: West Europe
///       manufacturer: Contoso
///       manufacturerUri: https://www.contoso.com/manufacturerUri
///       model: ContosoModel
///       productCode: SA34VDG
///       resourceGroupName: myResourceGroup
///       serialNumber: 64-103816-519918-8
///       softwareRevision: '2.0'
///       tags:
///         site: building-1
///       version: 73766
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
/// $ pulumi import azure-native:deviceregistry:DiscoveredAsset my-discoveredasset /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DeviceRegistry/discoveredAssets/{discoveredAssetName}
/// ```
class DiscoveredAsset extends pulumi.CustomResource {
  /// A reference to the asset endpoint profile (connection information) used by brokers to connect to an endpoint that provides data points for this asset. Must provide asset endpoint profile name.
  late final pulumi.Output<String> assetEndpointProfileRef;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Array of datasets that are part of the asset. Each dataset spec describes the data points that make up the set.
  late final pulumi.Output<List<Map<String, dynamic>>?> datasets;

  /// Stringified JSON that contains connector-specific default configuration for all datasets. Each dataset can have its own configuration that overrides the default settings here.
  late final pulumi.Output<String?> defaultDatasetsConfiguration;

  /// Stringified JSON that contains connector-specific default configuration for all events. Each event can have its own configuration that overrides the default settings here.
  late final pulumi.Output<String?> defaultEventsConfiguration;

  /// Object that describes the default topic information for the asset.
  late final pulumi.Output<TopicResponse?> defaultTopic;

  /// Identifier used to detect changes in the asset.
  late final pulumi.Output<String> discoveryId;

  /// Reference to the documentation.
  late final pulumi.Output<String?> documentationUri;

  /// Array of events that are part of the asset. Each event can have per-event configuration.
  late final pulumi.Output<List<Map<String, dynamic>>?> events;

  /// The extended location.
  late final pulumi.Output<ExtendedLocationResponse> extendedLocation;

  /// Revision number of the hardware.
  late final pulumi.Output<String?> hardwareRevision;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// Asset manufacturer name.
  late final pulumi.Output<String?> manufacturer;

  /// Asset manufacturer URI.
  late final pulumi.Output<String?> manufacturerUri;

  /// Asset model name.
  late final pulumi.Output<String?> model;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Asset product code.
  late final pulumi.Output<String?> productCode;

  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// Asset serial number.
  late final pulumi.Output<String?> serialNumber;

  /// Revision number of the software.
  late final pulumi.Output<String?> softwareRevision;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// An integer that is incremented each time the resource is modified.
  late final pulumi.Output<double> version;

  /// Creates a new [DiscoveredAsset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DiscoveredAsset]. {@macro pulumi_deviceregistry_discovered_asset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DiscoveredAsset(
    String name, {
    DiscoveredAssetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:deviceregistry:DiscoveredAsset',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    assetEndpointProfileRef = registerOutput<String>('assetEndpointProfileRef');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    datasets = registerOutput<List<Map<String, dynamic>>?>('datasets');
    defaultDatasetsConfiguration = registerOutput<String?>(
      'defaultDatasetsConfiguration',
    );
    defaultEventsConfiguration = registerOutput<String?>(
      'defaultEventsConfiguration',
    );
    defaultTopic = registerOutput<TopicResponse?>(
      'defaultTopic',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TopicResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    discoveryId = registerOutput<String>('discoveryId');
    documentationUri = registerOutput<String?>('documentationUri');
    events = registerOutput<List<Map<String, dynamic>>?>('events');
    extendedLocation = registerOutput<ExtendedLocationResponse>(
      'extendedLocation',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ExtendedLocationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    hardwareRevision = registerOutput<String?>('hardwareRevision');
    location = registerOutput<String>('location');
    manufacturer = registerOutput<String?>('manufacturer');
    manufacturerUri = registerOutput<String?>('manufacturerUri');
    model = registerOutput<String?>('model');
    this.name = registerOutput<String>('name');
    productCode = registerOutput<String?>('productCode');
    provisioningState = registerOutput<String>('provisioningState');
    serialNumber = registerOutput<String?>('serialNumber');
    softwareRevision = registerOutput<String?>('softwareRevision');
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
    version = registerOutput<double>('version');
  }
}
