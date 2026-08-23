import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_args.dart';
import 'template_source_entity.dart';
import 'template_state.dart';

/// Resource for managing a QuickSight Template.
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
/// const example = new aws.quicksight.Template("example", {
///     templateId: "example-id",
///     name: "example-name",
///     versionDescription: "version",
///     sourceEntity: {
///         sourceTemplate: {
///             arn: source.arn,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.Template("example",
///     template_id="example-id",
///     name="example-name",
///     version_description="version",
///     source_entity={
///         "source_template": {
///             "arn": source["arn"],
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
///     var example = new Aws.Quicksight.Template("example", new()
///     {
///         TemplateId = "example-id",
///         Name = "example-name",
///         VersionDescription = "version",
///         SourceEntity = new Aws.Quicksight.Inputs.TemplateSourceEntityArgs
///         {
///             SourceTemplate = new Aws.Quicksight.Inputs.TemplateSourceEntitySourceTemplateArgs
///             {
///                 Arn = source.Arn,
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
/// 		_, err := quicksight.NewTemplate(ctx, "example", &quicksight.TemplateArgs{
/// 			TemplateId:         pulumi.String("example-id"),
/// 			Name:               pulumi.String("example-name"),
/// 			VersionDescription: pulumi.String("version"),
/// 			SourceEntity: &quicksight.TemplateSourceEntityArgs{
/// 				SourceTemplate: &quicksight.TemplateSourceEntitySourceTemplateArgs{
/// 					Arn: pulumi.Any(source.Arn),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_quicksight_template" "example" {
///   template_id         = "example-id"
///   name                = "example-name"
///   version_description = "version"
///   source_entity = {
///     source_template = {
///       arn = source.arn
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.quicksight.Template;
/// import com.pulumi.aws.quicksight.TemplateArgs;
/// import com.pulumi.aws.quicksight.inputs.TemplateSourceEntityArgs;
/// import com.pulumi.aws.quicksight.inputs.TemplateSourceEntitySourceTemplateArgs;
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
///         var example = new Template("example", TemplateArgs.builder()
///             .templateId("example-id")
///             .name("example-name")
///             .versionDescription("version")
///             .sourceEntity(TemplateSourceEntityArgs.builder()
///                 .sourceTemplate(TemplateSourceEntitySourceTemplateArgs.builder()
///                     .arn(source.arn())
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
///     type: aws:quicksight:Template
///     properties:
///       templateId: example-id
///       name: example-name
///       versionDescription: version
///       sourceEntity:
///         sourceTemplate:
///           arn: ${source.arn}
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
/// const example = new aws.quicksight.Template("example", {
///     templateId: "example-id",
///     name: "example-name",
///     versionDescription: "version",
///     definition: {
///         dataSetConfigurations: [{
///             dataSetSchema: {
///                 columnSchemaLists: [
///                     {
///                         name: "Column1",
///                         dataType: "STRING",
///                     },
///                     {
///                         name: "Column2",
///                         dataType: "INTEGER",
///                     },
///                 ],
///             },
///             placeholder: "1",
///         }],
///         sheets: [{
///             title: "Test",
///             sheetId: "Test1",
///             visuals: [{
///                 barChartVisual: {
///                     visualId: "BarChart",
///                     chartConfiguration: {
///                         fieldWells: {
///                             barChartAggregatedFieldWells: {
///                                 categories: [{
///                                     categoricalDimensionField: {
///                                         fieldId: "1",
///                                         column: {
///                                             columnName: "Column1",
///                                             dataSetIdentifier: "1",
///                                         },
///                                     },
///                                 }],
///                                 values: [{
///                                     numericalMeasureField: {
///                                         fieldId: "2",
///                                         column: {
///                                             columnName: "Column2",
///                                             dataSetIdentifier: "1",
///                                         },
///                                         aggregationFunction: {
///                                             simpleNumericalAggregation: "SUM",
///                                         },
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
/// example = aws.quicksight.Template("example",
///     template_id="example-id",
///     name="example-name",
///     version_description="version",
///     definition={
///         "dataSetConfigurations": [{
///             "dataSetSchema": {
///                 "columnSchemaLists": [
///                     {
///                         "name": "Column1",
///                         "dataType": "STRING",
///                     },
///                     {
///                         "name": "Column2",
///                         "dataType": "INTEGER",
///                     },
///                 ],
///             },
///             "placeholder": "1",
///         }],
///         "sheets": [{
///             "title": "Test",
///             "sheetId": "Test1",
///             "visuals": [{
///                 "barChartVisual": {
///                     "visualId": "BarChart",
///                     "chartConfiguration": {
///                         "fieldWells": {
///                             "barChartAggregatedFieldWells": {
///                                 "categories": [{
///                                     "categoricalDimensionField": {
///                                         "fieldId": "1",
///                                         "column": {
///                                             "columnName": "Column1",
///                                             "dataSetIdentifier": "1",
///                                         },
///                                     },
///                                 }],
///                                 "values": [{
///                                     "numericalMeasureField": {
///                                         "fieldId": "2",
///                                         "column": {
///                                             "columnName": "Column2",
///                                             "dataSetIdentifier": "1",
///                                         },
///                                         "aggregationFunction": {
///                                             "simpleNumericalAggregation": "SUM",
///                                         },
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
///     var example = new Aws.Quicksight.Template("example", new()
///     {
///         TemplateId = "example-id",
///         Name = "example-name",
///         VersionDescription = "version",
///         Definition =
///         {
///             { "dataSetConfigurations", new[]
///             {
///
///                 {
///                     { "dataSetSchema",
///                     {
///                         { "columnSchemaLists", new[]
///                         {
///
///                             {
///                                 { "name", "Column1" },
///                                 { "dataType", "STRING" },
///                             },
///
///                             {
///                                 { "name", "Column2" },
///                                 { "dataType", "INTEGER" },
///                             },
///                         } },
///                     } },
///                     { "placeholder", "1" },
///                 },
///             } },
///             { "sheets", new[]
///             {
///
///                 {
///                     { "title", "Test" },
///                     { "sheetId", "Test1" },
///                     { "visuals", new[]
///                     {
///
///                         {
///                             { "barChartVisual",
///                             {
///                                 { "visualId", "BarChart" },
///                                 { "chartConfiguration",
///                                 {
///                                     { "fieldWells",
///                                     {
///                                         { "barChartAggregatedFieldWells",
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
///                                                             { "columnName", "Column1" },
///                                                             { "dataSetIdentifier", "1" },
///                                                         } },
///                                                     } },
///                                                 },
///                                             } },
///                                             { "values", new[]
///                                             {
///
///                                                 {
///                                                     { "numericalMeasureField",
///                                                     {
///                                                         { "fieldId", "2" },
///                                                         { "column",
///                                                         {
///                                                             { "columnName", "Column2" },
///                                                             { "dataSetIdentifier", "1" },
///                                                         } },
///                                                         { "aggregationFunction",
///                                                         {
///                                                             { "simpleNumericalAggregation", "SUM" },
///                                                         } },
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
/// 		_, err := quicksight.NewTemplate(ctx, "example", &quicksight.TemplateArgs{
/// 			TemplateId:         pulumi.String("example-id"),
/// 			Name:               pulumi.String("example-name"),
/// 			VersionDescription: pulumi.String("version"),
/// 			Definition: map[string][]map[string]interface{}{
/// 				"dataSetConfigurations": []map[string]interface{}{
/// 					map[string]interface{}{
/// 						"dataSetSchema": map[string][]map[string]string{
/// 							"columnSchemaLists": []map[string]string{
/// 								{
/// 									"name":     "Column1",
/// 									"dataType": "STRING",
/// 								},
/// 								{
/// 									"name":     "Column2",
/// 									"dataType": "INTEGER",
/// 								},
/// 							},
/// 						},
/// 						"placeholder": "1",
/// 					},
/// 				},
/// 				"sheets": []map[string]interface{}{
/// 					map[string]interface{}{
/// 						"title":   "Test",
/// 						"sheetId": "Test1",
/// 						"visuals": []map[string]map[string]interface{}{
/// 							map[string]map[string]interface{}{
/// 								"barChartVisual": map[string]interface{}{
/// 									"visualId": "BarChart",
/// 									"chartConfiguration": map[string]map[string]map[string][]map[string]map[string]interface{}{
/// 										"fieldWells": map[string]map[string][]map[string]map[string]interface{}{
/// 											"barChartAggregatedFieldWells": map[string][]map[string]map[string]interface{}{
/// 												"categories": []map[string]map[string]interface{}{
/// 													map[string]map[string]interface{}{
/// 														"categoricalDimensionField": map[string]interface{}{
/// 															"fieldId": "1",
/// 															"column": map[string]string{
/// 																"columnName":        "Column1",
/// 																"dataSetIdentifier": "1",
/// 															},
/// 														},
/// 													},
/// 												},
/// 												"values": []map[string]map[string]interface{}{
/// 													map[string]map[string]interface{}{
/// 														"numericalMeasureField": map[string]interface{}{
/// 															"fieldId": "2",
/// 															"column": map[string]string{
/// 																"columnName":        "Column2",
/// 																"dataSetIdentifier": "1",
/// 															},
/// 															"aggregationFunction": map[string]string{
/// 																"simpleNumericalAggregation": "SUM",
/// 															},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_quicksight_template" "example" {
///   template_id         = "example-id"
///   name                = "example-name"
///   version_description = "version"
///   definition = {
///     "dataSetConfigurations" = [{
///       "dataSetSchema" = {
///         "columnSchemaLists" = [{
///           "name"     = "Column1"
///           "dataType" = "STRING"
///           }, {
///           "name"     = "Column2"
///           "dataType" = "INTEGER"
///         }]
///       }
///       "placeholder" = "1"
///     }]
///     "sheets" = [{
///       "title"   = "Test"
///       "sheetId" = "Test1"
///       "visuals" = [{
///         "barChartVisual" = {
///           "visualId" = "BarChart"
///           "chartConfiguration" = {
///             "fieldWells" = {
///               "barChartAggregatedFieldWells" = {
///                 "categories" = [{
///                   "categoricalDimensionField" = {
///                     "fieldId" = "1"
///                     "column" = {
///                       "columnName"        = "Column1"
///                       "dataSetIdentifier" = "1"
///                     }
///                   }
///                 }]
///                 "values" = [{
///                   "numericalMeasureField" = {
///                     "fieldId" = "2"
///                     "column" = {
///                       "columnName"        = "Column2"
///                       "dataSetIdentifier" = "1"
///                     }
///                     "aggregationFunction" = {
///                       "simpleNumericalAggregation" = "SUM"
///                     }
///                   }
///                 }]
///               }
///             }
///           }
///         }
///       }]
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.quicksight.Template;
/// import com.pulumi.aws.quicksight.TemplateArgs;
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
///         var example = new Template("example", TemplateArgs.builder()
///             .templateId("example-id")
///             .name("example-name")
///             .versionDescription("version")
///             .definition(Map.ofEntries(
///                 Map.entry("dataSetConfigurations", Arrays.asList(Map.ofEntries(
///                     Map.entry("dataSetSchema", Map.of("columnSchemaLists", Arrays.asList(
///                         Map.ofEntries(
///                             Map.entry("name", "Column1"),
///                             Map.entry("dataType", "STRING")
///                         ),
///                         Map.ofEntries(
///                             Map.entry("name", "Column2"),
///                             Map.entry("dataType", "INTEGER")
///                         )))),
///                     Map.entry("placeholder", "1")
///                 ))),
///                 Map.entry("sheets", Arrays.asList(Map.ofEntries(
///                     Map.entry("title", "Test"),
///                     Map.entry("sheetId", "Test1"),
///                     Map.entry("visuals", Arrays.asList(Map.of("barChartVisual", Map.ofEntries(
///                         Map.entry("visualId", "BarChart"),
///                         Map.entry("chartConfiguration", Map.of("fieldWells", Map.of("barChartAggregatedFieldWells", Map.ofEntries(
///                             Map.entry("categories", Arrays.asList(Map.of("categoricalDimensionField", Map.ofEntries(
///                                 Map.entry("fieldId", "1"),
///                                 Map.entry("column", Map.ofEntries(
///                                     Map.entry("columnName", "Column1"),
///                                     Map.entry("dataSetIdentifier", "1")
///                                 ))
///                             )))),
///                             Map.entry("values", Arrays.asList(Map.of("numericalMeasureField", Map.ofEntries(
///                                 Map.entry("fieldId", "2"),
///                                 Map.entry("column", Map.ofEntries(
///                                     Map.entry("columnName", "Column2"),
///                                     Map.entry("dataSetIdentifier", "1")
///                                 )),
///                                 Map.entry("aggregationFunction", Map.of("simpleNumericalAggregation", "SUM"))
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
///     type: aws:quicksight:Template
///     properties:
///       templateId: example-id
///       name: example-name
///       versionDescription: version
///       definition:
///         dataSetConfigurations:
///           - dataSetSchema:
///               columnSchemaLists:
///                 - name: Column1
///                   dataType: STRING
///                 - name: Column2
///                   dataType: INTEGER
///             placeholder: '1'
///         sheets:
///           - title: Test
///             sheetId: Test1
///             visuals:
///               - barChartVisual:
///                   visualId: BarChart
///                   chartConfiguration:
///                     fieldWells:
///                       barChartAggregatedFieldWells:
///                         categories:
///                           - categoricalDimensionField:
///                               fieldId: '1'
///                               column:
///                                 columnName: Column1
///                                 dataSetIdentifier: '1'
///                         values:
///                           - numericalMeasureField:
///                               fieldId: '2'
///                               column:
///                                 columnName: Column2
///                                 dataSetIdentifier: '1'
///                               aggregationFunction:
///                                 simpleNumericalAggregation: SUM
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import a QuickSight Template using the AWS account ID and template ID separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/template:Template example 123456789012,example-id
/// ```
class Template extends pulumi.CustomResource {
  /// ARN of the template.
  late final pulumi.Output<String> arn;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> awsAccountId;
  /// The time that the template was created.
  late final pulumi.Output<String> createdTime;
  /// The time that the template was last updated.
  late final pulumi.Output<String> lastUpdatedTime;
  /// Display name for the template.
  late final pulumi.Output<String> name;
  /// A set of resource permissions on the template. Maximum of 64 items. See permissions.
  late final pulumi.Output<List<Map<String, dynamic>>?> permissions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The entity that you are using as a source when you create the template (analysis or template). Only one of `definition` or `sourceEntity` should be configured. See source_entity.
  late final pulumi.Output<TemplateSourceEntity?> sourceEntity;
  /// Amazon Resource Name (ARN) of an analysis or template that was used to create this template.
  late final pulumi.Output<String> sourceEntityArn;
  /// The template creation status.
  late final pulumi.Output<String> status;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Identifier for the template.
  late final pulumi.Output<String> templateId;
  /// A description of the current template version being created/updated.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> versionDescription;
  /// The version number of the template version.
  late final pulumi.Output<int> versionNumber;

