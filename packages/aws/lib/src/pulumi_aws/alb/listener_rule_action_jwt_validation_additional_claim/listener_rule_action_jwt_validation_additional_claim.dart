// ignore_for_file: unused_element, unnecessary_cast

class ListenerRuleActionJwtValidationAdditionalClaim {
  /// Format of the claim value. Valid values are `single-string`, `string-array` and `space-separated-values`.
  final String format;

  /// Name of the claim to validate. <span pulumi-lang-nodejs="`exp`" pulumi-lang-dotnet="`Exp`" pulumi-lang-go="`exp`" pulumi-lang-python="`exp`" pulumi-lang-yaml="`exp`" pulumi-lang-java="`exp`">`exp`</span>, <span pulumi-lang-nodejs="`iss`" pulumi-lang-dotnet="`Iss`" pulumi-lang-go="`iss`" pulumi-lang-python="`iss`" pulumi-lang-yaml="`iss`" pulumi-lang-java="`iss`">`iss`</span>, <span pulumi-lang-nodejs="`nbf`" pulumi-lang-dotnet="`Nbf`" pulumi-lang-go="`nbf`" pulumi-lang-python="`nbf`" pulumi-lang-yaml="`nbf`" pulumi-lang-java="`nbf`">`nbf`</span>, or <span pulumi-lang-nodejs="`iat`" pulumi-lang-dotnet="`Iat`" pulumi-lang-go="`iat`" pulumi-lang-python="`iat`" pulumi-lang-yaml="`iat`" pulumi-lang-java="`iat`">`iat`</span> cannot be specified because they are validated by default.
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
