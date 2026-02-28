// ignore_for_file: unused_element, unnecessary_cast


/// This message only contains a field of integer array.
class GoogleCloudIntegrationsV1alphaIntParameterArrayResponse {
  /// Integer array.
  final List<String> intValues;

  /// Creates a new [GoogleCloudIntegrationsV1alphaIntParameterArrayResponse].
  /// [intValues] Integer array.
  GoogleCloudIntegrationsV1alphaIntParameterArrayResponse({
    required this.intValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intValues': intValues,
    };
  }

  factory GoogleCloudIntegrationsV1alphaIntParameterArrayResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaIntParameterArrayResponse(
      intValues: (map['intValues'] as List).cast<String>(),
    );
  }
}

