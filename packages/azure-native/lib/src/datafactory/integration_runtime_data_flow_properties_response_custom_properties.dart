// ignore_for_file: unused_element, unnecessary_cast


class IntegrationRuntimeDataFlowPropertiesResponseCustomProperties {
  /// Name of custom property.
  final String? name;
  /// Value of custom property.
  final String? value;

  /// Creates a new [IntegrationRuntimeDataFlowPropertiesResponseCustomProperties].
  /// [name] Name of custom property.
  /// [value] Value of custom property.
  IntegrationRuntimeDataFlowPropertiesResponseCustomProperties({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory IntegrationRuntimeDataFlowPropertiesResponseCustomProperties.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeDataFlowPropertiesResponseCustomProperties(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

