// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_integrations_v1alpha_value_type_response.dart';

/// Field represents either the key or value in an entry.
class GoogleCloudIntegrationsV1alphaParameterMapFieldResponse {
  /// Passing a literal value.
  final GoogleCloudIntegrationsV1alphaValueTypeResponse literalValue;

  /// Referencing one of the Integration variables.
  final String referenceKey;

  /// Creates a new [GoogleCloudIntegrationsV1alphaParameterMapFieldResponse].
  /// [literalValue] Passing a literal value.
  /// [referenceKey] Referencing one of the Integration variables.
  GoogleCloudIntegrationsV1alphaParameterMapFieldResponse({
    required this.literalValue,
    required this.referenceKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'literalValue': literalValue.toMap(),
      'referenceKey': referenceKey,
    };
  }

  factory GoogleCloudIntegrationsV1alphaParameterMapFieldResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudIntegrationsV1alphaParameterMapFieldResponse(
      literalValue: GoogleCloudIntegrationsV1alphaValueTypeResponse.fromMap(
        (map['literalValue'] as Map).cast<String, dynamic>(),
      ),
      referenceKey: map['referenceKey'] as String,
    );
  }
}
