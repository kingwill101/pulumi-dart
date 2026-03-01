// ignore_for_file: unused_element, unnecessary_cast


/// Definition of RenewalEligibilityEnumValue
class RenewalEligibilityEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [RenewalEligibilityEnumValue].
  /// [value] Property value
  RenewalEligibilityEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory RenewalEligibilityEnumValue.fromMap(Map<String, dynamic> map) {
    return RenewalEligibilityEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

