// ignore_for_file: unused_element, unnecessary_cast

class GetListenerRuleActionJwtValidationAdditionalClaim {
  /// Format of the claim value.
  final String format;

  /// Name of the claim to validate.
  final String name;

  /// Set of `key`-`value` pairs indicating the query string parameters to match.
  final List<String> values;

  /// Creates a new [GetListenerRuleActionJwtValidationAdditionalClaim].
  /// [format] Format of the claim value.
  /// [name] Name of the claim to validate.
  /// [values] Set of `key`-`value` pairs indicating the query string parameters to match.
  GetListenerRuleActionJwtValidationAdditionalClaim({
    required this.format,
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'format': format, 'name': name, 'values': values};
  }

  factory GetListenerRuleActionJwtValidationAdditionalClaim.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetListenerRuleActionJwtValidationAdditionalClaim(
      format: map['format'] as String,
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
