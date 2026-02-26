import 'package:pulumi/pulumi.dart';
import '../document_ai_warehouse_document_schema_property_definition/document_ai_warehouse_document_schema_property_definition.dart';
import 'document_ai_warehouse_document_schema_args.dart';

/// A document schema is used to define document structure.
///
///
/// To get more information about DocumentSchema, see:
///
/// * [API documentation](https://cloud.google.com/document-warehouse/docs/reference/rest/v1/projects.locations.documentSchemas)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/document-warehouse/docs/manage-document-schemas)
///
/// ## Example Usage
///
/// ### Document Ai Warehouse Document Schema Text
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const exampleText = new gcp.essentialcontacts.DocumentAiWarehouseDocumentSchema("example_text", {
/// projectNumber: project.then(project => project.number),
/// displayName: "test-property-text",
/// location: "us",
/// documentIsFolder: false,
/// propertyDefinitions: [{
/// name: "prop3",
/// displayName: "propdisp3",
/// isRepeatable: false,
/// isFilterable: true,
/// isSearchable: true,
/// isMetadata: false,
/// isRequired: false,
/// retrievalImportance: "HIGHEST",
/// schemaSources: [{
/// name: "dummy_source",
/// processorType: "dummy_processor",
/// }],
/// textTypeOptions: {},
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example_text = gcp.essentialcontacts.DocumentAiWarehouseDocumentSchema("example_text",
/// project_number=project.number,
/// display_name="test-property-text",
/// location="us",
/// document_is_folder=False,
/// property_definitions=[{
/// "name": "prop3",
/// "display_name": "propdisp3",
/// "is_repeatable": False,
/// "is_filterable": True,
/// "is_searchable": True,
/// "is_metadata": False,
/// "is_required": False,
/// "retrieval_importance": "HIGHEST",
/// "schema_sources": [{
/// "name": "dummy_source",
/// "processor_type": "dummy_processor",
/// }],
/// "text_type_options": {},
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var project = Gcp.Organizations.GetProject.Invoke();
///
/// var exampleText = new Gcp.EssentialContacts.DocumentAiWarehouseDocumentSchema("example_text", new()
/// {
/// ProjectNumber = project.Apply(getProjectResult => getProjectResult.Number),
/// DisplayName = "test-property-text",
/// Location = "us",
/// DocumentIsFolder = false,
/// PropertyDefinitions = new[]
/// {
/// new Gcp.EssentialContacts.Inputs.DocumentAiWarehouseDocumentSchemaPropertyDefinitionArgs
/// {
/// Name = "prop3",
/// DisplayName = "propdisp3",
/// IsRepeatable = false,
/// IsFilterable = true,
/// IsSearchable = true,
/// IsMetadata = false,
/// IsRequired = false,
/// RetrievalImportance = "HIGHEST",
/// SchemaSources = new[]
/// {
/// new Gcp.EssentialContacts.Inputs.DocumentAiWarehouseDocumentSchemaPropertyDefinitionSchemaSourceArgs
/// {
/// Name = "dummy_source",
/// ProcessorType = "dummy_processor",
/// },
/// },
/// TextTypeOptions = null,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/essentialcontacts"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = essentialcontacts.NewDocumentAiWarehouseDocumentSchema(ctx, "example_text", &essentialcontacts.DocumentAiWarehouseDocumentSchemaArgs{
/// ProjectNumber:    pulumi.String(project.Number),
/// DisplayName:      pulumi.String("test-property-text"),
/// Location:         pulumi.String("us"),
/// DocumentIsFolder: pulumi.Bool(false),
/// PropertyDefinitions: essentialcontacts.DocumentAiWarehouseDocumentSchemaPropertyDefinitionArray{
/// &essentialcontacts.DocumentAiWarehouseDocumentSchemaPropertyDefinitionArgs{
/// Name:                pulumi.String("prop3"),
/// DisplayName:         pulumi.String("propdisp3"),
/// IsRepeatable:        pulumi.Bool(false),
/// IsFilterable:        pulumi.Bool(true),
/// IsSearchable:        pulumi.Bool(true),
/// IsMetadata:          pulumi.Bool(false),
/// IsRequired:          pulumi.Bool(false),
/// RetrievalImportance: pulumi.String("HIGHEST"),
/// SchemaSources: essentialcontacts.DocumentAiWarehouseDocumentSchemaPropertyDefinitionSchemaSourceArray{
/// &essentialcontacts.DocumentAiWarehouseDocumentSchemaPropertyDefinitionSchemaSourceArgs{
/// Name:          pulumi.String("dummy_source"),
/// ProcessorType: pulumi.String("dummy_processor"),
/// },
/// },
/// TextTypeOptions: &essentialcontacts.DocumentAiWarehouseDocumentSchemaPropertyDefinitionTextTypeOptionsArgs{},
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.essentialcontacts.DocumentAiWarehouseDocumentSchema;
/// import com.pulumi.gcp.essentialcontacts.DocumentAiWarehouseDocumentSchemaArgs;
/// import com.pulumi.gcp.essentialcontacts.inputs.DocumentAiWarehouseDocumentSchemaPropertyDefinitionArgs;
/// import com.pulumi.gcp.essentialcontacts.inputs.DocumentAiWarehouseDocumentSchemaPropertyDefinitionTextTypeOptionsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// var exampleText = new DocumentAiWarehouseDocumentSchema("exampleText", DocumentAiWarehouseDocumentSchemaArgs.builder()
/// .projectNumber(project.number())
/// .displayName("test-property-text")
/// .location("us")
/// .documentIsFolder(false)
/// .propertyDefinitions(DocumentAiWarehouseDocumentSchemaPropertyDefinitionArgs.builder()
/// .name("prop3")
/// .displayName("propdisp3")
/// .isRepeatable(false)
/// .isFilterable(true)
/// .isSearchable(true)
/// .isMetadata(false)
/// .isRequired(false)
/// .retrievalImportance("HIGHEST")
/// .schemaSources(DocumentAiWarehouseDocumentSchemaPropertyDefinitionSchemaSourceArgs.builder()
/// .name("dummy_source")
/// .processorType("dummy_processor")
/// .build())
/// .textTypeOptions(DocumentAiWarehouseDocumentSchemaPropertyDefinitionTextTypeOptionsArgs.builder()
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleText:
/// type: gcp:essentialcontacts:DocumentAiWarehouseDocumentSchema
/// name: example_text
/// properties:
/// projectNumber: ${project.number}
/// displayName: test-property-text
/// location: us
/// documentIsFolder: false
/// propertyDefinitions:
/// - name: prop3
/// displayName: propdisp3
/// isRepeatable: false
/// isFilterable: true
/// isSearchable: true
/// isMetadata: false
/// isRequired: false
/// retrievalImportance: HIGHEST
/// schemaSources:
/// - name: dummy_source
/// processorType: dummy_processor
/// textTypeOptions: {}
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// DocumentSchema can be imported using any of these accepted formats:
///
/// * `projects/{{project_number}}/locations/{{location}}/documentSchemas/{{name}}`
///
/// * `{{project_number}}/{{location}}/{{name}}`
///
/// When using the `pulumi import` command, DocumentSchema can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:essentialcontacts/documentAiWarehouseDocumentSchema:DocumentAiWarehouseDocumentSchema default projects/{{project_number}}/locations/{{location}}/documentSchemas/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:essentialcontacts/documentAiWarehouseDocumentSchema:DocumentAiWarehouseDocumentSchema default {{project_number}}/{{location}}/{{name}}
/// ```
class DocumentAiWarehouseDocumentSchema extends CustomResource {
  /// Name of the schema given by the user.
  late final Output<String> displayName;

  /// Tells whether the document is a folder or a typical document.
  late final Output<bool?> documentIsFolder;

  /// The location of the resource.
  late final Output<String> location;

  /// The resource name of the document schema.
  late final Output<String> name;

  /// The unique identifier of the project.
  late final Output<String> projectNumber;

  /// Defines the metadata for a schema property.
  /// Structure is documented below.
  late final Output<List<DocumentAiWarehouseDocumentSchemaPropertyDefinition>>
      propertyDefinitions;

  DocumentAiWarehouseDocumentSchema(
    String name, {
    DocumentAiWarehouseDocumentSchemaArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:essentialcontacts/documentAiWarehouseDocumentSchema:DocumentAiWarehouseDocumentSchema',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.displayName = Output.createUnknown<String>();
    this.documentIsFolder = Output.createUnknown<bool?>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.projectNumber = Output.createUnknown<String>();
    this.propertyDefinitions = Output.createUnknown<
        List<DocumentAiWarehouseDocumentSchemaPropertyDefinition>>();
  }
}
