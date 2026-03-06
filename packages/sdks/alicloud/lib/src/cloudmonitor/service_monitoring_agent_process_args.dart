// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudmonitor_service_monitoring_agent_process_service_monitoring_agent_process_args_doc}
/// The set of arguments for ServiceMonitoringAgentProcess.
/// {@endtemplate}
/// {@macro pulumi_cloudmonitor_service_monitoring_agent_process_service_monitoring_agent_process_args_doc}
class ServiceMonitoringAgentProcessArgs {
  /// The ID of the instance.
  final pulumi.Input<String> instanceId;
  /// The name of the process.
  final pulumi.Input<String> processName;
  /// The user who launches the process.
  final pulumi.Input<String>? processUser;

  /// Creates a new [ServiceMonitoringAgentProcessArgs].
  /// [instanceId] The ID of the instance.
  /// [processName] The name of the process.
  /// [processUser] The user who launches the process.
  const ServiceMonitoringAgentProcessArgs({
    required this.instanceId,
    required this.processName,
    this.processUser,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'processName': processName,
      'processUser': ?processUser,
    };
  }

  factory ServiceMonitoringAgentProcessArgs.fromMap(Map<String, dynamic> map) {
    return ServiceMonitoringAgentProcessArgs(
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      processName: pulumi.Input.fromValue(map['processName'] as String),
      processUser: (() { final guardedValue = map['processUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

