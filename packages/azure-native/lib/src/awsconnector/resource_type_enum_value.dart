// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ResourceTypeEnumValue
class ResourceTypeEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [ResourceTypeEnumValue].
  /// [value] Property value
  ResourceTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ResourceTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return ResourceTypeEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

