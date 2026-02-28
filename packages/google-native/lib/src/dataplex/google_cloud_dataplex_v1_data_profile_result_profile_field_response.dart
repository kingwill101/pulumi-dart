// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_data_profile_result_profile_field_profile_info_response.dart';

/// A field within a table.
class GoogleCloudDataplexV1DataProfileResultProfileFieldResponse {
  /// The mode of the field. Possible values include: REQUIRED, if it is a required field. NULLABLE, if it is an optional field. REPEATED, if it is a repeated field.
  final String mode;

  /// The name of the field.
  final String name;

  /// Profile information for the corresponding field.
  final GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoResponse
      profile;

  /// The data type retrieved from the schema of the data source. For instance, for a BigQuery native table, it is the BigQuery Table Schema (https://cloud.google.com/bigquery/docs/reference/rest/v2/tables#tablefieldschema). For a Dataplex Entity, it is the Entity Schema (https://cloud.google.com/dataplex/docs/reference/rpc/google.cloud.dataplex.v1#type_3).
  final String type;

  /// Creates a new [GoogleCloudDataplexV1DataProfileResultProfileFieldResponse].
  /// [mode] The mode of the field. Possible values include: REQUIRED, if it is a required field. NULLABLE, if it is an optional field. REPEATED, if it is a repeated field.
  /// [name] The name of the field.
  /// [profile] Profile information for the corresponding field.
  /// [type] The data type retrieved from the schema of the data source. For instance, for a BigQuery native table, it is the BigQuery Table Schema (https://cloud.google.com/bigquery/docs/reference/rest/v2/tables#tablefieldschema). For a Dataplex Entity, it is the Entity Schema (https://cloud.google.com/dataplex/docs/reference/rpc/google.cloud.dataplex.v1#type_3).
  GoogleCloudDataplexV1DataProfileResultProfileFieldResponse({
    required this.mode,
    required this.name,
    required this.profile,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mode'] = mode;
    map['name'] = name;
    map['profile'] = profile.toMap();
    map['type'] = type;
    return map;
  }

  factory GoogleCloudDataplexV1DataProfileResultProfileFieldResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataProfileResultProfileFieldResponse(
      mode: map['mode'] as String,
      name: map['name'] as String,
      profile:
          GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoResponse
              .fromMap((map['profile'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
