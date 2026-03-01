// ignore_for_file: unused_element, unnecessary_cast


/// Definition of TLSSecurityPolicyEnumValue
class TLSSecurityPolicyEnumValue {
  /// Property value
  final String? value;

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
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

