// ignore_for_file: unused_element, unnecessary_cast


/// Definition of BatchReportModeTypeEnumValue
class BatchReportModeTypeEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [BatchReportModeTypeEnumValue].
  /// [value] Property value
  BatchReportModeTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory BatchReportModeTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return BatchReportModeTypeEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

