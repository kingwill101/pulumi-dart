// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentGroupAutoRollbackConfiguration {
  /// Indicates whether a defined automatic rollback configuration is currently enabled for this Deployment Group. If you enable automatic rollback, you must specify at least one event type.
  final pulumi.Input<bool>? enabled;

  /// The event type or types that trigger a rollback. Supported types are `DEPLOYMENT_FAILURE`, `DEPLOYMENT_STOP_ON_ALARM` and `DEPLOYMENT_STOP_ON_REQUEST`.
  ///
  /// _Only one `auto_rollback_configuration` is allowed_.
  final pulumi.Input<List<String>>? events;

  /// Creates a new [DeploymentGroupAutoRollbackConfiguration].
  /// [enabled] Indicates whether a defined automatic rollback configuration is currently enabled for this Deployment Group. If you enable automatic rollback, you must specify at least one event type.
  /// [events] The event type or types that trigger a rollback. Supported types are `DEPLOYMENT_FAILURE`, `DEPLOYMENT_STOP_ON_ALARM` and `DEPLOYMENT_STOP_ON_REQUEST`.
  DeploymentGroupAutoRollbackConfiguration({this.enabled, this.events});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled, 'events': ?events};
  }

  factory DeploymentGroupAutoRollbackConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeploymentGroupAutoRollbackConfiguration(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      events: (() {
        final guardedValue = map['events'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
