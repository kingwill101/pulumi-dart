// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_integrations_v1alpha_value_type.dart';

/// Field represents either the key or value in an entry.
class GoogleCloudIntegrationsV1alphaParameterMapField {
  /// Passing a literal value.
  final GoogleCloudIntegrationsV1alphaValueType? literalValue;

  /// Referencing one of the Integration variables.
  final String? referenceKey;

  GoogleCloudIntegrationsV1alphaParameterMapField({
    this.literalValue,
    this.referenceKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final literalValueValue = literalValue;
    if (literalValueValue != null) {
      map['literalValue'] = literalValueValue.toMap();
    }
    final referenceKeyValue = referenceKey;
    if (referenceKeyValue != null) {
      map['referenceKey'] = referenceKeyValue;
    }
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaParameterMapField.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaParameterMapField(
      literalValue: map['literalValue'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaValueType.fromMap(
              (map['literalValue'] as Map).cast<String, dynamic>()),
      referenceKey:
          map['referenceKey'] == null ? null : map['referenceKey'] as String,
    );
  }
}
