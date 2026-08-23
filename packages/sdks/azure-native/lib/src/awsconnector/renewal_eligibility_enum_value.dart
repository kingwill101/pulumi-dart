// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of RenewalEligibilityEnumValue
class RenewalEligibilityEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [RenewalEligibilityEnumValue].
  /// [value] Property value
  const RenewalEligibilityEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory RenewalEligibilityEnumValue.fromMap(Map<String, dynamic> map) {
    return RenewalEligibilityEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
