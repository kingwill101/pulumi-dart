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
  ServiceGroupMonitoringAgentProcessState({
    pulumi.Output<List<ServiceGroupMonitoringAgentProcessAlertConfig>>? alertConfigs,
    pulumi.Output<String>? groupId,
    pulumi.Output<String>? groupMonitoringAgentProcessId,
    pulumi.Output<String>? matchExpressFilterRelation,
    pulumi.Output<List<ServiceGroupMonitoringAgentProcessMatchExpress>>? matchExpresses,
    pulumi.Output<String>? processName,
  }) :
      alertConfigs = pulumi.Input.asOptionalInput<List<ServiceGroupMonitoringAgentProcessAlertConfig>>(alertConfigs),
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      groupMonitoringAgentProcessId = pulumi.Input.asOptionalInput<String>(groupMonitoringAgentProcessId),
      matchExpressFilterRelation = pulumi.Input.asOptionalInput<String>(matchExpressFilterRelation),
      matchExpresses = pulumi.Input.asOptionalInput<List<ServiceGroupMonitoringAgentProcessMatchExpress>>(matchExpresses),
      processName = pulumi.Input.asOptionalInput<String>(processName);

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
      alertConfigs: map['alertConfigs'] == null ? null : pulumi.Output.create<List<ServiceGroupMonitoringAgentProcessAlertConfig>>(pulumi.Input.decodeList<ServiceGroupMonitoringAgentProcessAlertConfig>(map['alertConfigs'], (value) => ServiceGroupMonitoringAgentProcessAlertConfig.fromMap((value as Map).cast<String, dynamic>()))),
      groupId: map['groupId'] == null ? null : pulumi.Output.create<String>(map['groupId'] as String),
      groupMonitoringAgentProcessId: map['groupMonitoringAgentProcessId'] == null ? null : pulumi.Output.create<String>(map['groupMonitoringAgentProcessId'] as String),
      matchExpressFilterRelation: map['matchExpressFilterRelation'] == null ? null : pulumi.Output.create<String>(map['matchExpressFilterRelation'] as String),
      matchExpresses: map['matchExpresses'] == null ? null : pulumi.Output.create<List<ServiceGroupMonitoringAgentProcessMatchExpress>>(pulumi.Input.decodeList<ServiceGroupMonitoringAgentProcessMatchExpress>(map['matchExpresses'], (value) => ServiceGroupMonitoringAgentProcessMatchExpress.fromMap((value as Map).cast<String, dynamic>()))),
      processName: map['processName'] == null ? null : pulumi.Output.create<String>(map['processName'] as String),
    );
  }
}

