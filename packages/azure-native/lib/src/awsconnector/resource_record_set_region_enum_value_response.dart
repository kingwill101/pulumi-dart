// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ResourceRecordSetRegionEnumValue
class ResourceRecordSetRegionEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [ResourceRecordSetRegionEnumValueResponse].
  /// [value] Property value
  ResourceRecordSetRegionEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ResourceRecordSetRegionEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ResourceRecordSetRegionEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

