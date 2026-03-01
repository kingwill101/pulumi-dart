// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ResourceRecordSetRegionEnumValue
class ResourceRecordSetRegionEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [ResourceRecordSetRegionEnumValue].
  /// [value] Property value
  ResourceRecordSetRegionEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ResourceRecordSetRegionEnumValue.fromMap(Map<String, dynamic> map) {
    return ResourceRecordSetRegionEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

