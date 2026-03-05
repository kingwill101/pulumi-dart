// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of TLSSecurityPolicyEnumValue
class TLSSecurityPolicyEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [TLSSecurityPolicyEnumValue].
  /// [value] Property value
  TLSSecurityPolicyEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory TLSSecurityPolicyEnumValue.fromMap(Map<String, dynamic> map) {
    return TLSSecurityPolicyEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

