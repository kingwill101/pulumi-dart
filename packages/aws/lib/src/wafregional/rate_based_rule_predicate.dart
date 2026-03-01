// ignore_for_file: unused_element, unnecessary_cast


class RateBasedRulePredicate {
  /// A unique identifier for a predicate in the rule, such as Byte Match Set ID or IPSet ID.
  final String dataId;
  /// Set this to `false` if you want to allow, block, or count requests
  /// based on the settings in the specified `ByteMatchSet`, `IPSet`, `SqlInjectionMatchSet`, `XssMatchSet`, or `SizeConstraintSet`.
  /// For example, if an IPSet includes the IP address `192.0.2.44`, AWS WAF will allow or block requests based on that IP address.
  /// If set to `true`, AWS WAF will allow, block, or count requests based on all IP addresses _except_ `192.0.2.44`.
  final bool negated;
  /// The type of predicate in a rule. Valid values: `ByteMatch`, `GeoMatch`, `IPMatch`, `RegexMatch`, `SizeConstraint`, `SqlInjectionMatch`, or `XssMatch`.
  final String type;

  /// Creates a new [RateBasedRulePredicate].
  /// [dataId] A unique identifier for a predicate in the rule, such as Byte Match Set ID or IPSet ID.
  /// [negated] Set this to `false` if you want to allow, block, or count requests
  /// [type] The type of predicate in a rule. Valid values: `ByteMatch`, `GeoMatch`, `IPMatch`, `RegexMatch`, `SizeConstraint`, `SqlInjectionMatch`, or `XssMatch`.
  RateBasedRulePredicate({
    required this.dataId,
    required this.negated,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataId': dataId,
      'negated': negated,
      'type': type,
    };
  }

  factory RateBasedRulePredicate.fromMap(Map<String, dynamic> map) {
    return RateBasedRulePredicate(
      dataId: map['dataId'] as String,
      negated: map['negated'] as bool,
      type: map['type'] as String,
    );
  }
}

