// ignore_for_file: unused_element, unnecessary_cast


/// Definition of BucketOwnerAccessEnumValue
class BucketOwnerAccessEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [BucketOwnerAccessEnumValueResponse].
  /// [value] Property value
  BucketOwnerAccessEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory BucketOwnerAccessEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return BucketOwnerAccessEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

