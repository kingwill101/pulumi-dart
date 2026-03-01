// ignore_for_file: unused_element, unnecessary_cast


/// Definition of NotebookInstanceStatusEnumValue
class NotebookInstanceStatusEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [NotebookInstanceStatusEnumValue].
  /// [value] Property value
  NotebookInstanceStatusEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory NotebookInstanceStatusEnumValue.fromMap(Map<String, dynamic> map) {
    return NotebookInstanceStatusEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

