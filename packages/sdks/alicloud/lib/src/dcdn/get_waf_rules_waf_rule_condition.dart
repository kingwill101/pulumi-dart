// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWafRulesWafRuleCondition {
  /// The match field.
  final pulumi.Input<String> key;

  /// The logical symbol.
  final pulumi.Input<String> opValue;

  /// The subfield of the target field.
  final pulumi.Input<String> subKey;

  /// The match content. Separate multiple values with commas (,).
  final pulumi.Input<String> values;

  /// Creates a new [GetWafRulesWafRuleCondition].
  /// [key] The match field.
  /// [opValue] The logical symbol.
  /// [subKey] The subfield of the target field.
  /// [values] The match content. Separate multiple values with commas (,).
  GetWafRulesWafRuleCondition({
    required this.key,
    required this.opValue,
    required this.subKey,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'opValue': opValue,
      'subKey': subKey,
      'values': values,
    };
  }

  factory GetWafRulesWafRuleCondition.fromMap(Map<String, dynamic> map) {
    return GetWafRulesWafRuleCondition(
      key: pulumi.Input.fromValue(map['key'] as String),
      opValue: pulumi.Input.fromValue(map['opValue'] as String),
      subKey: pulumi.Input.fromValue(map['subKey'] as String),
      values: pulumi.Input.fromValue(map['values'] as String),
    );
  }
}
