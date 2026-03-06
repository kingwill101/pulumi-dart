// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of RenewalEligibilityEnumValue
class RenewalEligibilityEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [RenewalEligibilityEnumValueResponse].
  /// [value] Property value
  const RenewalEligibilityEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory RenewalEligibilityEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return RenewalEligibilityEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

