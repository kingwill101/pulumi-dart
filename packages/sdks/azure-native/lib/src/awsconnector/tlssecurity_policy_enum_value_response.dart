// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of TLSSecurityPolicyEnumValue
class TLSSecurityPolicyEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [TLSSecurityPolicyEnumValueResponse].
  /// [value] Property value
  TLSSecurityPolicyEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory TLSSecurityPolicyEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return TLSSecurityPolicyEnumValueResponse(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

