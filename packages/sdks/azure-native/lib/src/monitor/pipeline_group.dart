import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_manager_common_types_extended_location_response.dart';
import 'pipeline_group_args.dart';
import 'pipeline_group_properties_response.dart';
import 'system_data_response.dart';

/// A pipeline group definition.
///
/// Uses Azure REST API version 2024-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-10-01-preview.
///
/// Other available API versions: 2023-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native monitor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a PipelineGroup instance using UDP receiver
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pipelineGroup = new AzureNative.Monitor.PipelineGroup("pipelineGroup", new()
///     {
///         ExtendedLocation = new AzureNative.Monitor.Inputs.AzureResourceManagerCommonTypesExtendedLocationArgs
///         {
///             Name = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/myTestCustomLocation",
///             Type = AzureNative.Monitor.ExtendedLocationType.CustomLocation,
///         },
///         Location = "eastus2",
///         PipelineGroupName = "plGroup1",
///         Properties = new AzureNative.Monitor.Inputs.PipelineGroupPropertiesArgs
///         {
///             Exporters = new[]
///             {
///                 new AzureNative.Monitor.Inputs.ExporterArgs
///                 {
///                     AzureMonitorWorkspaceLogs = new AzureNative.Monitor.Inputs.AzureMonitorWorkspaceLogsExporterArgs
///                     {
///                         Api = new AzureNative.Monitor.Inputs.AzureMonitorWorkspaceLogsApiConfigArgs
///                         {
///                             DataCollectionEndpointUrl = "https://logs-myingestion-eb0s.eastus-1.ingest.monitor.azure.com",
///                             DataCollectionRule = "dcr-00000000000000000000000000000000",
///                             Schema = new AzureNative.Monitor.Inputs.SchemaMapArgs
///                             {
///                                 RecordMap = new[]
///                                 {
///                                     new AzureNative.Monitor.Inputs.RecordMapArgs
///                                     {
///                                         From = "body",
///                                         To = "Body",
///                                     },
///                                     new AzureNative.Monitor.Inputs.RecordMapArgs
///                                     {
///                                         From = "severity_text",
///                                         To = "SeverityText",
///                                     },
///                                     new AzureNative.Monitor.Inputs.RecordMapArgs
///                                     {
///                                         From = "time_unix_nano",
///                                         To = "TimeGenerated",
///                                     },
///                                 },
///                             },
///                             Stream = "Custom-MyTableRawData_CL",
///                         },
///                         Concurrency = new AzureNative.Monitor.Inputs.ConcurrencyConfigurationArgs
///                         {
///                             BatchQueueSize = 100,
///                             WorkerCount = 4,
///                         },
///                     },
///                     Name = "my-workspace-logs-exporter1",
///                     Type = AzureNative.Monitor.ExporterType.AzureMonitorWorkspaceLogs,
///                 },
///             },
///             Processors = new() { },
///             Receivers = new[]
///             {
///                 new AzureNative.Monitor.Inputs.ReceiverArgs
///                 {
///                     Name = "udp-receiver1",
///                     Type = AzureNative.Monitor.ReceiverType.UDP,
///                     Udp = new AzureNative.Monitor.Inputs.UdpReceiverArgs
///                     {
///                         Encoding = AzureNative.Monitor.StreamEncodingType.Utf_8,
///                         Endpoint = "0.0.0.0:518",
///                     },
///                 },
///             },
///             Service = new AzureNative.Monitor.Inputs.ServiceArgs
///             {
///                 Pipelines = new[]
///                 {
///                     new AzureNative.Monitor.Inputs.PipelineArgs
///                     {
///                         Exporters = new[]
///                         {
///                             "my-workspace-logs-exporter1",
///                         },
///                         Name = "MyPipelineForLogs1",
///                         Processors = new() { },
///                         Receivers = new[]
///                         {
///                             "udp-receiver1",
///                         },
///                         Type = AzureNative.Monitor.PipelineType.Logs,
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         Tags =
///         {
///             { "tag1", "A" },
///             { "tag2", "B" },
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
/// 	monitor "github.com/pulumi/pulumi-azure-native-sdk/monitor/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := monitor.NewPipelineGroup(ctx, "pipelineGroup", &monitor.PipelineGroupArgs{
/// 			ExtendedLocation: &monitor.AzureResourceManagerCommonTypesExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/myTestCustomLocation"),
/// 				Type: pulumi.String(monitor.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			Location:          pulumi.String("eastus2"),
/// 			PipelineGroupName: pulumi.String("plGroup1"),
/// 			Properties: &monitor.PipelineGroupPropertiesArgs{
/// 				Exporters: monitor.ExporterArray{
/// 					&monitor.ExporterArgs{
/// 						AzureMonitorWorkspaceLogs: &monitor.AzureMonitorWorkspaceLogsExporterArgs{
/// 							Api: &monitor.AzureMonitorWorkspaceLogsApiConfigArgs{
/// 								DataCollectionEndpointUrl: pulumi.String("https://logs-myingestion-eb0s.eastus-1.ingest.monitor.azure.com"),
/// 								DataCollectionRule:        pulumi.String("dcr-00000000000000000000000000000000"),
/// 								Schema: &monitor.SchemaMapArgs{
/// 									RecordMap: monitor.RecordMapArray{
/// 										&monitor.RecordMapArgs{
/// 											From: pulumi.String("body"),
/// 											To:   pulumi.String("Body"),
/// 										},
/// 										&monitor.RecordMapArgs{
/// 											From: pulumi.String("severity_text"),
/// 											To:   pulumi.String("SeverityText"),
/// 										},
/// 										&monitor.RecordMapArgs{
/// 											From: pulumi.String("time_unix_nano"),
/// 											To:   pulumi.String("TimeGenerated"),
/// 										},
/// 									},
/// 								},
/// 								Stream: pulumi.String("Custom-MyTableRawData_CL"),
/// 							},
/// 							Concurrency: &monitor.ConcurrencyConfigurationArgs{
/// 								BatchQueueSize: pulumi.Int(100),
/// 								WorkerCount:    pulumi.Int(4),
/// 							},
/// 						},
/// 						Name: pulumi.String("my-workspace-logs-exporter1"),
/// 						Type: pulumi.String(monitor.ExporterTypeAzureMonitorWorkspaceLogs),
/// 					},
/// 				},
/// 				Processors: monitor.ProcessorArray{},
/// 				Receivers: monitor.ReceiverArray{
/// 					&monitor.ReceiverArgs{
/// 						Name: pulumi.String("udp-receiver1"),
/// 						Type: pulumi.String(monitor.ReceiverTypeUDP),
/// 						Udp: &monitor.UdpReceiverArgs{
/// 							Encoding: pulumi.String(monitor.StreamEncodingType_Utf_8),
/// 							Endpoint: pulumi.String("0.0.0.0:518"),
/// 						},
/// 					},
/// 				},
/// 				Service: &monitor.ServiceArgs{
/// 					Pipelines: monitor.PipelineArray{
/// 						&monitor.PipelineArgs{
/// 							Exporters: pulumi.StringArray{
/// 								pulumi.String("my-workspace-logs-exporter1"),
/// 							},
/// 							Name:       pulumi.String("MyPipelineForLogs1"),
/// 							Processors: pulumi.StringArray{},
/// 							Receivers: pulumi.StringArray{
/// 								pulumi.String("udp-receiver1"),
/// 							},
/// 							Type: pulumi.String(monitor.PipelineTypeLogs),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("A"),
/// 				"tag2": pulumi.String("B"),
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
/// import com.pulumi.azurenative.monitor.PipelineGroup;
/// import com.pulumi.azurenative.monitor.PipelineGroupArgs;
/// import com.pulumi.azurenative.monitor.inputs.AzureResourceManagerCommonTypesExtendedLocationArgs;
/// import com.pulumi.azurenative.monitor.inputs.PipelineGroupPropertiesArgs;
/// import com.pulumi.azurenative.monitor.inputs.ServiceArgs;
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
///         var pipelineGroup = new PipelineGroup("pipelineGroup", PipelineGroupArgs.builder()
///             .extendedLocation(AzureResourceManagerCommonTypesExtendedLocationArgs.builder()
///                 .name("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/myTestCustomLocation")
///                 .type("CustomLocation")
///                 .build())
///             .location("eastus2")
///             .pipelineGroupName("plGroup1")
///             .properties(PipelineGroupPropertiesArgs.builder()
///                 .exporters(ExporterArgs.builder()
///                     .azureMonitorWorkspaceLogs(AzureMonitorWorkspaceLogsExporterArgs.builder()
///                         .api(AzureMonitorWorkspaceLogsApiConfigArgs.builder()
///                             .dataCollectionEndpointUrl("https://logs-myingestion-eb0s.eastus-1.ingest.monitor.azure.com")
///                             .dataCollectionRule("dcr-00000000000000000000000000000000")
///                             .schema(SchemaMapArgs.builder()
///                                 .recordMap(
///                                     RecordMapArgs.builder()
///                                         .from("body")
///                                         .to("Body")
///                                         .build(),
///                                     RecordMapArgs.builder()
///                                         .from("severity_text")
///                                         .to("SeverityText")
///                                         .build(),
///                                     RecordMapArgs.builder()
///                                         .from("time_unix_nano")
///                                         .to("TimeGenerated")
///                                         .build())
///                                 .build())
///                             .stream("Custom-MyTableRawData_CL")
///                             .build())
///                         .concurrency(ConcurrencyConfigurationArgs.builder()
///                             .batchQueueSize(100)
///                             .workerCount(4)
///                             .build())
///                         .build())
///                     .name("my-workspace-logs-exporter1")
///                     .type("AzureMonitorWorkspaceLogs")
///                     .build())
///                 .processors()
///                 .receivers(ReceiverArgs.builder()
///                     .name("udp-receiver1")
///                     .type("UDP")
///                     .udp(UdpReceiverArgs.builder()
///                         .encoding("utf-8")
///                         .endpoint("0.0.0.0:518")
///                         .build())
///                     .build())
///                 .service(ServiceArgs.builder()
///                     .pipelines(PipelineArgs.builder()
///                         .exporters("my-workspace-logs-exporter1")
///                         .name("MyPipelineForLogs1")
///                         .processors()
///                         .receivers("udp-receiver1")
///                         .type("Logs")
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "A"),
///                 Map.entry("tag2", "B")
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
/// const pipelineGroup = new azure_native.monitor.PipelineGroup("pipelineGroup", {
///     extendedLocation: {
///         name: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/myTestCustomLocation",
///         type: azure_native.monitor.ExtendedLocationType.CustomLocation,
///     },
///     location: "eastus2",
///     pipelineGroupName: "plGroup1",
///     properties: {
///         exporters: [{
///             azureMonitorWorkspaceLogs: {
///                 api: {
///                     dataCollectionEndpointUrl: "https://logs-myingestion-eb0s.eastus-1.ingest.monitor.azure.com",
///                     dataCollectionRule: "dcr-00000000000000000000000000000000",
///                     schema: {
///                         recordMap: [
///                             {
///                                 from: "body",
///                                 to: "Body",
///                             },
///                             {
///                                 from: "severity_text",
///                                 to: "SeverityText",
///                             },
///                             {
///                                 from: "time_unix_nano",
///                                 to: "TimeGenerated",
///                             },
///                         ],
///                     },
///                     stream: "Custom-MyTableRawData_CL",
///                 },
///                 concurrency: {
///                     batchQueueSize: 100,
///                     workerCount: 4,
///                 },
///             },
///             name: "my-workspace-logs-exporter1",
///             type: azure_native.monitor.ExporterType.AzureMonitorWorkspaceLogs,
///         }],
///         processors: [],
///         receivers: [{
///             name: "udp-receiver1",
///             type: azure_native.monitor.ReceiverType.UDP,
///             udp: {
///                 encoding: azure_native.monitor.StreamEncodingType.Utf_8,
///                 endpoint: "0.0.0.0:518",
///             },
///         }],
///         service: {
///             pipelines: [{
///                 exporters: ["my-workspace-logs-exporter1"],
///                 name: "MyPipelineForLogs1",
///                 processors: [],
///                 receivers: ["udp-receiver1"],
///                 type: azure_native.monitor.PipelineType.Logs,
///             }],
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     tags: {
///         tag1: "A",
///         tag2: "B",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// pipeline_group = azure_native.monitor.PipelineGroup("pipelineGroup",
///     extended_location={
///         "name": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/myTestCustomLocation",
///         "type": azure_native.monitor.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     location="eastus2",
///     pipeline_group_name="plGroup1",
///     properties={
///         "exporters": [{
///             "azure_monitor_workspace_logs": {
///                 "api": {
///                     "data_collection_endpoint_url": "https://logs-myingestion-eb0s.eastus-1.ingest.monitor.azure.com",
///                     "data_collection_rule": "dcr-00000000000000000000000000000000",
///                     "schema": {
///                         "record_map": [
///                             {
///                                 "from_": "body",
///                                 "to": "Body",
///                             },
///                             {
///                                 "from_": "severity_text",
///                                 "to": "SeverityText",
///                             },
///                             {
///                                 "from_": "time_unix_nano",
///                                 "to": "TimeGenerated",
///                             },
///                         ],
///                     },
///                     "stream": "Custom-MyTableRawData_CL",
///                 },
///                 "concurrency": {
///                     "batch_queue_size": 100,
///                     "worker_count": 4,
///                 },
///             },
///             "name": "my-workspace-logs-exporter1",
///             "type": azure_native.monitor.ExporterType.AZURE_MONITOR_WORKSPACE_LOGS,
///         }],
///         "processors": [],
///         "receivers": [{
///             "name": "udp-receiver1",
///             "type": azure_native.monitor.ReceiverType.UDP,
///             "udp": {
///                 "encoding": azure_native.monitor.StreamEncodingType.UTF_8,
///                 "endpoint": "0.0.0.0:518",
///             },
///         }],
///         "service": {
///             "pipelines": [{
///                 "exporters": ["my-workspace-logs-exporter1"],
///                 "name": "MyPipelineForLogs1",
///                 "processors": [],
///                 "receivers": ["udp-receiver1"],
///                 "type": azure_native.monitor.PipelineType.LOGS,
///             }],
///         },
///     },
///     resource_group_name="myResourceGroup",
///     tags={
///         "tag1": "A",
///         "tag2": "B",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   pipelineGroup:
///     type: azure-native:monitor:PipelineGroup
///     properties:
///       extendedLocation:
///         name: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/myTestCustomLocation
///         type: CustomLocation
///       location: eastus2
///       pipelineGroupName: plGroup1
///       properties:
///         exporters:
///           - azureMonitorWorkspaceLogs:
///               api:
///                 dataCollectionEndpointUrl: https://logs-myingestion-eb0s.eastus-1.ingest.monitor.azure.com
///                 dataCollectionRule: dcr-00000000000000000000000000000000
///                 schema:
///                   recordMap:
///                     - from: body
///                       to: Body
///                     - from: severity_text
///                       to: SeverityText
///                     - from: time_unix_nano
///                       to: TimeGenerated
///                 stream: Custom-MyTableRawData_CL
///               concurrency:
///                 batchQueueSize: 100
///                 workerCount: 4
///             name: my-workspace-logs-exporter1
///             type: AzureMonitorWorkspaceLogs
///         processors: []
///         receivers:
///           - name: udp-receiver1
///             type: UDP
///             udp:
///               encoding: utf-8
///               endpoint: 0.0.0.0:518
///         service:
///           pipelines:
///             - exporters:
///                 - my-workspace-logs-exporter1
///               name: MyPipelineForLogs1
///               processors: []
///               receivers:
///                 - udp-receiver1
///               type: Logs
///       resourceGroupName: myResourceGroup
///       tags:
///         tag1: A
///         tag2: B
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a PipelineGroup instance using a UDP receiver with json array mapper
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pipelineGroup = new AzureNative.Monitor.PipelineGroup("pipelineGroup", new()
///     {
///         ExtendedLocation = new AzureNative.Monitor.Inputs.AzureResourceManagerCommonTypesExtendedLocationArgs
///         {
///             Name = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/myTestCustomLocation",
///             Type = AzureNative.Monitor.ExtendedLocationType.CustomLocation,
///         },
///         Location = "eastus2",
///         PipelineGroupName = "plGroup1",
///         Properties = new AzureNative.Monitor.Inputs.PipelineGroupPropertiesArgs
///         {
///             Exporters = new[]
///             {
///                 new AzureNative.Monitor.Inputs.ExporterArgs
///                 {
///                     AzureMonitorWorkspaceLogs = new AzureNative.Monitor.Inputs.AzureMonitorWorkspaceLogsExporterArgs
///                     {
///                         Api = new AzureNative.Monitor.Inputs.AzureMonitorWorkspaceLogsApiConfigArgs
///                         {
///                             DataCollectionEndpointUrl = "https://logs-myingestion-eb0s.eastus-1.ingest.monitor.azure.com",
///                             DataCollectionRule = "dcr-00000000000000000000000000000000",
///                             Schema = new AzureNative.Monitor.Inputs.SchemaMapArgs
///                             {
///                                 RecordMap = new[]
///                                 {
///                                     new AzureNative.Monitor.Inputs.RecordMapArgs
///                                     {
///                                         From = "body",
///                                         To = "Body",
///                                     },
///                                     new AzureNative.Monitor.Inputs.RecordMapArgs
///                                     {
///                                         From = "severity_text",
///                                         To = "SeverityText",
///                                     },
///                                     new AzureNative.Monitor.Inputs.RecordMapArgs
///                                     {
///                                         From = "time_unix_nano",
///                                         To = "TimeGenerated",
///                                     },
///                                 },
///                             },
///                             Stream = "Custom-MyTableRawData_CL",
///                         },
///                         Concurrency = new AzureNative.Monitor.Inputs.ConcurrencyConfigurationArgs
///                         {
///                             BatchQueueSize = 100,
///                             WorkerCount = 4,
///                         },
///                     },
///                     Name = "my-workspace-logs-exporter1",
///                     Type = AzureNative.Monitor.ExporterType.AzureMonitorWorkspaceLogs,
///                 },
///             },
///             Processors = new() { },
///             Receivers = new[]
///             {
///                 new AzureNative.Monitor.Inputs.ReceiverArgs
///                 {
///                     Name = "udp-receiver1",
///                     Type = AzureNative.Monitor.ReceiverType.UDP,
///                     Udp = new AzureNative.Monitor.Inputs.UdpReceiverArgs
///                     {
///                         Encoding = AzureNative.Monitor.StreamEncodingType.Utf_8,
///                         Endpoint = "0.0.0.0:518",
///                         JsonArrayMapper = new AzureNative.Monitor.Inputs.JsonArrayMapperArgs
///                         {
///                             DestinationField = new AzureNative.Monitor.Inputs.JsonMapperDestinationFieldArgs
///                             {
///                                 Destination = AzureNative.Monitor.JsonMapperElement.Attributes,
///                             },
///                             Keys = new[]
///                             {
///                                 "key1",
///                                 "key2",
///                                 "key3",
///                             },
///                             SourceField = new AzureNative.Monitor.Inputs.JsonMapperSourceFieldArgs
///                             {
///                                 FieldName = "field1",
///                             },
///                         },
///                     },
///                 },
///             },
///             Service = new AzureNative.Monitor.Inputs.ServiceArgs
///             {
///                 Pipelines = new[]
///                 {
///                     new AzureNative.Monitor.Inputs.PipelineArgs
///                     {
///                         Exporters = new[]
///                         {
///                             "my-workspace-logs-exporter1",
///                         },
///                         Name = "MyPipelineForLogs1",
///                         Processors = new() { },
///                         Receivers = new[]
///                         {
///                             "udp-receiver1",
///                         },
///                         Type = AzureNative.Monitor.PipelineType.Logs,
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         Tags =
///         {
///             { "tag1", "A" },
///             { "tag2", "B" },
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
/// 	monitor "github.com/pulumi/pulumi-azure-native-sdk/monitor/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := monitor.NewPipelineGroup(ctx, "pipelineGroup", &monitor.PipelineGroupArgs{
/// 			ExtendedLocation: &monitor.AzureResourceManagerCommonTypesExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/myTestCustomLocation"),
/// 				Type: pulumi.String(monitor.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			Location:          pulumi.String("eastus2"),
/// 			PipelineGroupName: pulumi.String("plGroup1"),
/// 			Properties: &monitor.PipelineGroupPropertiesArgs{
/// 				Exporters: monitor.ExporterArray{
/// 					&monitor.ExporterArgs{
/// 						AzureMonitorWorkspaceLogs: &monitor.AzureMonitorWorkspaceLogsExporterArgs{
/// 							Api: &monitor.AzureMonitorWorkspaceLogsApiConfigArgs{
/// 								DataCollectionEndpointUrl: pulumi.String("https://logs-myingestion-eb0s.eastus-1.ingest.monitor.azure.com"),
/// 								DataCollectionRule:        pulumi.String("dcr-00000000000000000000000000000000"),
/// 								Schema: &monitor.SchemaMapArgs{
/// 									RecordMap: monitor.RecordMapArray{
/// 										&monitor.RecordMapArgs{
/// 											From: pulumi.String("body"),
/// 											To:   pulumi.String("Body"),
/// 										},
/// 										&monitor.RecordMapArgs{
/// 											From: pulumi.String("severity_text"),
/// 											To:   pulumi.String("SeverityText"),
/// 										},
/// 										&monitor.RecordMapArgs{
/// 											From: pulumi.String("time_unix_nano"),
/// 											To:   pulumi.String("TimeGenerated"),
/// 										},
/// 									},
/// 								},
/// 								Stream: pulumi.String("Custom-MyTableRawData_CL"),
/// 							},
/// 							Concurrency: &monitor.ConcurrencyConfigurationArgs{
/// 								BatchQueueSize: pulumi.Int(100),
/// 								WorkerCount:    pulumi.Int(4),
/// 							},
/// 						},
/// 						Name: pulumi.String("my-workspace-logs-exporter1"),
/// 						Type: pulumi.String(monitor.ExporterTypeAzureMonitorWorkspaceLogs),
/// 					},
/// 				},
/// 				Processors: monitor.ProcessorArray{},
/// 				Receivers: monitor.ReceiverArray{
/// 					&monitor.ReceiverArgs{
/// 						Name: pulumi.String("udp-receiver1"),
/// 						Type: pulumi.String(monitor.ReceiverTypeUDP),
/// 						Udp: &monitor.UdpReceiverArgs{
/// 							Encoding: pulumi.String(monitor.StreamEncodingType_Utf_8),
/// 							Endpoint: pulumi.String("0.0.0.0:518"),
/// 							JsonArrayMapper: &monitor.JsonArrayMapperArgs{
/// 								DestinationField: &monitor.JsonMapperDestinationFieldArgs{
/// 									Destination: pulumi.String(monitor.JsonMapperElementAttributes),
/// 								},
/// 								Keys: pulumi.StringArray{
/// 									pulumi.String("key1"),
/// 									pulumi.String("key2"),
/// 									pulumi.String("key3"),
/// 								},
/// 								SourceField: &monitor.JsonMapperSourceFieldArgs{
/// 									FieldName: pulumi.String("field1"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				Service: &monitor.ServiceArgs{
/// 					Pipelines: monitor.PipelineArray{
/// 						&monitor.PipelineArgs{
/// 							Exporters: pulumi.StringArray{
/// 								pulumi.String("my-workspace-logs-exporter1"),
/// 							},
/// 							Name:       pulumi.String("MyPipelineForLogs1"),
/// 							Processors: pulumi.StringArray{},
/// 							Receivers: pulumi.StringArray{
/// 								pulumi.String("udp-receiver1"),
/// 							},
/// 							Type: pulumi.String(monitor.PipelineTypeLogs),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("A"),
/// 				"tag2": pulumi.String("B"),
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
/// import com.pulumi.azurenative.monitor.PipelineGroup;
/// import com.pulumi.azurenative.monitor.PipelineGroupArgs;
/// import com.pulumi.azurenative.monitor.inputs.AzureResourceManagerCommonTypesExtendedLocationArgs;
/// import com.pulumi.azurenative.monitor.inputs.PipelineGroupPropertiesArgs;
/// import com.pulumi.azurenative.monitor.inputs.ServiceArgs;
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
///         var pipelineGroup = new PipelineGroup("pipelineGroup", PipelineGroupArgs.builder()
///             .extendedLocation(AzureResourceManagerCommonTypesExtendedLocationArgs.builder()
///                 .name("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/myTestCustomLocation")
///                 .type("CustomLocation")
///                 .build())
///             .location("eastus2")
///             .pipelineGroupName("plGroup1")
///             .properties(PipelineGroupPropertiesArgs.builder()
///                 .exporters(ExporterArgs.builder()
///                     .azureMonitorWorkspaceLogs(AzureMonitorWorkspaceLogsExporterArgs.builder()
///                         .api(AzureMonitorWorkspaceLogsApiConfigArgs.builder()
///                             .dataCollectionEndpointUrl("https://logs-myingestion-eb0s.eastus-1.ingest.monitor.azure.com")
///                             .dataCollectionRule("dcr-00000000000000000000000000000000")
///                             .schema(SchemaMapArgs.builder()
///                                 .recordMap(
///                                     RecordMapArgs.builder()
///                                         .from("body")
///                                         .to("Body")
///                                         .build(),
///                                     RecordMapArgs.builder()
///                                         .from("severity_text")
///                                         .to("SeverityText")
///                                         .build(),
///                                     RecordMapArgs.builder()
///                                         .from("time_unix_nano")
///                                         .to("TimeGenerated")
///                                         .build())
///                                 .build())
///                             .stream("Custom-MyTableRawData_CL")
///                             .build())
///                         .concurrency(ConcurrencyConfigurationArgs.builder()
///                             .batchQueueSize(100)
///                             .workerCount(4)
///                             .build())
///                         .build())
///                     .name("my-workspace-logs-exporter1")
///                     .type("AzureMonitorWorkspaceLogs")
///                     .build())
///                 .processors()
///                 .receivers(ReceiverArgs.builder()
///                     .name("udp-receiver1")
///                     .type("UDP")
///                     .udp(UdpReceiverArgs.builder()
///                         .encoding("utf-8")
///                         .endpoint("0.0.0.0:518")
///                         .jsonArrayMapper(JsonArrayMapperArgs.builder()
///                             .destinationField(JsonMapperDestinationFieldArgs.builder()
///                                 .destination("attributes")
///                                 .build())
///                             .keys(
///                                 "key1",
///                                 "key2",
///                                 "key3")
///                             .sourceField(JsonMapperSourceFieldArgs.builder()
///                                 .fieldName("field1")
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .service(ServiceArgs.builder()
///                     .pipelines(PipelineArgs.builder()
///                         .exporters("my-workspace-logs-exporter1")
///                         .name("MyPipelineForLogs1")
///                         .processors()
///                         .receivers("udp-receiver1")
///                         .type("Logs")
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "A"),
///                 Map.entry("tag2", "B")
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
/// const pipelineGroup = new azure_native.monitor.PipelineGroup("pipelineGroup", {
///     extendedLocation: {
///         name: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/myTestCustomLocation",
///         type: azure_native.monitor.ExtendedLocationType.CustomLocation,
///     },
///     location: "eastus2",
///     pipelineGroupName: "plGroup1",
///     properties: {
///         exporters: [{
///             azureMonitorWorkspaceLogs: {
///                 api: {
///                     dataCollectionEndpointUrl: "https://logs-myingestion-eb0s.eastus-1.ingest.monitor.azure.com",
///                     dataCollectionRule: "dcr-00000000000000000000000000000000",
///                     schema: {
///                         recordMap: [
///                             {
///                                 from: "body",
///                                 to: "Body",
///                             },
///                             {
///                                 from: "severity_text",
///                                 to: "SeverityText",
///                             },
///                             {
///                                 from: "time_unix_nano",
///                                 to: "TimeGenerated",
///                             },
///                         ],
///                     },
///                     stream: "Custom-MyTableRawData_CL",
///                 },
///                 concurrency: {
///                     batchQueueSize: 100,
///                     workerCount: 4,
///                 },
///             },
///             name: "my-workspace-logs-exporter1",
///             type: azure_native.monitor.ExporterType.AzureMonitorWorkspaceLogs,
///         }],
///         processors: [],
///         receivers: [{
///             name: "udp-receiver1",
///             type: azure_native.monitor.ReceiverType.UDP,
///             udp: {
///                 encoding: azure_native.monitor.StreamEncodingType.Utf_8,
///                 endpoint: "0.0.0.0:518",
///                 jsonArrayMapper: {
///                     destinationField: {
///                         destination: azure_native.monitor.JsonMapperElement.Attributes,
///                     },
///                     keys: [
///                         "key1",
///                         "key2",
///                         "key3",
///                     ],
///                     sourceField: {
///                         fieldName: "field1",
///                     },
///                 },
///             },
///         }],
///         service: {
///             pipelines: [{
///                 exporters: ["my-workspace-logs-exporter1"],
///                 name: "MyPipelineForLogs1",
///                 processors: [],
///                 receivers: ["udp-receiver1"],
///                 type: azure_native.monitor.PipelineType.Logs,
///             }],
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     tags: {
///         tag1: "A",
///         tag2: "B",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// pipeline_group = azure_native.monitor.PipelineGroup("pipelineGroup",
///     extended_location={
///         "name": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/myTestCustomLocation",
///         "type": azure_native.monitor.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     location="eastus2",
///     pipeline_group_name="plGroup1",
///     properties={
///         "exporters": [{
///             "azure_monitor_workspace_logs": {
///                 "api": {
///                     "data_collection_endpoint_url": "https://logs-myingestion-eb0s.eastus-1.ingest.monitor.azure.com",
///                     "data_collection_rule": "dcr-00000000000000000000000000000000",
///                     "schema": {
///                         "record_map": [
///                             {
///                                 "from_": "body",
///                                 "to": "Body",
///                             },
///                             {
///                                 "from_": "severity_text",
///                                 "to": "SeverityText",
///                             },
///                             {
///                                 "from_": "time_unix_nano",
///                                 "to": "TimeGenerated",
///                             },
///                         ],
///                     },
///                     "stream": "Custom-MyTableRawData_CL",
///                 },
///                 "concurrency": {
///                     "batch_queue_size": 100,
///                     "worker_count": 4,
///                 },
///             },
///             "name": "my-workspace-logs-exporter1",
///             "type": azure_native.monitor.ExporterType.AZURE_MONITOR_WORKSPACE_LOGS,
///         }],
///         "processors": [],
///         "receivers": [{
///             "name": "udp-receiver1",
///             "type": azure_native.monitor.ReceiverType.UDP,
///             "udp": {
///                 "encoding": azure_native.monitor.StreamEncodingType.UTF_8,
///                 "endpoint": "0.0.0.0:518",
///                 "json_array_mapper": {
///                     "destination_field": {
///                         "destination": azure_native.monitor.JsonMapperElement.ATTRIBUTES,
///                     },
///                     "keys": [
///                         "key1",
///                         "key2",
///                         "key3",
///                     ],
///                     "source_field": {
///                         "field_name": "field1",
///                     },
///                 },
///             },
///         }],
///         "service": {
///             "pipelines": [{
///                 "exporters": ["my-workspace-logs-exporter1"],
///                 "name": "MyPipelineForLogs1",
///                 "processors": [],
///                 "receivers": ["udp-receiver1"],
///                 "type": azure_native.monitor.PipelineType.LOGS,
///             }],
///         },
///     },
///     resource_group_name="myResourceGroup",
///     tags={
///         "tag1": "A",
///         "tag2": "B",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   pipelineGroup:
///     type: azure-native:monitor:PipelineGroup
///     properties:
///       extendedLocation:
///         name: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/myTestCustomLocation
///         type: CustomLocation
///       location: eastus2
///       pipelineGroupName: plGroup1
///       properties:
///         exporters:
///           - azureMonitorWorkspaceLogs:
///               api:
///                 dataCollectionEndpointUrl: https://logs-myingestion-eb0s.eastus-1.ingest.monitor.azure.com
///                 dataCollectionRule: dcr-00000000000000000000000000000000
///                 schema:
///                   recordMap:
///                     - from: body
///                       to: Body
///                     - from: severity_text
///                       to: SeverityText
///                     - from: time_unix_nano
///                       to: TimeGenerated
///                 stream: Custom-MyTableRawData_CL
///               concurrency:
///                 batchQueueSize: 100
///                 workerCount: 4
///             name: my-workspace-logs-exporter1
///             type: AzureMonitorWorkspaceLogs
///         processors: []
///         receivers:
///           - name: udp-receiver1
///             type: UDP
///             udp:
///               encoding: utf-8
///               endpoint: 0.0.0.0:518
///               jsonArrayMapper:
///                 destinationField:
///                   destination: attributes
///                 keys:
///                   - key1
///                   - key2
///                   - key3
///                 sourceField:
///                   fieldName: field1
///         service:
///           pipelines:
///             - exporters:
///                 - my-workspace-logs-exporter1
///               name: MyPipelineForLogs1
///               processors: []
///               receivers:
///                 - udp-receiver1
///               type: Logs
///       resourceGroupName: myResourceGroup
///       tags:
///         tag1: A
///         tag2: B
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a PipelineGroup instance using a syslog receiver
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pipelineGroup = new AzureNative.Monitor.PipelineGroup("pipelineGroup", new()
///     {
///         ExtendedLocation = new AzureNative.Monitor.Inputs.AzureResourceManagerCommonTypesExtendedLocationArgs
///         {
///             Name = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/myTestCustomLocation",
///             Type = AzureNative.Monitor.ExtendedLocationType.CustomLocation,
///         },
///         Location = "eastus2",
///         PipelineGroupName = "plGroup1",
///         Properties = new AzureNative.Monitor.Inputs.PipelineGroupPropertiesArgs
///         {
///             Exporters = new[]
///             {
///                 new AzureNative.Monitor.Inputs.ExporterArgs
///                 {
///                     AzureMonitorWorkspaceLogs = new AzureNative.Monitor.Inputs.AzureMonitorWorkspaceLogsExporterArgs
///                     {
///                         Api = new AzureNative.Monitor.Inputs.AzureMonitorWorkspaceLogsApiConfigArgs
///                         {
///                             DataCollectionEndpointUrl = "https://logs-myingestion-eb0s.eastus-1.ingest.monitor.azure.com",
///                             DataCollectionRule = "dcr-00000000000000000000000000000000",
///                             Schema = new AzureNative.Monitor.Inputs.SchemaMapArgs
///                             {
///                                 RecordMap = new[]
///                                 {
///                                     new AzureNative.Monitor.Inputs.RecordMapArgs
///                                     {
///                                         From = "body",
///                                         To = "Body",
///                                     },
///                                     new AzureNative.Monitor.Inputs.RecordMapArgs
///                                     {
///                                         From = "severity_text",
///                                         To = "SeverityText",
///                                     },
///                                     new AzureNative.Monitor.Inputs.RecordMapArgs
///                                     {
///                                         From = "time_unix_nano",
///                                         To = "TimeGenerated",
///                                     },
///                                 },
///                             },
///                             Stream = "Custom-MyTableRawData_CL",
///                         },
///                         Concurrency = new AzureNative.Monitor.Inputs.ConcurrencyConfigurationArgs
///                         {
///                             BatchQueueSize = 100,
///                             WorkerCount = 4,
///                         },
///                     },
///                     Name = "my-workspace-logs-exporter1",
///                     Type = AzureNative.Monitor.ExporterType.AzureMonitorWorkspaceLogs,
///                 },
///             },
///             Processors = new[]
///             {
///                 new AzureNative.Monitor.Inputs.ProcessorArgs
///                 {
///                     Name = "batch-processor1",
///                     Type = AzureNative.Monitor.ProcessorType.Batch,
///                 },
///             },
///             Receivers = new[]
///             {
///                 new AzureNative.Monitor.Inputs.ReceiverArgs
///                 {
///                     Name = "syslog-receiver1",
///                     Syslog = new AzureNative.Monitor.Inputs.SyslogReceiverArgs
///                     {
///                         Endpoint = "0.0.0.0:514",
///                     },
///                     Type = AzureNative.Monitor.ReceiverType.Syslog,
///                 },
///             },
///             Service = new AzureNative.Monitor.Inputs.ServiceArgs
///             {
///                 Pipelines = new[]
///                 {
///                     new AzureNative.Monitor.Inputs.PipelineArgs
///                     {
///                         Exporters = new[]
///                         {
///                             "my-workspace-logs-exporter1",
///                         },
///                         Name = "MyPipelineForLogs1",
///                         Processors = new[]
///                         {
///                             "batch-processor1",
///                         },
///                         Receivers = new[]
///                         {
///                             "syslog-receiver1",
///                         },
///                         Type = AzureNative.Monitor.PipelineType.Logs,
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         Tags =
///         {
///             { "tag1", "A" },
///             { "tag2", "B" },
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
/// 	monitor "github.com/pulumi/pulumi-azure-native-sdk/monitor/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := monitor.NewPipelineGroup(ctx, "pipelineGroup", &monitor.PipelineGroupArgs{
/// 			ExtendedLocation: &monitor.AzureResourceManagerCommonTypesExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/myTestCustomLocation"),
/// 				Type: pulumi.String(monitor.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			Location:          pulumi.String("eastus2"),
/// 			PipelineGroupName: pulumi.String("plGroup1"),
/// 			Properties: &monitor.PipelineGroupPropertiesArgs{
/// 				Exporters: monitor.ExporterArray{
/// 					&monitor.ExporterArgs{
/// 						AzureMonitorWorkspaceLogs: &monitor.AzureMonitorWorkspaceLogsExporterArgs{
/// 							Api: &monitor.AzureMonitorWorkspaceLogsApiConfigArgs{
/// 								DataCollectionEndpointUrl: pulumi.String("https://logs-myingestion-eb0s.eastus-1.ingest.monitor.azure.com"),
/// 								DataCollectionRule:        pulumi.String("dcr-00000000000000000000000000000000"),
/// 								Schema: &monitor.SchemaMapArgs{
/// 									RecordMap: monitor.RecordMapArray{
/// 										&monitor.RecordMapArgs{
/// 											From: pulumi.String("body"),
/// 											To:   pulumi.String("Body"),
/// 										},
/// 										&monitor.RecordMapArgs{
/// 											From: pulumi.String("severity_text"),
/// 											To:   pulumi.String("SeverityText"),
/// 										},
/// 										&monitor.RecordMapArgs{
/// 											From: pulumi.String("time_unix_nano"),
/// 											To:   pulumi.String("TimeGenerated"),
/// 										},
/// 									},
/// 								},
/// 								Stream: pulumi.String("Custom-MyTableRawData_CL"),
/// 							},
/// 							Concurrency: &monitor.ConcurrencyConfigurationArgs{
/// 								BatchQueueSize: pulumi.Int(100),
/// 								WorkerCount:    pulumi.Int(4),
/// 							},
/// 						},
/// 						Name: pulumi.String("my-workspace-logs-exporter1"),
/// 						Type: pulumi.String(monitor.ExporterTypeAzureMonitorWorkspaceLogs),
/// 					},
/// 				},
/// 				Processors: monitor.ProcessorArray{
/// 					&monitor.ProcessorArgs{
/// 						Name: pulumi.String("batch-processor1"),
/// 						Type: pulumi.String(monitor.ProcessorTypeBatch),
/// 					},
/// 				},
/// 				Receivers: monitor.ReceiverArray{
/// 					&monitor.ReceiverArgs{
/// 						Name: pulumi.String("syslog-receiver1"),
/// 						Syslog: &monitor.SyslogReceiverArgs{
/// 							Endpoint: pulumi.String("0.0.0.0:514"),
/// 						},
/// 						Type: pulumi.String(monitor.ReceiverTypeSyslog),
/// 					},
/// 				},
/// 				Service: &monitor.ServiceArgs{
/// 					Pipelines: monitor.PipelineArray{
/// 						&monitor.PipelineArgs{
/// 							Exporters: pulumi.StringArray{
/// 								pulumi.String("my-workspace-logs-exporter1"),
/// 							},
/// 							Name: pulumi.String("MyPipelineForLogs1"),
/// 							Processors: pulumi.StringArray{
/// 								pulumi.String("batch-processor1"),
/// 							},
/// 							Receivers: pulumi.StringArray{
/// 								pulumi.String("syslog-receiver1"),
/// 							},
/// 							Type: pulumi.String(monitor.PipelineTypeLogs),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("A"),
/// 				"tag2": pulumi.String("B"),
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
/// import com.pulumi.azurenative.monitor.PipelineGroup;
/// import com.pulumi.azurenative.monitor.PipelineGroupArgs;
/// import com.pulumi.azurenative.monitor.inputs.AzureResourceManagerCommonTypesExtendedLocationArgs;
/// import com.pulumi.azurenative.monitor.inputs.PipelineGroupPropertiesArgs;
/// import com.pulumi.azurenative.monitor.inputs.ServiceArgs;
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
///         var pipelineGroup = new PipelineGroup("pipelineGroup", PipelineGroupArgs.builder()
///             .extendedLocation(AzureResourceManagerCommonTypesExtendedLocationArgs.builder()
///                 .name("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/myTestCustomLocation")
///                 .type("CustomLocation")
///                 .build())
///             .location("eastus2")
///             .pipelineGroupName("plGroup1")
///             .properties(PipelineGroupPropertiesArgs.builder()
///                 .exporters(ExporterArgs.builder()
///                     .azureMonitorWorkspaceLogs(AzureMonitorWorkspaceLogsExporterArgs.builder()
///                         .api(AzureMonitorWorkspaceLogsApiConfigArgs.builder()
///                             .dataCollectionEndpointUrl("https://logs-myingestion-eb0s.eastus-1.ingest.monitor.azure.com")
///                             .dataCollectionRule("dcr-00000000000000000000000000000000")
///                             .schema(SchemaMapArgs.builder()
///                                 .recordMap(
///                                     RecordMapArgs.builder()
///                                         .from("body")
///                                         .to("Body")
///                                         .build(),
///                                     RecordMapArgs.builder()
///                                         .from("severity_text")
///                                         .to("SeverityText")
///                                         .build(),
///                                     RecordMapArgs.builder()
///                                         .from("time_unix_nano")
///                                         .to("TimeGenerated")
///                                         .build())
///                                 .build())
///                             .stream("Custom-MyTableRawData_CL")
///                             .build())
///                         .concurrency(ConcurrencyConfigurationArgs.builder()
///                             .batchQueueSize(100)
///                             .workerCount(4)
///                             .build())
///                         .build())
///                     .name("my-workspace-logs-exporter1")
///                     .type("AzureMonitorWorkspaceLogs")
///                     .build())
///                 .processors(ProcessorArgs.builder()
///                     .name("batch-processor1")
///                     .type("Batch")
///                     .build())
///                 .receivers(ReceiverArgs.builder()
///                     .name("syslog-receiver1")
///                     .syslog(SyslogReceiverArgs.builder()
///                         .endpoint("0.0.0.0:514")
///                         .build())
///                     .type("Syslog")
///                     .build())
///                 .service(ServiceArgs.builder()
///                     .pipelines(PipelineArgs.builder()
///                         .exporters("my-workspace-logs-exporter1")
///                         .name("MyPipelineForLogs1")
///                         .processors("batch-processor1")
///                         .receivers("syslog-receiver1")
///                         .type("Logs")
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "A"),
///                 Map.entry("tag2", "B")
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
/// const pipelineGroup = new azure_native.monitor.PipelineGroup("pipelineGroup", {
///     extendedLocation: {
///         name: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/myTestCustomLocation",
///         type: azure_native.monitor.ExtendedLocationType.CustomLocation,
///     },
///     location: "eastus2",
///     pipelineGroupName: "plGroup1",
///     properties: {
///         exporters: [{
///             azureMonitorWorkspaceLogs: {
///                 api: {
///                     dataCollectionEndpointUrl: "https://logs-myingestion-eb0s.eastus-1.ingest.monitor.azure.com",
///                     dataCollectionRule: "dcr-00000000000000000000000000000000",
///                     schema: {
///                         recordMap: [
///                             {
///                                 from: "body",
///                                 to: "Body",
///                             },
///                             {
///                                 from: "severity_text",
///                                 to: "SeverityText",
///                             },
///                             {
///                                 from: "time_unix_nano",
///                                 to: "TimeGenerated",
///                             },
///                         ],
///                     },
///                     stream: "Custom-MyTableRawData_CL",
///                 },
///                 concurrency: {
///                     batchQueueSize: 100,
///                     workerCount: 4,
///                 },
///             },
///             name: "my-workspace-logs-exporter1",
///             type: azure_native.monitor.ExporterType.AzureMonitorWorkspaceLogs,
///         }],
///         processors: [{
///             name: "batch-processor1",
///             type: azure_native.monitor.ProcessorType.Batch,
///         }],
///         receivers: [{
///             name: "syslog-receiver1",
///             syslog: {
///                 endpoint: "0.0.0.0:514",
///             },
///             type: azure_native.monitor.ReceiverType.Syslog,
///         }],
///         service: {
///             pipelines: [{
///                 exporters: ["my-workspace-logs-exporter1"],
///                 name: "MyPipelineForLogs1",
///                 processors: ["batch-processor1"],
///                 receivers: ["syslog-receiver1"],
///                 type: azure_native.monitor.PipelineType.Logs,
///             }],
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     tags: {
///         tag1: "A",
///         tag2: "B",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// pipeline_group = azure_native.monitor.PipelineGroup("pipelineGroup",
///     extended_location={
///         "name": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/myTestCustomLocation",
///         "type": azure_native.monitor.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     location="eastus2",
///     pipeline_group_name="plGroup1",
///     properties={
///         "exporters": [{
///             "azure_monitor_workspace_logs": {
///                 "api": {
///                     "data_collection_endpoint_url": "https://logs-myingestion-eb0s.eastus-1.ingest.monitor.azure.com",
///                     "data_collection_rule": "dcr-00000000000000000000000000000000",
///                     "schema": {
///                         "record_map": [
///                             {
///                                 "from_": "body",
///                                 "to": "Body",
///                             },
///                             {
///                                 "from_": "severity_text",
///                                 "to": "SeverityText",
///                             },
///                             {
///                                 "from_": "time_unix_nano",
///                                 "to": "TimeGenerated",
///                             },
///                         ],
///                     },
///                     "stream": "Custom-MyTableRawData_CL",
///                 },
///                 "concurrency": {
///                     "batch_queue_size": 100,
///                     "worker_count": 4,
///                 },
///             },
///             "name": "my-workspace-logs-exporter1",
///             "type": azure_native.monitor.ExporterType.AZURE_MONITOR_WORKSPACE_LOGS,
///         }],
///         "processors": [{
///             "name": "batch-processor1",
///             "type": azure_native.monitor.ProcessorType.BATCH,
///         }],
///         "receivers": [{
///             "name": "syslog-receiver1",
///             "syslog": {
///                 "endpoint": "0.0.0.0:514",
///             },
///             "type": azure_native.monitor.ReceiverType.SYSLOG,
///         }],
///         "service": {
///             "pipelines": [{
///                 "exporters": ["my-workspace-logs-exporter1"],
///                 "name": "MyPipelineForLogs1",
///                 "processors": ["batch-processor1"],
///                 "receivers": ["syslog-receiver1"],
///                 "type": azure_native.monitor.PipelineType.LOGS,
///             }],
///         },
///     },
///     resource_group_name="myResourceGroup",
///     tags={
///         "tag1": "A",
///         "tag2": "B",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   pipelineGroup:
///     type: azure-native:monitor:PipelineGroup
///     properties:
///       extendedLocation:
///         name: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/myTestCustomLocation
///         type: CustomLocation
///       location: eastus2
///       pipelineGroupName: plGroup1
///       properties:
///         exporters:
///           - azureMonitorWorkspaceLogs:
///               api:
///                 dataCollectionEndpointUrl: https://logs-myingestion-eb0s.eastus-1.ingest.monitor.azure.com
///                 dataCollectionRule: dcr-00000000000000000000000000000000
///                 schema:
///                   recordMap:
///                     - from: body
///                       to: Body
///                     - from: severity_text
///                       to: SeverityText
///                     - from: time_unix_nano
///                       to: TimeGenerated
///                 stream: Custom-MyTableRawData_CL
///               concurrency:
///                 batchQueueSize: 100
///                 workerCount: 4
///             name: my-workspace-logs-exporter1
///             type: AzureMonitorWorkspaceLogs
///         processors:
///           - name: batch-processor1
///             type: Batch
///         receivers:
///           - name: syslog-receiver1
///             syslog:
///               endpoint: 0.0.0.0:514
///             type: Syslog
///         service:
///           pipelines:
///             - exporters:
///                 - my-workspace-logs-exporter1
///               name: MyPipelineForLogs1
///               processors:
///                 - batch-processor1
///               receivers:
///                 - syslog-receiver1
///               type: Logs
///       resourceGroupName: myResourceGroup
///       tags:
///         tag1: A
///         tag2: B
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a PipelineGroup instance using a syslog receiver and cache.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pipelineGroup = new AzureNative.Monitor.PipelineGroup("pipelineGroup", new()
///     {
///         ExtendedLocation = new AzureNative.Monitor.Inputs.AzureResourceManagerCommonTypesExtendedLocationArgs
///         {
///             Name = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/myTestCustomLocation",
///             Type = AzureNative.Monitor.ExtendedLocationType.CustomLocation,
///         },
///         Location = "eastus2",
///         PipelineGroupName = "plGroup1",
///         Properties = new AzureNative.Monitor.Inputs.PipelineGroupPropertiesArgs
///         {
///             Exporters = new[]
///             {
///                 new AzureNative.Monitor.Inputs.ExporterArgs
///                 {
///                     AzureMonitorWorkspaceLogs = new AzureNative.Monitor.Inputs.AzureMonitorWorkspaceLogsExporterArgs
///                     {
///                         Api = new AzureNative.Monitor.Inputs.AzureMonitorWorkspaceLogsApiConfigArgs
///                         {
///                             DataCollectionEndpointUrl = "https://logs-myingestion-eb0s.eastus-1.ingest.monitor.azure.com",
///                             DataCollectionRule = "dcr-00000000000000000000000000000000",
///                             Schema = new AzureNative.Monitor.Inputs.SchemaMapArgs
///                             {
///                                 RecordMap = new[]
///                                 {
///                                     new AzureNative.Monitor.Inputs.RecordMapArgs
///                                     {
///                                         From = "body",
///                                         To = "Body",
///                                     },
///                                     new AzureNative.Monitor.Inputs.RecordMapArgs
///                                     {
///                                         From = "severity_text",
///                                         To = "SeverityText",
///                                     },
///                                     new AzureNative.Monitor.Inputs.RecordMapArgs
///                                     {
///                                         From = "time_unix_nano",
///                                         To = "TimeGenerated",
///                                     },
///                                 },
///                             },
///                             Stream = "Custom-MyTableRawData_CL",
///                         },
///                         Cache = new AzureNative.Monitor.Inputs.CacheConfigurationArgs
///                         {
///                             MaxStorageUsage = 100,
///                             RetentionPeriod = 10,
///                         },
///                         Concurrency = new AzureNative.Monitor.Inputs.ConcurrencyConfigurationArgs
///                         {
///                             BatchQueueSize = 100,
///                             WorkerCount = 4,
///                         },
///                     },
///                     Name = "my-workspace-logs-exporter1",
///                     Type = AzureNative.Monitor.ExporterType.AzureMonitorWorkspaceLogs,
///                 },
///             },
///             Processors = new[]
///             {
///                 new AzureNative.Monitor.Inputs.ProcessorArgs
///                 {
///                     Name = "batch-processor1",
///                     Type = AzureNative.Monitor.ProcessorType.Batch,
///                 },
///             },
///             Receivers = new[]
///             {
///                 new AzureNative.Monitor.Inputs.ReceiverArgs
///                 {
///                     Name = "syslog-receiver1",
///                     Syslog = new AzureNative.Monitor.Inputs.SyslogReceiverArgs
///                     {
///                         Endpoint = "0.0.0.0:514",
///                     },
///                     Type = AzureNative.Monitor.ReceiverType.Syslog,
///                 },
///             },
///             Service = new AzureNative.Monitor.Inputs.ServiceArgs
///             {
///                 Pipelines = new[]
///                 {
///                     new AzureNative.Monitor.Inputs.PipelineArgs
///                     {
///                         Exporters = new[]
///                         {
///                             "my-workspace-logs-exporter1",
///                         },
///                         Name = "MyPipelineForLogs1",
///                         Processors = new[]
///                         {
///                             "batch-processor1",
///                         },
///                         Receivers = new[]
///                         {
///                             "syslog-receiver1",
///                         },
///                         Type = AzureNative.Monitor.PipelineType.Logs,
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         Tags =
///         {
///             { "tag1", "A" },
///             { "tag2", "B" },
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
/// 	monitor "github.com/pulumi/pulumi-azure-native-sdk/monitor/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := monitor.NewPipelineGroup(ctx, "pipelineGroup", &monitor.PipelineGroupArgs{
/// 			ExtendedLocation: &monitor.AzureResourceManagerCommonTypesExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/myTestCustomLocation"),
/// 				Type: pulumi.String(monitor.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			Location:          pulumi.String("eastus2"),
/// 			PipelineGroupName: pulumi.String("plGroup1"),
/// 			Properties: &monitor.PipelineGroupPropertiesArgs{
/// 				Exporters: monitor.ExporterArray{
/// 					&monitor.ExporterArgs{
/// 						AzureMonitorWorkspaceLogs: &monitor.AzureMonitorWorkspaceLogsExporterArgs{
/// 							Api: &monitor.AzureMonitorWorkspaceLogsApiConfigArgs{
/// 								DataCollectionEndpointUrl: pulumi.String("https://logs-myingestion-eb0s.eastus-1.ingest.monitor.azure.com"),
/// 								DataCollectionRule:        pulumi.String("dcr-00000000000000000000000000000000"),
/// 								Schema: &monitor.SchemaMapArgs{
/// 									RecordMap: monitor.RecordMapArray{
/// 										&monitor.RecordMapArgs{
/// 											From: pulumi.String("body"),
/// 											To:   pulumi.String("Body"),
/// 										},
/// 										&monitor.RecordMapArgs{
/// 											From: pulumi.String("severity_text"),
/// 											To:   pulumi.String("SeverityText"),
/// 										},
/// 										&monitor.RecordMapArgs{
/// 											From: pulumi.String("time_unix_nano"),
/// 											To:   pulumi.String("TimeGenerated"),
/// 										},
/// 									},
/// 								},
/// 								Stream: pulumi.String("Custom-MyTableRawData_CL"),
/// 							},
/// 							Cache: &monitor.CacheConfigurationArgs{
/// 								MaxStorageUsage: pulumi.Int(100),
/// 								RetentionPeriod: pulumi.Int(10),
/// 							},
/// 							Concurrency: &monitor.ConcurrencyConfigurationArgs{
/// 								BatchQueueSize: pulumi.Int(100),
/// 								WorkerCount:    pulumi.Int(4),
/// 							},
/// 						},
/// 						Name: pulumi.String("my-workspace-logs-exporter1"),
/// 						Type: pulumi.String(monitor.ExporterTypeAzureMonitorWorkspaceLogs),
/// 					},
/// 				},
/// 				Processors: monitor.ProcessorArray{
/// 					&monitor.ProcessorArgs{
/// 						Name: pulumi.String("batch-processor1"),
/// 						Type: pulumi.String(monitor.ProcessorTypeBatch),
/// 					},
/// 				},
/// 				Receivers: monitor.ReceiverArray{
/// 					&monitor.ReceiverArgs{
/// 						Name: pulumi.String("syslog-receiver1"),
/// 						Syslog: &monitor.SyslogReceiverArgs{
/// 							Endpoint: pulumi.String("0.0.0.0:514"),
/// 						},
/// 						Type: pulumi.String(monitor.ReceiverTypeSyslog),
/// 					},
/// 				},
/// 				Service: &monitor.ServiceArgs{
/// 					Pipelines: monitor.PipelineArray{
/// 						&monitor.PipelineArgs{
/// 							Exporters: pulumi.StringArray{
/// 								pulumi.String("my-workspace-logs-exporter1"),
/// 							},
/// 							Name: pulumi.String("MyPipelineForLogs1"),
/// 							Processors: pulumi.StringArray{
/// 								pulumi.String("batch-processor1"),
/// 							},
/// 							Receivers: pulumi.StringArray{
/// 								pulumi.String("syslog-receiver1"),
/// 							},
/// 							Type: pulumi.String(monitor.PipelineTypeLogs),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("A"),
/// 				"tag2": pulumi.String("B"),
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
/// import com.pulumi.azurenative.monitor.PipelineGroup;
/// import com.pulumi.azurenative.monitor.PipelineGroupArgs;
/// import com.pulumi.azurenative.monitor.inputs.AzureResourceManagerCommonTypesExtendedLocationArgs;
/// import com.pulumi.azurenative.monitor.inputs.PipelineGroupPropertiesArgs;
/// import com.pulumi.azurenative.monitor.inputs.ServiceArgs;
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
///         var pipelineGroup = new PipelineGroup("pipelineGroup", PipelineGroupArgs.builder()
///             .extendedLocation(AzureResourceManagerCommonTypesExtendedLocationArgs.builder()
///                 .name("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/myTestCustomLocation")
///                 .type("CustomLocation")
///                 .build())
///             .location("eastus2")
///             .pipelineGroupName("plGroup1")
///             .properties(PipelineGroupPropertiesArgs.builder()
///                 .exporters(ExporterArgs.builder()
///                     .azureMonitorWorkspaceLogs(AzureMonitorWorkspaceLogsExporterArgs.builder()
///                         .api(AzureMonitorWorkspaceLogsApiConfigArgs.builder()
///                             .dataCollectionEndpointUrl("https://logs-myingestion-eb0s.eastus-1.ingest.monitor.azure.com")
///                             .dataCollectionRule("dcr-00000000000000000000000000000000")
///                             .schema(SchemaMapArgs.builder()
///                                 .recordMap(
///                                     RecordMapArgs.builder()
///                                         .from("body")
///                                         .to("Body")
///                                         .build(),
///                                     RecordMapArgs.builder()
///                                         .from("severity_text")
///                                         .to("SeverityText")
///                                         .build(),
///                                     RecordMapArgs.builder()
///                                         .from("time_unix_nano")
///                                         .to("TimeGenerated")
///                                         .build())
///                                 .build())
///                             .stream("Custom-MyTableRawData_CL")
///                             .build())
///                         .cache(CacheConfigurationArgs.builder()
///                             .maxStorageUsage(100)
///                             .retentionPeriod(10)
///                             .build())
///                         .concurrency(ConcurrencyConfigurationArgs.builder()
///                             .batchQueueSize(100)
///                             .workerCount(4)
///                             .build())
///                         .build())
///                     .name("my-workspace-logs-exporter1")
///                     .type("AzureMonitorWorkspaceLogs")
///                     .build())
///                 .processors(ProcessorArgs.builder()
///                     .name("batch-processor1")
///                     .type("Batch")
///                     .build())
///                 .receivers(ReceiverArgs.builder()
///                     .name("syslog-receiver1")
///                     .syslog(SyslogReceiverArgs.builder()
///                         .endpoint("0.0.0.0:514")
///                         .build())
///                     .type("Syslog")
///                     .build())
///                 .service(ServiceArgs.builder()
///                     .pipelines(PipelineArgs.builder()
///                         .exporters("my-workspace-logs-exporter1")
///                         .name("MyPipelineForLogs1")
///                         .processors("batch-processor1")
///                         .receivers("syslog-receiver1")
///                         .type("Logs")
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "A"),
///                 Map.entry("tag2", "B")
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
/// const pipelineGroup = new azure_native.monitor.PipelineGroup("pipelineGroup", {
///     extendedLocation: {
///         name: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/myTestCustomLocation",
///         type: azure_native.monitor.ExtendedLocationType.CustomLocation,
///     },
///     location: "eastus2",
///     pipelineGroupName: "plGroup1",
///     properties: {
///         exporters: [{
///             azureMonitorWorkspaceLogs: {
///                 api: {
///                     dataCollectionEndpointUrl: "https://logs-myingestion-eb0s.eastus-1.ingest.monitor.azure.com",
///                     dataCollectionRule: "dcr-00000000000000000000000000000000",
///                     schema: {
///                         recordMap: [
///                             {
///                                 from: "body",
///                                 to: "Body",
///                             },
///                             {
///                                 from: "severity_text",
///                                 to: "SeverityText",
///                             },
///                             {
///                                 from: "time_unix_nano",
///                                 to: "TimeGenerated",
///                             },
///                         ],
///                     },
///                     stream: "Custom-MyTableRawData_CL",
///                 },
///                 cache: {
///                     maxStorageUsage: 100,
///                     retentionPeriod: 10,
///                 },
///                 concurrency: {
///                     batchQueueSize: 100,
///                     workerCount: 4,
///                 },
///             },
///             name: "my-workspace-logs-exporter1",
///             type: azure_native.monitor.ExporterType.AzureMonitorWorkspaceLogs,
///         }],
///         processors: [{
///             name: "batch-processor1",
///             type: azure_native.monitor.ProcessorType.Batch,
///         }],
///         receivers: [{
///             name: "syslog-receiver1",
///             syslog: {
///                 endpoint: "0.0.0.0:514",
///             },
///             type: azure_native.monitor.ReceiverType.Syslog,
///         }],
///         service: {
///             pipelines: [{
///                 exporters: ["my-workspace-logs-exporter1"],
///                 name: "MyPipelineForLogs1",
///                 processors: ["batch-processor1"],
///                 receivers: ["syslog-receiver1"],
///                 type: azure_native.monitor.PipelineType.Logs,
///             }],
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     tags: {
///         tag1: "A",
///         tag2: "B",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// pipeline_group = azure_native.monitor.PipelineGroup("pipelineGroup",
///     extended_location={
///         "name": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/myTestCustomLocation",
///         "type": azure_native.monitor.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     location="eastus2",
///     pipeline_group_name="plGroup1",
///     properties={
///         "exporters": [{
///             "azure_monitor_workspace_logs": {
///                 "api": {
///                     "data_collection_endpoint_url": "https://logs-myingestion-eb0s.eastus-1.ingest.monitor.azure.com",
///                     "data_collection_rule": "dcr-00000000000000000000000000000000",
///                     "schema": {
///                         "record_map": [
///                             {
///                                 "from_": "body",
///                                 "to": "Body",
///                             },
///                             {
///                                 "from_": "severity_text",
///                                 "to": "SeverityText",
///                             },
///                             {
///                                 "from_": "time_unix_nano",
///                                 "to": "TimeGenerated",
///                             },
///                         ],
///                     },
///                     "stream": "Custom-MyTableRawData_CL",
///                 },
///                 "cache": {
///                     "max_storage_usage": 100,
///                     "retention_period": 10,
///                 },
///                 "concurrency": {
///                     "batch_queue_size": 100,
///                     "worker_count": 4,
///                 },
///             },
///             "name": "my-workspace-logs-exporter1",
///             "type": azure_native.monitor.ExporterType.AZURE_MONITOR_WORKSPACE_LOGS,
///         }],
///         "processors": [{
///             "name": "batch-processor1",
///             "type": azure_native.monitor.ProcessorType.BATCH,
///         }],
///         "receivers": [{
///             "name": "syslog-receiver1",
///             "syslog": {
///                 "endpoint": "0.0.0.0:514",
///             },
///             "type": azure_native.monitor.ReceiverType.SYSLOG,
///         }],
///         "service": {
///             "pipelines": [{
///                 "exporters": ["my-workspace-logs-exporter1"],
///                 "name": "MyPipelineForLogs1",
///                 "processors": ["batch-processor1"],
///                 "receivers": ["syslog-receiver1"],
///                 "type": azure_native.monitor.PipelineType.LOGS,
///             }],
///         },
///     },
///     resource_group_name="myResourceGroup",
///     tags={
///         "tag1": "A",
///         "tag2": "B",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   pipelineGroup:
///     type: azure-native:monitor:PipelineGroup
///     properties:
///       extendedLocation:
///         name: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/myTestCustomLocation
///         type: CustomLocation
///       location: eastus2
///       pipelineGroupName: plGroup1
///       properties:
///         exporters:
///           - azureMonitorWorkspaceLogs:
///               api:
///                 dataCollectionEndpointUrl: https://logs-myingestion-eb0s.eastus-1.ingest.monitor.azure.com
///                 dataCollectionRule: dcr-00000000000000000000000000000000
///                 schema:
///                   recordMap:
///                     - from: body
///                       to: Body
///                     - from: severity_text
///                       to: SeverityText
///                     - from: time_unix_nano
///                       to: TimeGenerated
///                 stream: Custom-MyTableRawData_CL
///               cache:
///                 maxStorageUsage: 100
///                 retentionPeriod: 10
///               concurrency:
///                 batchQueueSize: 100
///                 workerCount: 4
///             name: my-workspace-logs-exporter1
///             type: AzureMonitorWorkspaceLogs
///         processors:
///           - name: batch-processor1
///             type: Batch
///         receivers:
///           - name: syslog-receiver1
///             syslog:
///               endpoint: 0.0.0.0:514
///             type: Syslog
///         service:
///           pipelines:
///             - exporters:
///                 - my-workspace-logs-exporter1
///               name: MyPipelineForLogs1
///               processors:
///                 - batch-processor1
///               receivers:
///                 - syslog-receiver1
///               type: Logs
///       resourceGroupName: myResourceGroup
///       tags:
///         tag1: A
///         tag2: B
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a PipelineGroup instance using a syslog receiver and networking configurations.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pipelineGroup = new AzureNative.Monitor.PipelineGroup("pipelineGroup", new()
///     {
///         ExtendedLocation = new AzureNative.Monitor.Inputs.AzureResourceManagerCommonTypesExtendedLocationArgs
///         {
///             Name = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/myTestCustomLocation",
///             Type = AzureNative.Monitor.ExtendedLocationType.CustomLocation,
///         },
///         Location = "eastus2",
///         PipelineGroupName = "plGroup1",
///         Properties = new AzureNative.Monitor.Inputs.PipelineGroupPropertiesArgs
///         {
///             Exporters = new[]
///             {
///                 new AzureNative.Monitor.Inputs.ExporterArgs
///                 {
///                     AzureMonitorWorkspaceLogs = new AzureNative.Monitor.Inputs.AzureMonitorWorkspaceLogsExporterArgs
///                     {
///                         Api = new AzureNative.Monitor.Inputs.AzureMonitorWorkspaceLogsApiConfigArgs
///                         {
///                             DataCollectionEndpointUrl = "https://logs-myingestion-eb0s.eastus-1.ingest.monitor.azure.com",
///                             DataCollectionRule = "dcr-00000000000000000000000000000000",
///                             Schema = new AzureNative.Monitor.Inputs.SchemaMapArgs
///                             {
///                                 RecordMap = new[]
///                                 {
///                                     new AzureNative.Monitor.Inputs.RecordMapArgs
///                                     {
///                                         From = "body",
///                                         To = "Body",
///                                     },
///                                     new AzureNative.Monitor.Inputs.RecordMapArgs
///                                     {
///                                         From = "severity_text",
///                                         To = "SeverityText",
///                                     },
///                                     new AzureNative.Monitor.Inputs.RecordMapArgs
///                                     {
///                                         From = "time_unix_nano",
///                                         To = "TimeGenerated",
///                                     },
///                                 },
///                             },
///                             Stream = "Custom-MyTableRawData_CL",
///                         },
///                         Concurrency = new AzureNative.Monitor.Inputs.ConcurrencyConfigurationArgs
///                         {
///                             BatchQueueSize = 100,
///                             WorkerCount = 4,
///                         },
///                     },
///                     Name = "my-workspace-logs-exporter1",
///                     Type = AzureNative.Monitor.ExporterType.AzureMonitorWorkspaceLogs,
///                 },
///             },
///             NetworkingConfigurations = new[]
///             {
///                 new AzureNative.Monitor.Inputs.NetworkingConfigurationArgs
///                 {
///                     ExternalNetworkingMode = AzureNative.Monitor.ExternalNetworkingMode.LoadBalancerOnly,
///                     Host = "azuremonitorpipeline.contoso.com",
///                     Routes = new[]
///                     {
///                         new AzureNative.Monitor.Inputs.NetworkingRouteArgs
///                         {
///                             Receiver = "syslog-receiver1",
///                         },
///                     },
///                 },
///             },
///             Processors = new() { },
///             Receivers = new[]
///             {
///                 new AzureNative.Monitor.Inputs.ReceiverArgs
///                 {
///                     Name = "syslog-receiver1",
///                     Syslog = new AzureNative.Monitor.Inputs.SyslogReceiverArgs
///                     {
///                         Endpoint = "0.0.0.0:514",
///                     },
///                     Type = AzureNative.Monitor.ReceiverType.Syslog,
///                 },
///             },
///             Service = new AzureNative.Monitor.Inputs.ServiceArgs
///             {
///                 Pipelines = new[]
///                 {
///                     new AzureNative.Monitor.Inputs.PipelineArgs
///                     {
///                         Exporters = new[]
///                         {
///                             "my-workspace-logs-exporter1",
///                         },
///                         Name = "MyPipelineForLogs1",
///                         Processors = new() { },
///                         Receivers = new[]
///                         {
///                             "syslog-receiver1",
///                         },
///                         Type = AzureNative.Monitor.PipelineType.Logs,
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         Tags =
///         {
///             { "tag1", "A" },
///             { "tag2", "B" },
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
/// 	monitor "github.com/pulumi/pulumi-azure-native-sdk/monitor/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := monitor.NewPipelineGroup(ctx, "pipelineGroup", &monitor.PipelineGroupArgs{
/// 			ExtendedLocation: &monitor.AzureResourceManagerCommonTypesExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/myTestCustomLocation"),
/// 				Type: pulumi.String(monitor.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			Location:          pulumi.String("eastus2"),
/// 			PipelineGroupName: pulumi.String("plGroup1"),
/// 			Properties: &monitor.PipelineGroupPropertiesArgs{
/// 				Exporters: monitor.ExporterArray{
/// 					&monitor.ExporterArgs{
/// 						AzureMonitorWorkspaceLogs: &monitor.AzureMonitorWorkspaceLogsExporterArgs{
/// 							Api: &monitor.AzureMonitorWorkspaceLogsApiConfigArgs{
/// 								DataCollectionEndpointUrl: pulumi.String("https://logs-myingestion-eb0s.eastus-1.ingest.monitor.azure.com"),
/// 								DataCollectionRule:        pulumi.String("dcr-00000000000000000000000000000000"),
/// 								Schema: &monitor.SchemaMapArgs{
/// 									RecordMap: monitor.RecordMapArray{
/// 										&monitor.RecordMapArgs{
/// 											From: pulumi.String("body"),
/// 											To:   pulumi.String("Body"),
/// 										},
/// 										&monitor.RecordMapArgs{
/// 											From: pulumi.String("severity_text"),
/// 											To:   pulumi.String("SeverityText"),
/// 										},
/// 										&monitor.RecordMapArgs{
/// 											From: pulumi.String("time_unix_nano"),
/// 											To:   pulumi.String("TimeGenerated"),
/// 										},
/// 									},
/// 								},
/// 								Stream: pulumi.String("Custom-MyTableRawData_CL"),
/// 							},
/// 							Concurrency: &monitor.ConcurrencyConfigurationArgs{
/// 								BatchQueueSize: pulumi.Int(100),
/// 								WorkerCount:    pulumi.Int(4),
/// 							},
/// 						},
/// 						Name: pulumi.String("my-workspace-logs-exporter1"),
/// 						Type: pulumi.String(monitor.ExporterTypeAzureMonitorWorkspaceLogs),
/// 					},
/// 				},
/// 				NetworkingConfigurations: monitor.NetworkingConfigurationArray{
/// 					&monitor.NetworkingConfigurationArgs{
/// 						ExternalNetworkingMode: pulumi.String(monitor.ExternalNetworkingModeLoadBalancerOnly),
/// 						Host:                   pulumi.String("azuremonitorpipeline.contoso.com"),
/// 						Routes: monitor.NetworkingRouteArray{
/// 							&monitor.NetworkingRouteArgs{
/// 								Receiver: pulumi.String("syslog-receiver1"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				Processors: monitor.ProcessorArray{},
/// 				Receivers: monitor.ReceiverArray{
/// 					&monitor.ReceiverArgs{
/// 						Name: pulumi.String("syslog-receiver1"),
/// 						Syslog: &monitor.SyslogReceiverArgs{
/// 							Endpoint: pulumi.String("0.0.0.0:514"),
/// 						},
/// 						Type: pulumi.String(monitor.ReceiverTypeSyslog),
/// 					},
/// 				},
/// 				Service: &monitor.ServiceArgs{
/// 					Pipelines: monitor.PipelineArray{
/// 						&monitor.PipelineArgs{
/// 							Exporters: pulumi.StringArray{
/// 								pulumi.String("my-workspace-logs-exporter1"),
/// 							},
/// 							Name:       pulumi.String("MyPipelineForLogs1"),
/// 							Processors: pulumi.StringArray{},
/// 							Receivers: pulumi.StringArray{
/// 								pulumi.String("syslog-receiver1"),
/// 							},
/// 							Type: pulumi.String(monitor.PipelineTypeLogs),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("A"),
/// 				"tag2": pulumi.String("B"),
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
/// import com.pulumi.azurenative.monitor.PipelineGroup;
/// import com.pulumi.azurenative.monitor.PipelineGroupArgs;
/// import com.pulumi.azurenative.monitor.inputs.AzureResourceManagerCommonTypesExtendedLocationArgs;
/// import com.pulumi.azurenative.monitor.inputs.PipelineGroupPropertiesArgs;
/// import com.pulumi.azurenative.monitor.inputs.ServiceArgs;
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
///         var pipelineGroup = new PipelineGroup("pipelineGroup", PipelineGroupArgs.builder()
///             .extendedLocation(AzureResourceManagerCommonTypesExtendedLocationArgs.builder()
///                 .name("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/myTestCustomLocation")
///                 .type("CustomLocation")
///                 .build())
///             .location("eastus2")
///             .pipelineGroupName("plGroup1")
///             .properties(PipelineGroupPropertiesArgs.builder()
///                 .exporters(ExporterArgs.builder()
///                     .azureMonitorWorkspaceLogs(AzureMonitorWorkspaceLogsExporterArgs.builder()
///                         .api(AzureMonitorWorkspaceLogsApiConfigArgs.builder()
///                             .dataCollectionEndpointUrl("https://logs-myingestion-eb0s.eastus-1.ingest.monitor.azure.com")
///                             .dataCollectionRule("dcr-00000000000000000000000000000000")
///                             .schema(SchemaMapArgs.builder()
///                                 .recordMap(
///                                     RecordMapArgs.builder()
///                                         .from("body")
///                                         .to("Body")
///                                         .build(),
///                                     RecordMapArgs.builder()
///                                         .from("severity_text")
///                                         .to("SeverityText")
///                                         .build(),
///                                     RecordMapArgs.builder()
///                                         .from("time_unix_nano")
///                                         .to("TimeGenerated")
///                                         .build())
///                                 .build())
///                             .stream("Custom-MyTableRawData_CL")
///                             .build())
///                         .concurrency(ConcurrencyConfigurationArgs.builder()
///                             .batchQueueSize(100)
///                             .workerCount(4)
///                             .build())
///                         .build())
///                     .name("my-workspace-logs-exporter1")
///                     .type("AzureMonitorWorkspaceLogs")
///                     .build())
///                 .networkingConfigurations(NetworkingConfigurationArgs.builder()
///                     .externalNetworkingMode("LoadBalancerOnly")
///                     .host("azuremonitorpipeline.contoso.com")
///                     .routes(NetworkingRouteArgs.builder()
///                         .receiver("syslog-receiver1")
///                         .build())
///                     .build())
///                 .processors()
///                 .receivers(ReceiverArgs.builder()
///                     .name("syslog-receiver1")
///                     .syslog(SyslogReceiverArgs.builder()
///                         .endpoint("0.0.0.0:514")
///                         .build())
///                     .type("Syslog")
///                     .build())
///                 .service(ServiceArgs.builder()
///                     .pipelines(PipelineArgs.builder()
///                         .exporters("my-workspace-logs-exporter1")
///                         .name("MyPipelineForLogs1")
///                         .processors()
///                         .receivers("syslog-receiver1")
///                         .type("Logs")
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "A"),
///                 Map.entry("tag2", "B")
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
/// const pipelineGroup = new azure_native.monitor.PipelineGroup("pipelineGroup", {
///     extendedLocation: {
///         name: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/myTestCustomLocation",
///         type: azure_native.monitor.ExtendedLocationType.CustomLocation,
///     },
///     location: "eastus2",
///     pipelineGroupName: "plGroup1",
///     properties: {
///         exporters: [{
///             azureMonitorWorkspaceLogs: {
///                 api: {
///                     dataCollectionEndpointUrl: "https://logs-myingestion-eb0s.eastus-1.ingest.monitor.azure.com",
///                     dataCollectionRule: "dcr-00000000000000000000000000000000",
///                     schema: {
///                         recordMap: [
///                             {
///                                 from: "body",
///                                 to: "Body",
///                             },
///                             {
///                                 from: "severity_text",
///                                 to: "SeverityText",
///                             },
///                             {
///                                 from: "time_unix_nano",
///                                 to: "TimeGenerated",
///                             },
///                         ],
///                     },
///                     stream: "Custom-MyTableRawData_CL",
///                 },
///                 concurrency: {
///                     batchQueueSize: 100,
///                     workerCount: 4,
///                 },
///             },
///             name: "my-workspace-logs-exporter1",
///             type: azure_native.monitor.ExporterType.AzureMonitorWorkspaceLogs,
///         }],
///         networkingConfigurations: [{
///             externalNetworkingMode: azure_native.monitor.ExternalNetworkingMode.LoadBalancerOnly,
///             host: "azuremonitorpipeline.contoso.com",
///             routes: [{
///                 receiver: "syslog-receiver1",
///             }],
///         }],
///         processors: [],
///         receivers: [{
///             name: "syslog-receiver1",
///             syslog: {
///                 endpoint: "0.0.0.0:514",
///             },
///             type: azure_native.monitor.ReceiverType.Syslog,
///         }],
///         service: {
///             pipelines: [{
///                 exporters: ["my-workspace-logs-exporter1"],
///                 name: "MyPipelineForLogs1",
///                 processors: [],
///                 receivers: ["syslog-receiver1"],
///                 type: azure_native.monitor.PipelineType.Logs,
///             }],
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     tags: {
///         tag1: "A",
///         tag2: "B",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// pipeline_group = azure_native.monitor.PipelineGroup("pipelineGroup",
///     extended_location={
///         "name": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/myTestCustomLocation",
///         "type": azure_native.monitor.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     location="eastus2",
///     pipeline_group_name="plGroup1",
///     properties={
///         "exporters": [{
///             "azure_monitor_workspace_logs": {
///                 "api": {
///                     "data_collection_endpoint_url": "https://logs-myingestion-eb0s.eastus-1.ingest.monitor.azure.com",
///                     "data_collection_rule": "dcr-00000000000000000000000000000000",
///                     "schema": {
///                         "record_map": [
///                             {
///                                 "from_": "body",
///                                 "to": "Body",
///                             },
///                             {
///                                 "from_": "severity_text",
///                                 "to": "SeverityText",
///                             },
///                             {
///                                 "from_": "time_unix_nano",
///                                 "to": "TimeGenerated",
///                             },
///                         ],
///                     },
///                     "stream": "Custom-MyTableRawData_CL",
///                 },
///                 "concurrency": {
///                     "batch_queue_size": 100,
///                     "worker_count": 4,
///                 },
///             },
///             "name": "my-workspace-logs-exporter1",
///             "type": azure_native.monitor.ExporterType.AZURE_MONITOR_WORKSPACE_LOGS,
///         }],
///         "networking_configurations": [{
///             "external_networking_mode": azure_native.monitor.ExternalNetworkingMode.LOAD_BALANCER_ONLY,
///             "host": "azuremonitorpipeline.contoso.com",
///             "routes": [{
///                 "receiver": "syslog-receiver1",
///             }],
///         }],
///         "processors": [],
///         "receivers": [{
///             "name": "syslog-receiver1",
///             "syslog": {
///                 "endpoint": "0.0.0.0:514",
///             },
///             "type": azure_native.monitor.ReceiverType.SYSLOG,
///         }],
///         "service": {
///             "pipelines": [{
///                 "exporters": ["my-workspace-logs-exporter1"],
///                 "name": "MyPipelineForLogs1",
///                 "processors": [],
///                 "receivers": ["syslog-receiver1"],
///                 "type": azure_native.monitor.PipelineType.LOGS,
///             }],
///         },
///     },
///     resource_group_name="myResourceGroup",
///     tags={
///         "tag1": "A",
///         "tag2": "B",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   pipelineGroup:
///     type: azure-native:monitor:PipelineGroup
///     properties:
///       extendedLocation:
///         name: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/myTestCustomLocation
///         type: CustomLocation
///       location: eastus2
///       pipelineGroupName: plGroup1
///       properties:
///         exporters:
///           - azureMonitorWorkspaceLogs:
///               api:
///                 dataCollectionEndpointUrl: https://logs-myingestion-eb0s.eastus-1.ingest.monitor.azure.com
///                 dataCollectionRule: dcr-00000000000000000000000000000000
///                 schema:
///                   recordMap:
///                     - from: body
///                       to: Body
///                     - from: severity_text
///                       to: SeverityText
///                     - from: time_unix_nano
///                       to: TimeGenerated
///                 stream: Custom-MyTableRawData_CL
///               concurrency:
///                 batchQueueSize: 100
///                 workerCount: 4
///             name: my-workspace-logs-exporter1
///             type: AzureMonitorWorkspaceLogs
///         networkingConfigurations:
///           - externalNetworkingMode: LoadBalancerOnly
///             host: azuremonitorpipeline.contoso.com
///             routes:
///               - receiver: syslog-receiver1
///         processors: []
///         receivers:
///           - name: syslog-receiver1
///             syslog:
///               endpoint: 0.0.0.0:514
///             type: Syslog
///         service:
///           pipelines:
///             - exporters:
///                 - my-workspace-logs-exporter1
///               name: MyPipelineForLogs1
///               processors: []
///               receivers:
///                 - syslog-receiver1
///               type: Logs
///       resourceGroupName: myResourceGroup
///       tags:
///         tag1: A
///         tag2: B
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
/// $ pulumi import azure-native:monitor:PipelineGroup plGroup1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Monitor/pipelineGroups/{pipelineGroupName}
/// ```
class PipelineGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The complex type of the extended location.
  late final pulumi.Output<
    AzureResourceManagerCommonTypesExtendedLocationResponse?
  >
  extendedLocation;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<PipelineGroupPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PipelineGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PipelineGroup]. {@macro pulumi_monitor_pipeline_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PipelineGroup(
    String name, {
    PipelineGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:monitor:PipelineGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation =
        registerOutput<
          AzureResourceManagerCommonTypesExtendedLocationResponse?
        >(
          'extendedLocation',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return AzureResourceManagerCommonTypesExtendedLocationResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<PipelineGroupPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PipelineGroupPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
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
  }
}
