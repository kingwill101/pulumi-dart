// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenerRuleConditionPathPattern {
  /// Set of regular expressions to compare against the request URL.
  final pulumi.Input<List<String>> regexValues;
  /// Set of source IP addresses in CIDR format for Application Load Balancers
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetListenerRuleConditionPathPattern].
  /// [regexValues] Set of regular expressions to compare against the request URL.
  /// [values] Set of source IP addresses in CIDR format for Application Load Balancers
  const GetListenerRuleConditionPathPattern({
    required this.regexValues,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regexValues': regexValues,
      'values': values,
    };
  }

  factory GetListenerRuleConditionPathPattern.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleConditionPathPattern(
      regexValues: pulumi.Input.fromValue((map['regexValues'] as List).cast<String>()),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
