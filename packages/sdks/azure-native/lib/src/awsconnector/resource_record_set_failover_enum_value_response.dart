// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ResourceRecordSetFailoverEnumValue
class ResourceRecordSetFailoverEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [ResourceRecordSetFailoverEnumValueResponse].
  /// [value] Property value
  ResourceRecordSetFailoverEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ResourceRecordSetFailoverEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ResourceRecordSetFailoverEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

