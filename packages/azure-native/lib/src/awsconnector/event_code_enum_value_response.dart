// ignore_for_file: unused_element, unnecessary_cast


/// Definition of EventCodeEnumValue
class EventCodeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [EventCodeEnumValueResponse].
  /// [value] Property value
  EventCodeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory EventCodeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return EventCodeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

