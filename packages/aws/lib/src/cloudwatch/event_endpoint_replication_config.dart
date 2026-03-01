// ignore_for_file: unused_element, unnecessary_cast

class EventEndpointReplicationConfig {
  /// The state of event replication. Valid values: `ENABLED`, `DISABLED`. The default state is `ENABLED`, which means you must supply a `role_arn`. If you don't have a `role_arn` or you don't want event replication enabled, set `state` to `DISABLED`.
  final String? state;

  /// Creates a new [EventEndpointReplicationConfig].
  /// [state] The state of event replication. Valid values: `ENABLED`, `DISABLED`. The default state is `ENABLED`, which means you must supply a `role_arn`. If you don't have a `role_arn` or you don't want event replication enabled, set `state` to `DISABLED`.
  EventEndpointReplicationConfig({this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'state': ?state};
  }

  factory EventEndpointReplicationConfig.fromMap(Map<String, dynamic> map) {
    return EventEndpointReplicationConfig(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
