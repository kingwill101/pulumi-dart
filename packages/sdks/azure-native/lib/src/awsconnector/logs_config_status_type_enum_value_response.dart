// ignore_for_file: unused_element, unnecessary_cast


/// Definition of LogsConfigStatusTypeEnumValue
class LogsConfigStatusTypeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [LogsConfigStatusTypeEnumValueResponse].
  /// [value] Property value
  LogsConfigStatusTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory LogsConfigStatusTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return LogsConfigStatusTypeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

