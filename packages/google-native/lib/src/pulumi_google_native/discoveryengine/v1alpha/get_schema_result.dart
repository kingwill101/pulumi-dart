// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_discoveryengine_v1alpha_field_config_response.dart';

/// Result data returned by getSchema.
class GetSchemaResult {
  /// Configurations for fields of the schema.
  final List<GoogleCloudDiscoveryengineV1alphaFieldConfigResponse> fieldConfigs;

  /// The JSON representation of the schema.
  final String jsonSchema;

  /// Immutable. The full resource name of the schema, in the format of `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/schemas/{schema}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  final String name;

  /// The structured representation of the schema.
  final Map<String, String> structSchema;

  GetSchemaResult({
    required this.fieldConfigs,
    required this.jsonSchema,
    required this.name,
    required this.structSchema,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fieldConfigs'] = Input.encodeList<
        GoogleCloudDiscoveryengineV1alphaFieldConfigResponse,
        Map<String, dynamic>>(fieldConfigs, (value) => value.toMap());
    map['jsonSchema'] = jsonSchema;
    map['name'] = name;
    map['structSchema'] = structSchema;
    return map;
  }

  factory GetSchemaResult.fromMap(Map<String, dynamic> map) {
    return GetSchemaResult(
      fieldConfigs: Input.decodeList<
              GoogleCloudDiscoveryengineV1alphaFieldConfigResponse>(
          map['fieldConfigs'],
          (value) =>
              GoogleCloudDiscoveryengineV1alphaFieldConfigResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      jsonSchema: map['jsonSchema'] as String,
      name: map['name'] as String,
      structSchema: (map['structSchema'] as Map).cast<String, String>(),
    );
  }
}
