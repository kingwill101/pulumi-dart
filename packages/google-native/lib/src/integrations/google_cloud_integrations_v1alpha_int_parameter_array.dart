// ignore_for_file: unused_element, unnecessary_cast

/// This message only contains a field of integer array.
class GoogleCloudIntegrationsV1alphaIntParameterArray {
  /// Integer array.
  final List<String>? intValues;

  /// Creates a new [GoogleCloudIntegrationsV1alphaIntParameterArray].
  /// [intValues] Integer array.
  GoogleCloudIntegrationsV1alphaIntParameterArray({
    this.intValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final intValuesValue = intValues;
    if (intValuesValue != null) {
      map['intValues'] = intValuesValue;
    }
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaIntParameterArray.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaIntParameterArray(
      intValues: map['intValues'] == null
          ? null
          : (map['intValues'] as List).cast<String>(),
    );
  }
}
