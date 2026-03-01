// ignore_for_file: unused_element, unnecessary_cast


/// Definition of BatchReportModeTypeEnumValue
class BatchReportModeTypeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [BatchReportModeTypeEnumValueResponse].
  /// [value] Property value
  BatchReportModeTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory BatchReportModeTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return BatchReportModeTypeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

