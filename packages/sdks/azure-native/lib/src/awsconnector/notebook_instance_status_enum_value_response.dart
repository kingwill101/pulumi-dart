// ignore_for_file: unused_element, unnecessary_cast


/// Definition of NotebookInstanceStatusEnumValue
class NotebookInstanceStatusEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [NotebookInstanceStatusEnumValueResponse].
  /// [value] Property value
  NotebookInstanceStatusEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory NotebookInstanceStatusEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return NotebookInstanceStatusEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

