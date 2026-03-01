// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ScanStatusEnumValue
class ScanStatusEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [ScanStatusEnumValue].
  /// [value] Property value
  ScanStatusEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ScanStatusEnumValue.fromMap(Map<String, dynamic> map) {
    return ScanStatusEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

