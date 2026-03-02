// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertConfigurationSinkEventStore {
  /// Open.
  final pulumi.Input<bool>? enabled;
  /// SLS service endpoint.
  final pulumi.Input<String>? endpoint;
  /// Event Library Name.
  final pulumi.Input<String>? eventStore;
  /// Project Name.
  final pulumi.Input<String>? project;
  /// Roles used to write alarm data to the event Library.
  final pulumi.Input<String>? roleArn;

  /// Creates a new [AlertConfigurationSinkEventStore].
  /// [enabled] Open.
  /// [endpoint] SLS service endpoint.
  /// [eventStore] Event Library Name.
  /// [project] Project Name.
  /// [roleArn] Roles used to write alarm data to the event Library.
  AlertConfigurationSinkEventStore({
    this.enabled,
    this.endpoint,
    this.eventStore,
    this.project,
    this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'endpoint': ?endpoint,
      'eventStore': ?eventStore,
      'project': ?project,
      'roleArn': ?roleArn,
    };
  }

  factory AlertConfigurationSinkEventStore.fromMap(Map<String, dynamic> map) {
    return AlertConfigurationSinkEventStore(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      eventStore: map['eventStore'] == null ? null : (map['eventStore'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn'] as String).input(),
    );
  }
}

