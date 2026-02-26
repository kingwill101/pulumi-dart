// ignore_for_file: unused_element, unnecessary_cast

/// A dimension captures data quality intent about a defined subset of the rules specified.
class GoogleCloudDataplexV1DataQualityDimensionResponse {
  /// The dimension name a rule belongs to. Supported dimensions are "COMPLETENESS", "ACCURACY", "CONSISTENCY", "VALIDITY", "UNIQUENESS", "INTEGRITY"
  final String name;

  GoogleCloudDataplexV1DataQualityDimensionResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GoogleCloudDataplexV1DataQualityDimensionResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualityDimensionResponse(
      name: map['name'] as String,
    );
  }
}
