import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_template_args.dart';
import 'tag_template_field.dart';

/// > **Warning:** `gcp.datacatalog.TagTemplate` is deprecated and will be removed in a future major release. Use `gcp.dataplex.AspectType` instead. For steps to transition your Data Catalog users, workloads, and content to Dataplex Catalog, see https://cloud.google.com/dataplex/docs/transition-to-dataplex-catalog.
///
/// A tag template defines a tag, which can have one or more typed fields.
/// The template is used to create and attach the tag to GCP resources.
///
///
/// To get more information about TagTemplate, see:
///
/// * [API documentation](https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.tagTemplates)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/data-catalog/docs)
///
/// ## Example Usage
///
/// ### Data Catalog Tag Template Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicTagTemplate = new gcp.datacatalog.TagTemplate("basic_tag_template", {
///     tagTemplateId: "my_template",
///     region: "us-central1",
///     displayName: "Demo Tag Template",
///     fields: [
///         {
///             fieldId: "source",
///             displayName: "Source of data asset",
///             type: {
///                 primitiveType: "STRING",
///             },
///             isRequired: true,
///         },
///         {
///             fieldId: "num_rows",
///             displayName: "Number of rows in the data asset",
///             type: {
///                 primitiveType: "DOUBLE",
///             },
///         },
///         {
///             fieldId: "pii_type",
///             displayName: "PII type",
///             type: {
///                 enumType: {
///                     allowedValues: [
///                         {
///                             displayName: "EMAIL",
///                         },
///                         {
///                             displayName: "SOCIAL SECURITY NUMBER",
///                         },
///                         {
///                             displayName: "NONE",
///                         },
///                     ],
///                 },
///             },
///         },
///     ],
///     forceDelete: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_tag_template = gcp.datacatalog.TagTemplate("basic_tag_template",
///     tag_template_id="my_template",
///     region="us-central1",
///     display_name="Demo Tag Template",
///     fields=[
///         {
///             "field_id": "source",
///             "display_name": "Source of data asset",
///             "type": {
///                 "primitive_type": "STRING",
///             },
///             "is_required": True,
///         },
///         {
///             "field_id": "num_rows",
///             "display_name": "Number of rows in the data asset",
///             "type": {
///                 "primitive_type": "DOUBLE",
///             },
///         },
///         {
///             "field_id": "pii_type",
///             "display_name": "PII type",
///             "type": {
///                 "enum_type": {
///                     "allowed_values": [
///                         {
///                             "display_name": "EMAIL",
///                         },
///                         {
///                             "display_name": "SOCIAL SECURITY NUMBER",
///                         },
///                         {
///                             "display_name": "NONE",
///                         },
///                     ],
///                 },
///             },
///         },
///     ],
///     force_delete=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basicTagTemplate = new Gcp.DataCatalog.TagTemplate("basic_tag_template", new()
///     {
///         TagTemplateId = "my_template",
///         Region = "us-central1",
///         DisplayName = "Demo Tag Template",
///         Fields = new[]
///         {
///             new Gcp.DataCatalog.Inputs.TagTemplateFieldArgs
///             {
///                 FieldId = "source",
///                 DisplayName = "Source of data asset",
///                 Type = new Gcp.DataCatalog.Inputs.TagTemplateFieldTypeArgs
///                 {
///                     PrimitiveType = "STRING",
///                 },
///                 IsRequired = true,
///             },
///             new Gcp.DataCatalog.Inputs.TagTemplateFieldArgs
///             {
///                 FieldId = "num_rows",
///                 DisplayName = "Number of rows in the data asset",
///                 Type = new Gcp.DataCatalog.Inputs.TagTemplateFieldTypeArgs
///                 {
///                     PrimitiveType = "DOUBLE",
///                 },
///             },
///             new Gcp.DataCatalog.Inputs.TagTemplateFieldArgs
///             {
///                 FieldId = "pii_type",
///                 DisplayName = "PII type",
///                 Type = new Gcp.DataCatalog.Inputs.TagTemplateFieldTypeArgs
///                 {
///                     EnumType = new Gcp.DataCatalog.Inputs.TagTemplateFieldTypeEnumTypeArgs
///                     {
///                         AllowedValues = new[]
///                         {
///                             new Gcp.DataCatalog.Inputs.TagTemplateFieldTypeEnumTypeAllowedValueArgs
///                             {
///                                 DisplayName = "EMAIL",
///                             },
///                             new Gcp.DataCatalog.Inputs.TagTemplateFieldTypeEnumTypeAllowedValueArgs
///                             {
///                                 DisplayName = "SOCIAL SECURITY NUMBER",
///                             },
///                             new Gcp.DataCatalog.Inputs.TagTemplateFieldTypeEnumTypeAllowedValueArgs
///                             {
///                                 DisplayName = "NONE",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         ForceDelete = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datacatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datacatalog.NewTagTemplate(ctx, "basic_tag_template", &datacatalog.TagTemplateArgs{
/// 			TagTemplateId: pulumi.String("my_template"),
/// 			Region:        pulumi.String("us-central1"),
/// 			DisplayName:   pulumi.String("Demo Tag Template"),
/// 			Fields: datacatalog.TagTemplateFieldArray{
/// 				&datacatalog.TagTemplateFieldArgs{
/// 					FieldId:     pulumi.String("source"),
/// 					DisplayName: pulumi.String("Source of data asset"),
/// 					Type: &datacatalog.TagTemplateFieldTypeArgs{
/// 						PrimitiveType: pulumi.String("STRING"),
/// 					},
/// 					IsRequired: pulumi.Bool(true),
/// 				},
/// 				&datacatalog.TagTemplateFieldArgs{
/// 					FieldId:     pulumi.String("num_rows"),
/// 					DisplayName: pulumi.String("Number of rows in the data asset"),
/// 					Type: &datacatalog.TagTemplateFieldTypeArgs{
/// 						PrimitiveType: pulumi.String("DOUBLE"),
/// 					},
/// 				},
/// 				&datacatalog.TagTemplateFieldArgs{
/// 					FieldId:     pulumi.String("pii_type"),
/// 					DisplayName: pulumi.String("PII type"),
/// 					Type: &datacatalog.TagTemplateFieldTypeArgs{
/// 						EnumType: &datacatalog.TagTemplateFieldTypeEnumTypeArgs{
/// 							AllowedValues: datacatalog.TagTemplateFieldTypeEnumTypeAllowedValueArray{
/// 								&datacatalog.TagTemplateFieldTypeEnumTypeAllowedValueArgs{
/// 									DisplayName: pulumi.String("EMAIL"),
/// 								},
/// 								&datacatalog.TagTemplateFieldTypeEnumTypeAllowedValueArgs{
/// 									DisplayName: pulumi.String("SOCIAL SECURITY NUMBER"),
/// 								},
/// 								&datacatalog.TagTemplateFieldTypeEnumTypeAllowedValueArgs{
/// 									DisplayName: pulumi.String("NONE"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ForceDelete: pulumi.Bool(false),
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
/// import com.pulumi.gcp.datacatalog.TagTemplate;
/// import com.pulumi.gcp.datacatalog.TagTemplateArgs;
/// import com.pulumi.gcp.datacatalog.inputs.TagTemplateFieldArgs;
/// import com.pulumi.gcp.datacatalog.inputs.TagTemplateFieldTypeArgs;
/// import com.pulumi.gcp.datacatalog.inputs.TagTemplateFieldTypeEnumTypeArgs;
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
///         var basicTagTemplate = new TagTemplate("basicTagTemplate", TagTemplateArgs.builder()
///             .tagTemplateId("my_template")
///             .region("us-central1")
///             .displayName("Demo Tag Template")
///             .fields(
///                 TagTemplateFieldArgs.builder()
///                     .fieldId("source")
///                     .displayName("Source of data asset")
///                     .type(TagTemplateFieldTypeArgs.builder()
///                         .primitiveType("STRING")
///                         .build())
///                     .isRequired(true)
///                     .build(),
///                 TagTemplateFieldArgs.builder()
///                     .fieldId("num_rows")
///                     .displayName("Number of rows in the data asset")
///                     .type(TagTemplateFieldTypeArgs.builder()
///                         .primitiveType("DOUBLE")
///                         .build())
///                     .build(),
///                 TagTemplateFieldArgs.builder()
///                     .fieldId("pii_type")
///                     .displayName("PII type")
///                     .type(TagTemplateFieldTypeArgs.builder()
///                         .enumType(TagTemplateFieldTypeEnumTypeArgs.builder()
///                             .allowedValues(
///                                 TagTemplateFieldTypeEnumTypeAllowedValueArgs.builder()
///                                     .displayName("EMAIL")
///                                     .build(),
///                                 TagTemplateFieldTypeEnumTypeAllowedValueArgs.builder()
///                                     .displayName("SOCIAL SECURITY NUMBER")
///                                     .build(),
///                                 TagTemplateFieldTypeEnumTypeAllowedValueArgs.builder()
///                                     .displayName("NONE")
///                                     .build())
///                             .build())
///                         .build())
///                     .build())
///             .forceDelete(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicTagTemplate:
///     type: gcp:datacatalog:TagTemplate
///     name: basic_tag_template
///     properties:
///       tagTemplateId: my_template
///       region: us-central1
///       displayName: Demo Tag Template
///       fields:
///         - fieldId: source
///           displayName: Source of data asset
///           type:
///             primitiveType: STRING
///           isRequired: true
///         - fieldId: num_rows
///           displayName: Number of rows in the data asset
///           type:
///             primitiveType: DOUBLE
///         - fieldId: pii_type
///           displayName: PII type
///           type:
///             enumType:
///               allowedValues:
///                 - displayName: EMAIL
///                 - displayName: SOCIAL SECURITY NUMBER
///                 - displayName: NONE
///       forceDelete: 'false'
/// ```
///
///
/// ## Import
///
/// TagTemplate can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, TagTemplate can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:datacatalog/tagTemplate:TagTemplate default {{name}}
/// ```
class TagTemplate extends pulumi.CustomResource {
  /// The display name for this template.
  late final pulumi.Output<String?> displayName;

