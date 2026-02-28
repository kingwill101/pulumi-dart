// ignore_for_file: unused_element, unnecessary_cast

/// Label object for TypeProviders
class TypeProviderLabelEntryResponseDeploymentmanagerV2beta {
  /// Key of the label
  final String key;

  /// Value of the label
  final String value;

  /// Creates a new [TypeProviderLabelEntryResponseDeploymentmanagerV2beta].
  /// [key] Key of the label
  /// [value] Value of the label
  TypeProviderLabelEntryResponseDeploymentmanagerV2beta({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory TypeProviderLabelEntryResponseDeploymentmanagerV2beta.fromMap(
      Map<String, dynamic> map) {
    return TypeProviderLabelEntryResponseDeploymentmanagerV2beta(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
