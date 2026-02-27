// ignore_for_file: unused_element, unnecessary_cast

class ListenerRuleActionJwtValidationAdditionalClaim {
  /// Format of the claim value. Valid values are `single-string`, `string-array` and `space-separated-values`.
  final String format;

  /// Name of the claim to validate. `exp`, `iss`, `nbf`, or `iat` cannot be specified because they are validated by default.
  final String name;

  /// List of expected values of the claim.
  final List<String> values;

  ListenerRuleActionJwtValidationAdditionalClaim({
    required this.format,
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['format'] = format;
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory ListenerRuleActionJwtValidationAdditionalClaim.fromMap(
      Map<String, dynamic> map) {
    return ListenerRuleActionJwtValidationAdditionalClaim(
      format: map['format'] as String,
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
