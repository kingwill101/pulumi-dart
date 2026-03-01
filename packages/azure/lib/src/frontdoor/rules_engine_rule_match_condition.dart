// ignore_for_file: unused_element, unnecessary_cast


class RulesEngineRuleMatchCondition {
  /// can be set to `true` or `false` to negate the given condition. Defaults to `false`.
  final bool? negateCondition;
  /// can be set to `Any`, `IPMatch`, `GeoMatch`, `Equal`, `Contains`, `LessThan`, `GreaterThan`, `LessThanOrEqual`, `GreaterThanOrEqual`, `BeginsWith` or `EndsWith`
  final String operator;
  /// match against a specific key when `variable` is set to `PostArgs` or `RequestHeader`. It cannot be used with `QueryString` and `RequestMethod`.
  final String? selector;
  /// can be set to one or more values out of `Lowercase`, `RemoveNulls`, `Trim`, `Uppercase`, `UrlDecode` and `UrlEncode`
  final List<String>? transforms;
  /// (array) can contain one or more strings.
  final List<String>? values;
  /// can be set to `IsMobile`, `RemoteAddr`, `RequestMethod`, `QueryString`, `PostArgs`, `RequestURI`, `RequestPath`, `RequestFilename`, `RequestFilenameExtension`,`RequestHeader`,`RequestBody` or `RequestScheme`.
  final String? variable;

  /// Creates a new [RulesEngineRuleMatchCondition].
  /// [negateCondition] can be set to `true` or `false` to negate the given condition. Defaults to `false`.
  /// [operator] can be set to `Any`, `IPMatch`, `GeoMatch`, `Equal`, `Contains`, `LessThan`, `GreaterThan`, `LessThanOrEqual`, `GreaterThanOrEqual`, `BeginsWith` or `EndsWith`
  /// [selector] match against a specific key when `variable` is set to `PostArgs` or `RequestHeader`. It cannot be used with `QueryString` and `RequestMethod`.
  /// [transforms] can be set to one or more values out of `Lowercase`, `RemoveNulls`, `Trim`, `Uppercase`, `UrlDecode` and `UrlEncode`
  /// [values] (array) can contain one or more strings.
  /// [variable] can be set to `IsMobile`, `RemoteAddr`, `RequestMethod`, `QueryString`, `PostArgs`, `RequestURI`, `RequestPath`, `RequestFilename`, `RequestFilenameExtension`,`RequestHeader`,`RequestBody` or `RequestScheme`.
  RulesEngineRuleMatchCondition({
    this.negateCondition,
    required this.operator,
    this.selector,
    this.transforms,
    this.values,
    this.variable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'negateCondition': ?negateCondition,
      'operator': operator,
      'selector': ?selector,
      'transforms': ?transforms,
      'values': ?values,
      'variable': ?variable,
    };
  }

  factory RulesEngineRuleMatchCondition.fromMap(Map<String, dynamic> map) {
    return RulesEngineRuleMatchCondition(
      negateCondition: map['negateCondition'] == null ? null : map['negateCondition'] as bool,
      operator: map['operator'] as String,
      selector: map['selector'] == null ? null : map['selector'] as String,
      transforms: map['transforms'] == null ? null : (map['transforms'] as List).cast<String>(),
      values: map['values'] == null ? null : (map['values'] as List).cast<String>(),
      variable: map['variable'] == null ? null : map['variable'] as String,
    );
  }
}

