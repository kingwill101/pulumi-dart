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
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? processId,
    pulumi.Output<String>? processName,
    pulumi.Output<String>? processUser,
  }) :
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      processId = pulumi.Input.asOptionalInput<String>(processId),
      processName = pulumi.Input.asOptionalInput<String>(processName),
      processUser = pulumi.Input.asOptionalInput<String>(processUser);

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
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      processId: map['processId'] == null ? null : pulumi.Output.create<String>(map['processId'] as String),
      processName: map['processName'] == null ? null : pulumi.Output.create<String>(map['processName'] as String),
      processUser: map['processUser'] == null ? null : pulumi.Output.create<String>(map['processUser'] as String),
    );
  }
}

