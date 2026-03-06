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
  const WafRuleCondition({
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
      key: pulumi.Input.fromValue(map['key'] as String),
      opValue: pulumi.Input.fromValue(map['opValue'] as String),
      subKey: (() { final guardedValue = map['subKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

