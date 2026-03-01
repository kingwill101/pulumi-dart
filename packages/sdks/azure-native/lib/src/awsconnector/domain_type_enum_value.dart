// ignore_for_file: unused_element, unnecessary_cast


/// Definition of DomainTypeEnumValue
class DomainTypeEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [DomainTypeEnumValue].
  /// [value] Property value
  DomainTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory DomainTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return DomainTypeEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

