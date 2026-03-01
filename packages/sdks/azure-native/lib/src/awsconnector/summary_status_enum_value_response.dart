// ignore_for_file: unused_element, unnecessary_cast


/// Definition of SummaryStatusEnumValue
class SummaryStatusEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [SummaryStatusEnumValueResponse].
  /// [value] Property value
  SummaryStatusEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory SummaryStatusEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return SummaryStatusEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

