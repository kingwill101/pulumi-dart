// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_integrations_v1alpha_parameter_map_field_response.dart';

/// Entry is a pair of key and value.
class GoogleCloudIntegrationsV1alphaParameterMapEntryResponse {
  /// Key of the map entry.
  final GoogleCloudIntegrationsV1alphaParameterMapFieldResponse key;

  /// Value of the map entry.
  final GoogleCloudIntegrationsV1alphaParameterMapFieldResponse value;

  /// Creates a new [GoogleCloudIntegrationsV1alphaParameterMapEntryResponse].
  /// [key] Key of the map entry.
  /// [value] Value of the map entry.
  GoogleCloudIntegrationsV1alphaParameterMapEntryResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key.toMap(), 'value': value.toMap()};
  }

  factory GoogleCloudIntegrationsV1alphaParameterMapEntryResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudIntegrationsV1alphaParameterMapEntryResponse(
      key: GoogleCloudIntegrationsV1alphaParameterMapFieldResponse.fromMap(
        (map['key'] as Map).cast<String, dynamic>(),
      ),
      value: GoogleCloudIntegrationsV1alphaParameterMapFieldResponse.fromMap(
        (map['value'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
