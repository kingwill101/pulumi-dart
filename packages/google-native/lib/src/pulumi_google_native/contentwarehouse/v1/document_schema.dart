import 'package:pulumi/pulumi.dart';
import 'document_schema_args.dart';
import 'google_cloud_contentwarehouse_v1_property_definition_response.dart';

/// Creates a document schema.
class DocumentSchema extends CustomResource {
  /// The time when the document schema is created.
  late final Output<String> createTime;

  /// Schema description.
  late final Output<String> description;

  /// Name of the schema given by the user. Must be unique per project.
  late final Output<String> displayName;

  /// Document Type, true refers the document is a folder, otherwise it is a typical document.
  late final Output<bool> documentIsFolder;
  late final Output<String> location;

  /// The resource name of the document schema. Format: projects/{project_number}/locations/{location}/documentSchemas/{document_schema_id}. The name is ignored when creating a document schema.
  late final Output<String> name;
  late final Output<String> project;

  /// Document details.
  late final Output<
          List<GoogleCloudContentwarehouseV1PropertyDefinitionResponse>>
      propertyDefinitions;

  /// The time when the document schema is last updated.
  late final Output<String> updateTime;

  DocumentSchema(
    String name, {
    DocumentSchemaArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:contentwarehouse/v1:DocumentSchema',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.documentIsFolder = Output.createUnknown<bool>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.propertyDefinitions = Output.createUnknown<
        List<GoogleCloudContentwarehouseV1PropertyDefinitionResponse>>();
    this.updateTime = Output.createUnknown<String>();
  }
}
