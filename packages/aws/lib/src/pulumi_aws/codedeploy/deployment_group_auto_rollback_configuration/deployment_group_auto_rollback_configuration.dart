// ignore_for_file: unused_element, unnecessary_cast

class DeploymentGroupAutoRollbackConfiguration {
  /// Indicates whether a defined automatic rollback configuration is currently enabled for this Deployment Group. If you enable automatic rollback, you must specify at least one event type.
  final bool? enabled;

  /// The event type or types that trigger a rollback. Supported types are `DEPLOYMENT_FAILURE`, `DEPLOYMENT_STOP_ON_ALARM` and `DEPLOYMENT_STOP_ON_REQUEST`.
  ///
  /// _Only one <span pulumi-lang-nodejs="`autoRollbackConfiguration`" pulumi-lang-dotnet="`AutoRollbackConfiguration`" pulumi-lang-go="`autoRollbackConfiguration`" pulumi-lang-python="`auto_rollback_configuration`" pulumi-lang-yaml="`autoRollbackConfiguration`" pulumi-lang-java="`autoRollbackConfiguration`">`auto_rollback_configuration`</span> is allowed_.
  final List<String>? events;

  DeploymentGroupAutoRollbackConfiguration({
    this.enabled,
    this.events,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final eventsValue = events;
    if (eventsValue != null) {
      map['events'] = eventsValue;
    }
    return map;
  }

  factory DeploymentGroupAutoRollbackConfiguration.fromMap(
      Map<String, dynamic> map) {
    return DeploymentGroupAutoRollbackConfiguration(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      events:
          map['events'] == null ? null : (map['events'] as List).cast<String>(),
    );
  }
}
