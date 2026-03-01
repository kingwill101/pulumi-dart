// ignore_for_file: unused_element, unnecessary_cast


/// Definition of InstanceCollectionTypeEnumValue
class InstanceCollectionTypeEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [InstanceCollectionTypeEnumValue].
  /// [value] Property value
  InstanceCollectionTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InstanceCollectionTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return InstanceCollectionTypeEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

