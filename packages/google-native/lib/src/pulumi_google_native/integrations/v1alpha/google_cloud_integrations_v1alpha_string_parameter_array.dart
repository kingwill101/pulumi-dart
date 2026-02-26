// ignore_for_file: unused_element, unnecessary_cast

/// This message only contains a field of string array.
class GoogleCloudIntegrationsV1alphaStringParameterArray {
  /// String array.
  final List<String>? stringValues;

  GoogleCloudIntegrationsV1alphaStringParameterArray({
    this.stringValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final stringValuesValue = stringValues;
    if (stringValuesValue != null) {
      map['stringValues'] = stringValuesValue;
    }
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaStringParameterArray.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaStringParameterArray(
      stringValues: map['stringValues'] == null
          ? null
          : (map['stringValues'] as List).cast<String>(),
    );
  }
}
