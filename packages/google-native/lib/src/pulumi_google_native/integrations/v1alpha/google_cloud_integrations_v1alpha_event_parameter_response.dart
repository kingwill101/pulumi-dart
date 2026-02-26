// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_integrations_v1alpha_value_type_response.dart';

/// This message is used for processing and persisting (when applicable) key value pair parameters for each event in the event bus.
class GoogleCloudIntegrationsV1alphaEventParameterResponse {
  /// Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the integration definition.
  final String key;

  /// Values for the defined keys. Each value can either be string, int, double or any proto message.
  final GoogleCloudIntegrationsV1alphaValueTypeResponse value;

  GoogleCloudIntegrationsV1alphaEventParameterResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value.toMap();
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaEventParameterResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaEventParameterResponse(
      key: map['key'] as String,
      value: GoogleCloudIntegrationsV1alphaValueTypeResponse.fromMap(
          (map['value'] as Map).cast<String, dynamic>()),
    );
  }
}
