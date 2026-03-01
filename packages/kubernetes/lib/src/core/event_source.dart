// ignore_for_file: unused_element, unnecessary_cast


/// EventSource contains information for an event.
class EventSource {
  /// Component from which the event is generated.
  final String? component;
  /// Node name on which the event is generated.
  final String? host;

  /// Creates a new [EventSource].
  /// [component] Component from which the event is generated.
  /// [host] Node name on which the event is generated.
  EventSource({
    this.component,
    this.host,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'component': ?component,
      'host': ?host,
    };
  }

  factory EventSource.fromMap(Map<String, dynamic> map) {
    return EventSource(
      component: map['component'] == null ? null : map['component'] as String,
      host: map['host'] == null ? null : map['host'] as String,
    );
  }
}

