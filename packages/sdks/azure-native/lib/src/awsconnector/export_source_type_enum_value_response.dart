// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ExportSourceTypeEnumValue
class ExportSourceTypeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [ExportSourceTypeEnumValueResponse].
  /// [value] Property value
  ExportSourceTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ExportSourceTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ExportSourceTypeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

