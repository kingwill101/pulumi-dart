// ignore_for_file: unused_element, unnecessary_cast


/// Definition of TenancyEnumValue
class TenancyEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [TenancyEnumValue].
  /// [value] Property value
  TenancyEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory TenancyEnumValue.fromMap(Map<String, dynamic> map) {
    return TenancyEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

