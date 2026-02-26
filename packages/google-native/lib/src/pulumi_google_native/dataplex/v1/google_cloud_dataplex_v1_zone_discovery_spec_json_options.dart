// ignore_for_file: unused_element, unnecessary_cast

/// Describe JSON data format.
class GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions {
  /// Optional. Whether to disable the inference of data type for Json data. If true, all columns will be registered as their primitive types (strings, number or boolean).
  final bool? disableTypeInference;

  /// Optional. The character encoding of the data. The default is UTF-8.
  final String? encoding;

  GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions({
    this.disableTypeInference,
    this.encoding,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disableTypeInferenceValue = disableTypeInference;
    if (disableTypeInferenceValue != null) {
      map['disableTypeInference'] = disableTypeInferenceValue;
    }
    final encodingValue = encoding;
    if (encodingValue != null) {
      map['encoding'] = encodingValue;
    }
    return map;
  }

  factory GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions(
      disableTypeInference: map['disableTypeInference'] == null
          ? null
          : map['disableTypeInference'] as bool,
      encoding: map['encoding'] == null ? null : map['encoding'] as String,
    );
  }
}
