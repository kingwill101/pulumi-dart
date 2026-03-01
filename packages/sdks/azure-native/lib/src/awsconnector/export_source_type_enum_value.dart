// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ExportSourceTypeEnumValue
class ExportSourceTypeEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [ExportSourceTypeEnumValue].
  /// [value] Property value
  ExportSourceTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ExportSourceTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return ExportSourceTypeEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

