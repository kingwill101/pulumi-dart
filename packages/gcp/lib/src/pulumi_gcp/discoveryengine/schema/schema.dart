import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_args.dart';

/// Schema defines the structure and layout of a type of document data.
///
///
/// To get more information about Schema, see:
///
/// * [API documentation](https://cloud.google.com/generative-ai-app-builder/docs/reference/rest/v1/projects.locations.collections.dataStores.schemas)
/// * How-to Guides
/// * [Provide a schema for your data store](https://cloud.google.com/generative-ai-app-builder/docs/provide-schema)
///
/// ## Example Usage
///
/// ### Discoveryengine Schema Basic
///
///
///
///
/// ## Import
///
/// Schema can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/collections/default_collection/dataStores/{{data_store_id}}/schemas/{{schema_id}}`
///
/// * `{{project}}/{{location}}/{{data_store_id}}/{{schema_id}}`
///
/// * `{{location}}/{{data_store_id}}/{{schema_id}}`
///
/// When using the `pulumi import` command, Schema can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/schema:Schema default projects/{{project}}/locations/{{location}}/collections/default_collection/dataStores/{{data_store_id}}/schemas/{{schema_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/schema:Schema default {{project}}/{{location}}/{{data_store_id}}/{{schema_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/schema:Schema default {{location}}/{{data_store_id}}/{{schema_id}}
/// ```
class Schema extends pulumi.CustomResource {
  /// The unique id of the data store.
  late final pulumi.Output<String> dataStoreId;

  /// The JSON representation of the schema.
  late final pulumi.Output<String?> jsonSchema;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  late final pulumi.Output<String> location;

  /// The unique full resource name of the schema. Values are of the format
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}/schemas/{schema_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The unique id of the schema.
  late final pulumi.Output<String> schemaId;

  Schema(
    String name, {
    SchemaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/schema:Schema',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dataStoreId = registerOutput<String>('dataStoreId');
    this.jsonSchema = registerOutput<String?>('jsonSchema');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.schemaId = registerOutput<String>('schemaId');
  }
}
