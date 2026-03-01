// ignore_for_file: unused_element, unnecessary_cast


/// Definition of AttachmentStatusEnumValue
class AttachmentStatusEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [AttachmentStatusEnumValue].
  /// [value] Property value
  AttachmentStatusEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory AttachmentStatusEnumValue.fromMap(Map<String, dynamic> map) {
    return AttachmentStatusEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

