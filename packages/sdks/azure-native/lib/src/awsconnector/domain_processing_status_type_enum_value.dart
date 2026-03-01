// ignore_for_file: unused_element, unnecessary_cast


/// Definition of DomainProcessingStatusTypeEnumValue
class DomainProcessingStatusTypeEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [DomainProcessingStatusTypeEnumValue].
  /// [value] Property value
  DomainProcessingStatusTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory DomainProcessingStatusTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return DomainProcessingStatusTypeEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

