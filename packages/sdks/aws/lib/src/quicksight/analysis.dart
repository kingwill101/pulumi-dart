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
///     analysisId: "example-id",
///     name: "example-name",
///     sourceEntity: {
///         sourceTemplate: {
///             arn: source.arn,
///             dataSetReferences: [{
///                 dataSetArn: dataset.arn,
///                 dataSetPlaceholder: "1",
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.Analysis("example",
///     analysis_id="example-id",
///     name="example-name",
///     source_entity={
///         "source_template": {
///             "arn": source["arn"],
///             "data_set_references": [{
///                 "data_set_arn": dataset["arn"],
///                 "data_set_placeholder": "1",
///             }],
///         },
///     })
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
///         AnalysisId = "example-id",
///         Name = "example-name",
///         SourceEntity = new Aws.Quicksight.Inputs.AnalysisSourceEntityArgs
///         {
///             SourceTemplate = new Aws.Quicksight.Inputs.AnalysisSourceEntitySourceTemplateArgs
///             {
///                 Arn = source.Arn,
///                 DataSetReferences = new[]
///                 {
///                     new Aws.Quicksight.Inputs.AnalysisSourceEntitySourceTemplateDataSetReferenceArgs
///                     {
///                         DataSetArn = dataset.Arn,
///                         DataSetPlaceholder = "1",
///                     },
///                 },
///             },
///         },
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
/// 			AnalysisId: pulumi.String("example-id"),
/// 			Name:       pulumi.String("example-name"),
/// 			SourceEntity: &quicksight.AnalysisSourceEntityArgs{
/// 				SourceTemplate: &quicksight.AnalysisSourceEntitySourceTemplateArgs{
/// 					Arn: pulumi.Any(source.Arn),
/// 					DataSetReferences: quicksight.AnalysisSourceEntitySourceTemplateDataSetReferenceArray{
/// 						&quicksight.AnalysisSourceEntitySourceTemplateDataSetReferenceArgs{
/// 							DataSetArn:         pulumi.Any(dataset.Arn),
/// 							DataSetPlaceholder: pulumi.String("1"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///         var example = new Analysis("example", AnalysisArgs.builder()
///             .analysisId("example-id")
///             .name("example-name")
///             .sourceEntity(AnalysisSourceEntityArgs.builder()
///                 .sourceTemplate(AnalysisSourceEntitySourceTemplateArgs.builder()
///                     .arn(source.arn())
///                     .dataSetReferences(AnalysisSourceEntitySourceTemplateDataSetReferenceArgs.builder()
///                         .dataSetArn(dataset.arn())
///                         .dataSetPlaceholder("1")
///                         .build())
///                     .build())
///                 .build())
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
///       analysisId: example-id
///       name: example-name
///       sourceEntity:
///         sourceTemplate:
///           arn: ${source.arn}
///           dataSetReferences:
///             - dataSetArn: ${dataset.arn}
///               dataSetPlaceholder: '1'
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
///     analysisId: "example-id",
///     name: "example-name",
///     definition: {
///         dataSetIdentifiersDeclarations: [{
///             dataSetArn: dataset.arn,
///             identifier: "1",
///         }],
///         sheets: [{
///             title: "Example",
///             sheetId: "Example1",
///             visuals: [{
///                 lineChartVisual: {
///                     visualId: "LineChart",
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
///                                         fieldId: "1",
///                                         column: {
///                                             dataSetIdentifier: "1",
///                                             columnName: "Column1",
///                                         },
///                                     },
///                                 }],
///                                 values: [{
///                                     categoricalMeasureField: {
///                                         fieldId: "2",
///                                         column: {
///                                             dataSetIdentifier: "1",
///                                             columnName: "Column1",
///                                         },
///                                         aggregationFunction: "COUNT",
///                                     },
///                                 }],
///                             },
///                         },
///                     },
///                 },
///             }],
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.Analysis("example",
///     analysis_id="example-id",
///     name="example-name",
///     definition={
///         "dataSetIdentifiersDeclarations": [{
///             "dataSetArn": dataset["arn"],
///             "identifier": "1",
///         }],
///         "sheets": [{
///             "title": "Example",
///             "sheetId": "Example1",
///             "visuals": [{
///                 "lineChartVisual": {
///                     "visualId": "LineChart",
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
///                                         "fieldId": "1",
///                                         "column": {
///                                             "dataSetIdentifier": "1",
///                                             "columnName": "Column1",
///                                         },
///                                     },
///                                 }],
///                                 "values": [{
///                                     "categoricalMeasureField": {
///                                         "fieldId": "2",
///                                         "column": {
///                                             "dataSetIdentifier": "1",
///                                             "columnName": "Column1",
///                                         },
///                                         "aggregationFunction": "COUNT",
///                                     },
///                                 }],
///                             },
///                         },
///                     },
///                 },
///             }],
///         }],
///     })
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
///         AnalysisId = "example-id",
///         Name = "example-name",
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
///                     { "title", "Example" },
///                     { "sheetId", "Example1" },
///                     { "visuals", new[]
///                     {
///
///                         {
///                             { "lineChartVisual",
///                             {
///                                 { "visualId", "LineChart" },
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
///                                                         { "fieldId", "1" },
///                                                         { "column",
///                                                         {
///                                                             { "dataSetIdentifier", "1" },
///                                                             { "columnName", "Column1" },
///                                                         } },
///                                                     } },
///                                                 },
///                                             } },
///                                             { "values", new[]
///                                             {
///
///                                                 {
///                                                     { "categoricalMeasureField",
///                                                     {
///                                                         { "fieldId", "2" },
///                                                         { "column",
///                                                         {
///                                                             { "dataSetIdentifier", "1" },
///                                                             { "columnName", "Column1" },
///                                                         } },
///                                                         { "aggregationFunction", "COUNT" },
///                                                     } },
///                                                 },
///                                             } },
///                                         } },
///                                     } },
///                                 } },
///                             } },
///                         },
///                     } },
///                 },
///             } },
///         },
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
/// 			AnalysisId: pulumi.String("example-id"),
/// 			Name:       pulumi.String("example-name"),
/// 			Definition: map[string]interface{}{
/// 				"dataSetIdentifiersDeclarations": []map[string]interface{}{
/// 					map[string]interface{}{
/// 						"dataSetArn": dataset.Arn,
/// 						"identifier": "1",
/// 					},
/// 				},
/// 				"sheets": []map[string]interface{}{
/// 					map[string]interface{}{
/// 						"title":   "Example",
/// 						"sheetId": "Example1",
/// 						"visuals": []map[string]interface{}{
/// 							map[string]interface{}{
/// 								"lineChartVisual": map[string]interface{}{
/// 									"visualId": "LineChart",
/// 									"title": map[string]interface{}{
/// 										"formatText": map[string]interface{}{
/// 											"plainText": "Line Chart Example",
/// 										},
/// 									},
/// 									"chartConfiguration": map[string]interface{}{
/// 										"fieldWells": map[string]interface{}{
/// 											"lineChartAggregatedFieldWells": map[string]interface{}{
/// 												"categories": []map[string]interface{}{
/// 													map[string]interface{}{
/// 														"categoricalDimensionField": map[string]interface{}{
/// 															"fieldId": "1",
/// 															"column": map[string]interface{}{
/// 																"dataSetIdentifier": "1",
/// 																"columnName":        "Column1",
/// 															},
/// 														},
/// 													},
/// 												},
/// 												"values": []map[string]interface{}{
/// 													map[string]interface{}{
/// 														"categoricalMeasureField": map[string]interface{}{
/// 															"fieldId": "2",
/// 															"column": map[string]interface{}{
/// 																"dataSetIdentifier": "1",
/// 																"columnName":        "Column1",
/// 															},
/// 															"aggregationFunction": "COUNT",
/// 														},
/// 													},
/// 												},
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///         var example = new Analysis("example", AnalysisArgs.builder()
///             .analysisId("example-id")
///             .name("example-name")
///             .definition(Map.ofEntries(
///                 Map.entry("dataSetIdentifiersDeclarations", List.of(Map.ofEntries(
///                     Map.entry("dataSetArn", dataset.arn()),
///                     Map.entry("identifier", "1")
///                 ))),
///                 Map.entry("sheets", List.of(Map.ofEntries(
///                     Map.entry("title", "Example"),
///                     Map.entry("sheetId", "Example1"),
///                     Map.entry("visuals", List.of(Map.of("lineChartVisual", Map.ofEntries(
///                         Map.entry("visualId", "LineChart"),
///                         Map.entry("title", Map.of("formatText", Map.of("plainText", "Line Chart Example"))),
///                         Map.entry("chartConfiguration", Map.of("fieldWells", Map.of("lineChartAggregatedFieldWells", Map.ofEntries(
///                             Map.entry("categories", List.of(Map.of("categoricalDimensionField", Map.ofEntries(
///                                 Map.entry("fieldId", "1"),
///                                 Map.entry("column", Map.ofEntries(
///                                     Map.entry("dataSetIdentifier", "1"),
///                                     Map.entry("columnName", "Column1")
///                                 ))
///                             )))),
///                             Map.entry("values", List.of(Map.of("categoricalMeasureField", Map.ofEntries(
///                                 Map.entry("fieldId", "2"),
///                                 Map.entry("column", Map.ofEntries(
///                                     Map.entry("dataSetIdentifier", "1"),
///                                     Map.entry("columnName", "Column1")
///                                 )),
///                                 Map.entry("aggregationFunction", "COUNT")
///                             ))))
///                         ))))
///                     ))))
///                 )))
///             ))
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
///       analysisId: example-id
///       name: example-name
///       definition:
///         dataSetIdentifiersDeclarations:
///           - dataSetArn: ${dataset.arn}
///             identifier: '1'
///         sheets:
///           - title: Example
///             sheetId: Example1
///             visuals:
///               - lineChartVisual:
///                   visualId: LineChart
///                   title:
///                     formatText:
///                       plainText: Line Chart Example
///                   chartConfiguration:
///                     fieldWells:
///                       lineChartAggregatedFieldWells:
///                         categories:
///                           - categoricalDimensionField:
///                               fieldId: '1'
///                               column:
///                                 dataSetIdentifier: '1'
///                                 columnName: Column1
///                         values:
///                           - categoricalMeasureField:
///                               fieldId: '2'
///                               column:
///                                 dataSetIdentifier: '1'
///                                 columnName: Column1
///                               aggregationFunction: COUNT
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
  /// The entity that you are using as a source when you create the analysis (template). Only one of `definition` or `source_entity` should be configured. See source_entity.
  late final pulumi.Output<AnalysisSourceEntity?> sourceEntity;
  /// The analysis creation status.
  late final pulumi.Output<String> status;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The Amazon Resource Name (ARN) of the theme that is being used for this analysis. The theme ARN must exist in the same AWS account where you create the analysis.
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.analysisId = registerOutput<String>('analysisId');
    this.arn = registerOutput<String>('arn');
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.createdTime = registerOutput<String>('createdTime');
    this.lastPublishedTime = registerOutput<String>('lastPublishedTime');
    this.lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    this.name = registerOutput<String>('name');
    this.parameters = registerOutput<AnalysisParameters>('parameters');
    this.permissions = registerOutput<List<AnalysisPermission>?>('permissions');
    this.recoveryWindowInDays = registerOutput<int?>('recoveryWindowInDays');
    this.region = registerOutput<String>('region');
    this.sourceEntity = registerOutput<AnalysisSourceEntity?>('sourceEntity');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.themeArn = registerOutput<String?>('themeArn');
  }

  /// Gets an existing [Analysis] resource's state with the given [name] and [id].
  static Analysis get(
    String name,
    pulumi.Input<String> id, {
    AnalysisState? state,
  }) {
    return Analysis._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    this.analysisId = registerOutput<String>('analysisId');
    this.arn = registerOutput<String>('arn');
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.createdTime = registerOutput<String>('createdTime');
    this.lastPublishedTime = registerOutput<String>('lastPublishedTime');
    this.lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    this.name = registerOutput<String>('name');
    this.parameters = registerOutput<AnalysisParameters>('parameters');
    this.permissions = registerOutput<List<AnalysisPermission>?>('permissions');
    this.recoveryWindowInDays = registerOutput<int?>('recoveryWindowInDays');
    this.region = registerOutput<String>('region');
    this.sourceEntity = registerOutput<AnalysisSourceEntity?>('sourceEntity');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.themeArn = registerOutput<String?>('themeArn');
  }
}
