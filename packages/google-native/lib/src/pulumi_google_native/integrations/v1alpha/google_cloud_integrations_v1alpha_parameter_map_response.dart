// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_integrations_v1alpha_parameter_map_entry_response.dart';

/// A generic multi-map that holds key value pairs. They keys and values can be of any type, unless specified.
class GoogleCloudIntegrationsV1alphaParameterMapResponse {
  /// A list of parameter map entries.
  final List<GoogleCloudIntegrationsV1alphaParameterMapEntryResponse> entries;

  /// Option to specify key type for all entries of the map. If provided then field types for all entries must conform to this.
  final String keyType;

  /// Option to specify value type for all entries of the map. If provided then field types for all entries must conform to this.
  final String valueType;

  GoogleCloudIntegrationsV1alphaParameterMapResponse({
    required this.entries,
    required this.keyType,
    required this.valueType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entries'] = Input.encodeList<
        GoogleCloudIntegrationsV1alphaParameterMapEntryResponse,
        Map<String, dynamic>>(entries, (value) => value.toMap());
    map['keyType'] = keyType;
    map['valueType'] = valueType;
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaParameterMapResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaParameterMapResponse(
      entries: Input.decodeList<
              GoogleCloudIntegrationsV1alphaParameterMapEntryResponse>(
          map['entries'],
          (value) =>
              GoogleCloudIntegrationsV1alphaParameterMapEntryResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      keyType: map['keyType'] as String,
      valueType: map['valueType'] as String,
    );
  }
}
