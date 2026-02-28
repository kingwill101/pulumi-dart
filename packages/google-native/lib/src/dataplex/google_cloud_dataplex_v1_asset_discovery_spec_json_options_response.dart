// ignore_for_file: unused_element, unnecessary_cast

/// Describe JSON data format.
class GoogleCloudDataplexV1AssetDiscoverySpecJsonOptionsResponse {
  /// Optional. Whether to disable the inference of data type for Json data. If true, all columns will be registered as their primitive types (strings, number or boolean).
  final bool disableTypeInference;

  /// Optional. The character encoding of the data. The default is UTF-8.
  final String encoding;

  /// Creates a new [GoogleCloudDataplexV1AssetDiscoverySpecJsonOptionsResponse].
  /// [disableTypeInference] Optional. Whether to disable the inference of data type for Json data. If true, all columns will be registered as their primitive types (strings, number or boolean).
  /// [encoding] Optional. The character encoding of the data. The default is UTF-8.
  GoogleCloudDataplexV1AssetDiscoverySpecJsonOptionsResponse({
    required this.disableTypeInference,
    required this.encoding,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disableTypeInference'] = disableTypeInference;
    map['encoding'] = encoding;
    return map;
  }

  factory GoogleCloudDataplexV1AssetDiscoverySpecJsonOptionsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1AssetDiscoverySpecJsonOptionsResponse(
      disableTypeInference: map['disableTypeInference'] as bool,
      encoding: map['encoding'] as String,
    );
  }
}
