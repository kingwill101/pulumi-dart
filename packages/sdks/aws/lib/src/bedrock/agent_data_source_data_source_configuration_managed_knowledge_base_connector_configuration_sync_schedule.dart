// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_data_source_configuration_managed_knowledge_base_connector_configuration_sync_schedule_monthly.dart';
import 'agent_data_source_data_source_configuration_managed_knowledge_base_connector_configuration_sync_schedule_weekly.dart';

class AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationSyncSchedule {
  /// Daily sync that runs once a day at a system-chosen off-peak time. The run time is not configurable. See `daily` Block for details.
  final pulumi.Input<Map<String, dynamic>?>? daily;
  /// Monthly sync that runs once a month on the specified day of the month. See `monthly` Block for details.
  final pulumi.Input<AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationSyncScheduleMonthly?>? monthly;
  /// Weekly sync that runs once a week on the specified day of the week. See `weekly` Block for details.
  final pulumi.Input<AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationSyncScheduleWeekly?>? weekly;

  /// Creates a new [AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationSyncSchedule].
  /// [daily] Daily sync that runs once a day at a system-chosen off-peak time. The run time is not configurable. See `daily` Block for details.
  /// [monthly] Monthly sync that runs once a month on the specified day of the month. See `monthly` Block for details.
  /// [weekly] Weekly sync that runs once a week on the specified day of the week. See `weekly` Block for details.
  const AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationSyncSchedule({
    this.daily,
    this.monthly,
    this.weekly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daily': ?daily,
      'monthly': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationSyncScheduleMonthly, Map<String, dynamic>>(monthly, (value) => value.toMap()),
      'weekly': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationSyncScheduleWeekly, Map<String, dynamic>>(weekly, (value) => value.toMap()),
    };
  }

  factory AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationSyncSchedule.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationSyncSchedule(
      daily: (() { final guardedValue = map['daily']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      monthly: (() { final guardedValue = map['monthly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationSyncScheduleMonthly.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      weekly: (() { final guardedValue = map['weekly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationSyncScheduleWeekly.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
