// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulePredicate {
  /// A unique identifier for a predicate in the rule, such as Byte Match Set ID or IPSet ID.
  final pulumi.Input<String> dataId;
  /// Set this to `false` if you want to allow, block, or count requests
  /// based on the settings in the specified waf_byte_match_set, waf_ipset, aws_waf_size_constraint_set, aws.waf.SqlInjectionMatchSet or aws_waf_xss_match_set.
  /// For example, if an IPSet includes the IP address `192.0.2.44`, AWS WAF will allow or block requests based on that IP address.
  /// If set to `true`, AWS WAF will allow, block, or count requests based on all IP addresses except `192.0.2.44`.
  final pulumi.Input<bool> negated;
  /// The type of predicate in a rule. Valid values: `ByteMatch`, `GeoMatch`, `IPMatch`, `RegexMatch`, `SizeConstraint`, `SqlInjectionMatch`, or `XssMatch`.
  final pulumi.Input<String> type;

  /// Creates a new [RulePredicate].
  /// [dataId] A unique identifier for a predicate in the rule, such as Byte Match Set ID or IPSet ID.
  /// [negated] Set this to `false` if you want to allow, block, or count requests
  /// [type] The type of predicate in a rule. Valid values: `ByteMatch`, `GeoMatch`, `IPMatch`, `RegexMatch`, `SizeConstraint`, `SqlInjectionMatch`, or `XssMatch`.
  const RulePredicate({
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

  factory RulePredicate.fromMap(Map<String, dynamic> map) {
    return RulePredicate(
      dataId: pulumi.Input.fromValue(map['dataId'] as String),
      negated: pulumi.Input.fromValue(map['negated'] as bool),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
