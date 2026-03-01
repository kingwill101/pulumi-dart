// ignore_for_file: unused_element, unnecessary_cast


/// Definition of VirtualizationTypeEnumValue
class VirtualizationTypeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [VirtualizationTypeEnumValueResponse].
  /// [value] Property value
  VirtualizationTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory VirtualizationTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return VirtualizationTypeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

