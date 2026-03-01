import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_args.dart';
import 'dataflow_properties_response.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Instance dataflowProfile dataflow resource
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2024-08-15-preview, 2024-09-15-preview, 2025-04-01, 2025-07-01-preview, 2025-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iotoperations [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Dataflow_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataflow = new AzureNative.IoTOperations.Dataflow("dataflow", new()
///     {
///         DataflowName = "resource-name123",
///         DataflowProfileName = "resource-name123",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "qmbrfwcpwwhggszhrdjv",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.DataflowPropertiesArgs
///         {
///             Mode = AzureNative.IoTOperations.OperationalMode.Enabled,
///             Operations = new[]
///             {
///                 new AzureNative.IoTOperations.Inputs.DataflowOperationArgs
///                 {
///                     BuiltInTransformationSettings = new AzureNative.IoTOperations.Inputs.DataflowBuiltInTransformationSettingsArgs
///                     {
///                         Datasets = new[]
///                         {
///                             new AzureNative.IoTOperations.Inputs.DataflowBuiltInTransformationDatasetArgs
///                             {
///                                 Description = "Lorem ipsum odor amet, consectetuer adipiscing elit.",
///                                 Expression = "aatbwomvflemsxialv",
///                                 Inputs = new[]
///                                 {
///                                     "mosffpsslifkq",
///                                 },
///                                 Key = "qsfqcgxaxnhfumrsdsokwyv",
///                                 SchemaRef = "n",
///                             },
///                         },
///                         Filter = new[]
///                         {
///                             new AzureNative.IoTOperations.Inputs.DataflowBuiltInTransformationFilterArgs
///                             {
///                                 Description = "Lorem ipsum odor amet, consectetuer adipiscing elit.",
///                                 Expression = "n",
///                                 Inputs = new[]
///                                 {
///                                     "sxmjkbntgb",
///                                 },
///                                 Type = AzureNative.IoTOperations.FilterType.Filter,
///                             },
///                         },
///                         Map = new[]
///                         {
///                             new AzureNative.IoTOperations.Inputs.DataflowBuiltInTransformationMapArgs
///                             {
///                                 Description = "Lorem ipsum odor amet, consectetuer adipiscing elit.",
///                                 Expression = "txoiltogsarwkzalsphvlmt",
///                                 Inputs = new[]
///                                 {
///                                     "xsbxuk",
///                                 },
///                                 Output = "nvgtmkfl",
///                                 Type = AzureNative.IoTOperations.DataflowMappingType.NewProperties,
///                             },
///                         },
///                         SchemaRef = "mcdc",
///                         SerializationFormat = AzureNative.IoTOperations.TransformationSerializationFormat.Delta,
///                     },
///                     DestinationSettings = new AzureNative.IoTOperations.Inputs.DataflowDestinationOperationSettingsArgs
///                     {
///                         DataDestination = "cbrh",
///                         EndpointRef = "kybkchnzimerguekuvqlqiqdvvrt",
///                     },
///                     Name = "knnafvkwoeakm",
///                     OperationType = AzureNative.IoTOperations.OperationType.Source,
///                     SourceSettings = new AzureNative.IoTOperations.Inputs.DataflowSourceOperationSettingsArgs
///                     {
///                         AssetRef = "zayyykwmckaocywdkohmu",
///                         DataSources = new[]
///                         {
///                             "chkkpymxhp",
///                         },
///                         EndpointRef = "iixotodhvhkkfcfyrkoveslqig",
///                         SchemaRef = "pknmdzqll",
///                         SerializationFormat = AzureNative.IoTOperations.SourceSerializationFormat.Json,
///                     },
///                 },
///             },
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
/// 		_, err := iotoperations.NewDataflow(ctx, "dataflow", &iotoperations.DataflowArgs{
/// 			DataflowName:        pulumi.String("resource-name123"),
/// 			DataflowProfileName: pulumi.String("resource-name123"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("qmbrfwcpwwhggszhrdjv"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.DataflowPropertiesArgs{
/// 				Mode: pulumi.String(iotoperations.OperationalModeEnabled),
/// 				Operations: iotoperations.DataflowOperationArray{
/// 					&iotoperations.DataflowOperationArgs{
/// 						BuiltInTransformationSettings: &iotoperations.DataflowBuiltInTransformationSettingsArgs{
/// 							Datasets: iotoperations.DataflowBuiltInTransformationDatasetArray{
/// 								&iotoperations.DataflowBuiltInTransformationDatasetArgs{
/// 									Description: pulumi.String("Lorem ipsum odor amet, consectetuer adipiscing elit."),
/// 									Expression:  pulumi.String("aatbwomvflemsxialv"),
/// 									Inputs: pulumi.StringArray{
/// 										pulumi.String("mosffpsslifkq"),
/// 									},
/// 									Key:       pulumi.String("qsfqcgxaxnhfumrsdsokwyv"),
/// 									SchemaRef: pulumi.String("n"),
/// 								},
/// 							},
/// 							Filter: iotoperations.DataflowBuiltInTransformationFilterArray{
/// 								&iotoperations.DataflowBuiltInTransformationFilterArgs{
/// 									Description: pulumi.String("Lorem ipsum odor amet, consectetuer adipiscing elit."),
/// 									Expression:  pulumi.String("n"),
/// 									Inputs: pulumi.StringArray{
/// 										pulumi.String("sxmjkbntgb"),
/// 									},
/// 									Type: pulumi.String(iotoperations.FilterTypeFilter),
/// 								},
/// 							},
/// 							Map: iotoperations.DataflowBuiltInTransformationMapArray{
/// 								&iotoperations.DataflowBuiltInTransformationMapArgs{
/// 									Description: pulumi.String("Lorem ipsum odor amet, consectetuer adipiscing elit."),
/// 									Expression:  pulumi.String("txoiltogsarwkzalsphvlmt"),
/// 									Inputs: pulumi.StringArray{
/// 										pulumi.String("xsbxuk"),
/// 									},
/// 									Output: pulumi.String("nvgtmkfl"),
/// 									Type:   pulumi.String(iotoperations.DataflowMappingTypeNewProperties),
/// 								},
/// 							},
/// 							SchemaRef:           pulumi.String("mcdc"),
/// 							SerializationFormat: pulumi.String(iotoperations.TransformationSerializationFormatDelta),
/// 						},
/// 						DestinationSettings: &iotoperations.DataflowDestinationOperationSettingsArgs{
/// 							DataDestination: pulumi.String("cbrh"),
/// 							EndpointRef:     pulumi.String("kybkchnzimerguekuvqlqiqdvvrt"),
/// 						},
/// 						Name:          pulumi.String("knnafvkwoeakm"),
/// 						OperationType: pulumi.String(iotoperations.OperationTypeSource),
/// 						SourceSettings: &iotoperations.DataflowSourceOperationSettingsArgs{
/// 							AssetRef: pulumi.String("zayyykwmckaocywdkohmu"),
/// 							DataSources: pulumi.StringArray{
/// 								pulumi.String("chkkpymxhp"),
/// 							},
/// 							EndpointRef:         pulumi.String("iixotodhvhkkfcfyrkoveslqig"),
/// 							SchemaRef:           pulumi.String("pknmdzqll"),
/// 							SerializationFormat: pulumi.String(iotoperations.SourceSerializationFormatJson),
/// 						},
/// 					},
/// 				},
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
/// import com.pulumi.azurenative.iotoperations.Dataflow;
/// import com.pulumi.azurenative.iotoperations.DataflowArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowPropertiesArgs;
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
///         var dataflow = new Dataflow("dataflow", DataflowArgs.builder()
///             .dataflowName("resource-name123")
///             .dataflowProfileName("resource-name123")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("qmbrfwcpwwhggszhrdjv")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .properties(DataflowPropertiesArgs.builder()
///                 .mode("Enabled")
///                 .operations(DataflowOperationArgs.builder()
///                     .builtInTransformationSettings(DataflowBuiltInTransformationSettingsArgs.builder()
///                         .datasets(DataflowBuiltInTransformationDatasetArgs.builder()
///                             .description("Lorem ipsum odor amet, consectetuer adipiscing elit.")
///                             .expression("aatbwomvflemsxialv")
///                             .inputs("mosffpsslifkq")
///                             .key("qsfqcgxaxnhfumrsdsokwyv")
///                             .schemaRef("n")
///                             .build())
///                         .filter(DataflowBuiltInTransformationFilterArgs.builder()
///                             .description("Lorem ipsum odor amet, consectetuer adipiscing elit.")
///                             .expression("n")
///                             .inputs("sxmjkbntgb")
///                             .type("Filter")
///                             .build())
///                         .map(DataflowBuiltInTransformationMapArgs.builder()
///                             .description("Lorem ipsum odor amet, consectetuer adipiscing elit.")
///                             .expression("txoiltogsarwkzalsphvlmt")
///                             .inputs("xsbxuk")
///                             .output("nvgtmkfl")
///                             .type("NewProperties")
///                             .build())
///                         .schemaRef("mcdc")
///                         .serializationFormat("Delta")
///                         .build())
///                     .destinationSettings(DataflowDestinationOperationSettingsArgs.builder()
///                         .dataDestination("cbrh")
///                         .endpointRef("kybkchnzimerguekuvqlqiqdvvrt")
///                         .build())
///                     .name("knnafvkwoeakm")
///                     .operationType("Source")
///                     .sourceSettings(DataflowSourceOperationSettingsArgs.builder()
///                         .assetRef("zayyykwmckaocywdkohmu")
///                         .dataSources("chkkpymxhp")
///                         .endpointRef("iixotodhvhkkfcfyrkoveslqig")
///                         .schemaRef("pknmdzqll")
///                         .serializationFormat("Json")
///                         .build())
///                     .build())
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
/// const dataflow = new azure_native.iotoperations.Dataflow("dataflow", {
///     dataflowName: "resource-name123",
///     dataflowProfileName: "resource-name123",
///     extendedLocation: {
///         name: "qmbrfwcpwwhggszhrdjv",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     properties: {
///         mode: azure_native.iotoperations.OperationalMode.Enabled,
///         operations: [{
///             builtInTransformationSettings: {
///                 datasets: [{
///                     description: "Lorem ipsum odor amet, consectetuer adipiscing elit.",
///                     expression: "aatbwomvflemsxialv",
///                     inputs: ["mosffpsslifkq"],
///                     key: "qsfqcgxaxnhfumrsdsokwyv",
///                     schemaRef: "n",
///                 }],
///                 filter: [{
///                     description: "Lorem ipsum odor amet, consectetuer adipiscing elit.",
///                     expression: "n",
///                     inputs: ["sxmjkbntgb"],
///                     type: azure_native.iotoperations.FilterType.Filter,
///                 }],
///                 map: [{
///                     description: "Lorem ipsum odor amet, consectetuer adipiscing elit.",
///                     expression: "txoiltogsarwkzalsphvlmt",
///                     inputs: ["xsbxuk"],
///                     output: "nvgtmkfl",
///                     type: azure_native.iotoperations.DataflowMappingType.NewProperties,
///                 }],
///                 schemaRef: "mcdc",
///                 serializationFormat: azure_native.iotoperations.TransformationSerializationFormat.Delta,
///             },
///             destinationSettings: {
///                 dataDestination: "cbrh",
///                 endpointRef: "kybkchnzimerguekuvqlqiqdvvrt",
///             },
///             name: "knnafvkwoeakm",
///             operationType: azure_native.iotoperations.OperationType.Source,
///             sourceSettings: {
///                 assetRef: "zayyykwmckaocywdkohmu",
///                 dataSources: ["chkkpymxhp"],
///                 endpointRef: "iixotodhvhkkfcfyrkoveslqig",
///                 schemaRef: "pknmdzqll",
///                 serializationFormat: azure_native.iotoperations.SourceSerializationFormat.Json,
///             },
///         }],
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
/// dataflow = azure_native.iotoperations.Dataflow("dataflow",
///     dataflow_name="resource-name123",
///     dataflow_profile_name="resource-name123",
///     extended_location={
///         "name": "qmbrfwcpwwhggszhrdjv",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     properties={
///         "mode": azure_native.iotoperations.OperationalMode.ENABLED,
///         "operations": [{
///             "built_in_transformation_settings": {
///                 "datasets": [{
///                     "description": "Lorem ipsum odor amet, consectetuer adipiscing elit.",
///                     "expression": "aatbwomvflemsxialv",
///                     "inputs": ["mosffpsslifkq"],
///                     "key": "qsfqcgxaxnhfumrsdsokwyv",
///                     "schema_ref": "n",
///                 }],
///                 "filter": [{
///                     "description": "Lorem ipsum odor amet, consectetuer adipiscing elit.",
///                     "expression": "n",
///                     "inputs": ["sxmjkbntgb"],
///                     "type": azure_native.iotoperations.FilterType.FILTER,
///                 }],
///                 "map": [{
///                     "description": "Lorem ipsum odor amet, consectetuer adipiscing elit.",
///                     "expression": "txoiltogsarwkzalsphvlmt",
///                     "inputs": ["xsbxuk"],
///                     "output": "nvgtmkfl",
///                     "type": azure_native.iotoperations.DataflowMappingType.NEW_PROPERTIES,
///                 }],
///                 "schema_ref": "mcdc",
///                 "serialization_format": azure_native.iotoperations.TransformationSerializationFormat.DELTA,
///             },
///             "destination_settings": {
///                 "data_destination": "cbrh",
///                 "endpoint_ref": "kybkchnzimerguekuvqlqiqdvvrt",
///             },
///             "name": "knnafvkwoeakm",
///             "operation_type": azure_native.iotoperations.OperationType.SOURCE,
///             "source_settings": {
///                 "asset_ref": "zayyykwmckaocywdkohmu",
///                 "data_sources": ["chkkpymxhp"],
///                 "endpoint_ref": "iixotodhvhkkfcfyrkoveslqig",
///                 "schema_ref": "pknmdzqll",
///                 "serialization_format": azure_native.iotoperations.SourceSerializationFormat.JSON,
///             },
///         }],
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   dataflow:
///     type: azure-native:iotoperations:Dataflow
///     properties:
///       dataflowName: resource-name123
///       dataflowProfileName: resource-name123
///       extendedLocation:
///         name: qmbrfwcpwwhggszhrdjv
///         type: CustomLocation
///       instanceName: resource-name123
///       properties:
///         mode: Enabled
///         operations:
///           - builtInTransformationSettings:
///               datasets:
///                 - description: Lorem ipsum odor amet, consectetuer adipiscing elit.
///                   expression: aatbwomvflemsxialv
///                   inputs:
///                     - mosffpsslifkq
///                   key: qsfqcgxaxnhfumrsdsokwyv
///                   schemaRef: n
///               filter:
///                 - description: Lorem ipsum odor amet, consectetuer adipiscing elit.
///                   expression: n
///                   inputs:
///                     - sxmjkbntgb
///                   type: Filter
///               map:
///                 - description: Lorem ipsum odor amet, consectetuer adipiscing elit.
///                   expression: txoiltogsarwkzalsphvlmt
///                   inputs:
///                     - xsbxuk
///                   output: nvgtmkfl
///                   type: NewProperties
///               schemaRef: mcdc
///               serializationFormat: Delta
///             destinationSettings:
///               dataDestination: cbrh
///               endpointRef: kybkchnzimerguekuvqlqiqdvvrt
///             name: knnafvkwoeakm
///             operationType: Source
///             sourceSettings:
///               assetRef: zayyykwmckaocywdkohmu
///               dataSources:
///                 - chkkpymxhp
///               endpointRef: iixotodhvhkkfcfyrkoveslqig
///               schemaRef: pknmdzqll
///               serializationFormat: Json
///       resourceGroupName: rgiotoperations
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Dataflow_CreateOrUpdate_ComplexContextualization
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataflow = new AzureNative.IoTOperations.Dataflow("dataflow", new()
///     {
///         DataflowName = "aio-to-adx-contexualized",
///         DataflowProfileName = "resource-name123",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "qmbrfwcpwwhggszhrdjv",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.DataflowPropertiesArgs
///         {
///             Mode = AzureNative.IoTOperations.OperationalMode.Enabled,
///             Operations = new[]
///             {
///                 new AzureNative.IoTOperations.Inputs.DataflowOperationArgs
///                 {
///                     Name = "source1",
///                     OperationType = AzureNative.IoTOperations.OperationType.Source,
///                     SourceSettings = new AzureNative.IoTOperations.Inputs.DataflowSourceOperationSettingsArgs
///                     {
///                         DataSources = new[]
///                         {
///                             "azure-iot-operations/data/thermostat",
///                         },
///                         EndpointRef = "aio-builtin-broker-endpoint",
///                     },
///                 },
///                 new AzureNative.IoTOperations.Inputs.DataflowOperationArgs
///                 {
///                     BuiltInTransformationSettings = new AzureNative.IoTOperations.Inputs.DataflowBuiltInTransformationSettingsArgs
///                     {
///                         Datasets = new[]
///                         {
///                             new AzureNative.IoTOperations.Inputs.DataflowBuiltInTransformationDatasetArgs
///                             {
///                                 Expression = "$1 == $2",
///                                 Inputs = new[]
///                                 {
///                                     "$source.country",
///                                     "$context.country",
///                                 },
///                                 Key = "quality",
///                             },
///                         },
///                         Map = new[]
///                         {
///                             new AzureNative.IoTOperations.Inputs.DataflowBuiltInTransformationMapArgs
///                             {
///                                 Inputs = new[]
///                                 {
///                                     "*",
///                                 },
///                                 Output = "*",
///                             },
///                             new AzureNative.IoTOperations.Inputs.DataflowBuiltInTransformationMapArgs
///                             {
///                                 Inputs = new[]
///                                 {
///                                     "$context(quality).*",
///                                 },
///                                 Output = "enriched.*",
///                             },
///                         },
///                     },
///                     Name = "transformation1",
///                     OperationType = AzureNative.IoTOperations.OperationType.BuiltInTransformation,
///                 },
///                 new AzureNative.IoTOperations.Inputs.DataflowOperationArgs
///                 {
///                     DestinationSettings = new AzureNative.IoTOperations.Inputs.DataflowDestinationOperationSettingsArgs
///                     {
///                         DataDestination = "mytable",
///                         EndpointRef = "adx-endpoint",
///                     },
///                     Name = "destination1",
///                     OperationType = AzureNative.IoTOperations.OperationType.Destination,
///                 },
///             },
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
/// 		_, err := iotoperations.NewDataflow(ctx, "dataflow", &iotoperations.DataflowArgs{
/// 			DataflowName:        pulumi.String("aio-to-adx-contexualized"),
/// 			DataflowProfileName: pulumi.String("resource-name123"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("qmbrfwcpwwhggszhrdjv"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.DataflowPropertiesArgs{
/// 				Mode: pulumi.String(iotoperations.OperationalModeEnabled),
/// 				Operations: iotoperations.DataflowOperationArray{
/// 					&iotoperations.DataflowOperationArgs{
/// 						Name:          pulumi.String("source1"),
/// 						OperationType: pulumi.String(iotoperations.OperationTypeSource),
/// 						SourceSettings: &iotoperations.DataflowSourceOperationSettingsArgs{
/// 							DataSources: pulumi.StringArray{
/// 								pulumi.String("azure-iot-operations/data/thermostat"),
/// 							},
/// 							EndpointRef: pulumi.String("aio-builtin-broker-endpoint"),
/// 						},
/// 					},
/// 					&iotoperations.DataflowOperationArgs{
/// 						BuiltInTransformationSettings: &iotoperations.DataflowBuiltInTransformationSettingsArgs{
/// 							Datasets: iotoperations.DataflowBuiltInTransformationDatasetArray{
/// 								&iotoperations.DataflowBuiltInTransformationDatasetArgs{
/// 									Expression: pulumi.String("$1 == $2"),
/// 									Inputs: pulumi.StringArray{
/// 										pulumi.String("$source.country"),
/// 										pulumi.String("$context.country"),
/// 									},
/// 									Key: pulumi.String("quality"),
/// 								},
/// 							},
/// 							Map: iotoperations.DataflowBuiltInTransformationMapArray{
/// 								&iotoperations.DataflowBuiltInTransformationMapArgs{
/// 									Inputs: pulumi.StringArray{
/// 										pulumi.String("*"),
/// 									},
/// 									Output: pulumi.String("*"),
/// 								},
/// 								&iotoperations.DataflowBuiltInTransformationMapArgs{
/// 									Inputs: pulumi.StringArray{
/// 										pulumi.String("$context(quality).*"),
/// 									},
/// 									Output: pulumi.String("enriched.*"),
/// 								},
/// 							},
/// 						},
/// 						Name:          pulumi.String("transformation1"),
/// 						OperationType: pulumi.String(iotoperations.OperationTypeBuiltInTransformation),
/// 					},
/// 					&iotoperations.DataflowOperationArgs{
/// 						DestinationSettings: &iotoperations.DataflowDestinationOperationSettingsArgs{
/// 							DataDestination: pulumi.String("mytable"),
/// 							EndpointRef:     pulumi.String("adx-endpoint"),
/// 						},
/// 						Name:          pulumi.String("destination1"),
/// 						OperationType: pulumi.String(iotoperations.OperationTypeDestination),
/// 					},
/// 				},
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
/// import com.pulumi.azurenative.iotoperations.Dataflow;
/// import com.pulumi.azurenative.iotoperations.DataflowArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowPropertiesArgs;
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
///         var dataflow = new Dataflow("dataflow", DataflowArgs.builder()
///             .dataflowName("aio-to-adx-contexualized")
///             .dataflowProfileName("resource-name123")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("qmbrfwcpwwhggszhrdjv")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .properties(DataflowPropertiesArgs.builder()
///                 .mode("Enabled")
///                 .operations(
///                     DataflowOperationArgs.builder()
///                         .name("source1")
///                         .operationType("Source")
///                         .sourceSettings(DataflowSourceOperationSettingsArgs.builder()
///                             .dataSources("azure-iot-operations/data/thermostat")
///                             .endpointRef("aio-builtin-broker-endpoint")
///                             .build())
///                         .build(),
///                     DataflowOperationArgs.builder()
///                         .builtInTransformationSettings(DataflowBuiltInTransformationSettingsArgs.builder()
///                             .datasets(DataflowBuiltInTransformationDatasetArgs.builder()
///                                 .expression("$1 == $2")
///                                 .inputs(
///                                     "$source.country",
///                                     "$context.country")
///                                 .key("quality")
///                                 .build())
///                             .map(
///                                 DataflowBuiltInTransformationMapArgs.builder()
///                                     .inputs("*")
///                                     .output("*")
///                                     .build(),
///                                 DataflowBuiltInTransformationMapArgs.builder()
///                                     .inputs("$context(quality).*")
///                                     .output("enriched.*")
///                                     .build())
///                             .build())
///                         .name("transformation1")
///                         .operationType("BuiltInTransformation")
///                         .build(),
///                     DataflowOperationArgs.builder()
///                         .destinationSettings(DataflowDestinationOperationSettingsArgs.builder()
///                             .dataDestination("mytable")
///                             .endpointRef("adx-endpoint")
///                             .build())
///                         .name("destination1")
///                         .operationType("Destination")
///                         .build())
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
/// const dataflow = new azure_native.iotoperations.Dataflow("dataflow", {
///     dataflowName: "aio-to-adx-contexualized",
///     dataflowProfileName: "resource-name123",
///     extendedLocation: {
///         name: "qmbrfwcpwwhggszhrdjv",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     properties: {
///         mode: azure_native.iotoperations.OperationalMode.Enabled,
///         operations: [
///             {
///                 name: "source1",
///                 operationType: azure_native.iotoperations.OperationType.Source,
///                 sourceSettings: {
///                     dataSources: ["azure-iot-operations/data/thermostat"],
///                     endpointRef: "aio-builtin-broker-endpoint",
///                 },
///             },
///             {
///                 builtInTransformationSettings: {
///                     datasets: [{
///                         expression: "$1 == $2",
///                         inputs: [
///                             "$source.country",
///                             "$context.country",
///                         ],
///                         key: "quality",
///                     }],
///                     map: [
///                         {
///                             inputs: ["*"],
///                             output: "*",
///                         },
///                         {
///                             inputs: ["$context(quality).*"],
///                             output: "enriched.*",
///                         },
///                     ],
///                 },
///                 name: "transformation1",
///                 operationType: azure_native.iotoperations.OperationType.BuiltInTransformation,
///             },
///             {
///                 destinationSettings: {
///                     dataDestination: "mytable",
///                     endpointRef: "adx-endpoint",
///                 },
///                 name: "destination1",
///                 operationType: azure_native.iotoperations.OperationType.Destination,
///             },
///         ],
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
/// dataflow = azure_native.iotoperations.Dataflow("dataflow",
///     dataflow_name="aio-to-adx-contexualized",
///     dataflow_profile_name="resource-name123",
///     extended_location={
///         "name": "qmbrfwcpwwhggszhrdjv",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     properties={
///         "mode": azure_native.iotoperations.OperationalMode.ENABLED,
///         "operations": [
///             {
///                 "name": "source1",
///                 "operation_type": azure_native.iotoperations.OperationType.SOURCE,
///                 "source_settings": {
///                     "data_sources": ["azure-iot-operations/data/thermostat"],
///                     "endpoint_ref": "aio-builtin-broker-endpoint",
///                 },
///             },
///             {
///                 "built_in_transformation_settings": {
///                     "datasets": [{
///                         "expression": "$1 == $2",
///                         "inputs": [
///                             "$source.country",
///                             "$context.country",
///                         ],
///                         "key": "quality",
///                     }],
///                     "map": [
///                         {
///                             "inputs": ["*"],
///                             "output": "*",
///                         },
///                         {
///                             "inputs": ["$context(quality).*"],
///                             "output": "enriched.*",
///                         },
///                     ],
///                 },
///                 "name": "transformation1",
///                 "operation_type": azure_native.iotoperations.OperationType.BUILT_IN_TRANSFORMATION,
///             },
///             {
///                 "destination_settings": {
///                     "data_destination": "mytable",
///                     "endpoint_ref": "adx-endpoint",
///                 },
///                 "name": "destination1",
///                 "operation_type": azure_native.iotoperations.OperationType.DESTINATION,
///             },
///         ],
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   dataflow:
///     type: azure-native:iotoperations:Dataflow
///     properties:
///       dataflowName: aio-to-adx-contexualized
///       dataflowProfileName: resource-name123
///       extendedLocation:
///         name: qmbrfwcpwwhggszhrdjv
///         type: CustomLocation
///       instanceName: resource-name123
///       properties:
///         mode: Enabled
///         operations:
///           - name: source1
///             operationType: Source
///             sourceSettings:
///               dataSources:
///                 - azure-iot-operations/data/thermostat
///               endpointRef: aio-builtin-broker-endpoint
///           - builtInTransformationSettings:
///               datasets:
///                 - expression: $1 == $2
///                   inputs:
///                     - $source.country
///                     - $context.country
///                   key: quality
///               map:
///                 - inputs:
///                     - '*'
///                   output: '*'
///                 - inputs:
///                     - $context(quality).*
///                   output: enriched.*
///             name: transformation1
///             operationType: BuiltInTransformation
///           - destinationSettings:
///               dataDestination: mytable
///               endpointRef: adx-endpoint
///             name: destination1
///             operationType: Destination
///       resourceGroupName: rgiotoperations
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Dataflow_CreateOrUpdate_ComplexEventHub
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataflow = new AzureNative.IoTOperations.Dataflow("dataflow", new()
///     {
///         DataflowName = "aio-to-event-hub-transformed",
///         DataflowProfileName = "resource-name123",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "qmbrfwcpwwhggszhrdjv",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.DataflowPropertiesArgs
///         {
///             Mode = AzureNative.IoTOperations.OperationalMode.Enabled,
///             Operations = new[]
///             {
///                 new AzureNative.IoTOperations.Inputs.DataflowOperationArgs
///                 {
///                     Name = "source1",
///                     OperationType = AzureNative.IoTOperations.OperationType.Source,
///                     SourceSettings = new AzureNative.IoTOperations.Inputs.DataflowSourceOperationSettingsArgs
///                     {
///                         DataSources = new[]
///                         {
///                             "azure-iot-operations/data/thermostat",
///                         },
///                         EndpointRef = "aio-builtin-broker-endpoint",
///                     },
///                 },
///                 new AzureNative.IoTOperations.Inputs.DataflowOperationArgs
///                 {
///                     BuiltInTransformationSettings = new AzureNative.IoTOperations.Inputs.DataflowBuiltInTransformationSettingsArgs
///                     {
///                         Filter = new[]
///                         {
///                             new AzureNative.IoTOperations.Inputs.DataflowBuiltInTransformationFilterArgs
///                             {
///                                 Expression = "$1 > 9000 && $2 >= 8000",
///                                 Inputs = new[]
///                                 {
///                                     "temperature.Value",
///                                     "\"Tag 10\".Value",
///                                 },
///                             },
///                         },
///                         Map = new[]
///                         {
///                             new AzureNative.IoTOperations.Inputs.DataflowBuiltInTransformationMapArgs
///                             {
///                                 Inputs = new[]
///                                 {
///                                     "*",
///                                 },
///                                 Output = "*",
///                             },
///                             new AzureNative.IoTOperations.Inputs.DataflowBuiltInTransformationMapArgs
///                             {
///                                 Expression = "($1+$2)/2",
///                                 Inputs = new[]
///                                 {
///                                     "temperature.Value",
///                                     "\"Tag 10\".Value",
///                                 },
///                                 Output = "AvgTemp.Value",
///                             },
///                             new AzureNative.IoTOperations.Inputs.DataflowBuiltInTransformationMapArgs
///                             {
///                                 Expression = "true",
///                                 Inputs = new() { },
///                                 Output = "dataflow-processed",
///                             },
///                             new AzureNative.IoTOperations.Inputs.DataflowBuiltInTransformationMapArgs
///                             {
///                                 Expression = "",
///                                 Inputs = new[]
///                                 {
///                                     "temperature.SourceTimestamp",
///                                 },
///                                 Output = "",
///                             },
///                             new AzureNative.IoTOperations.Inputs.DataflowBuiltInTransformationMapArgs
///                             {
///                                 Expression = "",
///                                 Inputs = new[]
///                                 {
///                                     "\"Tag 10\"",
///                                 },
///                                 Output = "pressure",
///                             },
///                             new AzureNative.IoTOperations.Inputs.DataflowBuiltInTransformationMapArgs
///                             {
///                                 Expression = "cToF($1)",
///                                 Inputs = new[]
///                                 {
///                                     "temperature.Value",
///                                 },
///                                 Output = "temperatureF.Value",
///                             },
///                             new AzureNative.IoTOperations.Inputs.DataflowBuiltInTransformationMapArgs
///                             {
///                                 Expression = "scale ($1,0,10,0,100)",
///                                 Inputs = new[]
///                                 {
///                                     "\"Tag 10\".Value",
///                                 },
///                                 Output = "\"Scale Tag 10\".Value",
///                             },
///                         },
///                     },
///                     OperationType = AzureNative.IoTOperations.OperationType.BuiltInTransformation,
///                 },
///                 new AzureNative.IoTOperations.Inputs.DataflowOperationArgs
///                 {
///                     DestinationSettings = new AzureNative.IoTOperations.Inputs.DataflowDestinationOperationSettingsArgs
///                     {
///                         DataDestination = "myuniqueeventhub",
///                         EndpointRef = "event-hub-endpoint",
///                     },
///                     Name = "destination1",
///                     OperationType = AzureNative.IoTOperations.OperationType.Destination,
///                 },
///             },
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
/// 		_, err := iotoperations.NewDataflow(ctx, "dataflow", &iotoperations.DataflowArgs{
/// 			DataflowName:        pulumi.String("aio-to-event-hub-transformed"),
/// 			DataflowProfileName: pulumi.String("resource-name123"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("qmbrfwcpwwhggszhrdjv"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.DataflowPropertiesArgs{
/// 				Mode: pulumi.String(iotoperations.OperationalModeEnabled),
/// 				Operations: iotoperations.DataflowOperationArray{
/// 					&iotoperations.DataflowOperationArgs{
/// 						Name:          pulumi.String("source1"),
/// 						OperationType: pulumi.String(iotoperations.OperationTypeSource),
/// 						SourceSettings: &iotoperations.DataflowSourceOperationSettingsArgs{
/// 							DataSources: pulumi.StringArray{
/// 								pulumi.String("azure-iot-operations/data/thermostat"),
/// 							},
/// 							EndpointRef: pulumi.String("aio-builtin-broker-endpoint"),
/// 						},
/// 					},
/// 					&iotoperations.DataflowOperationArgs{
/// 						BuiltInTransformationSettings: &iotoperations.DataflowBuiltInTransformationSettingsArgs{
/// 							Filter: iotoperations.DataflowBuiltInTransformationFilterArray{
/// 								&iotoperations.DataflowBuiltInTransformationFilterArgs{
/// 									Expression: pulumi.String("$1 > 9000 && $2 >= 8000"),
/// 									Inputs: pulumi.StringArray{
/// 										pulumi.String("temperature.Value"),
/// 										pulumi.String("\"Tag 10\".Value"),
/// 									},
/// 								},
/// 							},
/// 							Map: iotoperations.DataflowBuiltInTransformationMapArray{
/// 								&iotoperations.DataflowBuiltInTransformationMapArgs{
/// 									Inputs: pulumi.StringArray{
/// 										pulumi.String("*"),
/// 									},
/// 									Output: pulumi.String("*"),
/// 								},
/// 								&iotoperations.DataflowBuiltInTransformationMapArgs{
/// 									Expression: pulumi.String("($1+$2)/2"),
/// 									Inputs: pulumi.StringArray{
/// 										pulumi.String("temperature.Value"),
/// 										pulumi.String("\"Tag 10\".Value"),
/// 									},
/// 									Output: pulumi.String("AvgTemp.Value"),
/// 								},
/// 								&iotoperations.DataflowBuiltInTransformationMapArgs{
/// 									Expression: pulumi.String("true"),
/// 									Inputs:     pulumi.StringArray{},
/// 									Output:     pulumi.String("dataflow-processed"),
/// 								},
/// 								&iotoperations.DataflowBuiltInTransformationMapArgs{
/// 									Expression: pulumi.String(""),
/// 									Inputs: pulumi.StringArray{
/// 										pulumi.String("temperature.SourceTimestamp"),
/// 									},
/// 									Output: pulumi.String(""),
/// 								},
/// 								&iotoperations.DataflowBuiltInTransformationMapArgs{
/// 									Expression: pulumi.String(""),
/// 									Inputs: pulumi.StringArray{
/// 										pulumi.String("\"Tag 10\""),
/// 									},
/// 									Output: pulumi.String("pressure"),
/// 								},
/// 								&iotoperations.DataflowBuiltInTransformationMapArgs{
/// 									Expression: pulumi.String("cToF($1)"),
/// 									Inputs: pulumi.StringArray{
/// 										pulumi.String("temperature.Value"),
/// 									},
/// 									Output: pulumi.String("temperatureF.Value"),
/// 								},
/// 								&iotoperations.DataflowBuiltInTransformationMapArgs{
/// 									Expression: pulumi.String("scale ($1,0,10,0,100)"),
/// 									Inputs: pulumi.StringArray{
/// 										pulumi.String("\"Tag 10\".Value"),
/// 									},
/// 									Output: pulumi.String("\"Scale Tag 10\".Value"),
/// 								},
/// 							},
/// 						},
/// 						OperationType: pulumi.String(iotoperations.OperationTypeBuiltInTransformation),
/// 					},
/// 					&iotoperations.DataflowOperationArgs{
/// 						DestinationSettings: &iotoperations.DataflowDestinationOperationSettingsArgs{
/// 							DataDestination: pulumi.String("myuniqueeventhub"),
/// 							EndpointRef:     pulumi.String("event-hub-endpoint"),
/// 						},
/// 						Name:          pulumi.String("destination1"),
/// 						OperationType: pulumi.String(iotoperations.OperationTypeDestination),
/// 					},
/// 				},
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
/// import com.pulumi.azurenative.iotoperations.Dataflow;
/// import com.pulumi.azurenative.iotoperations.DataflowArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowPropertiesArgs;
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
///         var dataflow = new Dataflow("dataflow", DataflowArgs.builder()
///             .dataflowName("aio-to-event-hub-transformed")
///             .dataflowProfileName("resource-name123")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("qmbrfwcpwwhggszhrdjv")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .properties(DataflowPropertiesArgs.builder()
///                 .mode("Enabled")
///                 .operations(
///                     DataflowOperationArgs.builder()
///                         .name("source1")
///                         .operationType("Source")
///                         .sourceSettings(DataflowSourceOperationSettingsArgs.builder()
///                             .dataSources("azure-iot-operations/data/thermostat")
///                             .endpointRef("aio-builtin-broker-endpoint")
///                             .build())
///                         .build(),
///                     DataflowOperationArgs.builder()
///                         .builtInTransformationSettings(DataflowBuiltInTransformationSettingsArgs.builder()
///                             .filter(DataflowBuiltInTransformationFilterArgs.builder()
///                                 .expression("$1 > 9000 && $2 >= 8000")
///                                 .inputs(
///                                     "temperature.Value",
///                                     "\"Tag 10\".Value")
///                                 .build())
///                             .map(
///                                 DataflowBuiltInTransformationMapArgs.builder()
///                                     .inputs("*")
///                                     .output("*")
///                                     .build(),
///                                 DataflowBuiltInTransformationMapArgs.builder()
///                                     .expression("($1+$2)/2")
///                                     .inputs(
///                                         "temperature.Value",
///                                         "\"Tag 10\".Value")
///                                     .output("AvgTemp.Value")
///                                     .build(),
///                                 DataflowBuiltInTransformationMapArgs.builder()
///                                     .expression("true")
///                                     .inputs()
///                                     .output("dataflow-processed")
///                                     .build(),
///                                 DataflowBuiltInTransformationMapArgs.builder()
///                                     .expression("")
///                                     .inputs("temperature.SourceTimestamp")
///                                     .output("")
///                                     .build(),
///                                 DataflowBuiltInTransformationMapArgs.builder()
///                                     .expression("")
///                                     .inputs("\"Tag 10\"")
///                                     .output("pressure")
///                                     .build(),
///                                 DataflowBuiltInTransformationMapArgs.builder()
///                                     .expression("cToF($1)")
///                                     .inputs("temperature.Value")
///                                     .output("temperatureF.Value")
///                                     .build(),
///                                 DataflowBuiltInTransformationMapArgs.builder()
///                                     .expression("scale ($1,0,10,0,100)")
///                                     .inputs("\"Tag 10\".Value")
///                                     .output("\"Scale Tag 10\".Value")
///                                     .build())
///                             .build())
///                         .operationType("BuiltInTransformation")
///                         .build(),
///                     DataflowOperationArgs.builder()
///                         .destinationSettings(DataflowDestinationOperationSettingsArgs.builder()
///                             .dataDestination("myuniqueeventhub")
///                             .endpointRef("event-hub-endpoint")
///                             .build())
///                         .name("destination1")
///                         .operationType("Destination")
///                         .build())
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
/// const dataflow = new azure_native.iotoperations.Dataflow("dataflow", {
///     dataflowName: "aio-to-event-hub-transformed",
///     dataflowProfileName: "resource-name123",
///     extendedLocation: {
///         name: "qmbrfwcpwwhggszhrdjv",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     properties: {
///         mode: azure_native.iotoperations.OperationalMode.Enabled,
///         operations: [
///             {
///                 name: "source1",
///                 operationType: azure_native.iotoperations.OperationType.Source,
///                 sourceSettings: {
///                     dataSources: ["azure-iot-operations/data/thermostat"],
///                     endpointRef: "aio-builtin-broker-endpoint",
///                 },
///             },
///             {
///                 builtInTransformationSettings: {
///                     filter: [{
///                         expression: "$1 > 9000 && $2 >= 8000",
///                         inputs: [
///                             "temperature.Value",
///                             "\"Tag 10\".Value",
///                         ],
///                     }],
///                     map: [
///                         {
///                             inputs: ["*"],
///                             output: "*",
///                         },
///                         {
///                             expression: "($1+$2)/2",
///                             inputs: [
///                                 "temperature.Value",
///                                 "\"Tag 10\".Value",
///                             ],
///                             output: "AvgTemp.Value",
///                         },
///                         {
///                             expression: "true",
///                             inputs: [],
///                             output: "dataflow-processed",
///                         },
///                         {
///                             expression: "",
///                             inputs: ["temperature.SourceTimestamp"],
///                             output: "",
///                         },
///                         {
///                             expression: "",
///                             inputs: ["\"Tag 10\""],
///                             output: "pressure",
///                         },
///                         {
///                             expression: "cToF($1)",
///                             inputs: ["temperature.Value"],
///                             output: "temperatureF.Value",
///                         },
///                         {
///                             expression: "scale ($1,0,10,0,100)",
///                             inputs: ["\"Tag 10\".Value"],
///                             output: "\"Scale Tag 10\".Value",
///                         },
///                     ],
///                 },
///                 operationType: azure_native.iotoperations.OperationType.BuiltInTransformation,
///             },
///             {
///                 destinationSettings: {
///                     dataDestination: "myuniqueeventhub",
///                     endpointRef: "event-hub-endpoint",
///                 },
///                 name: "destination1",
///                 operationType: azure_native.iotoperations.OperationType.Destination,
///             },
///         ],
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
/// dataflow = azure_native.iotoperations.Dataflow("dataflow",
///     dataflow_name="aio-to-event-hub-transformed",
///     dataflow_profile_name="resource-name123",
///     extended_location={
///         "name": "qmbrfwcpwwhggszhrdjv",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     properties={
///         "mode": azure_native.iotoperations.OperationalMode.ENABLED,
///         "operations": [
///             {
///                 "name": "source1",
///                 "operation_type": azure_native.iotoperations.OperationType.SOURCE,
///                 "source_settings": {
///                     "data_sources": ["azure-iot-operations/data/thermostat"],
///                     "endpoint_ref": "aio-builtin-broker-endpoint",
///                 },
///             },
///             {
///                 "built_in_transformation_settings": {
///                     "filter": [{
///                         "expression": "$1 > 9000 && $2 >= 8000",
///                         "inputs": [
///                             "temperature.Value",
///                             "\"Tag 10\".Value",
///                         ],
///                     }],
///                     "map": [
///                         {
///                             "inputs": ["*"],
///                             "output": "*",
///                         },
///                         {
///                             "expression": "($1+$2)/2",
///                             "inputs": [
///                                 "temperature.Value",
///                                 "\"Tag 10\".Value",
///                             ],
///                             "output": "AvgTemp.Value",
///                         },
///                         {
///                             "expression": "true",
///                             "inputs": [],
///                             "output": "dataflow-processed",
///                         },
///                         {
///                             "expression": "",
///                             "inputs": ["temperature.SourceTimestamp"],
///                             "output": "",
///                         },
///                         {
///                             "expression": "",
///                             "inputs": ["\"Tag 10\""],
///                             "output": "pressure",
///                         },
///                         {
///                             "expression": "cToF($1)",
///                             "inputs": ["temperature.Value"],
///                             "output": "temperatureF.Value",
///                         },
///                         {
///                             "expression": "scale ($1,0,10,0,100)",
///                             "inputs": ["\"Tag 10\".Value"],
///                             "output": "\"Scale Tag 10\".Value",
///                         },
///                     ],
///                 },
///                 "operation_type": azure_native.iotoperations.OperationType.BUILT_IN_TRANSFORMATION,
///             },
///             {
///                 "destination_settings": {
///                     "data_destination": "myuniqueeventhub",
///                     "endpoint_ref": "event-hub-endpoint",
///                 },
///                 "name": "destination1",
///                 "operation_type": azure_native.iotoperations.OperationType.DESTINATION,
///             },
///         ],
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   dataflow:
///     type: azure-native:iotoperations:Dataflow
///     properties:
///       dataflowName: aio-to-event-hub-transformed
///       dataflowProfileName: resource-name123
///       extendedLocation:
///         name: qmbrfwcpwwhggszhrdjv
///         type: CustomLocation
///       instanceName: resource-name123
///       properties:
///         mode: Enabled
///         operations:
///           - name: source1
///             operationType: Source
///             sourceSettings:
///               dataSources:
///                 - azure-iot-operations/data/thermostat
///               endpointRef: aio-builtin-broker-endpoint
///           - builtInTransformationSettings:
///               filter:
///                 - expression: $1 > 9000 && $2 >= 8000
///                   inputs:
///                     - temperature.Value
///                     - '"Tag 10".Value'
///               map:
///                 - inputs:
///                     - '*'
///                   output: '*'
///                 - expression: ($1+$2)/2
///                   inputs:
///                     - temperature.Value
///                     - '"Tag 10".Value'
///                   output: AvgTemp.Value
///                 - expression: 'true'
///                   inputs: []
///                   output: dataflow-processed
///                 - expression: ""
///                   inputs:
///                     - temperature.SourceTimestamp
///                   output: ""
///                 - expression: ""
///                   inputs:
///                     - '"Tag 10"'
///                   output: pressure
///                 - expression: cToF($1)
///                   inputs:
///                     - temperature.Value
///                   output: temperatureF.Value
///                 - expression: scale ($1,0,10,0,100)
///                   inputs:
///                     - '"Tag 10".Value'
///                   output: '"Scale Tag 10".Value'
///             operationType: BuiltInTransformation
///           - destinationSettings:
///               dataDestination: myuniqueeventhub
///               endpointRef: event-hub-endpoint
///             name: destination1
///             operationType: Destination
///       resourceGroupName: rgiotoperations
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Dataflow_CreateOrUpdate_FilterToTopic
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataflow = new AzureNative.IoTOperations.Dataflow("dataflow", new()
///     {
///         DataflowName = "mqtt-filter-to-topic",
///         DataflowProfileName = "resource-name123",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "qmbrfwcpwwhggszhrdjv",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.DataflowPropertiesArgs
///         {
///             Mode = AzureNative.IoTOperations.OperationalMode.Enabled,
///             Operations = new[]
///             {
///                 new AzureNative.IoTOperations.Inputs.DataflowOperationArgs
///                 {
///                     Name = "source1",
///                     OperationType = AzureNative.IoTOperations.OperationType.Source,
///                     SourceSettings = new AzureNative.IoTOperations.Inputs.DataflowSourceOperationSettingsArgs
///                     {
///                         DataSources = new[]
///                         {
///                             "azure-iot-operations/data/thermostat",
///                         },
///                         EndpointRef = "aio-builtin-broker-endpoint",
///                     },
///                 },
///                 new AzureNative.IoTOperations.Inputs.DataflowOperationArgs
///                 {
///                     BuiltInTransformationSettings = new AzureNative.IoTOperations.Inputs.DataflowBuiltInTransformationSettingsArgs
///                     {
///                         Filter = new[]
///                         {
///                             new AzureNative.IoTOperations.Inputs.DataflowBuiltInTransformationFilterArgs
///                             {
///                                 Description = "filter-datapoint",
///                                 Expression = "$1 > 9000 && $2 >= 8000",
///                                 Inputs = new[]
///                                 {
///                                     "temperature.Value",
///                                     "\"Tag 10\".Value",
///                                 },
///                                 Type = AzureNative.IoTOperations.FilterType.Filter,
///                             },
///                         },
///                         Map = new[]
///                         {
///                             new AzureNative.IoTOperations.Inputs.DataflowBuiltInTransformationMapArgs
///                             {
///                                 Inputs = new[]
///                                 {
///                                     "*",
///                                 },
///                                 Output = "*",
///                                 Type = AzureNative.IoTOperations.DataflowMappingType.PassThrough,
///                             },
///                         },
///                     },
///                     Name = "transformation1",
///                     OperationType = AzureNative.IoTOperations.OperationType.BuiltInTransformation,
///                 },
///                 new AzureNative.IoTOperations.Inputs.DataflowOperationArgs
///                 {
///                     DestinationSettings = new AzureNative.IoTOperations.Inputs.DataflowDestinationOperationSettingsArgs
///                     {
///                         DataDestination = "data/filtered/thermostat",
///                         EndpointRef = "aio-builtin-broker-endpoint",
///                     },
///                     Name = "destination1",
///                     OperationType = AzureNative.IoTOperations.OperationType.Destination,
///                 },
///             },
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
/// 		_, err := iotoperations.NewDataflow(ctx, "dataflow", &iotoperations.DataflowArgs{
/// 			DataflowName:        pulumi.String("mqtt-filter-to-topic"),
/// 			DataflowProfileName: pulumi.String("resource-name123"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("qmbrfwcpwwhggszhrdjv"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.DataflowPropertiesArgs{
/// 				Mode: pulumi.String(iotoperations.OperationalModeEnabled),
/// 				Operations: iotoperations.DataflowOperationArray{
/// 					&iotoperations.DataflowOperationArgs{
/// 						Name:          pulumi.String("source1"),
/// 						OperationType: pulumi.String(iotoperations.OperationTypeSource),
/// 						SourceSettings: &iotoperations.DataflowSourceOperationSettingsArgs{
/// 							DataSources: pulumi.StringArray{
/// 								pulumi.String("azure-iot-operations/data/thermostat"),
/// 							},
/// 							EndpointRef: pulumi.String("aio-builtin-broker-endpoint"),
/// 						},
/// 					},
/// 					&iotoperations.DataflowOperationArgs{
/// 						BuiltInTransformationSettings: &iotoperations.DataflowBuiltInTransformationSettingsArgs{
/// 							Filter: iotoperations.DataflowBuiltInTransformationFilterArray{
/// 								&iotoperations.DataflowBuiltInTransformationFilterArgs{
/// 									Description: pulumi.String("filter-datapoint"),
/// 									Expression:  pulumi.String("$1 > 9000 && $2 >= 8000"),
/// 									Inputs: pulumi.StringArray{
/// 										pulumi.String("temperature.Value"),
/// 										pulumi.String("\"Tag 10\".Value"),
/// 									},
/// 									Type: pulumi.String(iotoperations.FilterTypeFilter),
/// 								},
/// 							},
/// 							Map: iotoperations.DataflowBuiltInTransformationMapArray{
/// 								&iotoperations.DataflowBuiltInTransformationMapArgs{
/// 									Inputs: pulumi.StringArray{
/// 										pulumi.String("*"),
/// 									},
/// 									Output: pulumi.String("*"),
/// 									Type:   pulumi.String(iotoperations.DataflowMappingTypePassThrough),
/// 								},
/// 							},
/// 						},
/// 						Name:          pulumi.String("transformation1"),
/// 						OperationType: pulumi.String(iotoperations.OperationTypeBuiltInTransformation),
/// 					},
/// 					&iotoperations.DataflowOperationArgs{
/// 						DestinationSettings: &iotoperations.DataflowDestinationOperationSettingsArgs{
/// 							DataDestination: pulumi.String("data/filtered/thermostat"),
/// 							EndpointRef:     pulumi.String("aio-builtin-broker-endpoint"),
/// 						},
/// 						Name:          pulumi.String("destination1"),
/// 						OperationType: pulumi.String(iotoperations.OperationTypeDestination),
/// 					},
/// 				},
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
/// import com.pulumi.azurenative.iotoperations.Dataflow;
/// import com.pulumi.azurenative.iotoperations.DataflowArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowPropertiesArgs;
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
///         var dataflow = new Dataflow("dataflow", DataflowArgs.builder()
///             .dataflowName("mqtt-filter-to-topic")
///             .dataflowProfileName("resource-name123")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("qmbrfwcpwwhggszhrdjv")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .properties(DataflowPropertiesArgs.builder()
///                 .mode("Enabled")
///                 .operations(
///                     DataflowOperationArgs.builder()
///                         .name("source1")
///                         .operationType("Source")
///                         .sourceSettings(DataflowSourceOperationSettingsArgs.builder()
///                             .dataSources("azure-iot-operations/data/thermostat")
///                             .endpointRef("aio-builtin-broker-endpoint")
///                             .build())
///                         .build(),
///                     DataflowOperationArgs.builder()
///                         .builtInTransformationSettings(DataflowBuiltInTransformationSettingsArgs.builder()
///                             .filter(DataflowBuiltInTransformationFilterArgs.builder()
///                                 .description("filter-datapoint")
///                                 .expression("$1 > 9000 && $2 >= 8000")
///                                 .inputs(
///                                     "temperature.Value",
///                                     "\"Tag 10\".Value")
///                                 .type("Filter")
///                                 .build())
///                             .map(DataflowBuiltInTransformationMapArgs.builder()
///                                 .inputs("*")
///                                 .output("*")
///                                 .type("PassThrough")
///                                 .build())
///                             .build())
///                         .name("transformation1")
///                         .operationType("BuiltInTransformation")
///                         .build(),
///                     DataflowOperationArgs.builder()
///                         .destinationSettings(DataflowDestinationOperationSettingsArgs.builder()
///                             .dataDestination("data/filtered/thermostat")
///                             .endpointRef("aio-builtin-broker-endpoint")
///                             .build())
///                         .name("destination1")
///                         .operationType("Destination")
///                         .build())
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
/// const dataflow = new azure_native.iotoperations.Dataflow("dataflow", {
///     dataflowName: "mqtt-filter-to-topic",
///     dataflowProfileName: "resource-name123",
///     extendedLocation: {
///         name: "qmbrfwcpwwhggszhrdjv",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     properties: {
///         mode: azure_native.iotoperations.OperationalMode.Enabled,
///         operations: [
///             {
///                 name: "source1",
///                 operationType: azure_native.iotoperations.OperationType.Source,
///                 sourceSettings: {
///                     dataSources: ["azure-iot-operations/data/thermostat"],
///                     endpointRef: "aio-builtin-broker-endpoint",
///                 },
///             },
///             {
///                 builtInTransformationSettings: {
///                     filter: [{
///                         description: "filter-datapoint",
///                         expression: "$1 > 9000 && $2 >= 8000",
///                         inputs: [
///                             "temperature.Value",
///                             "\"Tag 10\".Value",
///                         ],
///                         type: azure_native.iotoperations.FilterType.Filter,
///                     }],
///                     map: [{
///                         inputs: ["*"],
///                         output: "*",
///                         type: azure_native.iotoperations.DataflowMappingType.PassThrough,
///                     }],
///                 },
///                 name: "transformation1",
///                 operationType: azure_native.iotoperations.OperationType.BuiltInTransformation,
///             },
///             {
///                 destinationSettings: {
///                     dataDestination: "data/filtered/thermostat",
///                     endpointRef: "aio-builtin-broker-endpoint",
///                 },
///                 name: "destination1",
///                 operationType: azure_native.iotoperations.OperationType.Destination,
///             },
///         ],
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
/// dataflow = azure_native.iotoperations.Dataflow("dataflow",
///     dataflow_name="mqtt-filter-to-topic",
///     dataflow_profile_name="resource-name123",
///     extended_location={
///         "name": "qmbrfwcpwwhggszhrdjv",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     properties={
///         "mode": azure_native.iotoperations.OperationalMode.ENABLED,
///         "operations": [
///             {
///                 "name": "source1",
///                 "operation_type": azure_native.iotoperations.OperationType.SOURCE,
///                 "source_settings": {
///                     "data_sources": ["azure-iot-operations/data/thermostat"],
///                     "endpoint_ref": "aio-builtin-broker-endpoint",
///                 },
///             },
///             {
///                 "built_in_transformation_settings": {
///                     "filter": [{
///                         "description": "filter-datapoint",
///                         "expression": "$1 > 9000 && $2 >= 8000",
///                         "inputs": [
///                             "temperature.Value",
///                             "\"Tag 10\".Value",
///                         ],
///                         "type": azure_native.iotoperations.FilterType.FILTER,
///                     }],
///                     "map": [{
///                         "inputs": ["*"],
///                         "output": "*",
///                         "type": azure_native.iotoperations.DataflowMappingType.PASS_THROUGH,
///                     }],
///                 },
///                 "name": "transformation1",
///                 "operation_type": azure_native.iotoperations.OperationType.BUILT_IN_TRANSFORMATION,
///             },
///             {
///                 "destination_settings": {
///                     "data_destination": "data/filtered/thermostat",
///                     "endpoint_ref": "aio-builtin-broker-endpoint",
///                 },
///                 "name": "destination1",
///                 "operation_type": azure_native.iotoperations.OperationType.DESTINATION,
///             },
///         ],
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   dataflow:
///     type: azure-native:iotoperations:Dataflow
///     properties:
///       dataflowName: mqtt-filter-to-topic
///       dataflowProfileName: resource-name123
///       extendedLocation:
///         name: qmbrfwcpwwhggszhrdjv
///         type: CustomLocation
///       instanceName: resource-name123
///       properties:
///         mode: Enabled
///         operations:
///           - name: source1
///             operationType: Source
///             sourceSettings:
///               dataSources:
///                 - azure-iot-operations/data/thermostat
///               endpointRef: aio-builtin-broker-endpoint
///           - builtInTransformationSettings:
///               filter:
///                 - description: filter-datapoint
///                   expression: $1 > 9000 && $2 >= 8000
///                   inputs:
///                     - temperature.Value
///                     - '"Tag 10".Value'
///                   type: Filter
///               map:
///                 - inputs:
///                     - '*'
///                   output: '*'
///                   type: PassThrough
///             name: transformation1
///             operationType: BuiltInTransformation
///           - destinationSettings:
///               dataDestination: data/filtered/thermostat
///               endpointRef: aio-builtin-broker-endpoint
///             name: destination1
///             operationType: Destination
///       resourceGroupName: rgiotoperations
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Dataflow_CreateOrUpdate_SimpleEventGrid
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataflow = new AzureNative.IoTOperations.Dataflow("dataflow", new()
///     {
///         DataflowName = "aio-to-event-grid",
///         DataflowProfileName = "resource-name123",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "qmbrfwcpwwhggszhrdjv",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.DataflowPropertiesArgs
///         {
///             Mode = AzureNative.IoTOperations.OperationalMode.Enabled,
///             Operations = new[]
///             {
///                 new AzureNative.IoTOperations.Inputs.DataflowOperationArgs
///                 {
///                     Name = "source1",
///                     OperationType = AzureNative.IoTOperations.OperationType.Source,
///                     SourceSettings = new AzureNative.IoTOperations.Inputs.DataflowSourceOperationSettingsArgs
///                     {
///                         DataSources = new[]
///                         {
///                             "thermostats/+/telemetry/temperature/#",
///                         },
///                         EndpointRef = "aio-builtin-broker-endpoint",
///                     },
///                 },
///                 new AzureNative.IoTOperations.Inputs.DataflowOperationArgs
///                 {
///                     DestinationSettings = new AzureNative.IoTOperations.Inputs.DataflowDestinationOperationSettingsArgs
///                     {
///                         DataDestination = "factory/telemetry",
///                         EndpointRef = "event-grid-endpoint",
///                     },
///                     Name = "destination1",
///                     OperationType = AzureNative.IoTOperations.OperationType.Destination,
///                 },
///             },
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
/// 		_, err := iotoperations.NewDataflow(ctx, "dataflow", &iotoperations.DataflowArgs{
/// 			DataflowName:        pulumi.String("aio-to-event-grid"),
/// 			DataflowProfileName: pulumi.String("resource-name123"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("qmbrfwcpwwhggszhrdjv"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.DataflowPropertiesArgs{
/// 				Mode: pulumi.String(iotoperations.OperationalModeEnabled),
/// 				Operations: iotoperations.DataflowOperationArray{
/// 					&iotoperations.DataflowOperationArgs{
/// 						Name:          pulumi.String("source1"),
/// 						OperationType: pulumi.String(iotoperations.OperationTypeSource),
/// 						SourceSettings: &iotoperations.DataflowSourceOperationSettingsArgs{
/// 							DataSources: pulumi.StringArray{
/// 								pulumi.String("thermostats/+/telemetry/temperature/#"),
/// 							},
/// 							EndpointRef: pulumi.String("aio-builtin-broker-endpoint"),
/// 						},
/// 					},
/// 					&iotoperations.DataflowOperationArgs{
/// 						DestinationSettings: &iotoperations.DataflowDestinationOperationSettingsArgs{
/// 							DataDestination: pulumi.String("factory/telemetry"),
/// 							EndpointRef:     pulumi.String("event-grid-endpoint"),
/// 						},
/// 						Name:          pulumi.String("destination1"),
/// 						OperationType: pulumi.String(iotoperations.OperationTypeDestination),
/// 					},
/// 				},
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
/// import com.pulumi.azurenative.iotoperations.Dataflow;
/// import com.pulumi.azurenative.iotoperations.DataflowArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowPropertiesArgs;
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
///         var dataflow = new Dataflow("dataflow", DataflowArgs.builder()
///             .dataflowName("aio-to-event-grid")
///             .dataflowProfileName("resource-name123")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("qmbrfwcpwwhggszhrdjv")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .properties(DataflowPropertiesArgs.builder()
///                 .mode("Enabled")
///                 .operations(
///                     DataflowOperationArgs.builder()
///                         .name("source1")
///                         .operationType("Source")
///                         .sourceSettings(DataflowSourceOperationSettingsArgs.builder()
///                             .dataSources("thermostats/+/telemetry/temperature/#")
///                             .endpointRef("aio-builtin-broker-endpoint")
///                             .build())
///                         .build(),
///                     DataflowOperationArgs.builder()
///                         .destinationSettings(DataflowDestinationOperationSettingsArgs.builder()
///                             .dataDestination("factory/telemetry")
///                             .endpointRef("event-grid-endpoint")
///                             .build())
///                         .name("destination1")
///                         .operationType("Destination")
///                         .build())
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
/// const dataflow = new azure_native.iotoperations.Dataflow("dataflow", {
///     dataflowName: "aio-to-event-grid",
///     dataflowProfileName: "resource-name123",
///     extendedLocation: {
///         name: "qmbrfwcpwwhggszhrdjv",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     properties: {
///         mode: azure_native.iotoperations.OperationalMode.Enabled,
///         operations: [
///             {
///                 name: "source1",
///                 operationType: azure_native.iotoperations.OperationType.Source,
///                 sourceSettings: {
///                     dataSources: ["thermostats/+/telemetry/temperature/#"],
///                     endpointRef: "aio-builtin-broker-endpoint",
///                 },
///             },
///             {
///                 destinationSettings: {
///                     dataDestination: "factory/telemetry",
///                     endpointRef: "event-grid-endpoint",
///                 },
///                 name: "destination1",
///                 operationType: azure_native.iotoperations.OperationType.Destination,
///             },
///         ],
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
/// dataflow = azure_native.iotoperations.Dataflow("dataflow",
///     dataflow_name="aio-to-event-grid",
///     dataflow_profile_name="resource-name123",
///     extended_location={
///         "name": "qmbrfwcpwwhggszhrdjv",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     properties={
///         "mode": azure_native.iotoperations.OperationalMode.ENABLED,
///         "operations": [
///             {
///                 "name": "source1",
///                 "operation_type": azure_native.iotoperations.OperationType.SOURCE,
///                 "source_settings": {
///                     "data_sources": ["thermostats/+/telemetry/temperature/#"],
///                     "endpoint_ref": "aio-builtin-broker-endpoint",
///                 },
///             },
///             {
///                 "destination_settings": {
///                     "data_destination": "factory/telemetry",
///                     "endpoint_ref": "event-grid-endpoint",
///                 },
///                 "name": "destination1",
///                 "operation_type": azure_native.iotoperations.OperationType.DESTINATION,
///             },
///         ],
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   dataflow:
///     type: azure-native:iotoperations:Dataflow
///     properties:
///       dataflowName: aio-to-event-grid
///       dataflowProfileName: resource-name123
///       extendedLocation:
///         name: qmbrfwcpwwhggszhrdjv
///         type: CustomLocation
///       instanceName: resource-name123
///       properties:
///         mode: Enabled
///         operations:
///           - name: source1
///             operationType: Source
///             sourceSettings:
///               dataSources:
///                 - thermostats/+/telemetry/temperature/#
///               endpointRef: aio-builtin-broker-endpoint
///           - destinationSettings:
///               dataDestination: factory/telemetry
///               endpointRef: event-grid-endpoint
///             name: destination1
///             operationType: Destination
///       resourceGroupName: rgiotoperations
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Dataflow_CreateOrUpdate_SimpleFabric
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataflow = new AzureNative.IoTOperations.Dataflow("dataflow", new()
///     {
///         DataflowName = "aio-to-fabric",
///         DataflowProfileName = "resource-name123",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "qmbrfwcpwwhggszhrdjv",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.DataflowPropertiesArgs
///         {
///             Mode = AzureNative.IoTOperations.OperationalMode.Enabled,
///             Operations = new[]
///             {
///                 new AzureNative.IoTOperations.Inputs.DataflowOperationArgs
///                 {
///                     Name = "source1",
///                     OperationType = AzureNative.IoTOperations.OperationType.Source,
///                     SourceSettings = new AzureNative.IoTOperations.Inputs.DataflowSourceOperationSettingsArgs
///                     {
///                         DataSources = new[]
///                         {
///                             "azure-iot-operations/data/thermostat",
///                         },
///                         EndpointRef = "aio-builtin-broker-endpoint",
///                     },
///                 },
///                 new AzureNative.IoTOperations.Inputs.DataflowOperationArgs
///                 {
///                     BuiltInTransformationSettings = new AzureNative.IoTOperations.Inputs.DataflowBuiltInTransformationSettingsArgs
///                     {
///                         SchemaRef = "aio-sr://exampleNamespace/exmapleParquetSchema:1.0.0",
///                         SerializationFormat = AzureNative.IoTOperations.TransformationSerializationFormat.Parquet,
///                     },
///                     OperationType = AzureNative.IoTOperations.OperationType.BuiltInTransformation,
///                 },
///                 new AzureNative.IoTOperations.Inputs.DataflowOperationArgs
///                 {
///                     DestinationSettings = new AzureNative.IoTOperations.Inputs.DataflowDestinationOperationSettingsArgs
///                     {
///                         DataDestination = "telemetryTable",
///                         EndpointRef = "fabric-endpoint",
///                     },
///                     Name = "destination1",
///                     OperationType = AzureNative.IoTOperations.OperationType.Destination,
///                 },
///             },
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
/// 		_, err := iotoperations.NewDataflow(ctx, "dataflow", &iotoperations.DataflowArgs{
/// 			DataflowName:        pulumi.String("aio-to-fabric"),
/// 			DataflowProfileName: pulumi.String("resource-name123"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("qmbrfwcpwwhggszhrdjv"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.DataflowPropertiesArgs{
/// 				Mode: pulumi.String(iotoperations.OperationalModeEnabled),
/// 				Operations: iotoperations.DataflowOperationArray{
/// 					&iotoperations.DataflowOperationArgs{
/// 						Name:          pulumi.String("source1"),
/// 						OperationType: pulumi.String(iotoperations.OperationTypeSource),
/// 						SourceSettings: &iotoperations.DataflowSourceOperationSettingsArgs{
/// 							DataSources: pulumi.StringArray{
/// 								pulumi.String("azure-iot-operations/data/thermostat"),
/// 							},
/// 							EndpointRef: pulumi.String("aio-builtin-broker-endpoint"),
/// 						},
/// 					},
/// 					&iotoperations.DataflowOperationArgs{
/// 						BuiltInTransformationSettings: &iotoperations.DataflowBuiltInTransformationSettingsArgs{
/// 							SchemaRef:           pulumi.String("aio-sr://exampleNamespace/exmapleParquetSchema:1.0.0"),
/// 							SerializationFormat: pulumi.String(iotoperations.TransformationSerializationFormatParquet),
/// 						},
/// 						OperationType: pulumi.String(iotoperations.OperationTypeBuiltInTransformation),
/// 					},
/// 					&iotoperations.DataflowOperationArgs{
/// 						DestinationSettings: &iotoperations.DataflowDestinationOperationSettingsArgs{
/// 							DataDestination: pulumi.String("telemetryTable"),
/// 							EndpointRef:     pulumi.String("fabric-endpoint"),
/// 						},
/// 						Name:          pulumi.String("destination1"),
/// 						OperationType: pulumi.String(iotoperations.OperationTypeDestination),
/// 					},
/// 				},
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
/// import com.pulumi.azurenative.iotoperations.Dataflow;
/// import com.pulumi.azurenative.iotoperations.DataflowArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowPropertiesArgs;
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
///         var dataflow = new Dataflow("dataflow", DataflowArgs.builder()
///             .dataflowName("aio-to-fabric")
///             .dataflowProfileName("resource-name123")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("qmbrfwcpwwhggszhrdjv")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .properties(DataflowPropertiesArgs.builder()
///                 .mode("Enabled")
///                 .operations(
///                     DataflowOperationArgs.builder()
///                         .name("source1")
///                         .operationType("Source")
///                         .sourceSettings(DataflowSourceOperationSettingsArgs.builder()
///                             .dataSources("azure-iot-operations/data/thermostat")
///                             .endpointRef("aio-builtin-broker-endpoint")
///                             .build())
///                         .build(),
///                     DataflowOperationArgs.builder()
///                         .builtInTransformationSettings(DataflowBuiltInTransformationSettingsArgs.builder()
///                             .schemaRef("aio-sr://exampleNamespace/exmapleParquetSchema:1.0.0")
///                             .serializationFormat("Parquet")
///                             .build())
///                         .operationType("BuiltInTransformation")
///                         .build(),
///                     DataflowOperationArgs.builder()
///                         .destinationSettings(DataflowDestinationOperationSettingsArgs.builder()
///                             .dataDestination("telemetryTable")
///                             .endpointRef("fabric-endpoint")
///                             .build())
///                         .name("destination1")
///                         .operationType("Destination")
///                         .build())
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
/// const dataflow = new azure_native.iotoperations.Dataflow("dataflow", {
///     dataflowName: "aio-to-fabric",
///     dataflowProfileName: "resource-name123",
///     extendedLocation: {
///         name: "qmbrfwcpwwhggszhrdjv",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     properties: {
///         mode: azure_native.iotoperations.OperationalMode.Enabled,
///         operations: [
///             {
///                 name: "source1",
///                 operationType: azure_native.iotoperations.OperationType.Source,
///                 sourceSettings: {
///                     dataSources: ["azure-iot-operations/data/thermostat"],
///                     endpointRef: "aio-builtin-broker-endpoint",
///                 },
///             },
///             {
///                 builtInTransformationSettings: {
///                     schemaRef: "aio-sr://exampleNamespace/exmapleParquetSchema:1.0.0",
///                     serializationFormat: azure_native.iotoperations.TransformationSerializationFormat.Parquet,
///                 },
///                 operationType: azure_native.iotoperations.OperationType.BuiltInTransformation,
///             },
///             {
///                 destinationSettings: {
///                     dataDestination: "telemetryTable",
///                     endpointRef: "fabric-endpoint",
///                 },
///                 name: "destination1",
///                 operationType: azure_native.iotoperations.OperationType.Destination,
///             },
///         ],
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
/// dataflow = azure_native.iotoperations.Dataflow("dataflow",
///     dataflow_name="aio-to-fabric",
///     dataflow_profile_name="resource-name123",
///     extended_location={
///         "name": "qmbrfwcpwwhggszhrdjv",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     properties={
///         "mode": azure_native.iotoperations.OperationalMode.ENABLED,
///         "operations": [
///             {
///                 "name": "source1",
///                 "operation_type": azure_native.iotoperations.OperationType.SOURCE,
///                 "source_settings": {
///                     "data_sources": ["azure-iot-operations/data/thermostat"],
///                     "endpoint_ref": "aio-builtin-broker-endpoint",
///                 },
///             },
///             {
///                 "built_in_transformation_settings": {
///                     "schema_ref": "aio-sr://exampleNamespace/exmapleParquetSchema:1.0.0",
///                     "serialization_format": azure_native.iotoperations.TransformationSerializationFormat.PARQUET,
///                 },
///                 "operation_type": azure_native.iotoperations.OperationType.BUILT_IN_TRANSFORMATION,
///             },
///             {
///                 "destination_settings": {
///                     "data_destination": "telemetryTable",
///                     "endpoint_ref": "fabric-endpoint",
///                 },
///                 "name": "destination1",
///                 "operation_type": azure_native.iotoperations.OperationType.DESTINATION,
///             },
///         ],
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   dataflow:
///     type: azure-native:iotoperations:Dataflow
///     properties:
///       dataflowName: aio-to-fabric
///       dataflowProfileName: resource-name123
///       extendedLocation:
///         name: qmbrfwcpwwhggszhrdjv
///         type: CustomLocation
///       instanceName: resource-name123
///       properties:
///         mode: Enabled
///         operations:
///           - name: source1
///             operationType: Source
///             sourceSettings:
///               dataSources:
///                 - azure-iot-operations/data/thermostat
///               endpointRef: aio-builtin-broker-endpoint
///           - builtInTransformationSettings:
///               schemaRef: aio-sr://exampleNamespace/exmapleParquetSchema:1.0.0
///               serializationFormat: Parquet
///             operationType: BuiltInTransformation
///           - destinationSettings:
///               dataDestination: telemetryTable
///               endpointRef: fabric-endpoint
///             name: destination1
///             operationType: Destination
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
/// $ pulumi import azure-native:iotoperations:Dataflow jxhcpwgfkxqasbexkookvxk /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.IoTOperations/instances/{instanceName}/dataflowProfiles/{dataflowProfileName}/dataflows/{dataflowName}
/// ```
class Dataflow extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Edge location of the resource.
  late final pulumi.Output<ExtendedLocationResponse> extendedLocation;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<DataflowPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Dataflow].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Dataflow]. {@macro pulumi_iotoperations_dataflow_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Dataflow(
    String name, {
    DataflowArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:iotoperations:Dataflow',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.extendedLocation = registerOutput<ExtendedLocationResponse>('extendedLocation');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<DataflowPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
