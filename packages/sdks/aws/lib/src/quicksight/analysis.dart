import 'package:pulumi/pulumi.dart' as pulumi;
import 'analysis_args.dart';
import 'analysis_parameters.dart';
import 'analysis_permission.dart';
import 'analysis_source_entity.dart';
import 'analysis_state.dart';

/// Resource for managing a QuickSight Analysis.
///
/// ## Example Usage
///
/// ### From Source Template
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.Analysis("example", {
///     sourceEntity: {
///         sourceTemplate: {
///             dataSetReferences: [{
///                 dataSetArn: dataset.arn,
///                 dataSetPlaceholder: "1",
///             }],
///             arn: source.arn,
///         },
///     },
///     analysisId: "example-id",
///     name: "example-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.Analysis("example",
///     source_entity={
///         "source_template": {
///             "data_set_references": [{
///                 "data_set_arn": dataset["arn"],
///                 "data_set_placeholder": "1",
///             }],
///             "arn": source["arn"],
///         },
///     },
///     analysis_id="example-id",
///     name="example-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Quicksight.Analysis("example", new()
///     {
///         SourceEntity = new Aws.Quicksight.Inputs.AnalysisSourceEntityArgs
///         {
///             SourceTemplate = new Aws.Quicksight.Inputs.AnalysisSourceEntitySourceTemplateArgs
///             {
///                 DataSetReferences = new[]
///                 {
///                     new Aws.Quicksight.Inputs.AnalysisSourceEntitySourceTemplateDataSetReferenceArgs
///                     {
///                         DataSetArn = dataset.Arn,
///                         DataSetPlaceholder = "1",
///                     },
///                 },
///                 Arn = source.Arn,
///             },
///         },
///         AnalysisId = "example-id",
///         Name = "example-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.NewAnalysis(ctx, "example", &quicksight.AnalysisArgs{
/// 			SourceEntity: &quicksight.AnalysisSourceEntityArgs{
/// 				SourceTemplate: &quicksight.AnalysisSourceEntitySourceTemplateArgs{
/// 					DataSetReferences: quicksight.AnalysisSourceEntitySourceTemplateDataSetReferenceArray{
/// 						&quicksight.AnalysisSourceEntitySourceTemplateDataSetReferenceArgs{
/// 							DataSetArn:         pulumi.Any(dataset.Arn),
/// 							DataSetPlaceholder: pulumi.String("1"),
/// 						},
/// 					},
/// 					Arn: pulumi.Any(source.Arn),
/// 				},
/// 			},
/// 			AnalysisId: pulumi.String("example-id"),
/// 			Name:       pulumi.String("example-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_quicksight_analysis" "example" {
///   source_entity = {
///     source_template = {
///       data_set_references = [{
///         "dataSetArn"         = dataset.arn
///         "dataSetPlaceholder" = "1"
///       }]
///       arn = source.arn
///     }
///   }
///   analysis_id = "example-id"
///   name        = "example-name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.quicksight.Analysis;
/// import com.pulumi.aws.quicksight.AnalysisArgs;
/// import com.pulumi.aws.quicksight.inputs.AnalysisSourceEntityArgs;
/// import com.pulumi.aws.quicksight.inputs.AnalysisSourceEntitySourceTemplateArgs;
/// import com.pulumi.aws.quicksight.inputs.AnalysisSourceEntitySourceTemplateDataSetReferenceArgs;
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
///         var example = new Analysis("example", AnalysisArgs.builder()
///             .sourceEntity(AnalysisSourceEntityArgs.builder()
///                 .sourceTemplate(AnalysisSourceEntitySourceTemplateArgs.builder()
///                     .dataSetReferences(AnalysisSourceEntitySourceTemplateDataSetReferenceArgs.builder()
///                         .dataSetArn(dataset.arn())
///                         .dataSetPlaceholder("1")
///                         .build())
///                     .arn(source.arn())
///                     .build())
///                 .build())
///             .analysisId("example-id")
///             .name("example-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:quicksight:Analysis
///     properties:
///       sourceEntity:
///         sourceTemplate:
///           dataSetReferences:
///             - dataSetArn: ${dataset.arn}
///               dataSetPlaceholder: '1'
///           arn: ${source.arn}
///       analysisId: example-id
///       name: example-name
/// ```
///
///
/// ### With Definition
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.Analysis("example", {
///     definition: {
///         dataSetIdentifiersDeclarations: [{
///             dataSetArn: dataset.arn,
///             identifier: "1",
///         }],
///         sheets: [{
///             visuals: [{
///                 lineChartVisual: {
///                     title: {
///                         formatText: {
///                             plainText: "Line Chart Example",
///                         },
///                     },
///                     chartConfiguration: {
///                         fieldWells: {
///                             lineChartAggregatedFieldWells: {
///                                 categories: [{
///                                     categoricalDimensionField: {
///                                         column: {
///                                             dataSetIdentifier: "1",
///                                             columnName: "Column1",
///                                         },
///                                         fieldId: "1",
///                                     },
///                                 }],
///                                 values: [{
///                                     categoricalMeasureField: {
///                                         column: {
///                                             dataSetIdentifier: "1",
///                                             columnName: "Column1",
///                                         },
///                                         fieldId: "2",
///                                         aggregationFunction: "COUNT",
///                                     },
///                                 }],
///                             },
///                         },
///                     },
///                     visualId: "LineChart",
///                 },
///             }],
///             title: "Example",
///             sheetId: "Example1",
///         }],
///     },
///     analysisId: "example-id",
///     name: "example-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.Analysis("example",
///     definition={
///         "dataSetIdentifiersDeclarations": [{
///             "dataSetArn": dataset["arn"],
///             "identifier": "1",
///         }],
///         "sheets": [{
///             "visuals": [{
///                 "lineChartVisual": {
///                     "title": {
///                         "formatText": {
///                             "plainText": "Line Chart Example",
///                         },
///                     },
///                     "chartConfiguration": {
///                         "fieldWells": {
///                             "lineChartAggregatedFieldWells": {
///                                 "categories": [{
///                                     "categoricalDimensionField": {
///                                         "column": {
///                                             "dataSetIdentifier": "1",
///                                             "columnName": "Column1",
///                                         },
///                                         "fieldId": "1",
///                                     },
///                                 }],
///                                 "values": [{
///                                     "categoricalMeasureField": {
///                                         "column": {
///                                             "dataSetIdentifier": "1",
///                                             "columnName": "Column1",
///                                         },
///                                         "fieldId": "2",
///                                         "aggregationFunction": "COUNT",
///                                     },
///                                 }],
///                             },
///                         },
///                     },
///                     "visualId": "LineChart",
///                 },
///             }],
///             "title": "Example",
///             "sheetId": "Example1",
///         }],
///     },
///     analysis_id="example-id",
///     name="example-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Quicksight.Analysis("example", new()
///     {
///         Definition =
///         {
///             { "dataSetIdentifiersDeclarations", new[]
///             {
///
///                 {
///                     { "dataSetArn", dataset.Arn },
///                     { "identifier", "1" },
///                 },
///             } },
///             { "sheets", new[]
///             {
///
///                 {
///                     { "visuals", new[]
///                     {
///
///                         {
///                             { "lineChartVisual",
///                             {
///                                 { "title",
///                                 {
///                                     { "formatText",
///                                     {
///                                         { "plainText", "Line Chart Example" },
///                                     } },
///                                 } },
///                                 { "chartConfiguration",
///                                 {
///                                     { "fieldWells",
///                                     {
///                                         { "lineChartAggregatedFieldWells",
///                                         {
///                                             { "categories", new[]
///                                             {
///
///                                                 {
///                                                     { "categoricalDimensionField",
///                                                     {
///                                                         { "column",
///                                                         {
///                                                             { "dataSetIdentifier", "1" },
///                                                             { "columnName", "Column1" },
///                                                         } },
///                                                         { "fieldId", "1" },
///                                                     } },
///                                                 },
///                                             } },
///                                             { "values", new[]
///                                             {
///
///                                                 {
///                                                     { "categoricalMeasureField",
///                                                     {
///                                                         { "column",
///                                                         {
///                                                             { "dataSetIdentifier", "1" },
///                                                             { "columnName", "Column1" },
///                                                         } },
///                                                         { "fieldId", "2" },
///                                                         { "aggregationFunction", "COUNT" },
///                                                     } },
///                                                 },
///                                             } },
///                                         } },
///                                     } },
///                                 } },
///                                 { "visualId", "LineChart" },
///                             } },
///                         },
///                     } },
///                     { "title", "Example" },
///                     { "sheetId", "Example1" },
///                 },
///             } },
///         },
///         AnalysisId = "example-id",
///         Name = "example-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.NewAnalysis(ctx, "example", &quicksight.AnalysisArgs{
/// 			Definition: map[string][]map[string]interface{}{
/// 				"dataSetIdentifiersDeclarations": []map[string]interface{}{
/// 					map[string]interface{}{
/// 						"dataSetArn": dataset.Arn,
/// 						"identifier": "1",
/// 					},
/// 				},
/// 				"sheets": []map[string]interface{}{
/// 					map[string]interface{}{
/// 						"visuals": []map[string]map[string]interface{}{
/// 							map[string]map[string]interface{}{
/// 								"lineChartVisual": map[string]interface{}{
/// 									"title": map[string]map[string]string{
/// 										"formatText": map[string]string{
/// 											"plainText": "Line Chart Example",
/// 										},
/// 									},
/// 									"chartConfiguration": map[string]map[string]map[string][]map[string]map[string]interface{}{
/// 										"fieldWells": map[string]map[string][]map[string]map[string]interface{}{
/// 											"lineChartAggregatedFieldWells": map[string][]map[string]map[string]interface{}{
/// 												"categories": []map[string]map[string]interface{}{
/// 													map[string]map[string]interface{}{
/// 														"categoricalDimensionField": map[string]interface{}{
/// 															"column": map[string]string{
/// 																"dataSetIdentifier": "1",
/// 																"columnName":        "Column1",
/// 															},
/// 															"fieldId": "1",
/// 														},
/// 													},
/// 												},
/// 												"values": []map[string]map[string]interface{}{
/// 													map[string]map[string]interface{}{
/// 														"categoricalMeasureField": map[string]interface{}{
/// 															"column": map[string]string{
/// 																"dataSetIdentifier": "1",
/// 																"columnName":        "Column1",
/// 															},
/// 															"fieldId":             "2",
/// 															"aggregationFunction": "COUNT",
/// 														},
/// 													},
/// 												},
/// 											},
/// 										},
/// 									},
/// 									"visualId": "LineChart",
/// 								},
/// 							},
/// 						},
/// 						"title":   "Example",
/// 						"sheetId": "Example1",
/// 					},
/// 				},
/// 			},
/// 			AnalysisId: pulumi.String("example-id"),
/// 			Name:       pulumi.String("example-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_quicksight_analysis" "example" {
///   definition = {
///     "dataSetIdentifiersDeclarations" = [{
///       "dataSetArn" = dataset.arn
///       "identifier" = "1"
///     }]
///     "sheets" = [{
///       "visuals" = [{
///         "lineChartVisual" = {
///           "title" = {
///             "formatText" = {
///               "plainText" = "Line Chart Example"
///             }
///           }
///           "chartConfiguration" = {
///             "fieldWells" = {
///               "lineChartAggregatedFieldWells" = {
///                 "categories" = [{
///                   "categoricalDimensionField" = {
///                     "column" = {
///                       "dataSetIdentifier" = "1"
///                       "columnName"        = "Column1"
///                     }
///                     "fieldId" = "1"
///                   }
///                 }]
///                 "values" = [{
///                   "categoricalMeasureField" = {
///                     "column" = {
///                       "dataSetIdentifier" = "1"
///                       "columnName"        = "Column1"
///                     }
///                     "fieldId"             = "2"
///                     "aggregationFunction" = "COUNT"
///                   }
///                 }]
///               }
///             }
///           }
///           "visualId" = "LineChart"
///         }
///       }]
///       "title"   = "Example"
///       "sheetId" = "Example1"
///     }]
///   }
///   analysis_id = "example-id"
///   name        = "example-name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.quicksight.Analysis;
/// import com.pulumi.aws.quicksight.AnalysisArgs;
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
///         var example = new Analysis("example", AnalysisArgs.builder()
///             .definition(Map.ofEntries(
///                 Map.entry("dataSetIdentifiersDeclarations", Arrays.asList(Map.ofEntries(
///                     Map.entry("dataSetArn", dataset.arn()),
///                     Map.entry("identifier", "1")
///                 ))),
///                 Map.entry("sheets", Arrays.asList(Map.ofEntries(
///                     Map.entry("visuals", Arrays.asList(Map.of("lineChartVisual", Map.ofEntries(
///                         Map.entry("title", Map.of("formatText", Map.of("plainText", "Line Chart Example"))),
///                         Map.entry("chartConfiguration", Map.of("fieldWells", Map.of("lineChartAggregatedFieldWells", Map.ofEntries(
///                             Map.entry("categories", Arrays.asList(Map.of("categoricalDimensionField", Map.ofEntries(
///                                 Map.entry("column", Map.ofEntries(
///                                     Map.entry("dataSetIdentifier", "1"),
///                                     Map.entry("columnName", "Column1")
///                                 )),
///                                 Map.entry("fieldId", "1")
///                             )))),
///                             Map.entry("values", Arrays.asList(Map.of("categoricalMeasureField", Map.ofEntries(
///                                 Map.entry("column", Map.ofEntries(
///                                     Map.entry("dataSetIdentifier", "1"),
///                                     Map.entry("columnName", "Column1")
///                                 )),
///                                 Map.entry("fieldId", "2"),
///                                 Map.entry("aggregationFunction", "COUNT")
///                             ))))
///                         )))),
///                         Map.entry("visualId", "LineChart")
///                     )))),
///                     Map.entry("title", "Example"),
///                     Map.entry("sheetId", "Example1")
///                 )))
///             ))
///             .analysisId("example-id")
///             .name("example-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:quicksight:Analysis
///     properties:
///       definition:
///         dataSetIdentifiersDeclarations:
///           - dataSetArn: ${dataset.arn}
///             identifier: '1'
///         sheets:
///           - visuals:
///               - lineChartVisual:
///                   title:
///                     formatText:
///                       plainText: Line Chart Example
///                   chartConfiguration:
///                     fieldWells:
///                       lineChartAggregatedFieldWells:
///                         categories:
///                           - categoricalDimensionField:
///                               column:
///                                 dataSetIdentifier: '1'
///                                 columnName: Column1
///                               fieldId: '1'
///                         values:
///                           - categoricalMeasureField:
///                               column:
///                                 dataSetIdentifier: '1'
///                                 columnName: Column1
///                               fieldId: '2'
///                               aggregationFunction: COUNT
///                   visualId: LineChart
///             title: Example
///             sheetId: Example1
///       analysisId: example-id
///       name: example-name
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import a QuickSight Analysis using the AWS account ID and analysis ID separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/analysis:Analysis example 123456789012,example-id
/// ```
class Analysis extends pulumi.CustomResource {
  /// Identifier for the analysis.
  late final pulumi.Output<String> analysisId;
  /// ARN of the analysis.
  late final pulumi.Output<String> arn;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> awsAccountId;
  /// The time that the analysis was created.
  late final pulumi.Output<String> createdTime;
  late final pulumi.Output<String> lastPublishedTime;
  /// The time that the analysis was last updated.
  late final pulumi.Output<String> lastUpdatedTime;
  /// Display name for the analysis.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// The parameters for the creation of the analysis, which you want to use to override the default settings. An analysis can have any type of parameters, and some parameters might accept multiple values. See parameters.
  late final pulumi.Output<AnalysisParameters> parameters;
  /// A set of resource permissions on the analysis. Maximum of 64 items. See permissions.
  late final pulumi.Output<List<AnalysisPermission>?> permissions;
  /// A value that specifies the number of days that Amazon QuickSight waits before it deletes the analysis. Use `0` to force deletion without recovery. Minimum value of `7`. Maximum value of `30`. Default to `30`.
  late final pulumi.Output<int?> recoveryWindowInDays;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The entity that you are using as a source when you create the analysis (template). Only one of `definition` or `sourceEntity` should be configured. See source_entity.
  late final pulumi.Output<AnalysisSourceEntity?> sourceEntity;
  /// The analysis creation status.
  late final pulumi.Output<String> status;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// ARN of the theme that is being used for this analysis. The theme ARN must exist in the same AWS account where you create the analysis.
  late final pulumi.Output<String?> themeArn;

  /// Creates a new [Analysis].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Analysis]. {@macro pulumi_quicksight_analysis_analysis_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Analysis(
    String name, {
    AnalysisArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/analysis:Analysis',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    analysisId = registerOutput<String>('analysisId');
    arn = registerOutput<String>('arn');
    awsAccountId = registerOutput<String>('awsAccountId');
    createdTime = registerOutput<String>('createdTime');
    lastPublishedTime = registerOutput<String>('lastPublishedTime');
    lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<AnalysisParameters>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AnalysisParameters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    permissions = registerOutput<List<AnalysisPermission>?>('permissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AnalysisPermission>(guardedValue, (value) => AnalysisPermission.fromMap((value as Map).cast<String, dynamic>())); });
    recoveryWindowInDays = registerOutput<int?>('recoveryWindowInDays');
    region = registerOutput<String>('region');
    sourceEntity = registerOutput<AnalysisSourceEntity?>('sourceEntity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AnalysisSourceEntity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    themeArn = registerOutput<String?>('themeArn');
  }

  /// Gets an existing [Analysis] resource's state with the given [name] and [id].
  static Analysis get(
    String name,
    pulumi.Input<String> id, {
    AnalysisState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Analysis._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Analysis._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/analysis:Analysis',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    analysisId = registerOutput<String>('analysisId');
    arn = registerOutput<String>('arn');
    awsAccountId = registerOutput<String>('awsAccountId');
    createdTime = registerOutput<String>('createdTime');
    lastPublishedTime = registerOutput<String>('lastPublishedTime');
    lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<AnalysisParameters>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AnalysisParameters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    permissions = registerOutput<List<AnalysisPermission>?>('permissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AnalysisPermission>(guardedValue, (value) => AnalysisPermission.fromMap((value as Map).cast<String, dynamic>())); });
    recoveryWindowInDays = registerOutput<int?>('recoveryWindowInDays');
    region = registerOutput<String>('region');
    sourceEntity = registerOutput<AnalysisSourceEntity?>('sourceEntity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AnalysisSourceEntity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    themeArn = registerOutput<String?>('themeArn');
  }

  /// Creates a typed reference to an existing [Analysis] resource.
  Analysis.reference(String urn)
    : super(
        'aws:quicksight/analysis:Analysis',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    analysisId = registerOutput<String>('analysisId');
    arn = registerOutput<String>('arn');
    awsAccountId = registerOutput<String>('awsAccountId');
    createdTime = registerOutput<String>('createdTime');
    lastPublishedTime = registerOutput<String>('lastPublishedTime');
    lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<AnalysisParameters>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AnalysisParameters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    permissions = registerOutput<List<AnalysisPermission>?>('permissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AnalysisPermission>(guardedValue, (value) => AnalysisPermission.fromMap((value as Map).cast<String, dynamic>())); });
    recoveryWindowInDays = registerOutput<int?>('recoveryWindowInDays');
    region = registerOutput<String>('region');
    sourceEntity = registerOutput<AnalysisSourceEntity?>('sourceEntity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AnalysisSourceEntity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    themeArn = registerOutput<String?>('themeArn');
  }
}
