// ignore_for_file: unused_element, unnecessary_cast

/// This message only contains a field of integer array.
class GoogleCloudIntegrationsV1alphaIntParameterArrayResponse {
  /// Integer array.
  final List<String> intValues;

  GoogleCloudIntegrationsV1alphaIntParameterArrayResponse({
    required this.intValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['intValues'] = intValues;
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaIntParameterArrayResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaIntParameterArrayResponse(
      intValues: (map['intValues'] as List).cast<String>(),
    );
  }
}
