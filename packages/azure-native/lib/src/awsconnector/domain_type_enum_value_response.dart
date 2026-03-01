// ignore_for_file: unused_element, unnecessary_cast


/// Definition of DomainTypeEnumValue
class DomainTypeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [DomainTypeEnumValueResponse].
  /// [value] Property value
  DomainTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory DomainTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return DomainTypeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

