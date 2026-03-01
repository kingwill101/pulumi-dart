// ignore_for_file: unused_element, unnecessary_cast


class GetAlertsAlertConfigurationSinkEventStore {
  /// Open.
  final bool enabled;
  /// SLS service endpoint.
  final String endpoint;
  /// Event Library Name.
  final String eventStore;
  /// Project Name.
  final String project;
  /// Roles used to write alarm data to the event Library.
  final String roleArn;

  /// Creates a new [GetAlertsAlertConfigurationSinkEventStore].
  /// [enabled] Open.
  /// [endpoint] SLS service endpoint.
  /// [eventStore] Event Library Name.
  /// [project] Project Name.
  /// [roleArn] Roles used to write alarm data to the event Library.
  GetAlertsAlertConfigurationSinkEventStore({
    required this.enabled,
    required this.endpoint,
    required this.eventStore,
    required this.project,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'endpoint': endpoint,
      'eventStore': eventStore,
      'project': project,
      'roleArn': roleArn,
    };
  }

  factory GetAlertsAlertConfigurationSinkEventStore.fromMap(Map<String, dynamic> map) {
    return GetAlertsAlertConfigurationSinkEventStore(
      enabled: map['enabled'] as bool,
      endpoint: map['endpoint'] as String,
      eventStore: map['eventStore'] as String,
      project: map['project'] as String,
      roleArn: map['roleArn'] as String,
    );
  }
}

