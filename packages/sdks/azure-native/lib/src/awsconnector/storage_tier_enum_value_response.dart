// ignore_for_file: unused_element, unnecessary_cast


/// Definition of StorageTierEnumValue
class StorageTierEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [StorageTierEnumValueResponse].
  /// [value] Property value
  StorageTierEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory StorageTierEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return StorageTierEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

