import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_graph_args.dart';
import 'dataflow_graph_properties_response.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Instance dataflowEndpoint resource.
///
/// Uses Azure REST API version 2025-07-01-preview.
///
/// Other available API versions: 2025-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iotoperations [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DataflowGraph_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataflowGraph = new AzureNative.IoTOperations.DataflowGraph("dataflowGraph", new()
///     {
///         DataflowGraphName = "resource-123",
///         DataflowProfileName = "resource-123",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/F8C729F9-DF9C-4743-848F-96EE433D8E53/resourceGroups/rgiotoperations/providers/Microsoft.ExtendedLocation/customLocations/resource-123",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-123",
///         Properties = new AzureNative.IoTOperations.Inputs.DataflowGraphPropertiesArgs
///         {
///             Mode = AzureNative.IoTOperations.OperationalMode.Enabled,
///             NodeConnections = new[]
///             {
///                 new AzureNative.IoTOperations.Inputs.DataflowGraphNodeConnectionArgs
///                 {
///                     From = new AzureNative.IoTOperations.Inputs.DataflowGraphConnectionInputArgs
///                     {
///                         Name = "temperature",
///                         Schema = new AzureNative.IoTOperations.Inputs.DataflowGraphConnectionSchemaSettingsArgs
///                         {
///                             SchemaRef = "aio-sr://namespace/temperature:1",
///                             SerializationFormat = AzureNative.IoTOperations.DataflowGraphConnectionSchemaSerializationFormat.Avro,
///                         },
///                     },
///                     To = new AzureNative.IoTOperations.Inputs.DataflowGraphConnectionOutputArgs
///                     {
///                         Name = "my-graph",
///                     },
///                 },
///                 new AzureNative.IoTOperations.Inputs.DataflowGraphNodeConnectionArgs
///                 {
///                     From = new AzureNative.IoTOperations.Inputs.DataflowGraphConnectionInputArgs
///                     {
///                         Name = "my-graph.alert-output",
///                         Schema = new AzureNative.IoTOperations.Inputs.DataflowGraphConnectionSchemaSettingsArgs
///                         {
///                             SchemaRef = "aio-sr://namespace/alert:1",
///                             SerializationFormat = AzureNative.IoTOperations.DataflowGraphConnectionSchemaSerializationFormat.Avro,
///                         },
///                     },
///                     To = new AzureNative.IoTOperations.Inputs.DataflowGraphConnectionOutputArgs
///                     {
///                         Name = "fabric",
///                     },
///                 },
///                 new AzureNative.IoTOperations.Inputs.DataflowGraphNodeConnectionArgs
///                 {
///                     From = new AzureNative.IoTOperations.Inputs.DataflowGraphConnectionInputArgs
///                     {
///                         Name = "my-graph.normal-output",
///                         Schema = new AzureNative.IoTOperations.Inputs.DataflowGraphConnectionSchemaSettingsArgs
///                         {
///                             SchemaRef = "aio-sr://namespace/alert:1",
///                             SerializationFormat = AzureNative.IoTOperations.DataflowGraphConnectionSchemaSerializationFormat.Avro,
///                         },
///                     },
///                     To = new AzureNative.IoTOperations.Inputs.DataflowGraphConnectionOutputArgs
///                     {
///                         Name = "fabric",
///                     },
///                 },
///             },
///             Nodes =
///             {
///                 new AzureNative.IoTOperations.Inputs.DataflowGraphSourceNodeArgs
///                 {
///                     Name = "temperature",
///                     NodeType = "Source",
///                     SourceSettings = new AzureNative.IoTOperations.Inputs.DataflowGraphSourceSettingsArgs
///                     {
///                         DataSources = new[]
///                         {
///                             "telemetry/temperature",
///                         },
///                         EndpointRef = "default",
///                     },
///                 },
///                 new AzureNative.IoTOperations.Inputs.DataflowGraphGraphNodeArgs
///                 {
///                     GraphSettings = new AzureNative.IoTOperations.Inputs.DataflowGraphNodeGraphSettingsArgs
///                     {
///                         Artifact = "my-wasm-module:1.4.3",
///                         Configuration = new[]
///                         {
///                             new AzureNative.IoTOperations.Inputs.DataflowGraphGraphNodeConfigurationArgs
///                             {
///                                 Key = "key1",
///                                 Value = "value1",
///                             },
///                             new AzureNative.IoTOperations.Inputs.DataflowGraphGraphNodeConfigurationArgs
///                             {
///                                 Key = "key2",
///                                 Value = "value2",
///                             },
///                         },
///                         RegistryEndpointRef = "my-registry-endpoint",
///                     },
///                     Name = "my-graph",
///                     NodeType = "Graph",
///                 },
///                 new AzureNative.IoTOperations.Inputs.DataflowGraphDestinationNodeArgs
///                 {
///                     DestinationSettings = new AzureNative.IoTOperations.Inputs.DataflowGraphDestinationNodeSettingsArgs
///                     {
///                         DataDestination = "telemetry/temperature/alert",
///                         EndpointRef = "default",
///                     },
///                     Name = "alert",
///                     NodeType = "Destination",
///                 },
///                 new AzureNative.IoTOperations.Inputs.DataflowGraphDestinationNodeArgs
///                 {
///                     DestinationSettings = new AzureNative.IoTOperations.Inputs.DataflowGraphDestinationNodeSettingsArgs
///                     {
///                         DataDestination = "my-table",
///                         EndpointRef = "fabric",
///                         OutputSchemaSettings = new AzureNative.IoTOperations.Inputs.DataflowGraphDestinationSchemaSettingsArgs
///                         {
///                             SchemaRef = "aio-sr://namespace/alert-parquet:1",
///                             SerializationFormat = AzureNative.IoTOperations.DataflowGraphDestinationSchemaSerializationFormat.Parquet,
///                         },
///                     },
///                     Name = "fabric",
///                     NodeType = "Destination",
///                 },
///             },
///             RequestDiskPersistence = AzureNative.IoTOperations.OperationalMode.Enabled,
///         },
///         ResourceGroupName = "rgiotoperations",
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
/// 	iotoperations "github.com/pulumi/pulumi-azure-native-sdk/iotoperations/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iotoperations.NewDataflowGraph(ctx, "dataflowGraph", &iotoperations.DataflowGraphArgs{
/// 			DataflowGraphName:   pulumi.String("resource-123"),
/// 			DataflowProfileName: pulumi.String("resource-123"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/F8C729F9-DF9C-4743-848F-96EE433D8E53/resourceGroups/rgiotoperations/providers/Microsoft.ExtendedLocation/customLocations/resource-123"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-123"),
/// 			Properties: &iotoperations.DataflowGraphPropertiesArgs{
/// 				Mode: pulumi.String(iotoperations.OperationalModeEnabled),
/// 				NodeConnections: iotoperations.DataflowGraphNodeConnectionArray{
/// 					&iotoperations.DataflowGraphNodeConnectionArgs{
/// 						From: &iotoperations.DataflowGraphConnectionInputArgs{
/// 							Name: pulumi.String("temperature"),
/// 							Schema: &iotoperations.DataflowGraphConnectionSchemaSettingsArgs{
/// 								SchemaRef:           pulumi.String("aio-sr://namespace/temperature:1"),
/// 								SerializationFormat: pulumi.String(iotoperations.DataflowGraphConnectionSchemaSerializationFormatAvro),
/// 							},
/// 						},
/// 						To: iotoperations.DataflowGraphConnectionOutputArgs{
/// 							Name: pulumi.String("my-graph"),
/// 						},
/// 					},
/// 					&iotoperations.DataflowGraphNodeConnectionArgs{
/// 						From: &iotoperations.DataflowGraphConnectionInputArgs{
/// 							Name: pulumi.String("my-graph.alert-output"),
/// 							Schema: &iotoperations.DataflowGraphConnectionSchemaSettingsArgs{
/// 								SchemaRef:           pulumi.String("aio-sr://namespace/alert:1"),
/// 								SerializationFormat: pulumi.String(iotoperations.DataflowGraphConnectionSchemaSerializationFormatAvro),
/// 							},
/// 						},
/// 						To: iotoperations.DataflowGraphConnectionOutputArgs{
/// 							Name: pulumi.String("fabric"),
/// 						},
/// 					},
/// 					&iotoperations.DataflowGraphNodeConnectionArgs{
/// 						From: &iotoperations.DataflowGraphConnectionInputArgs{
/// 							Name: pulumi.String("my-graph.normal-output"),
/// 							Schema: &iotoperations.DataflowGraphConnectionSchemaSettingsArgs{
/// 								SchemaRef:           pulumi.String("aio-sr://namespace/alert:1"),
/// 								SerializationFormat: pulumi.String(iotoperations.DataflowGraphConnectionSchemaSerializationFormatAvro),
/// 							},
/// 						},
/// 						To: iotoperations.DataflowGraphConnectionOutputArgs{
/// 							Name: pulumi.String("fabric"),
/// 						},
/// 					},
/// 				},
/// 				Nodes: pulumi.Array{
/// 					iotoperations.DataflowGraphSourceNode{
/// 						Name:     "temperature",
/// 						NodeType: "Source",
/// 						SourceSettings: iotoperations.DataflowGraphSourceSettings{
/// 							DataSources: []string{
/// 								"telemetry/temperature",
/// 							},
/// 							EndpointRef: "default",
/// 						},
/// 					},
/// 					iotoperations.DataflowGraphGraphNode{
/// 						GraphSettings: iotoperations.DataflowGraphNodeGraphSettings{
/// 							Artifact: "my-wasm-module:1.4.3",
/// 							Configuration: []iotoperations.DataflowGraphGraphNodeConfiguration{
/// 								{
/// 									Key:   "key1",
/// 									Value: "value1",
/// 								},
/// 								{
/// 									Key:   "key2",
/// 									Value: "value2",
/// 								},
/// 							},
/// 							RegistryEndpointRef: "my-registry-endpoint",
/// 						},
/// 						Name:     "my-graph",
/// 						NodeType: "Graph",
/// 					},
/// 					iotoperations.DataflowGraphDestinationNode{
/// 						DestinationSettings: iotoperations.DataflowGraphDestinationNodeSettings{
/// 							DataDestination: "telemetry/temperature/alert",
/// 							EndpointRef:     "default",
/// 						},
/// 						Name:     "alert",
/// 						NodeType: "Destination",
/// 					},
/// 					iotoperations.DataflowGraphDestinationNode{
/// 						DestinationSettings: iotoperations.DataflowGraphDestinationNodeSettings{
/// 							DataDestination: "my-table",
/// 							EndpointRef:     "fabric",
/// 							OutputSchemaSettings: iotoperations.DataflowGraphDestinationSchemaSettings{
/// 								SchemaRef:           "aio-sr://namespace/alert-parquet:1",
/// 								SerializationFormat: iotoperations.DataflowGraphDestinationSchemaSerializationFormatParquet,
/// 							},
/// 						},
/// 						Name:     "fabric",
/// 						NodeType: "Destination",
/// 					},
/// 				},
/// 				RequestDiskPersistence: pulumi.String(iotoperations.OperationalModeEnabled),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgiotoperations"),
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
/// import com.pulumi.azurenative.iotoperations.DataflowGraph;
/// import com.pulumi.azurenative.iotoperations.DataflowGraphArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowGraphPropertiesArgs;
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
///         var dataflowGraph = new DataflowGraph("dataflowGraph", DataflowGraphArgs.builder()
///             .dataflowGraphName("resource-123")
///             .dataflowProfileName("resource-123")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/F8C729F9-DF9C-4743-848F-96EE433D8E53/resourceGroups/rgiotoperations/providers/Microsoft.ExtendedLocation/customLocations/resource-123")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-123")
///             .properties(DataflowGraphPropertiesArgs.builder()
///                 .mode("Enabled")
///                 .nodeConnections(
///                     DataflowGraphNodeConnectionArgs.builder()
///                         .from(DataflowGraphConnectionInputArgs.builder()
///                             .name("temperature")
///                             .schema(DataflowGraphConnectionSchemaSettingsArgs.builder()
///                                 .schemaRef("aio-sr://namespace/temperature:1")
///                                 .serializationFormat("Avro")
///                                 .build())
///                             .build())
///                         .to(DataflowGraphConnectionOutputArgs.builder()
///                             .name("my-graph")
///                             .build())
///                         .build(),
///                     DataflowGraphNodeConnectionArgs.builder()
///                         .from(DataflowGraphConnectionInputArgs.builder()
///                             .name("my-graph.alert-output")
///                             .schema(DataflowGraphConnectionSchemaSettingsArgs.builder()
///                                 .schemaRef("aio-sr://namespace/alert:1")
///                                 .serializationFormat("Avro")
///                                 .build())
///                             .build())
///                         .to(DataflowGraphConnectionOutputArgs.builder()
///                             .name("fabric")
///                             .build())
///                         .build(),
///                     DataflowGraphNodeConnectionArgs.builder()
///                         .from(DataflowGraphConnectionInputArgs.builder()
///                             .name("my-graph.normal-output")
///                             .schema(DataflowGraphConnectionSchemaSettingsArgs.builder()
///                                 .schemaRef("aio-sr://namespace/alert:1")
///                                 .serializationFormat("Avro")
///                                 .build())
///                             .build())
///                         .to(DataflowGraphConnectionOutputArgs.builder()
///                             .name("fabric")
///                             .build())
///                         .build())
///                 .nodes(
///                     DataflowGraphSourceNodeArgs.builder()
///                         .name("temperature")
///                         .nodeType("Source")
///                         .sourceSettings(DataflowGraphSourceSettingsArgs.builder()
///                             .dataSources("telemetry/temperature")
///                             .endpointRef("default")
///                             .build())
///                         .build(),
///                     DataflowGraphGraphNodeArgs.builder()
///                         .graphSettings(DataflowGraphNodeGraphSettingsArgs.builder()
///                             .artifact("my-wasm-module:1.4.3")
///                             .configuration(
///                                 DataflowGraphGraphNodeConfigurationArgs.builder()
///                                     .key("key1")
///                                     .value("value1")
///                                     .build(),
///                                 DataflowGraphGraphNodeConfigurationArgs.builder()
///                                     .key("key2")
///                                     .value("value2")
///                                     .build())
///                             .registryEndpointRef("my-registry-endpoint")
///                             .build())
///                         .name("my-graph")
///                         .nodeType("Graph")
///                         .build(),
///                     DataflowGraphDestinationNodeArgs.builder()
///                         .destinationSettings(DataflowGraphDestinationNodeSettingsArgs.builder()
///                             .dataDestination("telemetry/temperature/alert")
///                             .endpointRef("default")
///                             .build())
///                         .name("alert")
///                         .nodeType("Destination")
///                         .build(),
///                     DataflowGraphDestinationNodeArgs.builder()
///                         .destinationSettings(DataflowGraphDestinationNodeSettingsArgs.builder()
///                             .dataDestination("my-table")
///                             .endpointRef("fabric")
///                             .outputSchemaSettings(DataflowGraphDestinationSchemaSettingsArgs.builder()
///                                 .schemaRef("aio-sr://namespace/alert-parquet:1")
///                                 .serializationFormat("Parquet")
///                                 .build())
///                             .build())
///                         .name("fabric")
///                         .nodeType("Destination")
///                         .build())
///                 .requestDiskPersistence("Enabled")
///                 .build())
///             .resourceGroupName("rgiotoperations")
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
/// const dataflowGraph = new azure_native.iotoperations.DataflowGraph("dataflowGraph", {
///     dataflowGraphName: "resource-123",
///     dataflowProfileName: "resource-123",
///     extendedLocation: {
///         name: "/subscriptions/F8C729F9-DF9C-4743-848F-96EE433D8E53/resourceGroups/rgiotoperations/providers/Microsoft.ExtendedLocation/customLocations/resource-123",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-123",
///     properties: {
///         mode: azure_native.iotoperations.OperationalMode.Enabled,
///         nodeConnections: [
///             {
///                 from: {
///                     name: "temperature",
///                     schema: {
///                         schemaRef: "aio-sr://namespace/temperature:1",
///                         serializationFormat: azure_native.iotoperations.DataflowGraphConnectionSchemaSerializationFormat.Avro,
///                     },
///                 },
///                 to: {
///                     name: "my-graph",
///                 },
///             },
///             {
///                 from: {
///                     name: "my-graph.alert-output",
///                     schema: {
///                         schemaRef: "aio-sr://namespace/alert:1",
///                         serializationFormat: azure_native.iotoperations.DataflowGraphConnectionSchemaSerializationFormat.Avro,
///                     },
///                 },
///                 to: {
///                     name: "fabric",
///                 },
///             },
///             {
///                 from: {
///                     name: "my-graph.normal-output",
///                     schema: {
///                         schemaRef: "aio-sr://namespace/alert:1",
///                         serializationFormat: azure_native.iotoperations.DataflowGraphConnectionSchemaSerializationFormat.Avro,
///                     },
///                 },
///                 to: {
///                     name: "fabric",
///                 },
///             },
///         ],
///         nodes: [
///             {
///                 name: "temperature",
///                 nodeType: "Source",
///                 sourceSettings: {
///                     dataSources: ["telemetry/temperature"],
///                     endpointRef: "default",
///                 },
///             },
///             {
///                 graphSettings: {
///                     artifact: "my-wasm-module:1.4.3",
///                     configuration: [
///                         {
///                             key: "key1",
///                             value: "value1",
///                         },
///                         {
///                             key: "key2",
///                             value: "value2",
///                         },
///                     ],
///                     registryEndpointRef: "my-registry-endpoint",
///                 },
///                 name: "my-graph",
///                 nodeType: "Graph",
///             },
///             {
///                 destinationSettings: {
///                     dataDestination: "telemetry/temperature/alert",
///                     endpointRef: "default",
///                 },
///                 name: "alert",
///                 nodeType: "Destination",
///             },
///             {
///                 destinationSettings: {
///                     dataDestination: "my-table",
///                     endpointRef: "fabric",
///                     outputSchemaSettings: {
///                         schemaRef: "aio-sr://namespace/alert-parquet:1",
///                         serializationFormat: azure_native.iotoperations.DataflowGraphDestinationSchemaSerializationFormat.Parquet,
///                     },
///                 },
///                 name: "fabric",
///                 nodeType: "Destination",
///             },
///         ],
///         requestDiskPersistence: azure_native.iotoperations.OperationalMode.Enabled,
///     },
///     resourceGroupName: "rgiotoperations",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dataflow_graph = azure_native.iotoperations.DataflowGraph("dataflowGraph",
///     dataflow_graph_name="resource-123",
///     dataflow_profile_name="resource-123",
///     extended_location={
///         "name": "/subscriptions/F8C729F9-DF9C-4743-848F-96EE433D8E53/resourceGroups/rgiotoperations/providers/Microsoft.ExtendedLocation/customLocations/resource-123",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-123",
///     properties={
///         "mode": azure_native.iotoperations.OperationalMode.ENABLED,
///         "node_connections": [
///             {
///                 "from_": {
///                     "name": "temperature",
///                     "schema": {
///                         "schema_ref": "aio-sr://namespace/temperature:1",
///                         "serialization_format": azure_native.iotoperations.DataflowGraphConnectionSchemaSerializationFormat.AVRO,
///                     },
///                 },
///                 "to": {
///                     "name": "my-graph",
///                 },
///             },
///             {
///                 "from_": {
///                     "name": "my-graph.alert-output",
///                     "schema": {
///                         "schema_ref": "aio-sr://namespace/alert:1",
///                         "serialization_format": azure_native.iotoperations.DataflowGraphConnectionSchemaSerializationFormat.AVRO,
///                     },
///                 },
///                 "to": {
///                     "name": "fabric",
///                 },
///             },
///             {
///                 "from_": {
///                     "name": "my-graph.normal-output",
///                     "schema": {
///                         "schema_ref": "aio-sr://namespace/alert:1",
///                         "serialization_format": azure_native.iotoperations.DataflowGraphConnectionSchemaSerializationFormat.AVRO,
///                     },
///                 },
///                 "to": {
///                     "name": "fabric",
///                 },
///             },
///         ],
///         "nodes": [
///             {
///                 "name": "temperature",
///                 "node_type": "Source",
///                 "source_settings": {
///                     "data_sources": ["telemetry/temperature"],
///                     "endpoint_ref": "default",
///                 },
///             },
///             {
///                 "graph_settings": {
///                     "artifact": "my-wasm-module:1.4.3",
///                     "configuration": [
///                         {
///                             "key": "key1",
///                             "value": "value1",
///                         },
///                         {
///                             "key": "key2",
///                             "value": "value2",
///                         },
///                     ],
///                     "registry_endpoint_ref": "my-registry-endpoint",
///                 },
///                 "name": "my-graph",
///                 "node_type": "Graph",
///             },
///             {
///                 "destination_settings": {
///                     "data_destination": "telemetry/temperature/alert",
///                     "endpoint_ref": "default",
///                 },
///                 "name": "alert",
///                 "node_type": "Destination",
///             },
///             {
///                 "destination_settings": {
///                     "data_destination": "my-table",
///                     "endpoint_ref": "fabric",
///                     "output_schema_settings": {
///                         "schema_ref": "aio-sr://namespace/alert-parquet:1",
///                         "serialization_format": azure_native.iotoperations.DataflowGraphDestinationSchemaSerializationFormat.PARQUET,
///                     },
///                 },
///                 "name": "fabric",
///                 "node_type": "Destination",
///             },
///         ],
///         "request_disk_persistence": azure_native.iotoperations.OperationalMode.ENABLED,
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   dataflowGraph:
///     type: azure-native:iotoperations:DataflowGraph
///     properties:
///       dataflowGraphName: resource-123
///       dataflowProfileName: resource-123
///       extendedLocation:
///         name: /subscriptions/F8C729F9-DF9C-4743-848F-96EE433D8E53/resourceGroups/rgiotoperations/providers/Microsoft.ExtendedLocation/customLocations/resource-123
///         type: CustomLocation
///       instanceName: resource-123
///       properties:
///         mode: Enabled
///         nodeConnections:
///           - from:
///               name: temperature
///               schema:
///                 schemaRef: aio-sr://namespace/temperature:1
///                 serializationFormat: Avro
///             to:
///               name: my-graph
///           - from:
///               name: my-graph.alert-output
///               schema:
///                 schemaRef: aio-sr://namespace/alert:1
///                 serializationFormat: Avro
///             to:
///               name: fabric
///           - from:
///               name: my-graph.normal-output
///               schema:
///                 schemaRef: aio-sr://namespace/alert:1
///                 serializationFormat: Avro
///             to:
///               name: fabric
///         nodes:
///           - name: temperature
///             nodeType: Source
///             sourceSettings:
///               dataSources:
///                 - telemetry/temperature
///               endpointRef: default
///           - graphSettings:
///               artifact: my-wasm-module:1.4.3
///               configuration:
///                 - key: key1
///                   value: value1
///                 - key: key2
///                   value: value2
///               registryEndpointRef: my-registry-endpoint
///             name: my-graph
///             nodeType: Graph
///           - destinationSettings:
///               dataDestination: telemetry/temperature/alert
///               endpointRef: default
///             name: alert
///             nodeType: Destination
///           - destinationSettings:
///               dataDestination: my-table
///               endpointRef: fabric
///               outputSchemaSettings:
///                 schemaRef: aio-sr://namespace/alert-parquet:1
///                 serializationFormat: Parquet
///             name: fabric
///             nodeType: Destination
///         requestDiskPersistence: Enabled
///       resourceGroupName: rgiotoperations
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
/// $ pulumi import azure-native:iotoperations:DataflowGraph myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.IoTOperations/instances/{instanceName}/dataflowProfiles/{dataflowProfileName}/dataflowGraphs/{dataflowGraphName}
/// ```
class DataflowGraph extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Edge location of the resource.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<DataflowGraphPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DataflowGraph].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataflowGraph]. {@macro pulumi_iotoperations_dataflow_graph_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataflowGraph(
    String name, {
    DataflowGraphArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:iotoperations:DataflowGraph',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    properties = registerOutput<DataflowGraphPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataflowGraphPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
