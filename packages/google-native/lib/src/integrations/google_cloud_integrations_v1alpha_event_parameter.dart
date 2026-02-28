// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_integrations_v1alpha_value_type.dart';

/// This message is used for processing and persisting (when applicable) key value pair parameters for each event in the event bus.
class GoogleCloudIntegrationsV1alphaEventParameter {
  /// Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the integration definition.
  final String? key;

  /// Values for the defined keys. Each value can either be string, int, double or any proto message.
  final GoogleCloudIntegrationsV1alphaValueType? value;

  /// Creates a new [GoogleCloudIntegrationsV1alphaEventParameter].
  /// [key] Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the integration definition.
  /// [value] Values for the defined keys. Each value can either be string, int, double or any proto message.
  GoogleCloudIntegrationsV1alphaEventParameter({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue.toMap();
    }
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaEventParameter.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaEventParameter(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaValueType.fromMap(
              (map['value'] as Map).cast<String, dynamic>()),
    );
  }
}
