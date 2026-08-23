import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_flow_args.dart';
import 'flowlet_response.dart';
import 'system_data_response.dart';

/// Data flow resource type.
///
/// Uses Azure REST API version 2018-06-01. In version 2.x of the Azure Native provider, it used API version 2018-06-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DataFlows_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataFlow = new AzureNative.DataFactory.DataFlow("dataFlow", new()
///     {
///         DataFlowName = "exampleDataFlow",
///         FactoryName = "exampleFactoryName",
///         Properties = new AzureNative.DataFactory.Inputs.MappingDataFlowArgs
///         {
///             Description = "Sample demo data flow to convert currencies showing usage of union, derive and conditional split transformation.",
///             ScriptLines = new[]
///             {
///                 "source(output(",
///                 "PreviousConversionRate as double,",
///                 "Country as string,",
///                 "DateTime1 as string,",
///                 "CurrentConversionRate as double",
///                 "),",
///                 "allowSchemaDrift: false,",
///                 "validateSchema: false) ~> USDCurrency",
///                 "source(output(",
///                 "PreviousConversionRate as double,",
///                 "Country as string,",
///                 "DateTime1 as string,",
///                 "CurrentConversionRate as double",
///                 "),",
///                 "allowSchemaDrift: true,",
///                 "validateSchema: false) ~> CADSource",
///                 "USDCurrency, CADSource union(byName: true)~> Union",
///                 "Union derive(NewCurrencyRate = round(CurrentConversionRate*1.25)) ~> NewCurrencyColumn",
///                 "NewCurrencyColumn split(Country == 'USD',",
///                 "Country == 'CAD',disjoint: false) ~> ConditionalSplit1@(USD, CAD)",
///                 "ConditionalSplit1@USD sink(saveMode:'overwrite' ) ~> USDSink",
///                 "ConditionalSplit1@CAD sink(saveMode:'overwrite' ) ~> CADSink",
///             },
///             Sinks = new[]
///             {
///                 new AzureNative.DataFactory.Inputs.DataFlowSinkArgs
///                 {
///                     Dataset = new AzureNative.DataFactory.Inputs.DatasetReferenceArgs
///                     {
///                         ReferenceName = "USDOutput",
///                         Type = AzureNative.DataFactory.DatasetReferenceType.DatasetReference,
///                     },
///                     Name = "USDSink",
///                 },
///                 new AzureNative.DataFactory.Inputs.DataFlowSinkArgs
///                 {
///                     Dataset = new AzureNative.DataFactory.Inputs.DatasetReferenceArgs
///                     {
///                         ReferenceName = "CADOutput",
///                         Type = AzureNative.DataFactory.DatasetReferenceType.DatasetReference,
///                     },
///                     Name = "CADSink",
///                 },
///             },
///             Sources = new[]
///             {
///                 new AzureNative.DataFactory.Inputs.DataFlowSourceArgs
///                 {
///                     Dataset = new AzureNative.DataFactory.Inputs.DatasetReferenceArgs
///                     {
///                         ReferenceName = "CurrencyDatasetUSD",
///                         Type = AzureNative.DataFactory.DatasetReferenceType.DatasetReference,
///                     },
///                     Name = "USDCurrency",
///                 },
///                 new AzureNative.DataFactory.Inputs.DataFlowSourceArgs
///                 {
///                     Dataset = new AzureNative.DataFactory.Inputs.DatasetReferenceArgs
///                     {
///                         ReferenceName = "CurrencyDatasetCAD",
///                         Type = AzureNative.DataFactory.DatasetReferenceType.DatasetReference,
///                     },
///                     Name = "CADSource",
///                 },
///             },
///             Type = "MappingDataFlow",
///         },
///         ResourceGroupName = "exampleResourceGroup",
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
/// 	datafactory "github.com/pulumi/pulumi-azure-native-sdk/datafactory/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datafactory.NewDataFlow(ctx, "dataFlow", &datafactory.DataFlowArgs{
/// 			DataFlowName: pulumi.String("exampleDataFlow"),
/// 			FactoryName:  pulumi.String("exampleFactoryName"),
/// 			Properties: &datafactory.MappingDataFlowArgs{
/// 				Description: pulumi.String("Sample demo data flow to convert currencies showing usage of union, derive and conditional split transformation."),
/// 				ScriptLines: pulumi.StringArray{
/// 					pulumi.String("source(output("),
/// 					pulumi.String("PreviousConversionRate as double,"),
/// 					pulumi.String("Country as string,"),
/// 					pulumi.String("DateTime1 as string,"),
/// 					pulumi.String("CurrentConversionRate as double"),
/// 					pulumi.String("),"),
/// 					pulumi.String("allowSchemaDrift: false,"),
/// 					pulumi.String("validateSchema: false) ~> USDCurrency"),
/// 					pulumi.String("source(output("),
/// 					pulumi.String("PreviousConversionRate as double,"),
/// 					pulumi.String("Country as string,"),
/// 					pulumi.String("DateTime1 as string,"),
/// 					pulumi.String("CurrentConversionRate as double"),
/// 					pulumi.String("),"),
/// 					pulumi.String("allowSchemaDrift: true,"),
/// 					pulumi.String("validateSchema: false) ~> CADSource"),
/// 					pulumi.String("USDCurrency, CADSource union(byName: true)~> Union"),
/// 					pulumi.String("Union derive(NewCurrencyRate = round(CurrentConversionRate*1.25)) ~> NewCurrencyColumn"),
/// 					pulumi.String("NewCurrencyColumn split(Country == 'USD',"),
/// 					pulumi.String("Country == 'CAD',disjoint: false) ~> ConditionalSplit1@(USD, CAD)"),
/// 					pulumi.String("ConditionalSplit1@USD sink(saveMode:'overwrite' ) ~> USDSink"),
/// 					pulumi.String("ConditionalSplit1@CAD sink(saveMode:'overwrite' ) ~> CADSink"),
/// 				},
/// 				Sinks: datafactory.DataFlowSinkArray{
/// 					&datafactory.DataFlowSinkArgs{
/// 						Dataset: &datafactory.DatasetReferenceArgs{
/// 							ReferenceName: pulumi.String("USDOutput"),
/// 							Type:          pulumi.String(datafactory.DatasetReferenceTypeDatasetReference),
/// 						},
/// 						Name: pulumi.String("USDSink"),
/// 					},
/// 					&datafactory.DataFlowSinkArgs{
/// 						Dataset: &datafactory.DatasetReferenceArgs{
/// 							ReferenceName: pulumi.String("CADOutput"),
/// 							Type:          pulumi.String(datafactory.DatasetReferenceTypeDatasetReference),
/// 						},
/// 						Name: pulumi.String("CADSink"),
/// 					},
/// 				},
/// 				Sources: datafactory.DataFlowSourceArray{
/// 					&datafactory.DataFlowSourceArgs{
/// 						Dataset: &datafactory.DatasetReferenceArgs{
/// 							ReferenceName: pulumi.String("CurrencyDatasetUSD"),
/// 							Type:          pulumi.String(datafactory.DatasetReferenceTypeDatasetReference),
/// 						},
/// 						Name: pulumi.String("USDCurrency"),
/// 					},
/// 					&datafactory.DataFlowSourceArgs{
/// 						Dataset: &datafactory.DatasetReferenceArgs{
/// 							ReferenceName: pulumi.String("CurrencyDatasetCAD"),
/// 							Type:          pulumi.String(datafactory.DatasetReferenceTypeDatasetReference),
/// 						},
/// 						Name: pulumi.String("CADSource"),
/// 					},
/// 				},
/// 				Type: pulumi.String("MappingDataFlow"),
/// 			},
/// 			ResourceGroupName: pulumi.String("exampleResourceGroup"),
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
/// resource "azure-native_datafactory_dataflow" "dataFlow" {
///   data_flow_name = "exampleDataFlow"
///   factory_name   = "exampleFactoryName"
///   properties = {
///     "description" = "Sample demo data flow to convert currencies showing usage of union, derive and conditional split transformation."
///     "scriptLines" = ["source(output(", "PreviousConversionRate as double,", "Country as string,", "DateTime1 as string,", "CurrentConversionRate as double", "),", "allowSchemaDrift: false,", "validateSchema: false) ~> USDCurrency", "source(output(", "PreviousConversionRate as double,", "Country as string,", "DateTime1 as string,", "CurrentConversionRate as double", "),", "allowSchemaDrift: true,", "validateSchema: false) ~> CADSource", "USDCurrency, CADSource union(byName: true)~> Union", "Union derive(NewCurrencyRate = round(CurrentConversionRate*1.25)) ~> NewCurrencyColumn", "NewCurrencyColumn split(Country == 'USD',", "Country == 'CAD',disjoint: false) ~> ConditionalSplit1@(USD, CAD)", "ConditionalSplit1@USD sink(saveMode:'overwrite' ) ~> USDSink", "ConditionalSplit1@CAD sink(saveMode:'overwrite' ) ~> CADSink"]
///     "sinks" = [{
///       "dataset" = {
///         "referenceName" = "USDOutput"
///         "type"          = "DatasetReference"
///       }
///       "name" = "USDSink"
///       }, {
///       "dataset" = {
///         "referenceName" = "CADOutput"
///         "type"          = "DatasetReference"
///       }
///       "name" = "CADSink"
///     }]
///     "sources" = [{
///       "dataset" = {
///         "referenceName" = "CurrencyDatasetUSD"
///         "type"          = "DatasetReference"
///       }
///       "name" = "USDCurrency"
///       }, {
///       "dataset" = {
///         "referenceName" = "CurrencyDatasetCAD"
///         "type"          = "DatasetReference"
///       }
///       "name" = "CADSource"
///     }]
///     "type" = "MappingDataFlow"
///   }
///   resource_group_name = "exampleResourceGroup"
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
/// import com.pulumi.azurenative.datafactory.DataFlow;
/// import com.pulumi.azurenative.datafactory.DataFlowArgs;
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
///         var dataFlow = new DataFlow("dataFlow", DataFlowArgs.builder()
///             .dataFlowName("exampleDataFlow")
///             .factoryName("exampleFactoryName")
///             .properties(MappingDataFlowArgs.builder()
///                 .description("Sample demo data flow to convert currencies showing usage of union, derive and conditional split transformation.")
///                 .scriptLines(
///                     "source(output(",
///                     "PreviousConversionRate as double,",
///                     "Country as string,",
///                     "DateTime1 as string,",
///                     "CurrentConversionRate as double",
///                     "),",
///                     "allowSchemaDrift: false,",
///                     "validateSchema: false) ~> USDCurrency",
///                     "source(output(",
///                     "PreviousConversionRate as double,",
///                     "Country as string,",
///                     "DateTime1 as string,",
///                     "CurrentConversionRate as double",
///                     "),",
///                     "allowSchemaDrift: true,",
///                     "validateSchema: false) ~> CADSource",
///                     "USDCurrency, CADSource union(byName: true)~> Union",
///                     "Union derive(NewCurrencyRate = round(CurrentConversionRate*1.25)) ~> NewCurrencyColumn",
///                     "NewCurrencyColumn split(Country == 'USD',",
///                     "Country == 'CAD',disjoint: false) ~> ConditionalSplit1@(USD, CAD)",
///                     "ConditionalSplit1@USD sink(saveMode:'overwrite' ) ~> USDSink",
///                     "ConditionalSplit1@CAD sink(saveMode:'overwrite' ) ~> CADSink")
///                 .sinks(
///                     DataFlowSinkArgs.builder()
///                         .dataset(DatasetReferenceArgs.builder()
///                             .referenceName("USDOutput")
///                             .type("DatasetReference")
///                             .build())
///                         .name("USDSink")
///                         .build(),
///                     DataFlowSinkArgs.builder()
///                         .dataset(DatasetReferenceArgs.builder()
///                             .referenceName("CADOutput")
///                             .type("DatasetReference")
///                             .build())
///                         .name("CADSink")
///                         .build())
///                 .sources(
///                     DataFlowSourceArgs.builder()
///                         .dataset(DatasetReferenceArgs.builder()
///                             .referenceName("CurrencyDatasetUSD")
///                             .type("DatasetReference")
///                             .build())
///                         .name("USDCurrency")
///                         .build(),
///                     DataFlowSourceArgs.builder()
///                         .dataset(DatasetReferenceArgs.builder()
///                             .referenceName("CurrencyDatasetCAD")
///                             .type("DatasetReference")
///                             .build())
///                         .name("CADSource")
///                         .build())
///                 .type("MappingDataFlow")
///                 .build())
///             .resourceGroupName("exampleResourceGroup")
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
/// const dataFlow = new azure_native.datafactory.DataFlow("dataFlow", {
///     dataFlowName: "exampleDataFlow",
///     factoryName: "exampleFactoryName",
///     properties: {
///         description: "Sample demo data flow to convert currencies showing usage of union, derive and conditional split transformation.",
///         scriptLines: [
///             "source(output(",
///             "PreviousConversionRate as double,",
///             "Country as string,",
///             "DateTime1 as string,",
///             "CurrentConversionRate as double",
///             "),",
///             "allowSchemaDrift: false,",
///             "validateSchema: false) ~> USDCurrency",
///             "source(output(",
///             "PreviousConversionRate as double,",
///             "Country as string,",
///             "DateTime1 as string,",
///             "CurrentConversionRate as double",
///             "),",
///             "allowSchemaDrift: true,",
///             "validateSchema: false) ~> CADSource",
///             "USDCurrency, CADSource union(byName: true)~> Union",
///             "Union derive(NewCurrencyRate = round(CurrentConversionRate*1.25)) ~> NewCurrencyColumn",
///             "NewCurrencyColumn split(Country == 'USD',",
///             "Country == 'CAD',disjoint: false) ~> ConditionalSplit1@(USD, CAD)",
///             "ConditionalSplit1@USD sink(saveMode:'overwrite' ) ~> USDSink",
///             "ConditionalSplit1@CAD sink(saveMode:'overwrite' ) ~> CADSink",
///         ],
///         sinks: [
///             {
///                 dataset: {
///                     referenceName: "USDOutput",
///                     type: azure_native.datafactory.DatasetReferenceType.DatasetReference,
///                 },
///                 name: "USDSink",
///             },
///             {
///                 dataset: {
///                     referenceName: "CADOutput",
///                     type: azure_native.datafactory.DatasetReferenceType.DatasetReference,
///                 },
///                 name: "CADSink",
///             },
///         ],
///         sources: [
///             {
///                 dataset: {
///                     referenceName: "CurrencyDatasetUSD",
///                     type: azure_native.datafactory.DatasetReferenceType.DatasetReference,
///                 },
///                 name: "USDCurrency",
///             },
///             {
///                 dataset: {
///                     referenceName: "CurrencyDatasetCAD",
///                     type: azure_native.datafactory.DatasetReferenceType.DatasetReference,
///                 },
///                 name: "CADSource",
///             },
///         ],
///         type: "MappingDataFlow",
///     },
///     resourceGroupName: "exampleResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// data_flow = azure_native.datafactory.DataFlow("dataFlow",
///     data_flow_name="exampleDataFlow",
///     factory_name="exampleFactoryName",
///     properties={
///         "description": "Sample demo data flow to convert currencies showing usage of union, derive and conditional split transformation.",
///         "script_lines": [
///             "source(output(",
///             "PreviousConversionRate as double,",
///             "Country as string,",
///             "DateTime1 as string,",
///             "CurrentConversionRate as double",
///             "),",
///             "allowSchemaDrift: false,",
///             "validateSchema: false) ~> USDCurrency",
///             "source(output(",
///             "PreviousConversionRate as double,",
///             "Country as string,",
///             "DateTime1 as string,",
///             "CurrentConversionRate as double",
///             "),",
///             "allowSchemaDrift: true,",
///             "validateSchema: false) ~> CADSource",
///             "USDCurrency, CADSource union(byName: true)~> Union",
///             "Union derive(NewCurrencyRate = round(CurrentConversionRate*1.25)) ~> NewCurrencyColumn",
///             "NewCurrencyColumn split(Country == 'USD',",
///             "Country == 'CAD',disjoint: false) ~> ConditionalSplit1@(USD, CAD)",
///             "ConditionalSplit1@USD sink(saveMode:'overwrite' ) ~> USDSink",
///             "ConditionalSplit1@CAD sink(saveMode:'overwrite' ) ~> CADSink",
///         ],
///         "sinks": [
///             {
///                 "dataset": {
///                     "reference_name": "USDOutput",
///                     "type": azure_native.datafactory.DatasetReferenceType.DATASET_REFERENCE,
///                 },
///                 "name": "USDSink",
///             },
///             {
///                 "dataset": {
///                     "reference_name": "CADOutput",
///                     "type": azure_native.datafactory.DatasetReferenceType.DATASET_REFERENCE,
///                 },
///                 "name": "CADSink",
///             },
///         ],
///         "sources": [
///             {
///                 "dataset": {
///                     "reference_name": "CurrencyDatasetUSD",
///                     "type": azure_native.datafactory.DatasetReferenceType.DATASET_REFERENCE,
///                 },
///                 "name": "USDCurrency",
///             },
///             {
///                 "dataset": {
///                     "reference_name": "CurrencyDatasetCAD",
///                     "type": azure_native.datafactory.DatasetReferenceType.DATASET_REFERENCE,
///                 },
///                 "name": "CADSource",
///             },
///         ],
///         "type": "MappingDataFlow",
///     },
///     resource_group_name="exampleResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   dataFlow:
///     type: azure-native:datafactory:DataFlow
///     properties:
///       dataFlowName: exampleDataFlow
///       factoryName: exampleFactoryName
///       properties:
///         description: Sample demo data flow to convert currencies showing usage of union, derive and conditional split transformation.
///         scriptLines:
///           - source(output(
///           - PreviousConversionRate as double,
///           - Country as string,
///           - DateTime1 as string,
///           - CurrentConversionRate as double
///           - ),
///           - 'allowSchemaDrift: false,'
///           - 'validateSchema: false) ~> USDCurrency'
///           - source(output(
///           - PreviousConversionRate as double,
///           - Country as string,
///           - DateTime1 as string,
///           - CurrentConversionRate as double
///           - ),
///           - 'allowSchemaDrift: true,'
///           - 'validateSchema: false) ~> CADSource'
///           - 'USDCurrency, CADSource union(byName: true)~> Union'
///           - Union derive(NewCurrencyRate = round(CurrentConversionRate*1.25)) ~> NewCurrencyColumn
///           - NewCurrencyColumn split(Country == 'USD',
///           - 'Country == ''CAD'',disjoint: false) ~> ConditionalSplit1@(USD, CAD)'
///           - ConditionalSplit1@USD sink(saveMode:'overwrite' ) ~> USDSink
///           - ConditionalSplit1@CAD sink(saveMode:'overwrite' ) ~> CADSink
///         sinks:
///           - dataset:
///               referenceName: USDOutput
///               type: DatasetReference
///             name: USDSink
///           - dataset:
///               referenceName: CADOutput
///               type: DatasetReference
///             name: CADSink
///         sources:
///           - dataset:
///               referenceName: CurrencyDatasetUSD
///               type: DatasetReference
///             name: USDCurrency
///           - dataset:
///               referenceName: CurrencyDatasetCAD
///               type: DatasetReference
///             name: CADSource
///         type: MappingDataFlow
///       resourceGroupName: exampleResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataFlows_Update
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataFlow = new AzureNative.DataFactory.DataFlow("dataFlow", new()
///     {
///         DataFlowName = "exampleDataFlow",
///         FactoryName = "exampleFactoryName",
///         Properties = new AzureNative.DataFactory.Inputs.MappingDataFlowArgs
///         {
///             Description = "Sample demo data flow to convert currencies showing usage of union, derive and conditional split transformation.",
///             ScriptLines = new[]
///             {
///                 "source(output(",
///                 "PreviousConversionRate as double,",
///                 "Country as string,",
///                 "DateTime1 as string,",
///                 "CurrentConversionRate as double",
///                 "),",
///                 "allowSchemaDrift: false,",
///                 "validateSchema: false) ~> USDCurrency",
///                 "source(output(",
///                 "PreviousConversionRate as double,",
///                 "Country as string,",
///                 "DateTime1 as string,",
///                 "CurrentConversionRate as double",
///                 "),",
///                 "allowSchemaDrift: true,",
///                 "validateSchema: false) ~> CADSource",
///                 "USDCurrency, CADSource union(byName: true)~> Union",
///                 "Union derive(NewCurrencyRate = round(CurrentConversionRate*1.25)) ~> NewCurrencyColumn",
///                 "NewCurrencyColumn split(Country == 'USD',",
///                 "Country == 'CAD',disjoint: false) ~> ConditionalSplit1@(USD, CAD)",
///                 "ConditionalSplit1@USD sink(saveMode:'overwrite' ) ~> USDSink",
///                 "ConditionalSplit1@CAD sink(saveMode:'overwrite' ) ~> CADSink",
///             },
///             Sinks = new[]
///             {
///                 new AzureNative.DataFactory.Inputs.DataFlowSinkArgs
///                 {
///                     Dataset = new AzureNative.DataFactory.Inputs.DatasetReferenceArgs
///                     {
///                         ReferenceName = "USDOutput",
///                         Type = AzureNative.DataFactory.DatasetReferenceType.DatasetReference,
///                     },
///                     Name = "USDSink",
///                 },
///                 new AzureNative.DataFactory.Inputs.DataFlowSinkArgs
///                 {
///                     Dataset = new AzureNative.DataFactory.Inputs.DatasetReferenceArgs
///                     {
///                         ReferenceName = "CADOutput",
///                         Type = AzureNative.DataFactory.DatasetReferenceType.DatasetReference,
///                     },
///                     Name = "CADSink",
///                 },
///             },
///             Sources = new[]
///             {
///                 new AzureNative.DataFactory.Inputs.DataFlowSourceArgs
///                 {
///                     Dataset = new AzureNative.DataFactory.Inputs.DatasetReferenceArgs
///                     {
///                         ReferenceName = "CurrencyDatasetUSD",
///                         Type = AzureNative.DataFactory.DatasetReferenceType.DatasetReference,
///                     },
///                     Name = "USDCurrency",
///                 },
///                 new AzureNative.DataFactory.Inputs.DataFlowSourceArgs
///                 {
///                     Dataset = new AzureNative.DataFactory.Inputs.DatasetReferenceArgs
///                     {
///                         ReferenceName = "CurrencyDatasetCAD",
///                         Type = AzureNative.DataFactory.DatasetReferenceType.DatasetReference,
///                     },
///                     Name = "CADSource",
///                 },
///             },
///             Type = "MappingDataFlow",
///         },
///         ResourceGroupName = "exampleResourceGroup",
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
/// 	datafactory "github.com/pulumi/pulumi-azure-native-sdk/datafactory/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datafactory.NewDataFlow(ctx, "dataFlow", &datafactory.DataFlowArgs{
/// 			DataFlowName: pulumi.String("exampleDataFlow"),
/// 			FactoryName:  pulumi.String("exampleFactoryName"),
/// 			Properties: &datafactory.MappingDataFlowArgs{
/// 				Description: pulumi.String("Sample demo data flow to convert currencies showing usage of union, derive and conditional split transformation."),
/// 				ScriptLines: pulumi.StringArray{
/// 					pulumi.String("source(output("),
/// 					pulumi.String("PreviousConversionRate as double,"),
/// 					pulumi.String("Country as string,"),
/// 					pulumi.String("DateTime1 as string,"),
/// 					pulumi.String("CurrentConversionRate as double"),
/// 					pulumi.String("),"),
/// 					pulumi.String("allowSchemaDrift: false,"),
/// 					pulumi.String("validateSchema: false) ~> USDCurrency"),
/// 					pulumi.String("source(output("),
/// 					pulumi.String("PreviousConversionRate as double,"),
/// 					pulumi.String("Country as string,"),
/// 					pulumi.String("DateTime1 as string,"),
/// 					pulumi.String("CurrentConversionRate as double"),
/// 					pulumi.String("),"),
/// 					pulumi.String("allowSchemaDrift: true,"),
/// 					pulumi.String("validateSchema: false) ~> CADSource"),
/// 					pulumi.String("USDCurrency, CADSource union(byName: true)~> Union"),
/// 					pulumi.String("Union derive(NewCurrencyRate = round(CurrentConversionRate*1.25)) ~> NewCurrencyColumn"),
/// 					pulumi.String("NewCurrencyColumn split(Country == 'USD',"),
/// 					pulumi.String("Country == 'CAD',disjoint: false) ~> ConditionalSplit1@(USD, CAD)"),
/// 					pulumi.String("ConditionalSplit1@USD sink(saveMode:'overwrite' ) ~> USDSink"),
/// 					pulumi.String("ConditionalSplit1@CAD sink(saveMode:'overwrite' ) ~> CADSink"),
/// 				},
/// 				Sinks: datafactory.DataFlowSinkArray{
/// 					&datafactory.DataFlowSinkArgs{
/// 						Dataset: &datafactory.DatasetReferenceArgs{
/// 							ReferenceName: pulumi.String("USDOutput"),
/// 							Type:          pulumi.String(datafactory.DatasetReferenceTypeDatasetReference),
/// 						},
/// 						Name: pulumi.String("USDSink"),
/// 					},
/// 					&datafactory.DataFlowSinkArgs{
/// 						Dataset: &datafactory.DatasetReferenceArgs{
/// 							ReferenceName: pulumi.String("CADOutput"),
/// 							Type:          pulumi.String(datafactory.DatasetReferenceTypeDatasetReference),
/// 						},
/// 						Name: pulumi.String("CADSink"),
/// 					},
/// 				},
/// 				Sources: datafactory.DataFlowSourceArray{
/// 					&datafactory.DataFlowSourceArgs{
/// 						Dataset: &datafactory.DatasetReferenceArgs{
/// 							ReferenceName: pulumi.String("CurrencyDatasetUSD"),
/// 							Type:          pulumi.String(datafactory.DatasetReferenceTypeDatasetReference),
/// 						},
/// 						Name: pulumi.String("USDCurrency"),
/// 					},
/// 					&datafactory.DataFlowSourceArgs{
/// 						Dataset: &datafactory.DatasetReferenceArgs{
/// 							ReferenceName: pulumi.String("CurrencyDatasetCAD"),
/// 							Type:          pulumi.String(datafactory.DatasetReferenceTypeDatasetReference),
/// 						},
/// 						Name: pulumi.String("CADSource"),
/// 					},
/// 				},
/// 				Type: pulumi.String("MappingDataFlow"),
/// 			},
/// 			ResourceGroupName: pulumi.String("exampleResourceGroup"),
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
/// resource "azure-native_datafactory_dataflow" "dataFlow" {
///   data_flow_name = "exampleDataFlow"
///   factory_name   = "exampleFactoryName"
///   properties = {
///     "description" = "Sample demo data flow to convert currencies showing usage of union, derive and conditional split transformation."
///     "scriptLines" = ["source(output(", "PreviousConversionRate as double,", "Country as string,", "DateTime1 as string,", "CurrentConversionRate as double", "),", "allowSchemaDrift: false,", "validateSchema: false) ~> USDCurrency", "source(output(", "PreviousConversionRate as double,", "Country as string,", "DateTime1 as string,", "CurrentConversionRate as double", "),", "allowSchemaDrift: true,", "validateSchema: false) ~> CADSource", "USDCurrency, CADSource union(byName: true)~> Union", "Union derive(NewCurrencyRate = round(CurrentConversionRate*1.25)) ~> NewCurrencyColumn", "NewCurrencyColumn split(Country == 'USD',", "Country == 'CAD',disjoint: false) ~> ConditionalSplit1@(USD, CAD)", "ConditionalSplit1@USD sink(saveMode:'overwrite' ) ~> USDSink", "ConditionalSplit1@CAD sink(saveMode:'overwrite' ) ~> CADSink"]
///     "sinks" = [{
///       "dataset" = {
///         "referenceName" = "USDOutput"
///         "type"          = "DatasetReference"
///       }
///       "name" = "USDSink"
///       }, {
///       "dataset" = {
///         "referenceName" = "CADOutput"
///         "type"          = "DatasetReference"
///       }
///       "name" = "CADSink"
///     }]
///     "sources" = [{
///       "dataset" = {
///         "referenceName" = "CurrencyDatasetUSD"
///         "type"          = "DatasetReference"
///       }
///       "name" = "USDCurrency"
///       }, {
///       "dataset" = {
///         "referenceName" = "CurrencyDatasetCAD"
///         "type"          = "DatasetReference"
///       }
///       "name" = "CADSource"
///     }]
///     "type" = "MappingDataFlow"
///   }
///   resource_group_name = "exampleResourceGroup"
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
/// import com.pulumi.azurenative.datafactory.DataFlow;
/// import com.pulumi.azurenative.datafactory.DataFlowArgs;
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
///         var dataFlow = new DataFlow("dataFlow", DataFlowArgs.builder()
///             .dataFlowName("exampleDataFlow")
///             .factoryName("exampleFactoryName")
///             .properties(MappingDataFlowArgs.builder()
///                 .description("Sample demo data flow to convert currencies showing usage of union, derive and conditional split transformation.")
///                 .scriptLines(
///                     "source(output(",
///                     "PreviousConversionRate as double,",
///                     "Country as string,",
///                     "DateTime1 as string,",
///                     "CurrentConversionRate as double",
///                     "),",
///                     "allowSchemaDrift: false,",
///                     "validateSchema: false) ~> USDCurrency",
///                     "source(output(",
///                     "PreviousConversionRate as double,",
///                     "Country as string,",
///                     "DateTime1 as string,",
///                     "CurrentConversionRate as double",
///                     "),",
///                     "allowSchemaDrift: true,",
///                     "validateSchema: false) ~> CADSource",
///                     "USDCurrency, CADSource union(byName: true)~> Union",
///                     "Union derive(NewCurrencyRate = round(CurrentConversionRate*1.25)) ~> NewCurrencyColumn",
///                     "NewCurrencyColumn split(Country == 'USD',",
///                     "Country == 'CAD',disjoint: false) ~> ConditionalSplit1@(USD, CAD)",
///                     "ConditionalSplit1@USD sink(saveMode:'overwrite' ) ~> USDSink",
///                     "ConditionalSplit1@CAD sink(saveMode:'overwrite' ) ~> CADSink")
///                 .sinks(
///                     DataFlowSinkArgs.builder()
///                         .dataset(DatasetReferenceArgs.builder()
///                             .referenceName("USDOutput")
///                             .type("DatasetReference")
///                             .build())
///                         .name("USDSink")
///                         .build(),
///                     DataFlowSinkArgs.builder()
///                         .dataset(DatasetReferenceArgs.builder()
///                             .referenceName("CADOutput")
///                             .type("DatasetReference")
///                             .build())
///                         .name("CADSink")
///                         .build())
///                 .sources(
///                     DataFlowSourceArgs.builder()
///                         .dataset(DatasetReferenceArgs.builder()
///                             .referenceName("CurrencyDatasetUSD")
///                             .type("DatasetReference")
///                             .build())
///                         .name("USDCurrency")
///                         .build(),
///                     DataFlowSourceArgs.builder()
///                         .dataset(DatasetReferenceArgs.builder()
///                             .referenceName("CurrencyDatasetCAD")
///                             .type("DatasetReference")
///                             .build())
///                         .name("CADSource")
///                         .build())
///                 .type("MappingDataFlow")
///                 .build())
///             .resourceGroupName("exampleResourceGroup")
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
/// const dataFlow = new azure_native.datafactory.DataFlow("dataFlow", {
///     dataFlowName: "exampleDataFlow",
///     factoryName: "exampleFactoryName",
///     properties: {
///         description: "Sample demo data flow to convert currencies showing usage of union, derive and conditional split transformation.",
///         scriptLines: [
///             "source(output(",
///             "PreviousConversionRate as double,",
///             "Country as string,",
///             "DateTime1 as string,",
///             "CurrentConversionRate as double",
///             "),",
///             "allowSchemaDrift: false,",
///             "validateSchema: false) ~> USDCurrency",
///             "source(output(",
///             "PreviousConversionRate as double,",
///             "Country as string,",
///             "DateTime1 as string,",
///             "CurrentConversionRate as double",
///             "),",
///             "allowSchemaDrift: true,",
///             "validateSchema: false) ~> CADSource",
///             "USDCurrency, CADSource union(byName: true)~> Union",
///             "Union derive(NewCurrencyRate = round(CurrentConversionRate*1.25)) ~> NewCurrencyColumn",
///             "NewCurrencyColumn split(Country == 'USD',",
///             "Country == 'CAD',disjoint: false) ~> ConditionalSplit1@(USD, CAD)",
///             "ConditionalSplit1@USD sink(saveMode:'overwrite' ) ~> USDSink",
///             "ConditionalSplit1@CAD sink(saveMode:'overwrite' ) ~> CADSink",
///         ],
///         sinks: [
///             {
///                 dataset: {
///                     referenceName: "USDOutput",
///                     type: azure_native.datafactory.DatasetReferenceType.DatasetReference,
///                 },
///                 name: "USDSink",
///             },
///             {
///                 dataset: {
///                     referenceName: "CADOutput",
///                     type: azure_native.datafactory.DatasetReferenceType.DatasetReference,
///                 },
///                 name: "CADSink",
///             },
///         ],
///         sources: [
///             {
///                 dataset: {
///                     referenceName: "CurrencyDatasetUSD",
///                     type: azure_native.datafactory.DatasetReferenceType.DatasetReference,
///                 },
///                 name: "USDCurrency",
///             },
///             {
///                 dataset: {
///                     referenceName: "CurrencyDatasetCAD",
///                     type: azure_native.datafactory.DatasetReferenceType.DatasetReference,
///                 },
///                 name: "CADSource",
///             },
///         ],
///         type: "MappingDataFlow",
///     },
///     resourceGroupName: "exampleResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// data_flow = azure_native.datafactory.DataFlow("dataFlow",
///     data_flow_name="exampleDataFlow",
///     factory_name="exampleFactoryName",
///     properties={
///         "description": "Sample demo data flow to convert currencies showing usage of union, derive and conditional split transformation.",
///         "script_lines": [
///             "source(output(",
///             "PreviousConversionRate as double,",
///             "Country as string,",
///             "DateTime1 as string,",
///             "CurrentConversionRate as double",
///             "),",
///             "allowSchemaDrift: false,",
///             "validateSchema: false) ~> USDCurrency",
///             "source(output(",
///             "PreviousConversionRate as double,",
///             "Country as string,",
///             "DateTime1 as string,",
///             "CurrentConversionRate as double",
///             "),",
///             "allowSchemaDrift: true,",
///             "validateSchema: false) ~> CADSource",
///             "USDCurrency, CADSource union(byName: true)~> Union",
///             "Union derive(NewCurrencyRate = round(CurrentConversionRate*1.25)) ~> NewCurrencyColumn",
///             "NewCurrencyColumn split(Country == 'USD',",
///             "Country == 'CAD',disjoint: false) ~> ConditionalSplit1@(USD, CAD)",
///             "ConditionalSplit1@USD sink(saveMode:'overwrite' ) ~> USDSink",
///             "ConditionalSplit1@CAD sink(saveMode:'overwrite' ) ~> CADSink",
///         ],
///         "sinks": [
///             {
///                 "dataset": {
///                     "reference_name": "USDOutput",
///                     "type": azure_native.datafactory.DatasetReferenceType.DATASET_REFERENCE,
///                 },
///                 "name": "USDSink",
///             },
///             {
///                 "dataset": {
///                     "reference_name": "CADOutput",
///                     "type": azure_native.datafactory.DatasetReferenceType.DATASET_REFERENCE,
///                 },
///                 "name": "CADSink",
///             },
///         ],
///         "sources": [
///             {
///                 "dataset": {
///                     "reference_name": "CurrencyDatasetUSD",
///                     "type": azure_native.datafactory.DatasetReferenceType.DATASET_REFERENCE,
///                 },
///                 "name": "USDCurrency",
///             },
///             {
///                 "dataset": {
///                     "reference_name": "CurrencyDatasetCAD",
///                     "type": azure_native.datafactory.DatasetReferenceType.DATASET_REFERENCE,
///                 },
///                 "name": "CADSource",
///             },
///         ],
///         "type": "MappingDataFlow",
///     },
///     resource_group_name="exampleResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   dataFlow:
///     type: azure-native:datafactory:DataFlow
///     properties:
///       dataFlowName: exampleDataFlow
///       factoryName: exampleFactoryName
///       properties:
///         description: Sample demo data flow to convert currencies showing usage of union, derive and conditional split transformation.
///         scriptLines:
///           - source(output(
///           - PreviousConversionRate as double,
///           - Country as string,
///           - DateTime1 as string,
///           - CurrentConversionRate as double
///           - ),
///           - 'allowSchemaDrift: false,'
///           - 'validateSchema: false) ~> USDCurrency'
///           - source(output(
///           - PreviousConversionRate as double,
///           - Country as string,
///           - DateTime1 as string,
///           - CurrentConversionRate as double
///           - ),
///           - 'allowSchemaDrift: true,'
///           - 'validateSchema: false) ~> CADSource'
///           - 'USDCurrency, CADSource union(byName: true)~> Union'
///           - Union derive(NewCurrencyRate = round(CurrentConversionRate*1.25)) ~> NewCurrencyColumn
///           - NewCurrencyColumn split(Country == 'USD',
///           - 'Country == ''CAD'',disjoint: false) ~> ConditionalSplit1@(USD, CAD)'
///           - ConditionalSplit1@USD sink(saveMode:'overwrite' ) ~> USDSink
///           - ConditionalSplit1@CAD sink(saveMode:'overwrite' ) ~> CADSink
///         sinks:
///           - dataset:
///               referenceName: USDOutput
///               type: DatasetReference
///             name: USDSink
///           - dataset:
///               referenceName: CADOutput
///               type: DatasetReference
///             name: CADSink
///         sources:
///           - dataset:
///               referenceName: CurrencyDatasetUSD
///               type: DatasetReference
///             name: USDCurrency
///           - dataset:
///               referenceName: CurrencyDatasetCAD
///               type: DatasetReference
///             name: CADSource
///         type: MappingDataFlow
///       resourceGroupName: exampleResourceGroup
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
/// $ pulumi import azure-native:datafactory:DataFlow exampleDataFlow /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataFactory/factories/{factoryName}/dataflows/{dataFlowName}
/// ```
class DataFlow extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// "If etag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.")
  late final pulumi.Output<String> etag;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Data flow properties.
  late final pulumi.Output<FlowletResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DataFlow].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataFlow]. {@macro pulumi_datafactory_data_flow_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataFlow(
    String name, {
    DataFlowArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datafactory:DataFlow',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<FlowletResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FlowletResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
