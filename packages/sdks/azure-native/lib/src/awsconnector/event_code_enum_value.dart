// ignore_for_file: unused_element, unnecessary_cast


/// Definition of EventCodeEnumValue
class EventCodeEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [EventCodeEnumValue].
  /// [value] Property value
  EventCodeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory EventCodeEnumValue.fromMap(Map<String, dynamic> map) {
    return EventCodeEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

