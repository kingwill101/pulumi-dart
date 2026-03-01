// ignore_for_file: unused_element, unnecessary_cast


/// Specifies eventGridAndResourceGraph related Scheduled Event related configurations.
class EventGridAndResourceGraph {
  /// Specifies if event grid and resource graph is enabled for Scheduled event related configurations.
  final bool? enable;

  /// Creates a new [EventGridAndResourceGraph].
  /// [enable] Specifies if event grid and resource graph is enabled for Scheduled event related configurations.
  EventGridAndResourceGraph({
    this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
    };
  }

  factory EventGridAndResourceGraph.fromMap(Map<String, dynamic> map) {
    return EventGridAndResourceGraph(
      enable: map['enable'] == null ? null : map['enable'] as bool,
    );
  }
}