  /// Set of tag template field IDs and the settings for the field. This set is an exhaustive list of the allowed fields. This set must contain at least one field and at most 500 fields. The change of field_id will be resulting in re-creating of field. The change of primitive_type will be resulting in re-creating of field, however if the field is a required, you cannot update it.
  /// Structure is documented below.
  late final pulumi.Output<List<TagTemplateField>> fields;

  /// This confirms the deletion of any possible tags using this template. Must be set to true in order to delete the tag template.
  late final pulumi.Output<bool?> forceDelete;

  /// The resource name of the tag template in URL format. Example: projects/{project_id}/locations/{location}/tagTemplates/{tagTemplateId}
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Template location region.
  late final pulumi.Output<String> region;

  /// The id of the tag template to create.
  late final pulumi.Output<String> tagTemplateId;

  /// Creates a new [TagTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TagTemplate]. {@macro pulumi_datacatalog_tag_template_tag_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TagTemplate(
    String name, {
    TagTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:datacatalog/tagTemplate:TagTemplate',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.displayName = registerOutput<String?>('displayName');
    this.fields = registerOutput<List<TagTemplateField>>('fields');
    this.forceDelete = registerOutput<bool?>('forceDelete');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.tagTemplateId = registerOutput<String>('tagTemplateId');
  }
}
