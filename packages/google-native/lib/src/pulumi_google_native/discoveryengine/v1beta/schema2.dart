import 'package:pulumi/pulumi.dart';
import 'schema_args2.dart';

/// Creates a Schema.
class Schema2 extends CustomResource {
  late final Output<String> collectionId;
  late final Output<String> dataStoreId;

  /// The JSON representation of the schema.
  late final Output<String> jsonSchema;
  late final Output<String> location;

  /// Immutable. The full resource name of the schema, in the format of `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/schemas/{schema}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  late final Output<String> name;
  late final Output<String> project;

  /// Required. The ID to use for the Schema, which will become the final component of the Schema.name. This field should conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters.
  late final Output<String> schemaId;

  /// The structured representation of the schema.
  late final Output<Map<String, String>> structSchema;

  Schema2(
    String name, {
    SchemaArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:discoveryengine/v1beta:Schema',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.collectionId = registerOutput<String>('collectionId');
    this.dataStoreId = registerOutput<String>('dataStoreId');
    this.jsonSchema = registerOutput<String>('jsonSchema');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.schemaId = registerOutput<String>('schemaId');
    this.structSchema = registerOutput<Map<String, String>>('structSchema');
  }
}
