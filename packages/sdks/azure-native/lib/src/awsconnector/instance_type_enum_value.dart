// ignore_for_file: unused_element, unnecessary_cast


/// Definition of InstanceTypeEnumValue
class InstanceTypeEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [InstanceTypeEnumValue].
  /// [value] Property value
  InstanceTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InstanceTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return InstanceTypeEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

