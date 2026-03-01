// ignore_for_file: unused_element, unnecessary_cast


/// The properties of an enrichment that your IoT hub applies to messages delivered to endpoints.
class EnrichmentPropertiesResponse {
  /// The list of endpoints for which the enrichment is applied to the message.
  final List<String> endpointNames;
  /// The key or name for the enrichment property.
  final String key;
  /// The value for the enrichment property.
  final String value;

  /// Creates a new [EnrichmentPropertiesResponse].
  /// [endpointNames] The list of endpoints for which the enrichment is applied to the message.
  /// [key] The key or name for the enrichment property.
  /// [value] The value for the enrichment property.
  EnrichmentPropertiesResponse({
    required this.endpointNames,
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointNames': endpointNames,
      'key': key,
      'value': value,
    };
  }

  factory EnrichmentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EnrichmentPropertiesResponse(
      endpointNames: (map['endpointNames'] as List).cast<String>(),
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

