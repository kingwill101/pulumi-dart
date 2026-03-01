// ignore_for_file: unused_element, unnecessary_cast


/// Definition of HypervisorTypeEnumValue
class HypervisorTypeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [HypervisorTypeEnumValueResponse].
  /// [value] Property value
  HypervisorTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory HypervisorTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return HypervisorTypeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

