// ignore_for_file: unused_element, unnecessary_cast


/// Definition of CacheTypeEnumValue
class CacheTypeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [CacheTypeEnumValueResponse].
  /// [value] Property value
  CacheTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory CacheTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return CacheTypeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

