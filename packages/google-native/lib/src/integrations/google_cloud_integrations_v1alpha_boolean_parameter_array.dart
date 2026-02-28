// ignore_for_file: unused_element, unnecessary_cast


/// This message only contains a field of boolean array.
class GoogleCloudIntegrationsV1alphaBooleanParameterArray {
  /// Boolean array.
  final List<bool>? booleanValues;

  /// Creates a new [GoogleCloudIntegrationsV1alphaBooleanParameterArray].
  /// [booleanValues] Boolean array.
  GoogleCloudIntegrationsV1alphaBooleanParameterArray({
    this.booleanValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanValues': ?booleanValues,
    };
  }

  factory GoogleCloudIntegrationsV1alphaBooleanParameterArray.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaBooleanParameterArray(
      booleanValues: map['booleanValues'] == null ? null : (map['booleanValues'] as List).cast<bool>(),
    );
  }
}

