// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ScanStatusEnumValue
class ScanStatusEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [ScanStatusEnumValueResponse].
  /// [value] Property value
  ScanStatusEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ScanStatusEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ScanStatusEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

