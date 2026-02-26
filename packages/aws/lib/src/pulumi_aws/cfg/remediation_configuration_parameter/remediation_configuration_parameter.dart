// ignore_for_file: unused_element, unnecessary_cast

class RemediationConfigurationParameter {
  /// Name of the attribute.
  final String name;

  /// Value is dynamic and changes at run-time.
  final String? resourceValue;

  /// Value is static and does not change at run-time.
  final String? staticValue;

  /// List of static values.
  final List<String>? staticValues;

  RemediationConfigurationParameter({
    required this.name,
    this.resourceValue,
    this.staticValue,
    this.staticValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final resourceValueValue = resourceValue;
    if (resourceValueValue != null) {
      map['resourceValue'] = resourceValueValue;
    }
    final staticValueValue = staticValue;
    if (staticValueValue != null) {
      map['staticValue'] = staticValueValue;
    }
    final staticValuesValue = staticValues;
    if (staticValuesValue != null) {
      map['staticValues'] = staticValuesValue;
    }
    return map;
  }

  factory RemediationConfigurationParameter.fromMap(Map<String, dynamic> map) {
    return RemediationConfigurationParameter(
      name: map['name'] as String,
      resourceValue:
          map['resourceValue'] == null ? null : map['resourceValue'] as String,
      staticValue:
          map['staticValue'] == null ? null : map['staticValue'] as String,
      staticValues: map['staticValues'] == null
          ? null
          : (map['staticValues'] as List).cast<String>(),
    );
  }
}
