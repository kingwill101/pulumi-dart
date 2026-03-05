// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAlertsAlertConfigurationSinkEventStore {
  /// Open.
  final pulumi.Input<bool> enabled;
  /// SLS service endpoint.
  final pulumi.Input<String> endpoint;
  /// Event Library Name.
  final pulumi.Input<String> eventStore;
  /// Project Name.
  final pulumi.Input<String> project;
  /// Roles used to write alarm data to the event Library.
  final pulumi.Input<String> roleArn;

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
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      eventStore: pulumi.Input.fromValue(map['eventStore'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}

