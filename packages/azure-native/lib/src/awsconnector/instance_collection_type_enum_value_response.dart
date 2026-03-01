// ignore_for_file: unused_element, unnecessary_cast


/// Definition of InstanceCollectionTypeEnumValue
class InstanceCollectionTypeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [InstanceCollectionTypeEnumValueResponse].
  /// [value] Property value
  InstanceCollectionTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InstanceCollectionTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return InstanceCollectionTypeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

