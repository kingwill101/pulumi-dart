// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WafRuleConfigSecurityLevel {
  /// The value of the custom signature field used for validation.
  final pulumi.Input<String>? value;

  /// Creates a new [WafRuleConfigSecurityLevel].
  /// [value] The value of the custom signature field used for validation.
  WafRuleConfigSecurityLevel({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory WafRuleConfigSecurityLevel.fromMap(Map<String, dynamic> map) {
    return WafRuleConfigSecurityLevel(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
