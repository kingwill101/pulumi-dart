import 'package:pulumi/pulumi.dart' as pulumi;
import 'asset_args.dart';
import 'asset_status_response.dart';
import 'dataset_response.dart';
import 'event_response.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';
import 'topic_response.dart';

/// Asset definition.
///
/// Uses Azure REST API version 2024-11-01. In version 2.x of the Azure Native provider, it used API version 2023-11-01-preview.
///
/// Other available API versions: 2023-11-01-preview, 2024-09-01-preview, 2025-07-01-preview, 2025-10-01, 2025-11-01-preview, 2026-03-01-preview, 2026-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create_Asset_With_DiscoveredAssetRefs
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var asset = new AzureNative.DeviceRegistry.Asset("asset", new()
///     {
///         AssetEndpointProfileRef = "myAssetEndpointProfile",
///         AssetName = "my-asset",
///         Datasets = new[]
///         {
///             new AzureNative.DeviceRegistry.Inputs.DatasetArgs
///             {
///                 DataPoints = new[]
///                 {
///                     new AzureNative.DeviceRegistry.Inputs.DataPointArgs
///                     {
///                         DataPointConfiguration = "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                         DataSource = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1",
///                         Name = "dataPoint1",
///                         ObservabilityMode = AzureNative.DeviceRegistry.DataPointObservabilityMode.Counter,
///                     },
///                     new AzureNative.DeviceRegistry.Inputs.DataPointArgs
///                     {
///                         DataPointConfiguration = "{\"publishingInterval\":4,\"samplingInterval\":4,\"queueSize\":7}",
///                         DataSource = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2",
///                         Name = "dataPoint2",
///                         ObservabilityMode = AzureNative.DeviceRegistry.DataPointObservabilityMode.None,
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
///         Description = "This is a sample Asset",
///         DiscoveredAssetRefs = new[]
///         {
///             "discoveredAsset1",
///             "discoveredAsset2",
///         },
///         DisplayName = "AssetDisplayName",
///         DocumentationUri = "https://www.example.com/manual",
///         Enabled = true,
///         Events = new[]
///         {
///             new AzureNative.DeviceRegistry.Inputs.EventArgs
///             {
///                 EventConfiguration = "{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}",
///                 EventNotifier = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3",
///                 Name = "event1",
///                 ObservabilityMode = AzureNative.DeviceRegistry.EventObservabilityMode.None,
///                 Topic = new AzureNative.DeviceRegistry.Inputs.TopicArgs
///                 {
///                     Path = "/path/event1",
///                     Retain = AzureNative.DeviceRegistry.TopicRetainType.Keep,
///                 },
///             },
///             new AzureNative.DeviceRegistry.Inputs.EventArgs
///             {
///                 EventConfiguration = "{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}",
///                 EventNotifier = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4",
///                 Name = "event2",
///                 ObservabilityMode = AzureNative.DeviceRegistry.EventObservabilityMode.Log,
///             },
///         },
///         ExtendedLocation = new AzureNative.DeviceRegistry.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///             Type = "CustomLocation",
///         },
///         ExternalAssetId = "8ZBA6LRHU0A458969",
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
/// 		_, err := deviceregistry.NewAsset(ctx, "asset", &deviceregistry.AssetArgs{
/// 			AssetEndpointProfileRef: pulumi.String("myAssetEndpointProfile"),
/// 			AssetName:               pulumi.String("my-asset"),
/// 			Datasets: deviceregistry.DatasetArray{
/// 				&deviceregistry.DatasetArgs{
/// 					DataPoints: deviceregistry.DataPointArray{
/// 						&deviceregistry.DataPointArgs{
/// 							DataPointConfiguration: pulumi.String("{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}"),
/// 							DataSource:             pulumi.String("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1"),
/// 							Name:                   pulumi.String("dataPoint1"),
/// 							ObservabilityMode:      pulumi.String(deviceregistry.DataPointObservabilityModeCounter),
/// 						},
/// 						&deviceregistry.DataPointArgs{
/// 							DataPointConfiguration: pulumi.String("{\"publishingInterval\":4,\"samplingInterval\":4,\"queueSize\":7}"),
/// 							DataSource:             pulumi.String("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2"),
/// 							Name:                   pulumi.String("dataPoint2"),
/// 							ObservabilityMode:      pulumi.String(deviceregistry.DataPointObservabilityModeNone),
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
/// 			Description: pulumi.String("This is a sample Asset"),
/// 			DiscoveredAssetRefs: pulumi.StringArray{
/// 				pulumi.String("discoveredAsset1"),
/// 				pulumi.String("discoveredAsset2"),
/// 			},
/// 			DisplayName:      pulumi.String("AssetDisplayName"),
/// 			DocumentationUri: pulumi.String("https://www.example.com/manual"),
/// 			Enabled:          pulumi.Bool(true),
/// 			Events: deviceregistry.EventArray{
/// 				&deviceregistry.EventArgs{
/// 					EventConfiguration: pulumi.String("{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}"),
/// 					EventNotifier:      pulumi.String("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3"),
/// 					Name:               pulumi.String("event1"),
/// 					ObservabilityMode:  pulumi.String(deviceregistry.EventObservabilityModeNone),
/// 					Topic: &deviceregistry.TopicArgs{
/// 						Path:   pulumi.String("/path/event1"),
/// 						Retain: pulumi.String(deviceregistry.TopicRetainTypeKeep),
/// 					},
/// 				},
/// 				&deviceregistry.EventArgs{
/// 					EventConfiguration: pulumi.String("{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}"),
/// 					EventNotifier:      pulumi.String("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4"),
/// 					Name:               pulumi.String("event2"),
/// 					ObservabilityMode:  pulumi.String(deviceregistry.EventObservabilityModeLog),
/// 				},
/// 			},
/// 			ExtendedLocation: &deviceregistry.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1"),
/// 				Type: pulumi.String("CustomLocation"),
/// 			},
/// 			ExternalAssetId:   pulumi.String("8ZBA6LRHU0A458969"),
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
/// resource "azure-native_deviceregistry_asset" "asset" {
///   asset_endpoint_profile_ref = "myAssetEndpointProfile"
///   asset_name                 = "my-asset"
///   datasets {
///     data_points {
///       data_point_configuration = "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}"
///       data_source              = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1"
///       name                     = "dataPoint1"
///       observability_mode       = "Counter"
///     }
///     data_points {
///       data_point_configuration = "{\"publishingInterval\":4,\"samplingInterval\":4,\"queueSize\":7}"
///       data_source              = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2"
///       name                     = "dataPoint2"
///       observability_mode       = "None"
///     }
///     dataset_configuration = "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}"
///     name                  = "dataset1"
///     topic = {
///       path   = "/path/dataset1"
///       retain = "Keep"
///     }
///   }
///   default_datasets_configuration = "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}"
///   default_events_configuration   = "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}"
///   default_topic = {
///     path   = "/path/defaultTopic"
///     retain = "Keep"
///   }
///   description           = "This is a sample Asset"
///   discovered_asset_refs = ["discoveredAsset1", "discoveredAsset2"]
///   display_name          = "AssetDisplayName"
///   documentation_uri     = "https://www.example.com/manual"
///   enabled               = true
///   events {
///     event_configuration = "{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}"
///     event_notifier      = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3"
///     name                = "event1"
///     observability_mode  = "None"
///     topic = {
///       path   = "/path/event1"
///       retain = "Keep"
///     }
///   }
///   events {
///     event_configuration = "{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}"
///     event_notifier      = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4"
///     name                = "event2"
///     observability_mode  = "Log"
///   }
///   extended_location = {
///     name = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1"
///     type = "CustomLocation"
///   }
///   external_asset_id   = "8ZBA6LRHU0A458969"
///   hardware_revision   = "1.0"
///   location            = "West Europe"
///   manufacturer        = "Contoso"
///   manufacturer_uri    = "https://www.contoso.com/manufacturerUri"
///   model               = "ContosoModel"
///   product_code        = "SA34VDG"
///   resource_group_name = "myResourceGroup"
///   serial_number       = "64-103816-519918-8"
///   software_revision   = "2.0"
///   tags = {
///     "site" = "building-1"
///   }
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
/// import com.pulumi.azurenative.deviceregistry.Asset;
/// import com.pulumi.azurenative.deviceregistry.AssetArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.DatasetArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.TopicArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.EventArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.ExtendedLocationArgs;
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
///         var asset = new Asset("asset", AssetArgs.builder()
///             .assetEndpointProfileRef("myAssetEndpointProfile")
///             .assetName("my-asset")
///             .datasets(DatasetArgs.builder()
///                 .dataPoints(
///                     DataPointArgs.builder()
///                         .dataPointConfiguration("{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}")
///                         .dataSource("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1")
///                         .name("dataPoint1")
///                         .observabilityMode("Counter")
///                         .build(),
///                     DataPointArgs.builder()
///                         .dataPointConfiguration("{\"publishingInterval\":4,\"samplingInterval\":4,\"queueSize\":7}")
///                         .dataSource("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2")
///                         .name("dataPoint2")
///                         .observabilityMode("None")
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
///             .description("This is a sample Asset")
///             .discoveredAssetRefs(
///                 "discoveredAsset1",
///                 "discoveredAsset2")
///             .displayName("AssetDisplayName")
///             .documentationUri("https://www.example.com/manual")
///             .enabled(true)
///             .events(
///                 EventArgs.builder()
///                     .eventConfiguration("{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}")
///                     .eventNotifier("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3")
///                     .name("event1")
///                     .observabilityMode("None")
///                     .topic(TopicArgs.builder()
///                         .path("/path/event1")
///                         .retain("Keep")
///                         .build())
///                     .build(),
///                 EventArgs.builder()
///                     .eventConfiguration("{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}")
///                     .eventNotifier("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4")
///                     .name("event2")
///                     .observabilityMode("Log")
///                     .build())
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1")
///                 .type("CustomLocation")
///                 .build())
///             .externalAssetId("8ZBA6LRHU0A458969")
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
/// const asset = new azure_native.deviceregistry.Asset("asset", {
///     assetEndpointProfileRef: "myAssetEndpointProfile",
///     assetName: "my-asset",
///     datasets: [{
///         dataPoints: [
///             {
///                 dataPointConfiguration: "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                 dataSource: "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1",
///                 name: "dataPoint1",
///                 observabilityMode: azure_native.deviceregistry.DataPointObservabilityMode.Counter,
///             },
///             {
///                 dataPointConfiguration: "{\"publishingInterval\":4,\"samplingInterval\":4,\"queueSize\":7}",
///                 dataSource: "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2",
///                 name: "dataPoint2",
///                 observabilityMode: azure_native.deviceregistry.DataPointObservabilityMode.None,
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
///     description: "This is a sample Asset",
///     discoveredAssetRefs: [
///         "discoveredAsset1",
///         "discoveredAsset2",
///     ],
///     displayName: "AssetDisplayName",
///     documentationUri: "https://www.example.com/manual",
///     enabled: true,
///     events: [
///         {
///             eventConfiguration: "{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}",
///             eventNotifier: "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3",
///             name: "event1",
///             observabilityMode: azure_native.deviceregistry.EventObservabilityMode.None,
///             topic: {
///                 path: "/path/event1",
///                 retain: azure_native.deviceregistry.TopicRetainType.Keep,
///             },
///         },
///         {
///             eventConfiguration: "{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}",
///             eventNotifier: "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4",
///             name: "event2",
///             observabilityMode: azure_native.deviceregistry.EventObservabilityMode.Log,
///         },
///     ],
///     extendedLocation: {
///         name: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///         type: "CustomLocation",
///     },
///     externalAssetId: "8ZBA6LRHU0A458969",
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
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// asset = azure_native.deviceregistry.Asset("asset",
///     asset_endpoint_profile_ref="myAssetEndpointProfile",
///     asset_name="my-asset",
///     datasets=[{
///         "data_points": [
///             {
///                 "data_point_configuration": "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                 "data_source": "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1",
///                 "name": "dataPoint1",
///                 "observability_mode": azure_native.deviceregistry.DataPointObservabilityMode.COUNTER,
///             },
///             {
///                 "data_point_configuration": "{\"publishingInterval\":4,\"samplingInterval\":4,\"queueSize\":7}",
///                 "data_source": "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2",
///                 "name": "dataPoint2",
///                 "observability_mode": azure_native.deviceregistry.DataPointObservabilityMode.NONE,
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
///     description="This is a sample Asset",
///     discovered_asset_refs=[
///         "discoveredAsset1",
///         "discoveredAsset2",
///     ],
///     display_name="AssetDisplayName",
///     documentation_uri="https://www.example.com/manual",
///     enabled=True,
///     events=[
///         {
///             "event_configuration": "{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}",
///             "event_notifier": "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3",
///             "name": "event1",
///             "observability_mode": azure_native.deviceregistry.EventObservabilityMode.NONE,
///             "topic": {
///                 "path": "/path/event1",
///                 "retain": azure_native.deviceregistry.TopicRetainType.KEEP,
///             },
///         },
///         {
///             "event_configuration": "{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}",
///             "event_notifier": "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4",
///             "name": "event2",
///             "observability_mode": azure_native.deviceregistry.EventObservabilityMode.LOG,
///         },
///     ],
///     extended_location={
///         "name": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///         "type": "CustomLocation",
///     },
///     external_asset_id="8ZBA6LRHU0A458969",
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
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   asset:
///     type: azure-native:deviceregistry:Asset
///     properties:
///       assetEndpointProfileRef: myAssetEndpointProfile
///       assetName: my-asset
///       datasets:
///         - dataPoints:
///             - dataPointConfiguration: '{"publishingInterval":8,"samplingInterval":8,"queueSize":4}'
///               dataSource: nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1
///               name: dataPoint1
///               observabilityMode: Counter
///             - dataPointConfiguration: '{"publishingInterval":4,"samplingInterval":4,"queueSize":7}'
///               dataSource: nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2
///               name: dataPoint2
///               observabilityMode: None
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
///       description: This is a sample Asset
///       discoveredAssetRefs:
///         - discoveredAsset1
///         - discoveredAsset2
///       displayName: AssetDisplayName
///       documentationUri: https://www.example.com/manual
///       enabled: true
///       events:
///         - eventConfiguration: '{"publishingInterval":7,"samplingInterval":1,"queueSize":8}'
///           eventNotifier: nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3
///           name: event1
///           observabilityMode: None
///           topic:
///             path: /path/event1
///             retain: Keep
///         - eventConfiguration: '{"publishingInterval":7,"samplingInterval":8,"queueSize":4}'
///           eventNotifier: nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4
///           name: event2
///           observabilityMode: Log
///       extendedLocation:
///         name: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1
///         type: CustomLocation
///       externalAssetId: 8ZBA6LRHU0A458969
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
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create_Asset_With_ExternalAssetId
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var asset = new AzureNative.DeviceRegistry.Asset("asset", new()
///     {
///         AssetEndpointProfileRef = "myAssetEndpointProfile",
///         AssetName = "my-asset",
///         Datasets = new[]
///         {
///             new AzureNative.DeviceRegistry.Inputs.DatasetArgs
///             {
///                 DataPoints = new[]
///                 {
///                     new AzureNative.DeviceRegistry.Inputs.DataPointArgs
///                     {
///                         DataPointConfiguration = "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                         DataSource = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1",
///                         Name = "dataPoint1",
///                         ObservabilityMode = AzureNative.DeviceRegistry.DataPointObservabilityMode.Counter,
///                     },
///                     new AzureNative.DeviceRegistry.Inputs.DataPointArgs
///                     {
///                         DataPointConfiguration = "{\"publishingInterval\":4,\"samplingInterval\":4,\"queueSize\":7}",
///                         DataSource = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2",
///                         Name = "dataPoint2",
///                         ObservabilityMode = AzureNative.DeviceRegistry.DataPointObservabilityMode.None,
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
///         Description = "This is a sample Asset",
///         DisplayName = "AssetDisplayName",
///         DocumentationUri = "https://www.example.com/manual",
///         Enabled = true,
///         Events = new[]
///         {
///             new AzureNative.DeviceRegistry.Inputs.EventArgs
///             {
///                 EventConfiguration = "{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}",
///                 EventNotifier = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3",
///                 Name = "event1",
///                 ObservabilityMode = AzureNative.DeviceRegistry.EventObservabilityMode.None,
///                 Topic = new AzureNative.DeviceRegistry.Inputs.TopicArgs
///                 {
///                     Path = "/path/event1",
///                     Retain = AzureNative.DeviceRegistry.TopicRetainType.Keep,
///                 },
///             },
///             new AzureNative.DeviceRegistry.Inputs.EventArgs
///             {
///                 EventConfiguration = "{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}",
///                 EventNotifier = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4",
///                 Name = "event2",
///                 ObservabilityMode = AzureNative.DeviceRegistry.EventObservabilityMode.Log,
///             },
///         },
///         ExtendedLocation = new AzureNative.DeviceRegistry.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///             Type = "CustomLocation",
///         },
///         ExternalAssetId = "8ZBA6LRHU0A458969",
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
/// 		_, err := deviceregistry.NewAsset(ctx, "asset", &deviceregistry.AssetArgs{
/// 			AssetEndpointProfileRef: pulumi.String("myAssetEndpointProfile"),
/// 			AssetName:               pulumi.String("my-asset"),
/// 			Datasets: deviceregistry.DatasetArray{
/// 				&deviceregistry.DatasetArgs{
/// 					DataPoints: deviceregistry.DataPointArray{
/// 						&deviceregistry.DataPointArgs{
/// 							DataPointConfiguration: pulumi.String("{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}"),
/// 							DataSource:             pulumi.String("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1"),
/// 							Name:                   pulumi.String("dataPoint1"),
/// 							ObservabilityMode:      pulumi.String(deviceregistry.DataPointObservabilityModeCounter),
/// 						},
/// 						&deviceregistry.DataPointArgs{
/// 							DataPointConfiguration: pulumi.String("{\"publishingInterval\":4,\"samplingInterval\":4,\"queueSize\":7}"),
/// 							DataSource:             pulumi.String("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2"),
/// 							Name:                   pulumi.String("dataPoint2"),
/// 							ObservabilityMode:      pulumi.String(deviceregistry.DataPointObservabilityModeNone),
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
/// 			Description:      pulumi.String("This is a sample Asset"),
/// 			DisplayName:      pulumi.String("AssetDisplayName"),
/// 			DocumentationUri: pulumi.String("https://www.example.com/manual"),
/// 			Enabled:          pulumi.Bool(true),
/// 			Events: deviceregistry.EventArray{
/// 				&deviceregistry.EventArgs{
/// 					EventConfiguration: pulumi.String("{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}"),
/// 					EventNotifier:      pulumi.String("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3"),
/// 					Name:               pulumi.String("event1"),
/// 					ObservabilityMode:  pulumi.String(deviceregistry.EventObservabilityModeNone),
/// 					Topic: &deviceregistry.TopicArgs{
/// 						Path:   pulumi.String("/path/event1"),
/// 						Retain: pulumi.String(deviceregistry.TopicRetainTypeKeep),
/// 					},
/// 				},
/// 				&deviceregistry.EventArgs{
/// 					EventConfiguration: pulumi.String("{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}"),
/// 					EventNotifier:      pulumi.String("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4"),
/// 					Name:               pulumi.String("event2"),
/// 					ObservabilityMode:  pulumi.String(deviceregistry.EventObservabilityModeLog),
/// 				},
/// 			},
/// 			ExtendedLocation: &deviceregistry.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1"),
/// 				Type: pulumi.String("CustomLocation"),
/// 			},
/// 			ExternalAssetId:   pulumi.String("8ZBA6LRHU0A458969"),
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
/// resource "azure-native_deviceregistry_asset" "asset" {
///   asset_endpoint_profile_ref = "myAssetEndpointProfile"
///   asset_name                 = "my-asset"
///   datasets {
///     data_points {
///       data_point_configuration = "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}"
///       data_source              = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1"
///       name                     = "dataPoint1"
///       observability_mode       = "Counter"
///     }
///     data_points {
///       data_point_configuration = "{\"publishingInterval\":4,\"samplingInterval\":4,\"queueSize\":7}"
///       data_source              = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2"
///       name                     = "dataPoint2"
///       observability_mode       = "None"
///     }
///     dataset_configuration = "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}"
///     name                  = "dataset1"
///     topic = {
///       path   = "/path/dataset1"
///       retain = "Keep"
///     }
///   }
///   default_datasets_configuration = "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}"
///   default_events_configuration   = "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}"
///   default_topic = {
///     path   = "/path/defaultTopic"
///     retain = "Keep"
///   }
///   description       = "This is a sample Asset"
///   display_name      = "AssetDisplayName"
///   documentation_uri = "https://www.example.com/manual"
///   enabled           = true
///   events {
///     event_configuration = "{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}"
///     event_notifier      = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3"
///     name                = "event1"
///     observability_mode  = "None"
///     topic = {
///       path   = "/path/event1"
///       retain = "Keep"
///     }
///   }
///   events {
///     event_configuration = "{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}"
///     event_notifier      = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4"
///     name                = "event2"
///     observability_mode  = "Log"
///   }
///   extended_location = {
///     name = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1"
///     type = "CustomLocation"
///   }
///   external_asset_id   = "8ZBA6LRHU0A458969"
///   hardware_revision   = "1.0"
///   location            = "West Europe"
///   manufacturer        = "Contoso"
///   manufacturer_uri    = "https://www.contoso.com/manufacturerUri"
///   model               = "ContosoModel"
///   product_code        = "SA34VDG"
///   resource_group_name = "myResourceGroup"
///   serial_number       = "64-103816-519918-8"
///   software_revision   = "2.0"
///   tags = {
///     "site" = "building-1"
///   }
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
/// import com.pulumi.azurenative.deviceregistry.Asset;
/// import com.pulumi.azurenative.deviceregistry.AssetArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.DatasetArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.TopicArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.EventArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.ExtendedLocationArgs;
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
///         var asset = new Asset("asset", AssetArgs.builder()
///             .assetEndpointProfileRef("myAssetEndpointProfile")
///             .assetName("my-asset")
///             .datasets(DatasetArgs.builder()
///                 .dataPoints(
///                     DataPointArgs.builder()
///                         .dataPointConfiguration("{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}")
///                         .dataSource("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1")
///                         .name("dataPoint1")
///                         .observabilityMode("Counter")
///                         .build(),
///                     DataPointArgs.builder()
///                         .dataPointConfiguration("{\"publishingInterval\":4,\"samplingInterval\":4,\"queueSize\":7}")
///                         .dataSource("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2")
///                         .name("dataPoint2")
///                         .observabilityMode("None")
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
///             .description("This is a sample Asset")
///             .displayName("AssetDisplayName")
///             .documentationUri("https://www.example.com/manual")
///             .enabled(true)
///             .events(
///                 EventArgs.builder()
///                     .eventConfiguration("{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}")
///                     .eventNotifier("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3")
///                     .name("event1")
///                     .observabilityMode("None")
///                     .topic(TopicArgs.builder()
///                         .path("/path/event1")
///                         .retain("Keep")
///                         .build())
///                     .build(),
///                 EventArgs.builder()
///                     .eventConfiguration("{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}")
///                     .eventNotifier("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4")
///                     .name("event2")
///                     .observabilityMode("Log")
///                     .build())
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1")
///                 .type("CustomLocation")
///                 .build())
///             .externalAssetId("8ZBA6LRHU0A458969")
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
/// const asset = new azure_native.deviceregistry.Asset("asset", {
///     assetEndpointProfileRef: "myAssetEndpointProfile",
///     assetName: "my-asset",
///     datasets: [{
///         dataPoints: [
///             {
///                 dataPointConfiguration: "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                 dataSource: "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1",
///                 name: "dataPoint1",
///                 observabilityMode: azure_native.deviceregistry.DataPointObservabilityMode.Counter,
///             },
///             {
///                 dataPointConfiguration: "{\"publishingInterval\":4,\"samplingInterval\":4,\"queueSize\":7}",
///                 dataSource: "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2",
///                 name: "dataPoint2",
///                 observabilityMode: azure_native.deviceregistry.DataPointObservabilityMode.None,
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
///     description: "This is a sample Asset",
///     displayName: "AssetDisplayName",
///     documentationUri: "https://www.example.com/manual",
///     enabled: true,
///     events: [
///         {
///             eventConfiguration: "{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}",
///             eventNotifier: "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3",
///             name: "event1",
///             observabilityMode: azure_native.deviceregistry.EventObservabilityMode.None,
///             topic: {
///                 path: "/path/event1",
///                 retain: azure_native.deviceregistry.TopicRetainType.Keep,
///             },
///         },
///         {
///             eventConfiguration: "{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}",
///             eventNotifier: "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4",
///             name: "event2",
///             observabilityMode: azure_native.deviceregistry.EventObservabilityMode.Log,
///         },
///     ],
///     extendedLocation: {
///         name: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///         type: "CustomLocation",
///     },
///     externalAssetId: "8ZBA6LRHU0A458969",
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
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// asset = azure_native.deviceregistry.Asset("asset",
///     asset_endpoint_profile_ref="myAssetEndpointProfile",
///     asset_name="my-asset",
///     datasets=[{
///         "data_points": [
///             {
///                 "data_point_configuration": "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                 "data_source": "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1",
///                 "name": "dataPoint1",
///                 "observability_mode": azure_native.deviceregistry.DataPointObservabilityMode.COUNTER,
///             },
///             {
///                 "data_point_configuration": "{\"publishingInterval\":4,\"samplingInterval\":4,\"queueSize\":7}",
///                 "data_source": "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2",
///                 "name": "dataPoint2",
///                 "observability_mode": azure_native.deviceregistry.DataPointObservabilityMode.NONE,
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
///     description="This is a sample Asset",
///     display_name="AssetDisplayName",
///     documentation_uri="https://www.example.com/manual",
///     enabled=True,
///     events=[
///         {
///             "event_configuration": "{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}",
///             "event_notifier": "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3",
///             "name": "event1",
///             "observability_mode": azure_native.deviceregistry.EventObservabilityMode.NONE,
///             "topic": {
///                 "path": "/path/event1",
///                 "retain": azure_native.deviceregistry.TopicRetainType.KEEP,
///             },
///         },
///         {
///             "event_configuration": "{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}",
///             "event_notifier": "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4",
///             "name": "event2",
///             "observability_mode": azure_native.deviceregistry.EventObservabilityMode.LOG,
///         },
///     ],
///     extended_location={
///         "name": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///         "type": "CustomLocation",
///     },
///     external_asset_id="8ZBA6LRHU0A458969",
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
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   asset:
///     type: azure-native:deviceregistry:Asset
///     properties:
///       assetEndpointProfileRef: myAssetEndpointProfile
///       assetName: my-asset
///       datasets:
///         - dataPoints:
///             - dataPointConfiguration: '{"publishingInterval":8,"samplingInterval":8,"queueSize":4}'
///               dataSource: nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1
///               name: dataPoint1
///               observabilityMode: Counter
///             - dataPointConfiguration: '{"publishingInterval":4,"samplingInterval":4,"queueSize":7}'
///               dataSource: nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2
///               name: dataPoint2
///               observabilityMode: None
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
///       description: This is a sample Asset
///       displayName: AssetDisplayName
///       documentationUri: https://www.example.com/manual
///       enabled: true
///       events:
///         - eventConfiguration: '{"publishingInterval":7,"samplingInterval":1,"queueSize":8}'
///           eventNotifier: nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3
///           name: event1
///           observabilityMode: None
///           topic:
///             path: /path/event1
///             retain: Keep
///         - eventConfiguration: '{"publishingInterval":7,"samplingInterval":8,"queueSize":4}'
///           eventNotifier: nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4
///           name: event2
///           observabilityMode: Log
///       extendedLocation:
///         name: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1
///         type: CustomLocation
///       externalAssetId: 8ZBA6LRHU0A458969
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
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create_Asset_Without_DisplayName
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var asset = new AzureNative.DeviceRegistry.Asset("asset", new()
///     {
///         AssetEndpointProfileRef = "myAssetEndpointProfile",
///         AssetName = "my-asset",
///         Datasets = new[]
///         {
///             new AzureNative.DeviceRegistry.Inputs.DatasetArgs
///             {
///                 DataPoints = new[]
///                 {
///                     new AzureNative.DeviceRegistry.Inputs.DataPointArgs
///                     {
///                         DataPointConfiguration = "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                         DataSource = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1",
///                         Name = "dataPoint1",
///                         ObservabilityMode = AzureNative.DeviceRegistry.DataPointObservabilityMode.Counter,
///                     },
///                     new AzureNative.DeviceRegistry.Inputs.DataPointArgs
///                     {
///                         DataPointConfiguration = "{\"publishingInterval\":4,\"samplingInterval\":4,\"queueSize\":7}",
///                         DataSource = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2",
///                         Name = "dataPoint2",
///                         ObservabilityMode = AzureNative.DeviceRegistry.DataPointObservabilityMode.None,
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
///         Description = "This is a sample Asset",
///         DocumentationUri = "https://www.example.com/manual",
///         Enabled = true,
///         Events = new[]
///         {
///             new AzureNative.DeviceRegistry.Inputs.EventArgs
///             {
///                 EventConfiguration = "{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}",
///                 EventNotifier = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3",
///                 Name = "event1",
///                 ObservabilityMode = AzureNative.DeviceRegistry.EventObservabilityMode.None,
///                 Topic = new AzureNative.DeviceRegistry.Inputs.TopicArgs
///                 {
///                     Path = "/path/event1",
///                     Retain = AzureNative.DeviceRegistry.TopicRetainType.Keep,
///                 },
///             },
///             new AzureNative.DeviceRegistry.Inputs.EventArgs
///             {
///                 EventConfiguration = "{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}",
///                 EventNotifier = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4",
///                 Name = "event2",
///                 ObservabilityMode = AzureNative.DeviceRegistry.EventObservabilityMode.Log,
///             },
///         },
///         ExtendedLocation = new AzureNative.DeviceRegistry.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///             Type = "CustomLocation",
///         },
///         ExternalAssetId = "8ZBA6LRHU0A458969",
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
/// 		_, err := deviceregistry.NewAsset(ctx, "asset", &deviceregistry.AssetArgs{
/// 			AssetEndpointProfileRef: pulumi.String("myAssetEndpointProfile"),
/// 			AssetName:               pulumi.String("my-asset"),
/// 			Datasets: deviceregistry.DatasetArray{
/// 				&deviceregistry.DatasetArgs{
/// 					DataPoints: deviceregistry.DataPointArray{
/// 						&deviceregistry.DataPointArgs{
/// 							DataPointConfiguration: pulumi.String("{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}"),
/// 							DataSource:             pulumi.String("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1"),
/// 							Name:                   pulumi.String("dataPoint1"),
/// 							ObservabilityMode:      pulumi.String(deviceregistry.DataPointObservabilityModeCounter),
/// 						},
/// 						&deviceregistry.DataPointArgs{
/// 							DataPointConfiguration: pulumi.String("{\"publishingInterval\":4,\"samplingInterval\":4,\"queueSize\":7}"),
/// 							DataSource:             pulumi.String("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2"),
/// 							Name:                   pulumi.String("dataPoint2"),
/// 							ObservabilityMode:      pulumi.String(deviceregistry.DataPointObservabilityModeNone),
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
/// 			Description:      pulumi.String("This is a sample Asset"),
/// 			DocumentationUri: pulumi.String("https://www.example.com/manual"),
/// 			Enabled:          pulumi.Bool(true),
/// 			Events: deviceregistry.EventArray{
/// 				&deviceregistry.EventArgs{
/// 					EventConfiguration: pulumi.String("{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}"),
/// 					EventNotifier:      pulumi.String("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3"),
/// 					Name:               pulumi.String("event1"),
/// 					ObservabilityMode:  pulumi.String(deviceregistry.EventObservabilityModeNone),
/// 					Topic: &deviceregistry.TopicArgs{
/// 						Path:   pulumi.String("/path/event1"),
/// 						Retain: pulumi.String(deviceregistry.TopicRetainTypeKeep),
/// 					},
/// 				},
/// 				&deviceregistry.EventArgs{
/// 					EventConfiguration: pulumi.String("{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}"),
/// 					EventNotifier:      pulumi.String("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4"),
/// 					Name:               pulumi.String("event2"),
/// 					ObservabilityMode:  pulumi.String(deviceregistry.EventObservabilityModeLog),
/// 				},
/// 			},
/// 			ExtendedLocation: &deviceregistry.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1"),
/// 				Type: pulumi.String("CustomLocation"),
/// 			},
/// 			ExternalAssetId:   pulumi.String("8ZBA6LRHU0A458969"),
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
/// resource "azure-native_deviceregistry_asset" "asset" {
///   asset_endpoint_profile_ref = "myAssetEndpointProfile"
///   asset_name                 = "my-asset"
///   datasets {
///     data_points {
///       data_point_configuration = "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}"
///       data_source              = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1"
///       name                     = "dataPoint1"
///       observability_mode       = "Counter"
///     }
///     data_points {
///       data_point_configuration = "{\"publishingInterval\":4,\"samplingInterval\":4,\"queueSize\":7}"
///       data_source              = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2"
///       name                     = "dataPoint2"
///       observability_mode       = "None"
///     }
///     dataset_configuration = "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}"
///     name                  = "dataset1"
///     topic = {
///       path   = "/path/dataset1"
///       retain = "Keep"
///     }
///   }
///   default_datasets_configuration = "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}"
///   default_events_configuration   = "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}"
///   default_topic = {
///     path   = "/path/defaultTopic"
///     retain = "Keep"
///   }
///   description       = "This is a sample Asset"
///   documentation_uri = "https://www.example.com/manual"
///   enabled           = true
///   events {
///     event_configuration = "{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}"
///     event_notifier      = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3"
///     name                = "event1"
///     observability_mode  = "None"
///     topic = {
///       path   = "/path/event1"
///       retain = "Keep"
///     }
///   }
///   events {
///     event_configuration = "{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}"
///     event_notifier      = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4"
///     name                = "event2"
///     observability_mode  = "Log"
///   }
///   extended_location = {
///     name = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1"
///     type = "CustomLocation"
///   }
///   external_asset_id   = "8ZBA6LRHU0A458969"
///   hardware_revision   = "1.0"
///   location            = "West Europe"
///   manufacturer        = "Contoso"
///   manufacturer_uri    = "https://www.contoso.com/manufacturerUri"
///   model               = "ContosoModel"
///   product_code        = "SA34VDG"
///   resource_group_name = "myResourceGroup"
///   serial_number       = "64-103816-519918-8"
///   software_revision   = "2.0"
///   tags = {
///     "site" = "building-1"
///   }
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
/// import com.pulumi.azurenative.deviceregistry.Asset;
/// import com.pulumi.azurenative.deviceregistry.AssetArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.DatasetArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.TopicArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.EventArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.ExtendedLocationArgs;
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
///         var asset = new Asset("asset", AssetArgs.builder()
///             .assetEndpointProfileRef("myAssetEndpointProfile")
///             .assetName("my-asset")
///             .datasets(DatasetArgs.builder()
///                 .dataPoints(
///                     DataPointArgs.builder()
///                         .dataPointConfiguration("{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}")
///                         .dataSource("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1")
///                         .name("dataPoint1")
///                         .observabilityMode("Counter")
///                         .build(),
///                     DataPointArgs.builder()
///                         .dataPointConfiguration("{\"publishingInterval\":4,\"samplingInterval\":4,\"queueSize\":7}")
///                         .dataSource("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2")
///                         .name("dataPoint2")
///                         .observabilityMode("None")
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
///             .description("This is a sample Asset")
///             .documentationUri("https://www.example.com/manual")
///             .enabled(true)
///             .events(
///                 EventArgs.builder()
///                     .eventConfiguration("{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}")
///                     .eventNotifier("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3")
///                     .name("event1")
///                     .observabilityMode("None")
///                     .topic(TopicArgs.builder()
///                         .path("/path/event1")
///                         .retain("Keep")
///                         .build())
///                     .build(),
///                 EventArgs.builder()
///                     .eventConfiguration("{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}")
///                     .eventNotifier("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4")
///                     .name("event2")
///                     .observabilityMode("Log")
///                     .build())
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1")
///                 .type("CustomLocation")
///                 .build())
///             .externalAssetId("8ZBA6LRHU0A458969")
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
/// const asset = new azure_native.deviceregistry.Asset("asset", {
///     assetEndpointProfileRef: "myAssetEndpointProfile",
///     assetName: "my-asset",
///     datasets: [{
///         dataPoints: [
///             {
///                 dataPointConfiguration: "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                 dataSource: "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1",
///                 name: "dataPoint1",
///                 observabilityMode: azure_native.deviceregistry.DataPointObservabilityMode.Counter,
///             },
///             {
///                 dataPointConfiguration: "{\"publishingInterval\":4,\"samplingInterval\":4,\"queueSize\":7}",
///                 dataSource: "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2",
///                 name: "dataPoint2",
///                 observabilityMode: azure_native.deviceregistry.DataPointObservabilityMode.None,
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
///     description: "This is a sample Asset",
///     documentationUri: "https://www.example.com/manual",
///     enabled: true,
///     events: [
///         {
///             eventConfiguration: "{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}",
///             eventNotifier: "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3",
///             name: "event1",
///             observabilityMode: azure_native.deviceregistry.EventObservabilityMode.None,
///             topic: {
///                 path: "/path/event1",
///                 retain: azure_native.deviceregistry.TopicRetainType.Keep,
///             },
///         },
///         {
///             eventConfiguration: "{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}",
///             eventNotifier: "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4",
///             name: "event2",
///             observabilityMode: azure_native.deviceregistry.EventObservabilityMode.Log,
///         },
///     ],
///     extendedLocation: {
///         name: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///         type: "CustomLocation",
///     },
///     externalAssetId: "8ZBA6LRHU0A458969",
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
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// asset = azure_native.deviceregistry.Asset("asset",
///     asset_endpoint_profile_ref="myAssetEndpointProfile",
///     asset_name="my-asset",
///     datasets=[{
///         "data_points": [
///             {
///                 "data_point_configuration": "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                 "data_source": "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1",
///                 "name": "dataPoint1",
///                 "observability_mode": azure_native.deviceregistry.DataPointObservabilityMode.COUNTER,
///             },
///             {
///                 "data_point_configuration": "{\"publishingInterval\":4,\"samplingInterval\":4,\"queueSize\":7}",
///                 "data_source": "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2",
///                 "name": "dataPoint2",
///                 "observability_mode": azure_native.deviceregistry.DataPointObservabilityMode.NONE,
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
///     description="This is a sample Asset",
///     documentation_uri="https://www.example.com/manual",
///     enabled=True,
///     events=[
///         {
///             "event_configuration": "{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}",
///             "event_notifier": "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3",
///             "name": "event1",
///             "observability_mode": azure_native.deviceregistry.EventObservabilityMode.NONE,
///             "topic": {
///                 "path": "/path/event1",
///                 "retain": azure_native.deviceregistry.TopicRetainType.KEEP,
///             },
///         },
///         {
///             "event_configuration": "{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}",
///             "event_notifier": "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4",
///             "name": "event2",
///             "observability_mode": azure_native.deviceregistry.EventObservabilityMode.LOG,
///         },
///     ],
///     extended_location={
///         "name": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///         "type": "CustomLocation",
///     },
///     external_asset_id="8ZBA6LRHU0A458969",
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
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   asset:
///     type: azure-native:deviceregistry:Asset
///     properties:
///       assetEndpointProfileRef: myAssetEndpointProfile
///       assetName: my-asset
///       datasets:
///         - dataPoints:
///             - dataPointConfiguration: '{"publishingInterval":8,"samplingInterval":8,"queueSize":4}'
///               dataSource: nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1
///               name: dataPoint1
///               observabilityMode: Counter
///             - dataPointConfiguration: '{"publishingInterval":4,"samplingInterval":4,"queueSize":7}'
///               dataSource: nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2
///               name: dataPoint2
///               observabilityMode: None
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
///       description: This is a sample Asset
///       documentationUri: https://www.example.com/manual
///       enabled: true
///       events:
///         - eventConfiguration: '{"publishingInterval":7,"samplingInterval":1,"queueSize":8}'
///           eventNotifier: nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3
///           name: event1
///           observabilityMode: None
///           topic:
///             path: /path/event1
///             retain: Keep
///         - eventConfiguration: '{"publishingInterval":7,"samplingInterval":8,"queueSize":4}'
///           eventNotifier: nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4
///           name: event2
///           observabilityMode: Log
///       extendedLocation:
///         name: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1
///         type: CustomLocation
///       externalAssetId: 8ZBA6LRHU0A458969
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
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create_Asset_Without_ExternalAssetId
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var asset = new AzureNative.DeviceRegistry.Asset("asset", new()
///     {
///         AssetEndpointProfileRef = "myAssetEndpointProfile",
///         AssetName = "my-asset",
///         Datasets = new[]
///         {
///             new AzureNative.DeviceRegistry.Inputs.DatasetArgs
///             {
///                 DataPoints = new[]
///                 {
///                     new AzureNative.DeviceRegistry.Inputs.DataPointArgs
///                     {
///                         DataPointConfiguration = "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                         DataSource = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1",
///                         Name = "dataPoint1",
///                         ObservabilityMode = AzureNative.DeviceRegistry.DataPointObservabilityMode.Counter,
///                     },
///                     new AzureNative.DeviceRegistry.Inputs.DataPointArgs
///                     {
///                         DataPointConfiguration = "{\"publishingInterval\":4,\"samplingInterval\":4,\"queueSize\":7}",
///                         DataSource = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2",
///                         Name = "dataPoint2",
///                         ObservabilityMode = AzureNative.DeviceRegistry.DataPointObservabilityMode.None,
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
///         Description = "This is a sample Asset",
///         DisplayName = "AssetDisplayName",
///         DocumentationUri = "https://www.example.com/manual",
///         Enabled = true,
///         Events = new[]
///         {
///             new AzureNative.DeviceRegistry.Inputs.EventArgs
///             {
///                 EventConfiguration = "{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}",
///                 EventNotifier = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3",
///                 Name = "event1",
///                 ObservabilityMode = AzureNative.DeviceRegistry.EventObservabilityMode.None,
///                 Topic = new AzureNative.DeviceRegistry.Inputs.TopicArgs
///                 {
///                     Path = "/path/event1",
///                     Retain = AzureNative.DeviceRegistry.TopicRetainType.Keep,
///                 },
///             },
///             new AzureNative.DeviceRegistry.Inputs.EventArgs
///             {
///                 EventConfiguration = "{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}",
///                 EventNotifier = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4",
///                 Name = "event2",
///                 ObservabilityMode = AzureNative.DeviceRegistry.EventObservabilityMode.Log,
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
/// 		_, err := deviceregistry.NewAsset(ctx, "asset", &deviceregistry.AssetArgs{
/// 			AssetEndpointProfileRef: pulumi.String("myAssetEndpointProfile"),
/// 			AssetName:               pulumi.String("my-asset"),
/// 			Datasets: deviceregistry.DatasetArray{
/// 				&deviceregistry.DatasetArgs{
/// 					DataPoints: deviceregistry.DataPointArray{
/// 						&deviceregistry.DataPointArgs{
/// 							DataPointConfiguration: pulumi.String("{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}"),
/// 							DataSource:             pulumi.String("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1"),
/// 							Name:                   pulumi.String("dataPoint1"),
/// 							ObservabilityMode:      pulumi.String(deviceregistry.DataPointObservabilityModeCounter),
/// 						},
/// 						&deviceregistry.DataPointArgs{
/// 							DataPointConfiguration: pulumi.String("{\"publishingInterval\":4,\"samplingInterval\":4,\"queueSize\":7}"),
/// 							DataSource:             pulumi.String("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2"),
/// 							Name:                   pulumi.String("dataPoint2"),
/// 							ObservabilityMode:      pulumi.String(deviceregistry.DataPointObservabilityModeNone),
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
/// 			Description:      pulumi.String("This is a sample Asset"),
/// 			DisplayName:      pulumi.String("AssetDisplayName"),
/// 			DocumentationUri: pulumi.String("https://www.example.com/manual"),
/// 			Enabled:          pulumi.Bool(true),
/// 			Events: deviceregistry.EventArray{
/// 				&deviceregistry.EventArgs{
/// 					EventConfiguration: pulumi.String("{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}"),
/// 					EventNotifier:      pulumi.String("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3"),
/// 					Name:               pulumi.String("event1"),
/// 					ObservabilityMode:  pulumi.String(deviceregistry.EventObservabilityModeNone),
/// 					Topic: &deviceregistry.TopicArgs{
/// 						Path:   pulumi.String("/path/event1"),
/// 						Retain: pulumi.String(deviceregistry.TopicRetainTypeKeep),
/// 					},
/// 				},
/// 				&deviceregistry.EventArgs{
/// 					EventConfiguration: pulumi.String("{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}"),
/// 					EventNotifier:      pulumi.String("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4"),
/// 					Name:               pulumi.String("event2"),
/// 					ObservabilityMode:  pulumi.String(deviceregistry.EventObservabilityModeLog),
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
/// resource "azure-native_deviceregistry_asset" "asset" {
///   asset_endpoint_profile_ref = "myAssetEndpointProfile"
///   asset_name                 = "my-asset"
///   datasets {
///     data_points {
///       data_point_configuration = "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}"
///       data_source              = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1"
///       name                     = "dataPoint1"
///       observability_mode       = "Counter"
///     }
///     data_points {
///       data_point_configuration = "{\"publishingInterval\":4,\"samplingInterval\":4,\"queueSize\":7}"
///       data_source              = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2"
///       name                     = "dataPoint2"
///       observability_mode       = "None"
///     }
///     dataset_configuration = "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}"
///     name                  = "dataset1"
///     topic = {
///       path   = "/path/dataset1"
///       retain = "Keep"
///     }
///   }
///   default_datasets_configuration = "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}"
///   default_events_configuration   = "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}"
///   default_topic = {
///     path   = "/path/defaultTopic"
///     retain = "Keep"
///   }
///   description       = "This is a sample Asset"
///   display_name      = "AssetDisplayName"
///   documentation_uri = "https://www.example.com/manual"
///   enabled           = true
///   events {
///     event_configuration = "{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}"
///     event_notifier      = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3"
///     name                = "event1"
///     observability_mode  = "None"
///     topic = {
///       path   = "/path/event1"
///       retain = "Keep"
///     }
///   }
///   events {
///     event_configuration = "{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}"
///     event_notifier      = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4"
///     name                = "event2"
///     observability_mode  = "Log"
///   }
///   extended_location = {
///     name = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1"
///     type = "CustomLocation"
///   }
///   hardware_revision   = "1.0"
///   location            = "West Europe"
///   manufacturer        = "Contoso"
///   manufacturer_uri    = "https://www.contoso.com/manufacturerUri"
///   model               = "ContosoModel"
///   product_code        = "SA34VDG"
///   resource_group_name = "myResourceGroup"
///   serial_number       = "64-103816-519918-8"
///   software_revision   = "2.0"
///   tags = {
///     "site" = "building-1"
///   }
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
/// import com.pulumi.azurenative.deviceregistry.Asset;
/// import com.pulumi.azurenative.deviceregistry.AssetArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.DatasetArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.TopicArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.EventArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.ExtendedLocationArgs;
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
///         var asset = new Asset("asset", AssetArgs.builder()
///             .assetEndpointProfileRef("myAssetEndpointProfile")
///             .assetName("my-asset")
///             .datasets(DatasetArgs.builder()
///                 .dataPoints(
///                     DataPointArgs.builder()
///                         .dataPointConfiguration("{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}")
///                         .dataSource("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1")
///                         .name("dataPoint1")
///                         .observabilityMode("Counter")
///                         .build(),
///                     DataPointArgs.builder()
///                         .dataPointConfiguration("{\"publishingInterval\":4,\"samplingInterval\":4,\"queueSize\":7}")
///                         .dataSource("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2")
///                         .name("dataPoint2")
///                         .observabilityMode("None")
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
///             .description("This is a sample Asset")
///             .displayName("AssetDisplayName")
///             .documentationUri("https://www.example.com/manual")
///             .enabled(true)
///             .events(
///                 EventArgs.builder()
///                     .eventConfiguration("{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}")
///                     .eventNotifier("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3")
///                     .name("event1")
///                     .observabilityMode("None")
///                     .topic(TopicArgs.builder()
///                         .path("/path/event1")
///                         .retain("Keep")
///                         .build())
///                     .build(),
///                 EventArgs.builder()
///                     .eventConfiguration("{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}")
///                     .eventNotifier("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4")
///                     .name("event2")
///                     .observabilityMode("Log")
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
/// const asset = new azure_native.deviceregistry.Asset("asset", {
///     assetEndpointProfileRef: "myAssetEndpointProfile",
///     assetName: "my-asset",
///     datasets: [{
///         dataPoints: [
///             {
///                 dataPointConfiguration: "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                 dataSource: "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1",
///                 name: "dataPoint1",
///                 observabilityMode: azure_native.deviceregistry.DataPointObservabilityMode.Counter,
///             },
///             {
///                 dataPointConfiguration: "{\"publishingInterval\":4,\"samplingInterval\":4,\"queueSize\":7}",
///                 dataSource: "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2",
///                 name: "dataPoint2",
///                 observabilityMode: azure_native.deviceregistry.DataPointObservabilityMode.None,
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
///     description: "This is a sample Asset",
///     displayName: "AssetDisplayName",
///     documentationUri: "https://www.example.com/manual",
///     enabled: true,
///     events: [
///         {
///             eventConfiguration: "{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}",
///             eventNotifier: "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3",
///             name: "event1",
///             observabilityMode: azure_native.deviceregistry.EventObservabilityMode.None,
///             topic: {
///                 path: "/path/event1",
///                 retain: azure_native.deviceregistry.TopicRetainType.Keep,
///             },
///         },
///         {
///             eventConfiguration: "{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}",
///             eventNotifier: "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4",
///             name: "event2",
///             observabilityMode: azure_native.deviceregistry.EventObservabilityMode.Log,
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
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// asset = azure_native.deviceregistry.Asset("asset",
///     asset_endpoint_profile_ref="myAssetEndpointProfile",
///     asset_name="my-asset",
///     datasets=[{
///         "data_points": [
///             {
///                 "data_point_configuration": "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                 "data_source": "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1",
///                 "name": "dataPoint1",
///                 "observability_mode": azure_native.deviceregistry.DataPointObservabilityMode.COUNTER,
///             },
///             {
///                 "data_point_configuration": "{\"publishingInterval\":4,\"samplingInterval\":4,\"queueSize\":7}",
///                 "data_source": "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2",
///                 "name": "dataPoint2",
///                 "observability_mode": azure_native.deviceregistry.DataPointObservabilityMode.NONE,
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
///     description="This is a sample Asset",
///     display_name="AssetDisplayName",
///     documentation_uri="https://www.example.com/manual",
///     enabled=True,
///     events=[
///         {
///             "event_configuration": "{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}",
///             "event_notifier": "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3",
///             "name": "event1",
///             "observability_mode": azure_native.deviceregistry.EventObservabilityMode.NONE,
///             "topic": {
///                 "path": "/path/event1",
///                 "retain": azure_native.deviceregistry.TopicRetainType.KEEP,
///             },
///         },
///         {
///             "event_configuration": "{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}",
///             "event_notifier": "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4",
///             "name": "event2",
///             "observability_mode": azure_native.deviceregistry.EventObservabilityMode.LOG,
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
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   asset:
///     type: azure-native:deviceregistry:Asset
///     properties:
///       assetEndpointProfileRef: myAssetEndpointProfile
///       assetName: my-asset
///       datasets:
///         - dataPoints:
///             - dataPointConfiguration: '{"publishingInterval":8,"samplingInterval":8,"queueSize":4}'
///               dataSource: nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt1
///               name: dataPoint1
///               observabilityMode: Counter
///             - dataPointConfiguration: '{"publishingInterval":4,"samplingInterval":4,"queueSize":7}'
///               dataSource: nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt2
///               name: dataPoint2
///               observabilityMode: None
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
///       description: This is a sample Asset
///       displayName: AssetDisplayName
///       documentationUri: https://www.example.com/manual
///       enabled: true
///       events:
///         - eventConfiguration: '{"publishingInterval":7,"samplingInterval":1,"queueSize":8}'
///           eventNotifier: nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3
///           name: event1
///           observabilityMode: None
///           topic:
///             path: /path/event1
///             retain: Keep
///         - eventConfiguration: '{"publishingInterval":7,"samplingInterval":8,"queueSize":4}'
///           eventNotifier: nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4
///           name: event2
///           observabilityMode: Log
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
/// $ pulumi import azure-native:deviceregistry:Asset my-asset /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DeviceRegistry/assets/{assetName}
/// ```
class Asset extends pulumi.CustomResource {
  /// A reference to the asset endpoint profile (connection information) used by brokers to connect to an endpoint that provides data points for this asset. Must provide asset endpoint profile name.
  late final pulumi.Output<String> assetEndpointProfileRef;
  /// A set of key-value pairs that contain custom attributes set by the customer.
  late final pulumi.Output<dynamic> attributes;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Array of datasets that are part of the asset. Each dataset describes the data points that make up the set.
  late final pulumi.Output<List<DatasetResponse>?> datasets;
  /// Stringified JSON that contains connector-specific default configuration for all datasets. Each dataset can have its own configuration that overrides the default settings here.
  late final pulumi.Output<String?> defaultDatasetsConfiguration;
  /// Stringified JSON that contains connector-specific default configuration for all events. Each event can have its own configuration that overrides the default settings here.
  late final pulumi.Output<String?> defaultEventsConfiguration;
  /// Object that describes the default topic information for the asset.
  late final pulumi.Output<TopicResponse?> defaultTopic;
  /// Human-readable description of the asset.
  late final pulumi.Output<String?> description;
  /// Reference to a list of discovered assets. Populated only if the asset has been created from discovery flow. Discovered asset names must be provided.
  late final pulumi.Output<List<String>?> discoveredAssetRefs;
  /// Human-readable display name.
  late final pulumi.Output<String?> displayName;
  /// Reference to the documentation.
  late final pulumi.Output<String?> documentationUri;
  /// Enabled/Disabled status of the asset.
  late final pulumi.Output<bool?> enabled;
  /// Array of events that are part of the asset. Each event can have per-event configuration.
  late final pulumi.Output<List<EventResponse>?> events;
  /// The extended location.
  late final pulumi.Output<ExtendedLocationResponse> extendedLocation;
  /// Asset id provided by the customer.
  late final pulumi.Output<String?> externalAssetId;
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
  /// Read only object to reflect changes that have occurred on the Edge. Similar to Kubernetes status property for custom resources.
  late final pulumi.Output<AssetStatusResponse> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Globally unique, immutable, non-reusable id.
  late final pulumi.Output<String> uuid;
  /// An integer that is incremented each time the resource is modified.
  late final pulumi.Output<double> version;

  /// Creates a new [Asset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Asset]. {@macro pulumi_deviceregistry_asset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Asset(
    String name, {
    AssetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:deviceregistry:Asset',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assetEndpointProfileRef = registerOutput<String>('assetEndpointProfileRef');
    attributes = registerOutput<dynamic>('attributes');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    datasets = registerOutput<List<DatasetResponse>?>('datasets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DatasetResponse>(guardedValue, (value) => DatasetResponse.fromMap((value as Map).cast<String, dynamic>())); });
    defaultDatasetsConfiguration = registerOutput<String?>('defaultDatasetsConfiguration');
    defaultEventsConfiguration = registerOutput<String?>('defaultEventsConfiguration');
    defaultTopic = registerOutput<TopicResponse?>('defaultTopic', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TopicResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    discoveredAssetRefs = registerOutput<List<String>?>('discoveredAssetRefs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    displayName = registerOutput<String?>('displayName');
    documentationUri = registerOutput<String?>('documentationUri');
    enabled = registerOutput<bool?>('enabled');
    events = registerOutput<List<EventResponse>?>('events', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EventResponse>(guardedValue, (value) => EventResponse.fromMap((value as Map).cast<String, dynamic>())); });
    extendedLocation = registerOutput<ExtendedLocationResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    externalAssetId = registerOutput<String?>('externalAssetId');
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
    status = registerOutput<AssetStatusResponse>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssetStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    uuid = registerOutput<String>('uuid');
    version = registerOutput<double>('version');
  }

  /// Creates a typed reference to an existing [Asset] resource.
  Asset.reference(String urn)
    : super(
        'azure-native:deviceregistry:Asset',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    assetEndpointProfileRef = registerOutput<String>('assetEndpointProfileRef');
    attributes = registerOutput<dynamic>('attributes');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    datasets = registerOutput<List<DatasetResponse>?>('datasets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DatasetResponse>(guardedValue, (value) => DatasetResponse.fromMap((value as Map).cast<String, dynamic>())); });
    defaultDatasetsConfiguration = registerOutput<String?>('defaultDatasetsConfiguration');
    defaultEventsConfiguration = registerOutput<String?>('defaultEventsConfiguration');
    defaultTopic = registerOutput<TopicResponse?>('defaultTopic', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TopicResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    discoveredAssetRefs = registerOutput<List<String>?>('discoveredAssetRefs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    displayName = registerOutput<String?>('displayName');
    documentationUri = registerOutput<String?>('documentationUri');
    enabled = registerOutput<bool?>('enabled');
    events = registerOutput<List<EventResponse>?>('events', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EventResponse>(guardedValue, (value) => EventResponse.fromMap((value as Map).cast<String, dynamic>())); });
    extendedLocation = registerOutput<ExtendedLocationResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    externalAssetId = registerOutput<String?>('externalAssetId');
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
    status = registerOutput<AssetStatusResponse>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssetStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    uuid = registerOutput<String>('uuid');
    version = registerOutput<double>('version');
  }
}
