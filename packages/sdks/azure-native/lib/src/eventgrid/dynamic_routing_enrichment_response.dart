// ignore_for_file: unused_element, unnecessary_cast


class DynamicRoutingEnrichmentResponse {
  /// Dynamic routing enrichment key.
  final String? key;
  /// Dynamic routing enrichment value.
  final String? value;

  /// Creates a new [DynamicRoutingEnrichmentResponse].
  /// [key] Dynamic routing enrichment key.
  /// [value] Dynamic routing enrichment value.
  DynamicRoutingEnrichmentResponse({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory DynamicRoutingEnrichmentResponse.fromMap(Map<String, dynamic> map) {
    return DynamicRoutingEnrichmentResponse(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

