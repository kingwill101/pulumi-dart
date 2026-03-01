// ignore_for_file: unused_element, unnecessary_cast

/// Label object for TypeProviders
class TypeProviderLabelEntryDeploymentmanagerV2beta {
  /// Key of the label
  final String? key;

  /// Value of the label
  final String? value;

  /// Creates a new [TypeProviderLabelEntryDeploymentmanagerV2beta].
  /// [key] Key of the label
  /// [value] Value of the label
  TypeProviderLabelEntryDeploymentmanagerV2beta({this.key, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': ?key, 'value': ?value};
  }

  factory TypeProviderLabelEntryDeploymentmanagerV2beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return TypeProviderLabelEntryDeploymentmanagerV2beta(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
