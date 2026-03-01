// ignore_for_file: unused_element, unnecessary_cast


class NamespaceTopicSpacesConfigurationStaticRoutingEnrichment {
  /// The enrichment key.
  final String key;
  /// The enrichment value.
  final String value;

  /// Creates a new [NamespaceTopicSpacesConfigurationStaticRoutingEnrichment].
  /// [key] The enrichment key.
  /// [value] The enrichment value.
  NamespaceTopicSpacesConfigurationStaticRoutingEnrichment({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory NamespaceTopicSpacesConfigurationStaticRoutingEnrichment.fromMap(Map<String, dynamic> map) {
    return NamespaceTopicSpacesConfigurationStaticRoutingEnrichment(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

