// ignore_for_file: unused_element, unnecessary_cast


class DynamicRoutingEnrichment {
  /// Dynamic routing enrichment key.
  final String? key;
  /// Dynamic routing enrichment value.
  final String? value;

  /// Creates a new [DynamicRoutingEnrichment].
  /// [key] Dynamic routing enrichment key.
  /// [value] Dynamic routing enrichment value.
  DynamicRoutingEnrichment({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory DynamicRoutingEnrichment.fromMap(Map<String, dynamic> map) {
    return DynamicRoutingEnrichment(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

