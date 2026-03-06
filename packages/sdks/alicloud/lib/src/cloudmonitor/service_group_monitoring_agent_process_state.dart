// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_group_monitoring_agent_process_alert_config.dart';
import 'service_group_monitoring_agent_process_match_express.dart';

/// Input properties used for looking up and filtering ServiceGroupMonitoringAgentProcess resources.
class ServiceGroupMonitoringAgentProcessState {
  /// The alert rule configurations. See `alert_config` below.
  final pulumi.Input<List<ServiceGroupMonitoringAgentProcessAlertConfig>>? alertConfigs;
  /// The ID of the application group.
  final pulumi.Input<String>? groupId;
  /// The ID of the Group Monitoring Agent Process.
  final pulumi.Input<String>? groupMonitoringAgentProcessId;
  /// The logical operator used between conditional expressions that are used to match instances. Valid values: `all`, `and`, `or`.
  final pulumi.Input<String>? matchExpressFilterRelation;
  /// The expressions used to match instances. See `match_express` below.
  final pulumi.Input<List<ServiceGroupMonitoringAgentProcessMatchExpress>>? matchExpresses;
  /// The name of the process.
  final pulumi.Input<String>? processName;

  /// Creates a new [ServiceGroupMonitoringAgentProcessState].
  /// [alertConfigs] The alert rule configurations. See `alert_config` below.
  /// [groupId] The ID of the application group.
  /// [groupMonitoringAgentProcessId] The ID of the Group Monitoring Agent Process.
  /// [matchExpressFilterRelation] The logical operator used between conditional expressions that are used to match instances. Valid values: `all`, `and`, `or`.
  /// [matchExpresses] The expressions used to match instances. See `match_express` below.
  /// [processName] The name of the process.
  const ServiceGroupMonitoringAgentProcessState({
    this.alertConfigs,
    this.groupId,
    this.groupMonitoringAgentProcessId,
    this.matchExpressFilterRelation,
    this.matchExpresses,
    this.processName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertConfigs': ?pulumi.Input.mapOptionalInputValue<List<ServiceGroupMonitoringAgentProcessAlertConfig>, List<Map<String, dynamic>>>(alertConfigs, (value) => pulumi.Input.encodeList<ServiceGroupMonitoringAgentProcessAlertConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'groupId': ?groupId,
      'groupMonitoringAgentProcessId': ?groupMonitoringAgentProcessId,
      'matchExpressFilterRelation': ?matchExpressFilterRelation,
      'matchExpresses': ?pulumi.Input.mapOptionalInputValue<List<ServiceGroupMonitoringAgentProcessMatchExpress>, List<Map<String, dynamic>>>(matchExpresses, (value) => pulumi.Input.encodeList<ServiceGroupMonitoringAgentProcessMatchExpress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'processName': ?processName,
    };
  }

  factory ServiceGroupMonitoringAgentProcessState.fromMap(Map<String, dynamic> map) {
    return ServiceGroupMonitoringAgentProcessState(
      alertConfigs: (() { final guardedValue = map['alertConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceGroupMonitoringAgentProcessAlertConfig>(guardedValue, (value) => ServiceGroupMonitoringAgentProcessAlertConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupMonitoringAgentProcessId: (() { final guardedValue = map['groupMonitoringAgentProcessId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchExpressFilterRelation: (() { final guardedValue = map['matchExpressFilterRelation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchExpresses: (() { final guardedValue = map['matchExpresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceGroupMonitoringAgentProcessMatchExpress>(guardedValue, (value) => ServiceGroupMonitoringAgentProcessMatchExpress.fromMap((value as Map).cast<String, dynamic>()))); })(),
      processName: (() { final guardedValue = map['processName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

