import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_discoveryengine_v1alpha_field_config_response.dart';
import 'schema_args.dart';

/// Creates a Schema.
class Schema extends CustomResource {
  late final Output<String> collectionId;
  late final Output<String> dataStoreId;

  /// Configurations for fields of the schema.
  late final Output<List<GoogleCloudDiscoveryengineV1alphaFieldConfigResponse>>
      fieldConfigs;

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

  Schema(
    String name, {
    SchemaArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:discoveryengine/v1alpha:Schema',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.collectionId = registerOutput<String>('collectionId');
    this.dataStoreId = registerOutput<String>('dataStoreId');
    this.fieldConfigs = registerOutput<
            List<GoogleCloudDiscoveryengineV1alphaFieldConfigResponse>>(
        'fieldConfigs');
    this.jsonSchema = registerOutput<String>('jsonSchema');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.schemaId = registerOutput<String>('schemaId');
    this.structSchema = registerOutput<Map<String, String>>('structSchema');
  }
}
