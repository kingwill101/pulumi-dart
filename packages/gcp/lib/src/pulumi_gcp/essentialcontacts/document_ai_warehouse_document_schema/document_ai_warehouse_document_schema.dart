import 'package:pulumi/pulumi.dart' as pulumi;
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
///
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
class DocumentAiWarehouseDocumentSchema extends pulumi.CustomResource {
  /// Name of the schema given by the user.
  late final pulumi.Output<String> displayName;

  /// Tells whether the document is a folder or a typical document.
  late final pulumi.Output<bool?> documentIsFolder;

  /// The location of the resource.
  late final pulumi.Output<String> location;

  /// The resource name of the document schema.
  late final pulumi.Output<String> name;

  /// The unique identifier of the project.
  late final pulumi.Output<String> projectNumber;

  /// Defines the metadata for a schema property.
  /// Structure is documented below.
  late final pulumi
      .Output<List<DocumentAiWarehouseDocumentSchemaPropertyDefinition>>
      propertyDefinitions;

  DocumentAiWarehouseDocumentSchema(
    String name, {
    DocumentAiWarehouseDocumentSchemaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:essentialcontacts/documentAiWarehouseDocumentSchema:DocumentAiWarehouseDocumentSchema',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String>('displayName');
    this.documentIsFolder = registerOutput<bool?>('documentIsFolder');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.projectNumber = registerOutput<String>('projectNumber');
    this.propertyDefinitions = registerOutput<
            List<DocumentAiWarehouseDocumentSchemaPropertyDefinition>>(
        'propertyDefinitions');
  }
}
