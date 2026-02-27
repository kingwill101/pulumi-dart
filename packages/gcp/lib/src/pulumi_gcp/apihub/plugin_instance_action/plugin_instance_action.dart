// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../plugin_instance_action_curation_config/plugin_instance_action_curation_config.dart';
import '../plugin_instance_action_hub_instance_action/plugin_instance_action_hub_instance_action.dart';

class PluginInstanceAction {
  /// This should map to one of the action id specified
  /// in actions_config in the plugin.
  final String actionId;

  /// The curation information for this plugin instance.
  /// Structure is documented below.
  final PluginInstanceActionCurationConfig? curationConfig;

  /// (Output)
  /// The execution status for the plugin instance.
  /// Structure is documented below.
  final List<PluginInstanceActionHubInstanceAction>? hubInstanceActions;

  /// The schedule for this plugin instance action. This can only be set if the
  /// plugin supports API_HUB_SCHEDULE_TRIGGER mode for this action.
  final String? scheduleCronExpression;

  /// The time zone for the schedule cron expression. If not provided, UTC will
  /// be used.
  ///
  ///
  /// <a name="nested_actions_hub_instance_action"></a>The `hub_instance_action` block contains:
  final String? scheduleTimeZone;

  /// (Output)
  /// The current state of the plugin action in the plugin instance.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// ENABLED
  /// DISABLED
  /// ENABLING
  /// DISABLING
  /// ERROR
  final String? state;

  PluginInstanceAction({
    required this.actionId,
    this.curationConfig,
    this.hubInstanceActions,
    this.scheduleCronExpression,
    this.scheduleTimeZone,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actionId'] = actionId;
    final curationConfigValue = curationConfig;
    if (curationConfigValue != null) {
      map['curationConfig'] = curationConfigValue.toMap();
    }
    final hubInstanceActionsValue = hubInstanceActions;
    if (hubInstanceActionsValue != null) {
      map['hubInstanceActions'] = pulumi.Input.encodeList<
              PluginInstanceActionHubInstanceAction, Map<String, dynamic>>(
          hubInstanceActionsValue, (value) => value.toMap());
    }
    final scheduleCronExpressionValue = scheduleCronExpression;
    if (scheduleCronExpressionValue != null) {
      map['scheduleCronExpression'] = scheduleCronExpressionValue;
    }
    final scheduleTimeZoneValue = scheduleTimeZone;
    if (scheduleTimeZoneValue != null) {
      map['scheduleTimeZone'] = scheduleTimeZoneValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
  }

  factory PluginInstanceAction.fromMap(Map<String, dynamic> map) {
    return PluginInstanceAction(
      actionId: map['actionId'] as String,
      curationConfig: map['curationConfig'] == null
          ? null
          : PluginInstanceActionCurationConfig.fromMap(
              (map['curationConfig'] as Map).cast<String, dynamic>()),
      hubInstanceActions: map['hubInstanceActions'] == null
          ? null
          : pulumi.Input.decodeList<PluginInstanceActionHubInstanceAction>(
              map['hubInstanceActions'],
              (value) => PluginInstanceActionHubInstanceAction.fromMap(
                  (value as Map).cast<String, dynamic>())),
      scheduleCronExpression: map['scheduleCronExpression'] == null
          ? null
          : map['scheduleCronExpression'] as String,
      scheduleTimeZone: map['scheduleTimeZone'] == null
          ? null
          : map['scheduleTimeZone'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
