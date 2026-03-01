// ignore_for_file: unused_element, unnecessary_cast


class DomainPerfEvent {
  /// Controls whether performance monitoring events are enabled.
  final String enabled;
  /// Sets the name of the performance monitoring event.
  final String name;

  /// Creates a new [DomainPerfEvent].
  /// [enabled] Controls whether performance monitoring events are enabled.
  /// [name] Sets the name of the performance monitoring event.
  DomainPerfEvent({
    required this.enabled,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'name': name,
    };
  }

  factory DomainPerfEvent.fromMap(Map<String, dynamic> map) {
    return DomainPerfEvent(
      enabled: map['enabled'] as String,
      name: map['name'] as String,
    );
  }
}

