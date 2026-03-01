// ignore_for_file: unused_element, unnecessary_cast


/// Definition of InstanceTypeEnumValue
class InstanceTypeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [InstanceTypeEnumValueResponse].
  /// [value] Property value
  InstanceTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InstanceTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return InstanceTypeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

