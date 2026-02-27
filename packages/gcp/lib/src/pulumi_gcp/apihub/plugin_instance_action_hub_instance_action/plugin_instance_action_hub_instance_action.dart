// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../plugin_instance_action_hub_instance_action_last_execution/plugin_instance_action_hub_instance_action_last_execution.dart';

class PluginInstanceActionHubInstanceAction {
  /// The current state of the execution.
  /// Possible values:
  /// CURRENT_EXECUTION_STATE_UNSPECIFIED
  /// RUNNING
  /// NOT_RUNNING
  final String? currentExecutionState;

  /// The result of the last execution of the plugin instance.
  final List<PluginInstanceActionHubInstanceActionLastExecution>?
      lastExecutions;

  PluginInstanceActionHubInstanceAction({
    this.currentExecutionState,
    this.lastExecutions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final currentExecutionStateValue = currentExecutionState;
    if (currentExecutionStateValue != null) {
      map['currentExecutionState'] = currentExecutionStateValue;
    }
    final lastExecutionsValue = lastExecutions;
    if (lastExecutionsValue != null) {
      map['lastExecutions'] = pulumi.Input.encodeList<
          PluginInstanceActionHubInstanceActionLastExecution,
          Map<String, dynamic>>(lastExecutionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PluginInstanceActionHubInstanceAction.fromMap(
      Map<String, dynamic> map) {
    return PluginInstanceActionHubInstanceAction(
      currentExecutionState: map['currentExecutionState'] == null
          ? null
          : map['currentExecutionState'] as String,
      lastExecutions: map['lastExecutions'] == null
          ? null
          : pulumi.Input.decodeList<
                  PluginInstanceActionHubInstanceActionLastExecution>(
              map['lastExecutions'],
              (value) =>
                  PluginInstanceActionHubInstanceActionLastExecution.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
