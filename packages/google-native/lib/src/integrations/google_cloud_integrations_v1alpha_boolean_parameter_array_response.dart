// ignore_for_file: unused_element, unnecessary_cast

/// This message only contains a field of boolean array.
class GoogleCloudIntegrationsV1alphaBooleanParameterArrayResponse {
  /// Boolean array.
  final List<bool> booleanValues;

  /// Creates a new [GoogleCloudIntegrationsV1alphaBooleanParameterArrayResponse].
  /// [booleanValues] Boolean array.
  GoogleCloudIntegrationsV1alphaBooleanParameterArrayResponse({
    required this.booleanValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['booleanValues'] = booleanValues;
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaBooleanParameterArrayResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaBooleanParameterArrayResponse(
      booleanValues: (map['booleanValues'] as List).cast<bool>(),
    );
  }
}
