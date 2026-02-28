// ignore_for_file: unused_element, unnecessary_cast


/// EventingStatus indicates the state of eventing.
class EventingStatusResponse {
  /// Description of error if State is set to "ERROR".
  final String description;
  /// State.
  final String state;

  /// Creates a new [EventingStatusResponse].
  /// [description] Description of error if State is set to "ERROR".
  /// [state] State.
  EventingStatusResponse({
    required this.description,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'state': state,
    };
  }

  factory EventingStatusResponse.fromMap(Map<String, dynamic> map) {
    return EventingStatusResponse(
      description: map['description'] as String,
      state: map['state'] as String,
    );
  }
}

