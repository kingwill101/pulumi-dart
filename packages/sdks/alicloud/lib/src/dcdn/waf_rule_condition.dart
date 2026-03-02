// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WafRuleCondition {
  /// The match field.
  final pulumi.Input<String> key;
  /// The logical symbol.
  final pulumi.Input<String> opValue;
  /// The match subfield.
  final pulumi.Input<String>? subKey;
  /// The match content. Separate multiple values with commas (,).
  final pulumi.Input<String>? values;

  /// Creates a new [WafRuleCondition].
  /// [key] The match field.
  /// [opValue] The logical symbol.
  /// [subKey] The match subfield.
  /// [values] The match content. Separate multiple values with commas (,).
  WafRuleCondition({
    required this.key,
    required this.opValue,
    this.subKey,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'opValue': opValue,
      'subKey': ?subKey,
      'values': ?values,
    };
  }

  factory WafRuleCondition.fromMap(Map<String, dynamic> map) {
    return WafRuleCondition(
      key: (map['key'] as String).input(),
      opValue: (map['opValue'] as String).input(),
      subKey: map['subKey'] == null ? null : (map['subKey'] as String).input(),
      values: map['values'] == null ? null : (map['values'] as String).input(),
    );
  }
}

