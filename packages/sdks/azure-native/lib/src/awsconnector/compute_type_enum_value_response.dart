// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ComputeTypeEnumValue
class ComputeTypeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [ComputeTypeEnumValueResponse].
  /// [value] Property value
  ComputeTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ComputeTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ComputeTypeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

