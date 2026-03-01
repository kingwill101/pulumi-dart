// ignore_for_file: unused_element, unnecessary_cast


/// Definition of TypeEnumValue
class TypeEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [TypeEnumValue].
  /// [value] Property value
  TypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory TypeEnumValue.fromMap(Map<String, dynamic> map) {
    return TypeEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

