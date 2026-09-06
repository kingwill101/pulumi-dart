import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_ref_response.dart';
import 'extended_location_response.dart';
import 'namespace_discovered_asset_args.dart';
import 'namespace_discovered_dataset_response.dart';
import 'namespace_discovered_event_response.dart';
import 'namespace_discovered_management_group_response.dart';
import 'namespace_discovered_stream_response.dart';
import 'system_data_response.dart';

/// Discovered asset definition.
///
/// Uses Azure REST API version 2025-07-01-preview.
///
/// Other available API versions: 2025-10-01, 2025-11-01-preview, 2026-03-01-preview, 2026-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrReplace_NamespaceDiscoveredAsset
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var namespaceDiscoveredAsset = new AzureNative.DeviceRegistry.NamespaceDiscoveredAsset("namespaceDiscoveredAsset", new()
///     {
///         AssetTypeRefs = new[]
///         {
///             "myAssetTypeRef1",
///             "myAssetTypeRef2",
///         },
///         Attributes = new Dictionary<string, object?>
///         {
///             ["floor"] = "1",
///         },
///         Datasets = new[]
///         {
///             new AzureNative.DeviceRegistry.Inputs.NamespaceDiscoveredDatasetArgs
///             {
///                 DataPoints = new[]
///                 {
///                     new AzureNative.DeviceRegistry.Inputs.NamespaceDiscoveredDatasetDataPointArgs
///                     {
///                         DataPointConfiguration = "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                         DataSource = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3",
///                         LastUpdatedOn = "2024-04-09T14:20:00.52Z",
///                         Name = "dataset1DataPoint1",
///                         TypeRef = "dataset1DataPoint1TypeRef",
///                     },
///                     new AzureNative.DeviceRegistry.Inputs.NamespaceDiscoveredDatasetDataPointArgs
///                     {
///                         DataPointConfiguration = "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                         DataSource = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4",
///                         LastUpdatedOn = "2024-04-09T14:20:00.52Z",
///                         Name = "dataset1DataPoint2",
///                         TypeRef = "dataset1DataPoint2TypeRef",
///                     },
///                 },
///                 DataSource = "nsu=http://microsoft.com/Opc/OpcPlc/Boiler;i=5",
///                 DatasetConfiguration = "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}",
///                 Destinations = new[]
///                 {
///                     new AzureNative.DeviceRegistry.Inputs.DatasetBrokerStateStoreDestinationArgs
///                     {
///                         Configuration = new AzureNative.DeviceRegistry.Inputs.BrokerStateStoreDestinationConfigurationArgs
///                         {
///                             Key = "dataset1",
///                         },
///                         Target = "BrokerStateStore",
///                     },
///                 },
///                 LastUpdatedOn = "2024-04-09T14:20:00.52Z",
///                 Name = "dataset1",
///                 TypeRef = "dataset1TypeRef",
///             },
///         },
///         DefaultDatasetsConfiguration = "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}",
///         DefaultDatasetsDestinations = new[]
///         {
///             new AzureNative.DeviceRegistry.Inputs.DatasetBrokerStateStoreDestinationArgs
///             {
///                 Configuration = new AzureNative.DeviceRegistry.Inputs.BrokerStateStoreDestinationConfigurationArgs
///                 {
///                     Key = "defaultValue",
///                 },
///                 Target = "BrokerStateStore",
///             },
///         },
///         DefaultEventsConfiguration = "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}",
///         DefaultEventsDestinations = new[]
///         {
///             new AzureNative.DeviceRegistry.Inputs.EventStorageDestinationArgs
///             {
///                 Configuration = new AzureNative.DeviceRegistry.Inputs.StorageDestinationConfigurationArgs
///                 {
///                     Path = "/tmp",
///                 },
///                 Target = "Storage",
///             },
///         },
///         DefaultManagementGroupsConfiguration = "{\"retryCount\":10,\"retryBackoffInterval\":15}",
///         DefaultStreamsConfiguration = "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}",
///         DefaultStreamsDestinations = new[]
///         {
///             new AzureNative.DeviceRegistry.Inputs.StreamMqttDestinationArgs
///             {
///                 Configuration = new AzureNative.DeviceRegistry.Inputs.MqttDestinationConfigurationArgs
///                 {
///                     Qos = AzureNative.DeviceRegistry.MqttDestinationQos.Qos0,
///                     Retain = AzureNative.DeviceRegistry.TopicRetainType.Never,
///                     Topic = "/contoso/test",
///                     Ttl = 3600,
///                 },
///                 Target = "Mqtt",
///             },
///         },
///         DeviceRef = new AzureNative.DeviceRegistry.Inputs.DeviceRefArgs
///         {
///             DeviceName = "myDevice",
///             EndpointName = "opcuaendpointname",
///         },
///         DiscoveredAssetName = "my-discoveredasset-1",
///         DiscoveryId = "11111111-1111-1111-1111-111111111111",
///         DocumentationUri = "https://www.example.com/manual",
///         Events = new[]
///         {
///             new AzureNative.DeviceRegistry.Inputs.NamespaceDiscoveredEventArgs
///             {
///                 DataPoints = new[]
///                 {
///                     new AzureNative.DeviceRegistry.Inputs.NamespaceDiscoveredEventDataPointArgs
///                     {
///                         DataPointConfiguration = "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                         DataSource = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt6",
///                         LastUpdatedOn = "2024-04-09T14:20:00.52Z",
///                         Name = "event1DataPoint1",
///                     },
///                     new AzureNative.DeviceRegistry.Inputs.NamespaceDiscoveredEventDataPointArgs
///                     {
///                         DataPointConfiguration = "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                         DataSource = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt7",
///                         LastUpdatedOn = "2024-04-09T14:20:00.52Z",
///                         Name = "event1DataPoint2",
///                     },
///                 },
///                 Destinations = new[]
///                 {
///                     new AzureNative.DeviceRegistry.Inputs.EventMqttDestinationArgs
///                     {
///                         Configuration = new AzureNative.DeviceRegistry.Inputs.MqttDestinationConfigurationArgs
///                         {
///                             Qos = AzureNative.DeviceRegistry.MqttDestinationQos.Qos0,
///                             Retain = AzureNative.DeviceRegistry.TopicRetainType.Keep,
///                             Topic = "/contoso/testEvent1",
///                             Ttl = 7200,
///                         },
///                         Target = "Mqtt",
///                     },
///                 },
///                 EventConfiguration = "{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}",
///                 EventNotifier = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3",
///                 LastUpdatedOn = "2024-04-09T14:20:00.52Z",
///                 Name = "event1",
///                 TypeRef = "event1Ref",
///             },
///             new AzureNative.DeviceRegistry.Inputs.NamespaceDiscoveredEventArgs
///             {
///                 DataPoints = new[]
///                 {
///                     new AzureNative.DeviceRegistry.Inputs.NamespaceDiscoveredEventDataPointArgs
///                     {
///                         DataPointConfiguration = "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                         DataSource = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt9",
///                         LastUpdatedOn = "2024-04-09T14:20:00.52Z",
///                         Name = "event2DataPoint1",
///                     },
///                     new AzureNative.DeviceRegistry.Inputs.NamespaceDiscoveredEventDataPointArgs
///                     {
///                         DataPointConfiguration = "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                         DataSource = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt10",
///                         LastUpdatedOn = "2024-04-09T14:20:00.52Z",
///                         Name = "event2DataPoint2",
///                     },
///                 },
///                 Destinations = new[]
///                 {
///                     new AzureNative.DeviceRegistry.Inputs.EventStorageDestinationArgs
///                     {
///                         Configuration = new AzureNative.DeviceRegistry.Inputs.StorageDestinationConfigurationArgs
///                         {
///                             Path = "/tmp/event2",
///                         },
///                         Target = "Storage",
///                     },
///                 },
///                 EventConfiguration = "{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}",
///                 EventNotifier = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4",
///                 LastUpdatedOn = "2024-04-09T14:20:00.52Z",
///                 Name = "event2",
///                 TypeRef = "event2Ref",
///             },
///         },
///         ExtendedLocation = new AzureNative.DeviceRegistry.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///             Type = "CustomLocation",
///         },
///         HardwareRevision = "1.0",
///         Location = "West Europe",
///         ManagementGroups = new[]
///         {
///             new AzureNative.DeviceRegistry.Inputs.NamespaceDiscoveredManagementGroupArgs
///             {
///                 Actions = new[]
///                 {
///                     new AzureNative.DeviceRegistry.Inputs.NamespaceDiscoveredManagementActionArgs
///                     {
///                         ActionConfiguration = "{\"retryCount\":5,\"retryBackoffInterval\":5}",
///                         ActionType = AzureNative.DeviceRegistry.NamespaceDiscoveredManagementActionType.Call,
///                         LastUpdatedOn = "2024-04-09T14:20:00.52Z",
///                         Name = "action1",
///                         TargetUri = "/onvif/device_service?ONVIFProfile=Profile1",
///                         TimeoutInSeconds = 60,
///                         Topic = "/contoso/managementGroup1/action1",
///                         TypeRef = "action1TypeRef",
///                     },
///                     new AzureNative.DeviceRegistry.Inputs.NamespaceDiscoveredManagementActionArgs
///                     {
///                         ActionConfiguration = "{\"retryCount\":5,\"retryBackoffInterval\":5}",
///                         ActionType = AzureNative.DeviceRegistry.NamespaceDiscoveredManagementActionType.Call,
///                         LastUpdatedOn = "2024-04-09T14:20:00.52Z",
///                         Name = "action2",
///                         TargetUri = "/onvif/device_service?ONVIFProfile=Profile2",
///                         TimeoutInSeconds = 60,
///                         Topic = "/contoso/managementGroup1/action2",
///                         TypeRef = "action2TypeRef",
///                     },
///                 },
///                 DefaultTimeoutInSeconds = 100,
///                 DefaultTopic = "/contoso/managementGroup1",
///                 LastUpdatedOn = "2024-04-09T14:20:00.52Z",
///                 ManagementGroupConfiguration = "{\"retryCount\":10,\"retryBackoffInterval\":15}",
///                 Name = "managementGroup1",
///                 TypeRef = "managementGroup1TypeRef",
///             },
///         },
///         Manufacturer = "Contoso",
///         ManufacturerUri = "https://www.contoso.com/manufacturerUri",
///         Model = "ContosoModel",
///         NamespaceName = "my-namespace-1",
///         ProductCode = "SA34VDG",
///         ResourceGroupName = "myResourceGroup",
///         SerialNumber = "64-103816-519918-8",
///         SoftwareRevision = "2.0",
///         Streams = new[]
///         {
///             new AzureNative.DeviceRegistry.Inputs.NamespaceDiscoveredStreamArgs
///             {
///                 Destinations = new[]
///                 {
///                     new AzureNative.DeviceRegistry.Inputs.StreamStorageDestinationArgs
///                     {
///                         Configuration = new AzureNative.DeviceRegistry.Inputs.StorageDestinationConfigurationArgs
///                         {
///                             Path = "/tmp/stream1",
///                         },
///                         Target = "Storage",
///                     },
///                 },
///                 LastUpdatedOn = "2024-04-09T14:20:00.52Z",
///                 Name = "stream1",
///                 StreamConfiguration = "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                 TypeRef = "stream1TypeRef",
///             },
///             new AzureNative.DeviceRegistry.Inputs.NamespaceDiscoveredStreamArgs
///             {
///                 Destinations = new[]
///                 {
///                     new AzureNative.DeviceRegistry.Inputs.StreamMqttDestinationArgs
///                     {
///                         Configuration = new AzureNative.DeviceRegistry.Inputs.MqttDestinationConfigurationArgs
///                         {
///                             Qos = AzureNative.DeviceRegistry.MqttDestinationQos.Qos0,
///                             Retain = AzureNative.DeviceRegistry.TopicRetainType.Never,
///                             Topic = "/contoso/testStream2",
///                             Ttl = 7200,
///                         },
///                         Target = "Mqtt",
///                     },
///                 },
///                 LastUpdatedOn = "2024-04-09T14:20:00.52Z",
///                 Name = "stream2",
///                 StreamConfiguration = "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                 TypeRef = "stream2TypeRef",
///             },
///         },
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
/// 		_, err := deviceregistry.NewNamespaceDiscoveredAsset(ctx, "namespaceDiscoveredAsset", &deviceregistry.NamespaceDiscoveredAssetArgs{
/// 			AssetTypeRefs: pulumi.StringArray{
/// 				pulumi.String("myAssetTypeRef1"),
/// 				pulumi.String("myAssetTypeRef2"),
/// 			},
/// 			Attributes: pulumi.Any(map[string]interface{}{
/// 				"floor": "1",
/// 			}),
/// 			Datasets: deviceregistry.NamespaceDiscoveredDatasetArray{
/// 				&deviceregistry.NamespaceDiscoveredDatasetArgs{
/// 					DataPoints: deviceregistry.NamespaceDiscoveredDatasetDataPointArray{
/// 						&deviceregistry.NamespaceDiscoveredDatasetDataPointArgs{
/// 							DataPointConfiguration: pulumi.String("{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}"),
/// 							DataSource:             pulumi.String("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3"),
/// 							LastUpdatedOn:          pulumi.String("2024-04-09T14:20:00.52Z"),
/// 							Name:                   pulumi.String("dataset1DataPoint1"),
/// 							TypeRef:                pulumi.String("dataset1DataPoint1TypeRef"),
/// 						},
/// 						&deviceregistry.NamespaceDiscoveredDatasetDataPointArgs{
/// 							DataPointConfiguration: pulumi.String("{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}"),
/// 							DataSource:             pulumi.String("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4"),
/// 							LastUpdatedOn:          pulumi.String("2024-04-09T14:20:00.52Z"),
/// 							Name:                   pulumi.String("dataset1DataPoint2"),
/// 							TypeRef:                pulumi.String("dataset1DataPoint2TypeRef"),
/// 						},
/// 					},
/// 					DataSource:           pulumi.String("nsu=http://microsoft.com/Opc/OpcPlc/Boiler;i=5"),
/// 					DatasetConfiguration: pulumi.String("{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}"),
/// 					Destinations: pulumi.Array{
/// 						deviceregistry.DatasetBrokerStateStoreDestination{
/// 							Configuration: deviceregistry.BrokerStateStoreDestinationConfiguration{
/// 								Key: "dataset1",
/// 							},
/// 							Target: "BrokerStateStore",
/// 						},
/// 					},
/// 					LastUpdatedOn: pulumi.String("2024-04-09T14:20:00.52Z"),
/// 					Name:          pulumi.String("dataset1"),
/// 					TypeRef:       pulumi.String("dataset1TypeRef"),
/// 				},
/// 			},
/// 			DefaultDatasetsConfiguration: pulumi.String("{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}"),
/// 			DefaultDatasetsDestinations: pulumi.Array{
/// 				deviceregistry.DatasetBrokerStateStoreDestination{
/// 					Configuration: deviceregistry.BrokerStateStoreDestinationConfiguration{
/// 						Key: "defaultValue",
/// 					},
/// 					Target: "BrokerStateStore",
/// 				},
/// 			},
/// 			DefaultEventsConfiguration: pulumi.String("{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}"),
/// 			DefaultEventsDestinations: pulumi.Array{
/// 				deviceregistry.EventStorageDestination{
/// 					Configuration: deviceregistry.StorageDestinationConfiguration{
/// 						Path: "/tmp",
/// 					},
/// 					Target: "Storage",
/// 				},
/// 			},
/// 			DefaultManagementGroupsConfiguration: pulumi.String("{\"retryCount\":10,\"retryBackoffInterval\":15}"),
/// 			DefaultStreamsConfiguration:          pulumi.String("{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}"),
/// 			DefaultStreamsDestinations: pulumi.Array{
/// 				deviceregistry.StreamMqttDestination{
/// 					Configuration: deviceregistry.MqttDestinationConfiguration{
/// 						Qos:    deviceregistry.MqttDestinationQosQos0,
/// 						Retain: deviceregistry.TopicRetainTypeNever,
/// 						Topic:  "/contoso/test",
/// 						Ttl:    3600,
/// 					},
/// 					Target: "Mqtt",
/// 				},
/// 			},
/// 			DeviceRef: &deviceregistry.DeviceRefArgs{
/// 				DeviceName:   pulumi.String("myDevice"),
/// 				EndpointName: pulumi.String("opcuaendpointname"),
/// 			},
/// 			DiscoveredAssetName: pulumi.String("my-discoveredasset-1"),
/// 			DiscoveryId:         pulumi.String("11111111-1111-1111-1111-111111111111"),
/// 			DocumentationUri:    pulumi.String("https://www.example.com/manual"),
/// 			Events: deviceregistry.NamespaceDiscoveredEventArray{
/// 				&deviceregistry.NamespaceDiscoveredEventArgs{
/// 					DataPoints: deviceregistry.NamespaceDiscoveredEventDataPointArray{
/// 						&deviceregistry.NamespaceDiscoveredEventDataPointArgs{
/// 							DataPointConfiguration: pulumi.String("{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}"),
/// 							DataSource:             pulumi.String("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt6"),
/// 							LastUpdatedOn:          pulumi.String("2024-04-09T14:20:00.52Z"),
/// 							Name:                   pulumi.String("event1DataPoint1"),
/// 						},
/// 						&deviceregistry.NamespaceDiscoveredEventDataPointArgs{
/// 							DataPointConfiguration: pulumi.String("{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}"),
/// 							DataSource:             pulumi.String("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt7"),
/// 							LastUpdatedOn:          pulumi.String("2024-04-09T14:20:00.52Z"),
/// 							Name:                   pulumi.String("event1DataPoint2"),
/// 						},
/// 					},
/// 					Destinations: pulumi.Array{
/// 						deviceregistry.EventMqttDestination{
/// 							Configuration: deviceregistry.MqttDestinationConfiguration{
/// 								Qos:    deviceregistry.MqttDestinationQosQos0,
/// 								Retain: deviceregistry.TopicRetainTypeKeep,
/// 								Topic:  "/contoso/testEvent1",
/// 								Ttl:    7200,
/// 							},
/// 							Target: "Mqtt",
/// 						},
/// 					},
/// 					EventConfiguration: pulumi.String("{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}"),
/// 					EventNotifier:      pulumi.String("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3"),
/// 					LastUpdatedOn:      pulumi.String("2024-04-09T14:20:00.52Z"),
/// 					Name:               pulumi.String("event1"),
/// 					TypeRef:            pulumi.String("event1Ref"),
/// 				},
/// 				&deviceregistry.NamespaceDiscoveredEventArgs{
/// 					DataPoints: deviceregistry.NamespaceDiscoveredEventDataPointArray{
/// 						&deviceregistry.NamespaceDiscoveredEventDataPointArgs{
/// 							DataPointConfiguration: pulumi.String("{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}"),
/// 							DataSource:             pulumi.String("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt9"),
/// 							LastUpdatedOn:          pulumi.String("2024-04-09T14:20:00.52Z"),
/// 							Name:                   pulumi.String("event2DataPoint1"),
/// 						},
/// 						&deviceregistry.NamespaceDiscoveredEventDataPointArgs{
/// 							DataPointConfiguration: pulumi.String("{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}"),
/// 							DataSource:             pulumi.String("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt10"),
/// 							LastUpdatedOn:          pulumi.String("2024-04-09T14:20:00.52Z"),
/// 							Name:                   pulumi.String("event2DataPoint2"),
/// 						},
/// 					},
/// 					Destinations: pulumi.Array{
/// 						deviceregistry.EventStorageDestination{
/// 							Configuration: deviceregistry.StorageDestinationConfiguration{
/// 								Path: "/tmp/event2",
/// 							},
/// 							Target: "Storage",
/// 						},
/// 					},
/// 					EventConfiguration: pulumi.String("{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}"),
/// 					EventNotifier:      pulumi.String("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4"),
/// 					LastUpdatedOn:      pulumi.String("2024-04-09T14:20:00.52Z"),
/// 					Name:               pulumi.String("event2"),
/// 					TypeRef:            pulumi.String("event2Ref"),
/// 				},
/// 			},
/// 			ExtendedLocation: &deviceregistry.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1"),
/// 				Type: pulumi.String("CustomLocation"),
/// 			},
/// 			HardwareRevision: pulumi.String("1.0"),
/// 			Location:         pulumi.String("West Europe"),
/// 			ManagementGroups: deviceregistry.NamespaceDiscoveredManagementGroupArray{
/// 				&deviceregistry.NamespaceDiscoveredManagementGroupArgs{
/// 					Actions: deviceregistry.NamespaceDiscoveredManagementActionArray{
/// 						&deviceregistry.NamespaceDiscoveredManagementActionArgs{
/// 							ActionConfiguration: pulumi.String("{\"retryCount\":5,\"retryBackoffInterval\":5}"),
/// 							ActionType:          pulumi.String(deviceregistry.NamespaceDiscoveredManagementActionTypeCall),
/// 							LastUpdatedOn:       pulumi.String("2024-04-09T14:20:00.52Z"),
/// 							Name:                pulumi.String("action1"),
/// 							TargetUri:           pulumi.String("/onvif/device_service?ONVIFProfile=Profile1"),
/// 							TimeoutInSeconds:    pulumi.Int(60),
/// 							Topic:               pulumi.String("/contoso/managementGroup1/action1"),
/// 							TypeRef:             pulumi.String("action1TypeRef"),
/// 						},
/// 						&deviceregistry.NamespaceDiscoveredManagementActionArgs{
/// 							ActionConfiguration: pulumi.String("{\"retryCount\":5,\"retryBackoffInterval\":5}"),
/// 							ActionType:          pulumi.String(deviceregistry.NamespaceDiscoveredManagementActionTypeCall),
/// 							LastUpdatedOn:       pulumi.String("2024-04-09T14:20:00.52Z"),
/// 							Name:                pulumi.String("action2"),
/// 							TargetUri:           pulumi.String("/onvif/device_service?ONVIFProfile=Profile2"),
/// 							TimeoutInSeconds:    pulumi.Int(60),
/// 							Topic:               pulumi.String("/contoso/managementGroup1/action2"),
/// 							TypeRef:             pulumi.String("action2TypeRef"),
/// 						},
/// 					},
/// 					DefaultTimeoutInSeconds:      pulumi.Int(100),
/// 					DefaultTopic:                 pulumi.String("/contoso/managementGroup1"),
/// 					LastUpdatedOn:                pulumi.String("2024-04-09T14:20:00.52Z"),
/// 					ManagementGroupConfiguration: pulumi.String("{\"retryCount\":10,\"retryBackoffInterval\":15}"),
/// 					Name:                         pulumi.String("managementGroup1"),
/// 					TypeRef:                      pulumi.String("managementGroup1TypeRef"),
/// 				},
/// 			},
/// 			Manufacturer:      pulumi.String("Contoso"),
/// 			ManufacturerUri:   pulumi.String("https://www.contoso.com/manufacturerUri"),
/// 			Model:             pulumi.String("ContosoModel"),
/// 			NamespaceName:     pulumi.String("my-namespace-1"),
/// 			ProductCode:       pulumi.String("SA34VDG"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SerialNumber:      pulumi.String("64-103816-519918-8"),
/// 			SoftwareRevision:  pulumi.String("2.0"),
/// 			Streams: deviceregistry.NamespaceDiscoveredStreamArray{
/// 				&deviceregistry.NamespaceDiscoveredStreamArgs{
/// 					Destinations: pulumi.Array{
/// 						deviceregistry.StreamStorageDestination{
/// 							Configuration: deviceregistry.StorageDestinationConfiguration{
/// 								Path: "/tmp/stream1",
/// 							},
/// 							Target: "Storage",
/// 						},
/// 					},
/// 					LastUpdatedOn:       pulumi.String("2024-04-09T14:20:00.52Z"),
/// 					Name:                pulumi.String("stream1"),
/// 					StreamConfiguration: pulumi.String("{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}"),
/// 					TypeRef:             pulumi.String("stream1TypeRef"),
/// 				},
/// 				&deviceregistry.NamespaceDiscoveredStreamArgs{
/// 					Destinations: pulumi.Array{
/// 						deviceregistry.StreamMqttDestination{
/// 							Configuration: deviceregistry.MqttDestinationConfiguration{
/// 								Qos:    deviceregistry.MqttDestinationQosQos0,
/// 								Retain: deviceregistry.TopicRetainTypeNever,
/// 								Topic:  "/contoso/testStream2",
/// 								Ttl:    7200,
/// 							},
/// 							Target: "Mqtt",
/// 						},
/// 					},
/// 					LastUpdatedOn:       pulumi.String("2024-04-09T14:20:00.52Z"),
/// 					Name:                pulumi.String("stream2"),
/// 					StreamConfiguration: pulumi.String("{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}"),
/// 					TypeRef:             pulumi.String("stream2TypeRef"),
/// 				},
/// 			},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_deviceregistry_namespacediscoveredasset" "namespaceDiscoveredAsset" {
///   asset_type_refs = ["myAssetTypeRef1", "myAssetTypeRef2"]
///   attributes = {
///     "floor" = "1"
///   }
///   datasets {
///     data_points {
///       data_point_configuration = "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}"
///       data_source              = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3"
///       last_updated_on          = "2024-04-09T14:20:00.52Z"
///       name                     = "dataset1DataPoint1"
///       type_ref                 = "dataset1DataPoint1TypeRef"
///     }
///     data_points {
///       data_point_configuration = "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}"
///       data_source              = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4"
///       last_updated_on          = "2024-04-09T14:20:00.52Z"
///       name                     = "dataset1DataPoint2"
///       type_ref                 = "dataset1DataPoint2TypeRef"
///     }
///     data_source           = "nsu=http://microsoft.com/Opc/OpcPlc/Boiler;i=5"
///     dataset_configuration = "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}"
///     destinations = [{
///       "configuration" = {
///         "key" = "dataset1"
///       }
///       "target" = "BrokerStateStore"
///     }]
///     last_updated_on = "2024-04-09T14:20:00.52Z"
///     name            = "dataset1"
///     type_ref        = "dataset1TypeRef"
///   }
///   default_datasets_configuration = "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}"
///   default_datasets_destinations = [{
///     "configuration" = {
///       "key" = "defaultValue"
///     }
///     "target" = "BrokerStateStore"
///   }]
///   default_events_configuration = "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}"
///   default_events_destinations = [{
///     "configuration" = {
///       "path" = "/tmp"
///     }
///     "target" = "Storage"
///   }]
///   default_management_groups_configuration = "{\"retryCount\":10,\"retryBackoffInterval\":15}"
///   default_streams_configuration           = "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}"
///   default_streams_destinations = [{
///     "configuration" = {
///       "qos"    = "Qos0"
///       "retain" = "Never"
///       "topic"  = "/contoso/test"
///       "ttl"    = 3600
///     }
///     "target" = "Mqtt"
///   }]
///   device_ref = {
///     device_name   = "myDevice"
///     endpoint_name = "opcuaendpointname"
///   }
///   discovered_asset_name = "my-discoveredasset-1"
///   discovery_id          = "11111111-1111-1111-1111-111111111111"
///   documentation_uri     = "https://www.example.com/manual"
///   events {
///     data_points {
///       data_point_configuration = "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}"
///       data_source              = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt6"
///       last_updated_on          = "2024-04-09T14:20:00.52Z"
///       name                     = "event1DataPoint1"
///     }
///     data_points {
///       data_point_configuration = "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}"
///       data_source              = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt7"
///       last_updated_on          = "2024-04-09T14:20:00.52Z"
///       name                     = "event1DataPoint2"
///     }
///     destinations = [{
///       "configuration" = {
///         "qos"    = "Qos0"
///         "retain" = "Keep"
///         "topic"  = "/contoso/testEvent1"
///         "ttl"    = 7200
///       }
///       "target" = "Mqtt"
///     }]
///     event_configuration = "{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}"
///     event_notifier      = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3"
///     last_updated_on     = "2024-04-09T14:20:00.52Z"
///     name                = "event1"
///     type_ref            = "event1Ref"
///   }
///   events {
///     data_points {
///       data_point_configuration = "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}"
///       data_source              = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt9"
///       last_updated_on          = "2024-04-09T14:20:00.52Z"
///       name                     = "event2DataPoint1"
///     }
///     data_points {
///       data_point_configuration = "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}"
///       data_source              = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt10"
///       last_updated_on          = "2024-04-09T14:20:00.52Z"
///       name                     = "event2DataPoint2"
///     }
///     destinations = [{
///       "configuration" = {
///         "path" = "/tmp/event2"
///       }
///       "target" = "Storage"
///     }]
///     event_configuration = "{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}"
///     event_notifier      = "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4"
///     last_updated_on     = "2024-04-09T14:20:00.52Z"
///     name                = "event2"
///     type_ref            = "event2Ref"
///   }
///   extended_location = {
///     name = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1"
///     type = "CustomLocation"
///   }
///   hardware_revision = "1.0"
///   location          = "West Europe"
///   management_groups {
///     actions {
///       action_configuration = "{\"retryCount\":5,\"retryBackoffInterval\":5}"
///       action_type          = "Call"
///       last_updated_on      = "2024-04-09T14:20:00.52Z"
///       name                 = "action1"
///       target_uri           = "/onvif/device_service?ONVIFProfile=Profile1"
///       timeout_in_seconds   = 60
///       topic                = "/contoso/managementGroup1/action1"
///       type_ref             = "action1TypeRef"
///     }
///     actions {
///       action_configuration = "{\"retryCount\":5,\"retryBackoffInterval\":5}"
///       action_type          = "Call"
///       last_updated_on      = "2024-04-09T14:20:00.52Z"
///       name                 = "action2"
///       target_uri           = "/onvif/device_service?ONVIFProfile=Profile2"
///       timeout_in_seconds   = 60
///       topic                = "/contoso/managementGroup1/action2"
///       type_ref             = "action2TypeRef"
///     }
///     default_timeout_in_seconds     = 100
///     default_topic                  = "/contoso/managementGroup1"
///     last_updated_on                = "2024-04-09T14:20:00.52Z"
///     management_group_configuration = "{\"retryCount\":10,\"retryBackoffInterval\":15}"
///     name                           = "managementGroup1"
///     type_ref                       = "managementGroup1TypeRef"
///   }
///   manufacturer        = "Contoso"
///   manufacturer_uri    = "https://www.contoso.com/manufacturerUri"
///   model               = "ContosoModel"
///   namespace_name      = "my-namespace-1"
///   product_code        = "SA34VDG"
///   resource_group_name = "myResourceGroup"
///   serial_number       = "64-103816-519918-8"
///   software_revision   = "2.0"
///   streams {
///     destinations = [{
///       "configuration" = {
///         "path" = "/tmp/stream1"
///       }
///       "target" = "Storage"
///     }]
///     last_updated_on      = "2024-04-09T14:20:00.52Z"
///     name                 = "stream1"
///     stream_configuration = "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}"
///     type_ref             = "stream1TypeRef"
///   }
///   streams {
///     destinations = [{
///       "configuration" = {
///         "qos"    = "Qos0"
///         "retain" = "Never"
///         "topic"  = "/contoso/testStream2"
///         "ttl"    = 7200
///       }
///       "target" = "Mqtt"
///     }]
///     last_updated_on      = "2024-04-09T14:20:00.52Z"
///     name                 = "stream2"
///     stream_configuration = "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}"
///     type_ref             = "stream2TypeRef"
///   }
///   tags = {
///     "site" = "building-1"
///   }
///   version = 73766
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
/// import com.pulumi.azurenative.deviceregistry.NamespaceDiscoveredAsset;
/// import com.pulumi.azurenative.deviceregistry.NamespaceDiscoveredAssetArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.NamespaceDiscoveredDatasetArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.DeviceRefArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.NamespaceDiscoveredEventArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.NamespaceDiscoveredManagementGroupArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.NamespaceDiscoveredStreamArgs;
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
///         var namespaceDiscoveredAsset = new NamespaceDiscoveredAsset("namespaceDiscoveredAsset", NamespaceDiscoveredAssetArgs.builder()
///             .assetTypeRefs(
///                 "myAssetTypeRef1",
///                 "myAssetTypeRef2")
///             .attributes(Map.of("floor", "1"))
///             .datasets(NamespaceDiscoveredDatasetArgs.builder()
///                 .dataPoints(
///                     NamespaceDiscoveredDatasetDataPointArgs.builder()
///                         .dataPointConfiguration("{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}")
///                         .dataSource("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3")
///                         .lastUpdatedOn("2024-04-09T14:20:00.52Z")
///                         .name("dataset1DataPoint1")
///                         .typeRef("dataset1DataPoint1TypeRef")
///                         .build(),
///                     NamespaceDiscoveredDatasetDataPointArgs.builder()
///                         .dataPointConfiguration("{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}")
///                         .dataSource("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4")
///                         .lastUpdatedOn("2024-04-09T14:20:00.52Z")
///                         .name("dataset1DataPoint2")
///                         .typeRef("dataset1DataPoint2TypeRef")
///                         .build())
///                 .dataSource("nsu=http://microsoft.com/Opc/OpcPlc/Boiler;i=5")
///                 .datasetConfiguration("{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}")
///                 .destinations(DatasetBrokerStateStoreDestinationArgs.builder()
///                     .configuration(BrokerStateStoreDestinationConfigurationArgs.builder()
///                         .key("dataset1")
///                         .build())
///                     .target("BrokerStateStore")
///                     .build())
///                 .lastUpdatedOn("2024-04-09T14:20:00.52Z")
///                 .name("dataset1")
///                 .typeRef("dataset1TypeRef")
///                 .build())
///             .defaultDatasetsConfiguration("{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}")
///             .defaultDatasetsDestinations(DatasetBrokerStateStoreDestinationArgs.builder()
///                 .configuration(BrokerStateStoreDestinationConfigurationArgs.builder()
///                     .key("defaultValue")
///                     .build())
///                 .target("BrokerStateStore")
///                 .build())
///             .defaultEventsConfiguration("{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}")
///             .defaultEventsDestinations(EventStorageDestinationArgs.builder()
///                 .configuration(StorageDestinationConfigurationArgs.builder()
///                     .path("/tmp")
///                     .build())
///                 .target("Storage")
///                 .build())
///             .defaultManagementGroupsConfiguration("{\"retryCount\":10,\"retryBackoffInterval\":15}")
///             .defaultStreamsConfiguration("{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}")
///             .defaultStreamsDestinations(StreamMqttDestinationArgs.builder()
///                 .configuration(MqttDestinationConfigurationArgs.builder()
///                     .qos("Qos0")
///                     .retain("Never")
///                     .topic("/contoso/test")
///                     .ttl(3600.0)
///                     .build())
///                 .target("Mqtt")
///                 .build())
///             .deviceRef(DeviceRefArgs.builder()
///                 .deviceName("myDevice")
///                 .endpointName("opcuaendpointname")
///                 .build())
///             .discoveredAssetName("my-discoveredasset-1")
///             .discoveryId("11111111-1111-1111-1111-111111111111")
///             .documentationUri("https://www.example.com/manual")
///             .events(
///                 NamespaceDiscoveredEventArgs.builder()
///                     .dataPoints(
///                         NamespaceDiscoveredEventDataPointArgs.builder()
///                             .dataPointConfiguration("{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}")
///                             .dataSource("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt6")
///                             .lastUpdatedOn("2024-04-09T14:20:00.52Z")
///                             .name("event1DataPoint1")
///                             .build(),
///                         NamespaceDiscoveredEventDataPointArgs.builder()
///                             .dataPointConfiguration("{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}")
///                             .dataSource("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt7")
///                             .lastUpdatedOn("2024-04-09T14:20:00.52Z")
///                             .name("event1DataPoint2")
///                             .build())
///                     .destinations(EventMqttDestinationArgs.builder()
///                         .configuration(MqttDestinationConfigurationArgs.builder()
///                             .qos("Qos0")
///                             .retain("Keep")
///                             .topic("/contoso/testEvent1")
///                             .ttl(7200.0)
///                             .build())
///                         .target("Mqtt")
///                         .build())
///                     .eventConfiguration("{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}")
///                     .eventNotifier("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3")
///                     .lastUpdatedOn("2024-04-09T14:20:00.52Z")
///                     .name("event1")
///                     .typeRef("event1Ref")
///                     .build(),
///                 NamespaceDiscoveredEventArgs.builder()
///                     .dataPoints(
///                         NamespaceDiscoveredEventDataPointArgs.builder()
///                             .dataPointConfiguration("{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}")
///                             .dataSource("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt9")
///                             .lastUpdatedOn("2024-04-09T14:20:00.52Z")
///                             .name("event2DataPoint1")
///                             .build(),
///                         NamespaceDiscoveredEventDataPointArgs.builder()
///                             .dataPointConfiguration("{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}")
///                             .dataSource("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt10")
///                             .lastUpdatedOn("2024-04-09T14:20:00.52Z")
///                             .name("event2DataPoint2")
///                             .build())
///                     .destinations(EventStorageDestinationArgs.builder()
///                         .configuration(StorageDestinationConfigurationArgs.builder()
///                             .path("/tmp/event2")
///                             .build())
///                         .target("Storage")
///                         .build())
///                     .eventConfiguration("{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}")
///                     .eventNotifier("nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4")
///                     .lastUpdatedOn("2024-04-09T14:20:00.52Z")
///                     .name("event2")
///                     .typeRef("event2Ref")
///                     .build())
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1")
///                 .type("CustomLocation")
///                 .build())
///             .hardwareRevision("1.0")
///             .location("West Europe")
///             .managementGroups(NamespaceDiscoveredManagementGroupArgs.builder()
///                 .actions(
///                     NamespaceDiscoveredManagementActionArgs.builder()
///                         .actionConfiguration("{\"retryCount\":5,\"retryBackoffInterval\":5}")
///                         .actionType("Call")
///                         .lastUpdatedOn("2024-04-09T14:20:00.52Z")
///                         .name("action1")
///                         .targetUri("/onvif/device_service?ONVIFProfile=Profile1")
///                         .timeoutInSeconds(60)
///                         .topic("/contoso/managementGroup1/action1")
///                         .typeRef("action1TypeRef")
///                         .build(),
///                     NamespaceDiscoveredManagementActionArgs.builder()
///                         .actionConfiguration("{\"retryCount\":5,\"retryBackoffInterval\":5}")
///                         .actionType("Call")
///                         .lastUpdatedOn("2024-04-09T14:20:00.52Z")
///                         .name("action2")
///                         .targetUri("/onvif/device_service?ONVIFProfile=Profile2")
///                         .timeoutInSeconds(60)
///                         .topic("/contoso/managementGroup1/action2")
///                         .typeRef("action2TypeRef")
///                         .build())
///                 .defaultTimeoutInSeconds(100)
///                 .defaultTopic("/contoso/managementGroup1")
///                 .lastUpdatedOn("2024-04-09T14:20:00.52Z")
///                 .managementGroupConfiguration("{\"retryCount\":10,\"retryBackoffInterval\":15}")
///                 .name("managementGroup1")
///                 .typeRef("managementGroup1TypeRef")
///                 .build())
///             .manufacturer("Contoso")
///             .manufacturerUri("https://www.contoso.com/manufacturerUri")
///             .model("ContosoModel")
///             .namespaceName("my-namespace-1")
///             .productCode("SA34VDG")
///             .resourceGroupName("myResourceGroup")
///             .serialNumber("64-103816-519918-8")
///             .softwareRevision("2.0")
///             .streams(
///                 NamespaceDiscoveredStreamArgs.builder()
///                     .destinations(StreamStorageDestinationArgs.builder()
///                         .configuration(StorageDestinationConfigurationArgs.builder()
///                             .path("/tmp/stream1")
///                             .build())
///                         .target("Storage")
///                         .build())
///                     .lastUpdatedOn("2024-04-09T14:20:00.52Z")
///                     .name("stream1")
///                     .streamConfiguration("{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}")
///                     .typeRef("stream1TypeRef")
///                     .build(),
///                 NamespaceDiscoveredStreamArgs.builder()
///                     .destinations(StreamMqttDestinationArgs.builder()
///                         .configuration(MqttDestinationConfigurationArgs.builder()
///                             .qos("Qos0")
///                             .retain("Never")
///                             .topic("/contoso/testStream2")
///                             .ttl(7200.0)
///                             .build())
///                         .target("Mqtt")
///                         .build())
///                     .lastUpdatedOn("2024-04-09T14:20:00.52Z")
///                     .name("stream2")
///                     .streamConfiguration("{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}")
///                     .typeRef("stream2TypeRef")
///                     .build())
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
/// const namespaceDiscoveredAsset = new azure_native.deviceregistry.NamespaceDiscoveredAsset("namespaceDiscoveredAsset", {
///     assetTypeRefs: [
///         "myAssetTypeRef1",
///         "myAssetTypeRef2",
///     ],
///     attributes: {
///         floor: "1",
///     },
///     datasets: [{
///         dataPoints: [
///             {
///                 dataPointConfiguration: "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                 dataSource: "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3",
///                 lastUpdatedOn: "2024-04-09T14:20:00.52Z",
///                 name: "dataset1DataPoint1",
///                 typeRef: "dataset1DataPoint1TypeRef",
///             },
///             {
///                 dataPointConfiguration: "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                 dataSource: "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4",
///                 lastUpdatedOn: "2024-04-09T14:20:00.52Z",
///                 name: "dataset1DataPoint2",
///                 typeRef: "dataset1DataPoint2TypeRef",
///             },
///         ],
///         dataSource: "nsu=http://microsoft.com/Opc/OpcPlc/Boiler;i=5",
///         datasetConfiguration: "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}",
///         destinations: [{
///             configuration: {
///                 key: "dataset1",
///             },
///             target: "BrokerStateStore",
///         }],
///         lastUpdatedOn: "2024-04-09T14:20:00.52Z",
///         name: "dataset1",
///         typeRef: "dataset1TypeRef",
///     }],
///     defaultDatasetsConfiguration: "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}",
///     defaultDatasetsDestinations: [{
///         configuration: {
///             key: "defaultValue",
///         },
///         target: "BrokerStateStore",
///     }],
///     defaultEventsConfiguration: "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}",
///     defaultEventsDestinations: [{
///         configuration: {
///             path: "/tmp",
///         },
///         target: "Storage",
///     }],
///     defaultManagementGroupsConfiguration: "{\"retryCount\":10,\"retryBackoffInterval\":15}",
///     defaultStreamsConfiguration: "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}",
///     defaultStreamsDestinations: [{
///         configuration: {
///             qos: azure_native.deviceregistry.MqttDestinationQos.Qos0,
///             retain: azure_native.deviceregistry.TopicRetainType.Never,
///             topic: "/contoso/test",
///             ttl: 3600,
///         },
///         target: "Mqtt",
///     }],
///     deviceRef: {
///         deviceName: "myDevice",
///         endpointName: "opcuaendpointname",
///     },
///     discoveredAssetName: "my-discoveredasset-1",
///     discoveryId: "11111111-1111-1111-1111-111111111111",
///     documentationUri: "https://www.example.com/manual",
///     events: [
///         {
///             dataPoints: [
///                 {
///                     dataPointConfiguration: "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                     dataSource: "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt6",
///                     lastUpdatedOn: "2024-04-09T14:20:00.52Z",
///                     name: "event1DataPoint1",
///                 },
///                 {
///                     dataPointConfiguration: "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                     dataSource: "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt7",
///                     lastUpdatedOn: "2024-04-09T14:20:00.52Z",
///                     name: "event1DataPoint2",
///                 },
///             ],
///             destinations: [{
///                 configuration: {
///                     qos: azure_native.deviceregistry.MqttDestinationQos.Qos0,
///                     retain: azure_native.deviceregistry.TopicRetainType.Keep,
///                     topic: "/contoso/testEvent1",
///                     ttl: 7200,
///                 },
///                 target: "Mqtt",
///             }],
///             eventConfiguration: "{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}",
///             eventNotifier: "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3",
///             lastUpdatedOn: "2024-04-09T14:20:00.52Z",
///             name: "event1",
///             typeRef: "event1Ref",
///         },
///         {
///             dataPoints: [
///                 {
///                     dataPointConfiguration: "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                     dataSource: "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt9",
///                     lastUpdatedOn: "2024-04-09T14:20:00.52Z",
///                     name: "event2DataPoint1",
///                 },
///                 {
///                     dataPointConfiguration: "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                     dataSource: "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt10",
///                     lastUpdatedOn: "2024-04-09T14:20:00.52Z",
///                     name: "event2DataPoint2",
///                 },
///             ],
///             destinations: [{
///                 configuration: {
///                     path: "/tmp/event2",
///                 },
///                 target: "Storage",
///             }],
///             eventConfiguration: "{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}",
///             eventNotifier: "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4",
///             lastUpdatedOn: "2024-04-09T14:20:00.52Z",
///             name: "event2",
///             typeRef: "event2Ref",
///         },
///     ],
///     extendedLocation: {
///         name: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///         type: "CustomLocation",
///     },
///     hardwareRevision: "1.0",
///     location: "West Europe",
///     managementGroups: [{
///         actions: [
///             {
///                 actionConfiguration: "{\"retryCount\":5,\"retryBackoffInterval\":5}",
///                 actionType: azure_native.deviceregistry.NamespaceDiscoveredManagementActionType.Call,
///                 lastUpdatedOn: "2024-04-09T14:20:00.52Z",
///                 name: "action1",
///                 targetUri: "/onvif/device_service?ONVIFProfile=Profile1",
///                 timeoutInSeconds: 60,
///                 topic: "/contoso/managementGroup1/action1",
///                 typeRef: "action1TypeRef",
///             },
///             {
///                 actionConfiguration: "{\"retryCount\":5,\"retryBackoffInterval\":5}",
///                 actionType: azure_native.deviceregistry.NamespaceDiscoveredManagementActionType.Call,
///                 lastUpdatedOn: "2024-04-09T14:20:00.52Z",
///                 name: "action2",
///                 targetUri: "/onvif/device_service?ONVIFProfile=Profile2",
///                 timeoutInSeconds: 60,
///                 topic: "/contoso/managementGroup1/action2",
///                 typeRef: "action2TypeRef",
///             },
///         ],
///         defaultTimeoutInSeconds: 100,
///         defaultTopic: "/contoso/managementGroup1",
///         lastUpdatedOn: "2024-04-09T14:20:00.52Z",
///         managementGroupConfiguration: "{\"retryCount\":10,\"retryBackoffInterval\":15}",
///         name: "managementGroup1",
///         typeRef: "managementGroup1TypeRef",
///     }],
///     manufacturer: "Contoso",
///     manufacturerUri: "https://www.contoso.com/manufacturerUri",
///     model: "ContosoModel",
///     namespaceName: "my-namespace-1",
///     productCode: "SA34VDG",
///     resourceGroupName: "myResourceGroup",
///     serialNumber: "64-103816-519918-8",
///     softwareRevision: "2.0",
///     streams: [
///         {
///             destinations: [{
///                 configuration: {
///                     path: "/tmp/stream1",
///                 },
///                 target: "Storage",
///             }],
///             lastUpdatedOn: "2024-04-09T14:20:00.52Z",
///             name: "stream1",
///             streamConfiguration: "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///             typeRef: "stream1TypeRef",
///         },
///         {
///             destinations: [{
///                 configuration: {
///                     qos: azure_native.deviceregistry.MqttDestinationQos.Qos0,
///                     retain: azure_native.deviceregistry.TopicRetainType.Never,
///                     topic: "/contoso/testStream2",
///                     ttl: 7200,
///                 },
///                 target: "Mqtt",
///             }],
///             lastUpdatedOn: "2024-04-09T14:20:00.52Z",
///             name: "stream2",
///             streamConfiguration: "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///             typeRef: "stream2TypeRef",
///         },
///     ],
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
/// namespace_discovered_asset = azure_native.deviceregistry.NamespaceDiscoveredAsset("namespaceDiscoveredAsset",
///     asset_type_refs=[
///         "myAssetTypeRef1",
///         "myAssetTypeRef2",
///     ],
///     attributes={
///         "floor": "1",
///     },
///     datasets=[{
///         "data_points": [
///             {
///                 "data_point_configuration": "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                 "data_source": "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3",
///                 "last_updated_on": "2024-04-09T14:20:00.52Z",
///                 "name": "dataset1DataPoint1",
///                 "type_ref": "dataset1DataPoint1TypeRef",
///             },
///             {
///                 "data_point_configuration": "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                 "data_source": "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4",
///                 "last_updated_on": "2024-04-09T14:20:00.52Z",
///                 "name": "dataset1DataPoint2",
///                 "type_ref": "dataset1DataPoint2TypeRef",
///             },
///         ],
///         "data_source": "nsu=http://microsoft.com/Opc/OpcPlc/Boiler;i=5",
///         "dataset_configuration": "{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}",
///         "destinations": [{
///             "configuration": {
///                 "key": "dataset1",
///             },
///             "target": "BrokerStateStore",
///         }],
///         "last_updated_on": "2024-04-09T14:20:00.52Z",
///         "name": "dataset1",
///         "type_ref": "dataset1TypeRef",
///     }],
///     default_datasets_configuration="{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}",
///     default_datasets_destinations=[{
///         "configuration": {
///             "key": "defaultValue",
///         },
///         "target": "BrokerStateStore",
///     }],
///     default_events_configuration="{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}",
///     default_events_destinations=[{
///         "configuration": {
///             "path": "/tmp",
///         },
///         "target": "Storage",
///     }],
///     default_management_groups_configuration="{\"retryCount\":10,\"retryBackoffInterval\":15}",
///     default_streams_configuration="{\"publishingInterval\":10,\"samplingInterval\":15,\"queueSize\":20}",
///     default_streams_destinations=[{
///         "configuration": {
///             "qos": azure_native.deviceregistry.MqttDestinationQos.QOS0,
///             "retain": azure_native.deviceregistry.TopicRetainType.NEVER,
///             "topic": "/contoso/test",
///             "ttl": float(3600),
///         },
///         "target": "Mqtt",
///     }],
///     device_ref={
///         "device_name": "myDevice",
///         "endpoint_name": "opcuaendpointname",
///     },
///     discovered_asset_name="my-discoveredasset-1",
///     discovery_id="11111111-1111-1111-1111-111111111111",
///     documentation_uri="https://www.example.com/manual",
///     events=[
///         {
///             "data_points": [
///                 {
///                     "data_point_configuration": "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                     "data_source": "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt6",
///                     "last_updated_on": "2024-04-09T14:20:00.52Z",
///                     "name": "event1DataPoint1",
///                 },
///                 {
///                     "data_point_configuration": "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                     "data_source": "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt7",
///                     "last_updated_on": "2024-04-09T14:20:00.52Z",
///                     "name": "event1DataPoint2",
///                 },
///             ],
///             "destinations": [{
///                 "configuration": {
///                     "qos": azure_native.deviceregistry.MqttDestinationQos.QOS0,
///                     "retain": azure_native.deviceregistry.TopicRetainType.KEEP,
///                     "topic": "/contoso/testEvent1",
///                     "ttl": float(7200),
///                 },
///                 "target": "Mqtt",
///             }],
///             "event_configuration": "{\"publishingInterval\":7,\"samplingInterval\":1,\"queueSize\":8}",
///             "event_notifier": "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3",
///             "last_updated_on": "2024-04-09T14:20:00.52Z",
///             "name": "event1",
///             "type_ref": "event1Ref",
///         },
///         {
///             "data_points": [
///                 {
///                     "data_point_configuration": "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                     "data_source": "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt9",
///                     "last_updated_on": "2024-04-09T14:20:00.52Z",
///                     "name": "event2DataPoint1",
///                 },
///                 {
///                     "data_point_configuration": "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///                     "data_source": "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt10",
///                     "last_updated_on": "2024-04-09T14:20:00.52Z",
///                     "name": "event2DataPoint2",
///                 },
///             ],
///             "destinations": [{
///                 "configuration": {
///                     "path": "/tmp/event2",
///                 },
///                 "target": "Storage",
///             }],
///             "event_configuration": "{\"publishingInterval\":7,\"samplingInterval\":8,\"queueSize\":4}",
///             "event_notifier": "nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4",
///             "last_updated_on": "2024-04-09T14:20:00.52Z",
///             "name": "event2",
///             "type_ref": "event2Ref",
///         },
///     ],
///     extended_location={
///         "name": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///         "type": "CustomLocation",
///     },
///     hardware_revision="1.0",
///     location="West Europe",
///     management_groups=[{
///         "actions": [
///             {
///                 "action_configuration": "{\"retryCount\":5,\"retryBackoffInterval\":5}",
///                 "action_type": azure_native.deviceregistry.NamespaceDiscoveredManagementActionType.CALL,
///                 "last_updated_on": "2024-04-09T14:20:00.52Z",
///                 "name": "action1",
///                 "target_uri": "/onvif/device_service?ONVIFProfile=Profile1",
///                 "timeout_in_seconds": 60,
///                 "topic": "/contoso/managementGroup1/action1",
///                 "type_ref": "action1TypeRef",
///             },
///             {
///                 "action_configuration": "{\"retryCount\":5,\"retryBackoffInterval\":5}",
///                 "action_type": azure_native.deviceregistry.NamespaceDiscoveredManagementActionType.CALL,
///                 "last_updated_on": "2024-04-09T14:20:00.52Z",
///                 "name": "action2",
///                 "target_uri": "/onvif/device_service?ONVIFProfile=Profile2",
///                 "timeout_in_seconds": 60,
///                 "topic": "/contoso/managementGroup1/action2",
///                 "type_ref": "action2TypeRef",
///             },
///         ],
///         "default_timeout_in_seconds": 100,
///         "default_topic": "/contoso/managementGroup1",
///         "last_updated_on": "2024-04-09T14:20:00.52Z",
///         "management_group_configuration": "{\"retryCount\":10,\"retryBackoffInterval\":15}",
///         "name": "managementGroup1",
///         "type_ref": "managementGroup1TypeRef",
///     }],
///     manufacturer="Contoso",
///     manufacturer_uri="https://www.contoso.com/manufacturerUri",
///     model="ContosoModel",
///     namespace_name="my-namespace-1",
///     product_code="SA34VDG",
///     resource_group_name="myResourceGroup",
///     serial_number="64-103816-519918-8",
///     software_revision="2.0",
///     streams=[
///         {
///             "destinations": [{
///                 "configuration": {
///                     "path": "/tmp/stream1",
///                 },
///                 "target": "Storage",
///             }],
///             "last_updated_on": "2024-04-09T14:20:00.52Z",
///             "name": "stream1",
///             "stream_configuration": "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///             "type_ref": "stream1TypeRef",
///         },
///         {
///             "destinations": [{
///                 "configuration": {
///                     "qos": azure_native.deviceregistry.MqttDestinationQos.QOS0,
///                     "retain": azure_native.deviceregistry.TopicRetainType.NEVER,
///                     "topic": "/contoso/testStream2",
///                     "ttl": float(7200),
///                 },
///                 "target": "Mqtt",
///             }],
///             "last_updated_on": "2024-04-09T14:20:00.52Z",
///             "name": "stream2",
///             "stream_configuration": "{\"publishingInterval\":8,\"samplingInterval\":8,\"queueSize\":4}",
///             "type_ref": "stream2TypeRef",
///         },
///     ],
///     tags={
///         "site": "building-1",
///     },
///     version=float(73766))
///
/// ```
///
/// ```yaml
/// resources:
///   namespaceDiscoveredAsset:
///     type: azure-native:deviceregistry:NamespaceDiscoveredAsset
///     properties:
///       assetTypeRefs:
///         - myAssetTypeRef1
///         - myAssetTypeRef2
///       attributes:
///         floor: '1'
///       datasets:
///         - dataPoints:
///             - dataPointConfiguration: '{"publishingInterval":8,"samplingInterval":8,"queueSize":4}'
///               dataSource: nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3
///               lastUpdatedOn: 2024-04-09T14:20:00.52Z
///               name: dataset1DataPoint1
///               typeRef: dataset1DataPoint1TypeRef
///             - dataPointConfiguration: '{"publishingInterval":8,"samplingInterval":8,"queueSize":4}'
///               dataSource: nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4
///               lastUpdatedOn: 2024-04-09T14:20:00.52Z
///               name: dataset1DataPoint2
///               typeRef: dataset1DataPoint2TypeRef
///           dataSource: nsu=http://microsoft.com/Opc/OpcPlc/Boiler;i=5
///           datasetConfiguration: '{"publishingInterval":10,"samplingInterval":15,"queueSize":20}'
///           destinations:
///             - configuration:
///                 key: dataset1
///               target: BrokerStateStore
///           lastUpdatedOn: 2024-04-09T14:20:00.52Z
///           name: dataset1
///           typeRef: dataset1TypeRef
///       defaultDatasetsConfiguration: '{"publishingInterval":10,"samplingInterval":15,"queueSize":20}'
///       defaultDatasetsDestinations:
///         - configuration:
///             key: defaultValue
///           target: BrokerStateStore
///       defaultEventsConfiguration: '{"publishingInterval":10,"samplingInterval":15,"queueSize":20}'
///       defaultEventsDestinations:
///         - configuration:
///             path: /tmp
///           target: Storage
///       defaultManagementGroupsConfiguration: '{"retryCount":10,"retryBackoffInterval":15}'
///       defaultStreamsConfiguration: '{"publishingInterval":10,"samplingInterval":15,"queueSize":20}'
///       defaultStreamsDestinations:
///         - configuration:
///             qos: Qos0
///             retain: Never
///             topic: /contoso/test
///             ttl: 3600
///           target: Mqtt
///       deviceRef:
///         deviceName: myDevice
///         endpointName: opcuaendpointname
///       discoveredAssetName: my-discoveredasset-1
///       discoveryId: 11111111-1111-1111-1111-111111111111
///       documentationUri: https://www.example.com/manual
///       events:
///         - dataPoints:
///             - dataPointConfiguration: '{"publishingInterval":8,"samplingInterval":8,"queueSize":4}'
///               dataSource: nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt6
///               lastUpdatedOn: 2024-04-09T14:20:00.52Z
///               name: event1DataPoint1
///             - dataPointConfiguration: '{"publishingInterval":8,"samplingInterval":8,"queueSize":4}'
///               dataSource: nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt7
///               lastUpdatedOn: 2024-04-09T14:20:00.52Z
///               name: event1DataPoint2
///           destinations:
///             - configuration:
///                 qos: Qos0
///                 retain: Keep
///                 topic: /contoso/testEvent1
///                 ttl: 7200
///               target: Mqtt
///           eventConfiguration: '{"publishingInterval":7,"samplingInterval":1,"queueSize":8}'
///           eventNotifier: nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt3
///           lastUpdatedOn: 2024-04-09T14:20:00.52Z
///           name: event1
///           typeRef: event1Ref
///         - dataPoints:
///             - dataPointConfiguration: '{"publishingInterval":8,"samplingInterval":8,"queueSize":4}'
///               dataSource: nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt9
///               lastUpdatedOn: 2024-04-09T14:20:00.52Z
///               name: event2DataPoint1
///             - dataPointConfiguration: '{"publishingInterval":8,"samplingInterval":8,"queueSize":4}'
///               dataSource: nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt10
///               lastUpdatedOn: 2024-04-09T14:20:00.52Z
///               name: event2DataPoint2
///           destinations:
///             - configuration:
///                 path: /tmp/event2
///               target: Storage
///           eventConfiguration: '{"publishingInterval":7,"samplingInterval":8,"queueSize":4}'
///           eventNotifier: nsu=http://microsoft.com/Opc/OpcPlc/;s=FastUInt4
///           lastUpdatedOn: 2024-04-09T14:20:00.52Z
///           name: event2
///           typeRef: event2Ref
///       extendedLocation:
///         name: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1
///         type: CustomLocation
///       hardwareRevision: '1.0'
///       location: West Europe
///       managementGroups:
///         - actions:
///             - actionConfiguration: '{"retryCount":5,"retryBackoffInterval":5}'
///               actionType: Call
///               lastUpdatedOn: 2024-04-09T14:20:00.52Z
///               name: action1
///               targetUri: /onvif/device_service?ONVIFProfile=Profile1
///               timeoutInSeconds: 60
///               topic: /contoso/managementGroup1/action1
///               typeRef: action1TypeRef
///             - actionConfiguration: '{"retryCount":5,"retryBackoffInterval":5}'
///               actionType: Call
///               lastUpdatedOn: 2024-04-09T14:20:00.52Z
///               name: action2
///               targetUri: /onvif/device_service?ONVIFProfile=Profile2
///               timeoutInSeconds: 60
///               topic: /contoso/managementGroup1/action2
///               typeRef: action2TypeRef
///           defaultTimeoutInSeconds: 100
///           defaultTopic: /contoso/managementGroup1
///           lastUpdatedOn: 2024-04-09T14:20:00.52Z
///           managementGroupConfiguration: '{"retryCount":10,"retryBackoffInterval":15}'
///           name: managementGroup1
///           typeRef: managementGroup1TypeRef
///       manufacturer: Contoso
///       manufacturerUri: https://www.contoso.com/manufacturerUri
///       model: ContosoModel
///       namespaceName: my-namespace-1
///       productCode: SA34VDG
///       resourceGroupName: myResourceGroup
///       serialNumber: 64-103816-519918-8
///       softwareRevision: '2.0'
///       streams:
///         - destinations:
///             - configuration:
///                 path: /tmp/stream1
///               target: Storage
///           lastUpdatedOn: 2024-04-09T14:20:00.52Z
///           name: stream1
///           streamConfiguration: '{"publishingInterval":8,"samplingInterval":8,"queueSize":4}'
///           typeRef: stream1TypeRef
///         - destinations:
///             - configuration:
///                 qos: Qos0
///                 retain: Never
///                 topic: /contoso/testStream2
///                 ttl: 7200
///               target: Mqtt
///           lastUpdatedOn: 2024-04-09T14:20:00.52Z
///           name: stream2
///           streamConfiguration: '{"publishingInterval":8,"samplingInterval":8,"queueSize":4}'
///           typeRef: stream2TypeRef
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
/// $ pulumi import azure-native:deviceregistry:NamespaceDiscoveredAsset my-discoveredasset-1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DeviceRegistry/namespaces/{namespaceName}/discoveredAssets/{discoveredAssetName}
/// ```
class NamespaceDiscoveredAsset extends pulumi.CustomResource {
  /// URIs or type definition IDs.
  late final pulumi.Output<List<String>?> assetTypeRefs;
  /// A set of key-value pairs that contain custom attributes.
  late final pulumi.Output<dynamic> attributes;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Array of datasets that are part of the asset. Each dataset spec describes the data points that make up the set.
  late final pulumi.Output<List<NamespaceDiscoveredDatasetResponse>?> datasets;
  /// Stringified JSON that contains connector-specific default configuration for all datasets. Each dataset can have its own configuration that overrides the default settings here.
  late final pulumi.Output<String?> defaultDatasetsConfiguration;
  /// Default destinations for a dataset.
  late final pulumi.Output<List<dynamic>?> defaultDatasetsDestinations;
  /// Stringified JSON that contains connector-specific default configuration for all events. Each event can have its own configuration that overrides the default settings here.
  late final pulumi.Output<String?> defaultEventsConfiguration;
  /// Default destinations for an event.
  late final pulumi.Output<List<dynamic>?> defaultEventsDestinations;
  /// Stringified JSON that contains connector-specific default configuration for all management groups. Each management group can have its own configuration that overrides the default settings here.
  late final pulumi.Output<String?> defaultManagementGroupsConfiguration;
  /// Stringified JSON that contains connector-specific default configuration for all streams. Each stream can have its own configuration that overrides the default settings here.
  late final pulumi.Output<String?> defaultStreamsConfiguration;
  /// Default destinations for a stream.
  late final pulumi.Output<List<dynamic>?> defaultStreamsDestinations;
  /// Reference to the device that provides data for this asset. Must provide device name & endpoint on the device to use.
  late final pulumi.Output<DeviceRefResponse> deviceRef;
  /// Identifier used to detect changes in the asset.
  late final pulumi.Output<String> discoveryId;
  /// Asset documentation reference.
  late final pulumi.Output<String?> documentationUri;
  /// Array of events that are part of the asset. Each event can have per-event configuration.
  late final pulumi.Output<List<NamespaceDiscoveredEventResponse>?> events;
  /// The extended location.
  late final pulumi.Output<ExtendedLocationResponse> extendedLocation;
  /// Asset hardware revision number.
  late final pulumi.Output<String?> hardwareRevision;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Array of management groups that are part of the asset. Each management group can have a per-group configuration.
  late final pulumi.Output<List<NamespaceDiscoveredManagementGroupResponse>?> managementGroups;
  /// Asset manufacturer.
  late final pulumi.Output<String?> manufacturer;
  /// Asset manufacturer URI.
  late final pulumi.Output<String?> manufacturerUri;
  /// Asset model.
  late final pulumi.Output<String?> model;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Asset product code.
  late final pulumi.Output<String?> productCode;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Asset serial number.
  late final pulumi.Output<String?> serialNumber;
  /// Asset software revision number.
  late final pulumi.Output<String?> softwareRevision;
  /// Array of streams that are part of the asset. Each stream can have a per-stream configuration.
  late final pulumi.Output<List<NamespaceDiscoveredStreamResponse>?> streams;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// An integer that is incremented each time the resource is modified.
  late final pulumi.Output<double> version;

  /// Creates a new [NamespaceDiscoveredAsset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NamespaceDiscoveredAsset]. {@macro pulumi_deviceregistry_namespace_discovered_asset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NamespaceDiscoveredAsset(
    String name, {
    NamespaceDiscoveredAssetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:deviceregistry:NamespaceDiscoveredAsset',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assetTypeRefs = registerOutput<List<String>?>('assetTypeRefs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    attributes = registerOutput<dynamic>('attributes');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    datasets = registerOutput<List<NamespaceDiscoveredDatasetResponse>?>('datasets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NamespaceDiscoveredDatasetResponse>(guardedValue, (value) => NamespaceDiscoveredDatasetResponse.fromMap((value as Map).cast<String, dynamic>())); });
    defaultDatasetsConfiguration = registerOutput<String?>('defaultDatasetsConfiguration');
    defaultDatasetsDestinations = registerOutput<List<dynamic>?>('defaultDatasetsDestinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    defaultEventsConfiguration = registerOutput<String?>('defaultEventsConfiguration');
    defaultEventsDestinations = registerOutput<List<dynamic>?>('defaultEventsDestinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    defaultManagementGroupsConfiguration = registerOutput<String?>('defaultManagementGroupsConfiguration');
    defaultStreamsConfiguration = registerOutput<String?>('defaultStreamsConfiguration');
    defaultStreamsDestinations = registerOutput<List<dynamic>?>('defaultStreamsDestinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    deviceRef = registerOutput<DeviceRefResponse>('deviceRef', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeviceRefResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    discoveryId = registerOutput<String>('discoveryId');
    documentationUri = registerOutput<String?>('documentationUri');
    events = registerOutput<List<NamespaceDiscoveredEventResponse>?>('events', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NamespaceDiscoveredEventResponse>(guardedValue, (value) => NamespaceDiscoveredEventResponse.fromMap((value as Map).cast<String, dynamic>())); });
    extendedLocation = registerOutput<ExtendedLocationResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hardwareRevision = registerOutput<String?>('hardwareRevision');
    location = registerOutput<String>('location');
    managementGroups = registerOutput<List<NamespaceDiscoveredManagementGroupResponse>?>('managementGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NamespaceDiscoveredManagementGroupResponse>(guardedValue, (value) => NamespaceDiscoveredManagementGroupResponse.fromMap((value as Map).cast<String, dynamic>())); });
    manufacturer = registerOutput<String?>('manufacturer');
    manufacturerUri = registerOutput<String?>('manufacturerUri');
    model = registerOutput<String?>('model');
    this.name = registerOutput<String>('name');
    productCode = registerOutput<String?>('productCode');
    provisioningState = registerOutput<String>('provisioningState');
    serialNumber = registerOutput<String?>('serialNumber');
    softwareRevision = registerOutput<String?>('softwareRevision');
    streams = registerOutput<List<NamespaceDiscoveredStreamResponse>?>('streams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NamespaceDiscoveredStreamResponse>(guardedValue, (value) => NamespaceDiscoveredStreamResponse.fromMap((value as Map).cast<String, dynamic>())); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    version = registerOutput<double>('version');
  }

  /// Creates a typed reference to an existing [NamespaceDiscoveredAsset] resource.
  NamespaceDiscoveredAsset.reference(String urn)
    : super(
        'azure-native:deviceregistry:NamespaceDiscoveredAsset',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    assetTypeRefs = registerOutput<List<String>?>('assetTypeRefs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    attributes = registerOutput<dynamic>('attributes');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    datasets = registerOutput<List<NamespaceDiscoveredDatasetResponse>?>('datasets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NamespaceDiscoveredDatasetResponse>(guardedValue, (value) => NamespaceDiscoveredDatasetResponse.fromMap((value as Map).cast<String, dynamic>())); });
    defaultDatasetsConfiguration = registerOutput<String?>('defaultDatasetsConfiguration');
    defaultDatasetsDestinations = registerOutput<List<dynamic>?>('defaultDatasetsDestinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    defaultEventsConfiguration = registerOutput<String?>('defaultEventsConfiguration');
    defaultEventsDestinations = registerOutput<List<dynamic>?>('defaultEventsDestinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    defaultManagementGroupsConfiguration = registerOutput<String?>('defaultManagementGroupsConfiguration');
    defaultStreamsConfiguration = registerOutput<String?>('defaultStreamsConfiguration');
    defaultStreamsDestinations = registerOutput<List<dynamic>?>('defaultStreamsDestinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    deviceRef = registerOutput<DeviceRefResponse>('deviceRef', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeviceRefResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    discoveryId = registerOutput<String>('discoveryId');
    documentationUri = registerOutput<String?>('documentationUri');
    events = registerOutput<List<NamespaceDiscoveredEventResponse>?>('events', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NamespaceDiscoveredEventResponse>(guardedValue, (value) => NamespaceDiscoveredEventResponse.fromMap((value as Map).cast<String, dynamic>())); });
    extendedLocation = registerOutput<ExtendedLocationResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hardwareRevision = registerOutput<String?>('hardwareRevision');
    location = registerOutput<String>('location');
    managementGroups = registerOutput<List<NamespaceDiscoveredManagementGroupResponse>?>('managementGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NamespaceDiscoveredManagementGroupResponse>(guardedValue, (value) => NamespaceDiscoveredManagementGroupResponse.fromMap((value as Map).cast<String, dynamic>())); });
    manufacturer = registerOutput<String?>('manufacturer');
    manufacturerUri = registerOutput<String?>('manufacturerUri');
    model = registerOutput<String?>('model');
    this.name = registerOutput<String>('name');
    productCode = registerOutput<String?>('productCode');
    provisioningState = registerOutput<String>('provisioningState');
    serialNumber = registerOutput<String?>('serialNumber');
    softwareRevision = registerOutput<String?>('softwareRevision');
    streams = registerOutput<List<NamespaceDiscoveredStreamResponse>?>('streams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NamespaceDiscoveredStreamResponse>(guardedValue, (value) => NamespaceDiscoveredStreamResponse.fromMap((value as Map).cast<String, dynamic>())); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    version = registerOutput<double>('version');
  }
}