  /// Creates a new [Template].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Template]. {@macro pulumi_quicksight_template_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Template(
    String name, {
    TemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/template:Template',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    awsAccountId = registerOutput<String>('awsAccountId');
    createdTime = registerOutput<String>('createdTime');
    lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    this.name = registerOutput<String>('name');
    permissions = registerOutput<List<Map<String, dynamic>>?>('permissions');
    region = registerOutput<String>('region');
    sourceEntity = registerOutput<TemplateSourceEntity?>('sourceEntity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TemplateSourceEntity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceEntityArn = registerOutput<String>('sourceEntityArn');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    templateId = registerOutput<String>('templateId');
    versionDescription = registerOutput<String>('versionDescription');
    versionNumber = registerOutput<int>('versionNumber');
  }

  /// Gets an existing [Template] resource's state with the given [name] and [id].
  static Template get(
    String name,
    pulumi.Input<String> id, {
    TemplateState? state,
  }) {
    return Template._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Template._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/template:Template',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    awsAccountId = registerOutput<String>('awsAccountId');
    createdTime = registerOutput<String>('createdTime');
    lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    this.name = registerOutput<String>('name');
    permissions = registerOutput<List<Map<String, dynamic>>?>('permissions');
    region = registerOutput<String>('region');
    sourceEntity = registerOutput<TemplateSourceEntity?>('sourceEntity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TemplateSourceEntity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceEntityArn = registerOutput<String>('sourceEntityArn');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    templateId = registerOutput<String>('templateId');
    versionDescription = registerOutput<String>('versionDescription');
    versionNumber = registerOutput<int>('versionNumber');
  }
}
