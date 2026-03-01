// ignore_for_file: unused_element, unnecessary_cast


/// Definition of AttachmentStatusEnumValue
class AttachmentStatusEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [AttachmentStatusEnumValueResponse].
  /// [value] Property value
  AttachmentStatusEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory AttachmentStatusEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return AttachmentStatusEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

