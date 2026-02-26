// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_integrations_v1alpha_parameter_map_field.dart';

/// Entry is a pair of key and value.
class GoogleCloudIntegrationsV1alphaParameterMapEntry {
  /// Key of the map entry.
  final GoogleCloudIntegrationsV1alphaParameterMapField? key;

  /// Value of the map entry.
  final GoogleCloudIntegrationsV1alphaParameterMapField? value;

  GoogleCloudIntegrationsV1alphaParameterMapEntry({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue.toMap();
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue.toMap();
    }
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaParameterMapEntry.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaParameterMapEntry(
      key: map['key'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaParameterMapField.fromMap(
              (map['key'] as Map).cast<String, dynamic>()),
      value: map['value'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaParameterMapField.fromMap(
              (map['value'] as Map).cast<String, dynamic>()),
    );
  }
}
