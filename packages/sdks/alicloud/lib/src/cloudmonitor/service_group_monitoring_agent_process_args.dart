// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_group_monitoring_agent_process_alert_config.dart';
import 'service_group_monitoring_agent_process_match_express.dart';

/// {@template pulumi_cloudmonitor_service_group_monitoring_agent_process_service_group_monitoring_agent_process_args_doc}
/// The set of arguments for ServiceGroupMonitoringAgentProcess.
/// {@endtemplate}
/// {@macro pulumi_cloudmonitor_service_group_monitoring_agent_process_service_group_monitoring_agent_process_args_doc}
class ServiceGroupMonitoringAgentProcessArgs {
  /// The alert rule configurations. See `alert_config` below.
  final pulumi.Input<List<ServiceGroupMonitoringAgentProcessAlertConfig>>
  alertConfigs;

  /// The ID of the application group.
  final pulumi.Input<String> groupId;

  /// The logical operator used between conditional expressions that are used to match instances. Valid values: `all`, `and`, `or`.
  final pulumi.Input<String>? matchExpressFilterRelation;

  /// The expressions used to match instances. See `match_express` below.
  final pulumi.Input<List<ServiceGroupMonitoringAgentProcessMatchExpress>>?
  matchExpresses;

  /// The name of the process.
  final pulumi.Input<String> processName;

  /// Creates a new [ServiceGroupMonitoringAgentProcessArgs].
  /// [alertConfigs] The alert rule configurations. See `alert_config` below.
  /// [groupId] The ID of the application group.
  /// [matchExpressFilterRelation] The logical operator used between conditional expressions that are used to match instances. Valid values: `all`, `and`, `or`.
  /// [matchExpresses] The expressions used to match instances. See `match_express` below.
  /// [processName] The name of the process.
  ServiceGroupMonitoringAgentProcessArgs({
    required this.alertConfigs,
    required this.groupId,
    this.matchExpressFilterRelation,
    this.matchExpresses,
    required this.processName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertConfigs':
          pulumi.Input.mapInputValue<
            List<ServiceGroupMonitoringAgentProcessAlertConfig>,
            List<Map<String, dynamic>>
          >(
            alertConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  ServiceGroupMonitoringAgentProcessAlertConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'groupId': groupId,
      'matchExpressFilterRelation': ?matchExpressFilterRelation,
      'matchExpresses':
          ?pulumi.Input.mapOptionalInputValue<
            List<ServiceGroupMonitoringAgentProcessMatchExpress>,
            List<Map<String, dynamic>>
          >(
            matchExpresses,
            (value) =>
                pulumi.Input.encodeList<
                  ServiceGroupMonitoringAgentProcessMatchExpress,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'processName': processName,
    };
  }

  factory ServiceGroupMonitoringAgentProcessArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceGroupMonitoringAgentProcessArgs(
      alertConfigs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ServiceGroupMonitoringAgentProcessAlertConfig>(
          map['alertConfigs']!,
          (value) => ServiceGroupMonitoringAgentProcessAlertConfig.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      matchExpressFilterRelation: (() {
        final guardedValue = map['matchExpressFilterRelation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      matchExpresses: (() {
        final guardedValue = map['matchExpresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<ServiceGroupMonitoringAgentProcessMatchExpress>(
            guardedValue,
            (value) => ServiceGroupMonitoringAgentProcessMatchExpress.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      processName: pulumi.Input.fromValue(map['processName'] as String),
    );
  }
}
