// ignore_for_file: unused_element, unnecessary_cast

class GetListenerRuleActionJwtValidationAdditionalClaim {
  /// Format of the claim value.
  final String format;

  /// Name of the claim to validate.
  final String name;

  /// Set of <span pulumi-lang-nodejs="`key`" pulumi-lang-dotnet="`Key`" pulumi-lang-go="`key`" pulumi-lang-python="`key`" pulumi-lang-yaml="`key`" pulumi-lang-java="`key`">`key`</span>-<span pulumi-lang-nodejs="`value`" pulumi-lang-dotnet="`Value`" pulumi-lang-go="`value`" pulumi-lang-python="`value`" pulumi-lang-yaml="`value`" pulumi-lang-java="`value`">`value`</span> pairs indicating the query string parameters to match.
  final List<String> values;

  GetListenerRuleActionJwtValidationAdditionalClaim({
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

  factory GetListenerRuleActionJwtValidationAdditionalClaim.fromMap(
      Map<String, dynamic> map) {
    return GetListenerRuleActionJwtValidationAdditionalClaim(
      format: map['format'] as String,
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
