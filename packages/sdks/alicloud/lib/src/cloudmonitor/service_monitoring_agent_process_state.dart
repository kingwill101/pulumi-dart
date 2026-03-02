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
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      processId: map['processId'] == null ? null : (map['processId'] as String).input(),
      processName: map['processName'] == null ? null : (map['processName'] as String).input(),
      processUser: map['processUser'] == null ? null : (map['processUser'] as String).input(),
    );
  }
}

