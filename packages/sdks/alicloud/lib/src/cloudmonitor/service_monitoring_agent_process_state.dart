// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceMonitoringAgentProcess resources.
class ServiceMonitoringAgentProcessState {
  /// The ID of the instance.
  final pulumi.Input<String>? instanceId;

  /// The ID of the process.
  final pulumi.Input<String>? processId;

  /// The name of the process.
  final pulumi.Input<String>? processName;

  /// The user who launches the process.
  final pulumi.Input<String>? processUser;

  /// Creates a new [ServiceMonitoringAgentProcessState].
  /// [instanceId] The ID of the instance.
  /// [processId] The ID of the process.
  /// [processName] The name of the process.
  /// [processUser] The user who launches the process.
  ServiceMonitoringAgentProcessState({
    this.instanceId,
    this.processId,
    this.processName,
    this.processUser,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'processId': ?processId,
      'processName': ?processName,
      'processUser': ?processUser,
    };
  }

  factory ServiceMonitoringAgentProcessState.fromMap(Map<String, dynamic> map) {
    return ServiceMonitoringAgentProcessState(
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      processId: (() {
        final guardedValue = map['processId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      processName: (() {
        final guardedValue = map['processName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      processUser: (() {
        final guardedValue = map['processUser'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
